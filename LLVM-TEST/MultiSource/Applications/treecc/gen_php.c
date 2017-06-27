/*
 * gen_php.c - Generate Php source code from "treecc" input files.
 *
 * Copyright (C) 2001  Southern Storm Software, Pty Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "system.h"
#include "input.h"
#include "info.h"
#include "gen.h"

#ifdef	__cplusplus
extern	"C" {
#endif

/*
 * Declare the fields for a node type.
 */
static void DeclareFields(TreeCCContext *context,
						  TreeCCStream *stream, TreeCCNode *node)
{
	TreeCCField *field;
	field = node->fields;
	while(field != 0)
	{
		TreeCCStreamPrint(stream, "    var $%s;\n",
						  /*field->type, */ field->name);
		field = field->next;
	}
}

/*
 * Declare the type definitions for a node type.
 */
static void DeclareTypeDefs(TreeCCContext *context,
						    TreeCCNode *node)
{
	if((node->flags & TREECC_NODE_ENUM) != 0)
	{
		/* Define an enumerated type */
		/* since PHP doesnt have enums - we are going to have to create defines...
		 */
		int i=1;
		
		
		TreeCCStream *stream = node->source;
		TreeCCNode *child;
		/* TreeCCStreamPrint(stream, "public enum %s\n", node->name); */
		/* TreeCCStreamPrint(stream, "{\n"); */
		child = node->firstChild;
		
		while(child != 0)
		{
			if((child->flags & TREECC_NODE_ENUM_VALUE) != 0)
			{
				TreeCCStreamPrint(stream, "define('%s_%s',%d);\n", node->name,child->name,i);
				i++;
			}
			child = child->nextSibling;
		}
		TreeCCStreamPrint(stream, "\n\n");
	}
}

/*
 * Output the parameters for a node creation function.
 */
static int CreateParams(TreeCCContext *context, TreeCCStream *stream,
						TreeCCNode *node, int needComma)
{
	TreeCCField *field;
	if(node->parent)
	{
		needComma = CreateParams(context, stream, node->parent, needComma);
	}
	field = node->fields;
	while(field != 0)
	{
		if((field->flags & TREECC_FIELD_NOCREATE) == 0)
		{
			if(needComma)
			{
				TreeCCStreamPrint(stream, ", ");
			}
			TreeCCStreamPrint(stream, " $%s", /*field->type,*/ field->name);
			needComma = 1;
		}
		field = field->next;
	}
	return needComma;
}

/*
 * Output the parameters to call an inherited constructor.
 */
static int InheritParamsSource(TreeCCContext *context, TreeCCStream *stream,
							   TreeCCNode *node, int needComma)
{
	TreeCCField *field;
	if(node->parent)
	{
		needComma = InheritParamsSource(context, stream,
									    node->parent, needComma);
	}
	field = node->fields;
	while(field != 0)
	{
		if((field->flags & TREECC_FIELD_NOCREATE) == 0)
		{
			if(needComma)
			{
				TreeCCStreamPrint(stream, ", ");
			}
			TreeCCStreamPrint(stream, "$%s", field->name);
			needComma = 1;
		}
		field = field->next;
	}
	return needComma;
}

/*
 * Implement the virtual methods that have implementations in a node type.
 */
static void ImplementVirtuals(TreeCCContext *context, TreeCCStream *stream,
							  TreeCCNode *node, TreeCCNode *actualNode)
{
	TreeCCVirtual *virt;
	TreeCCParam *param;
	TreeCCOperationCase *operCase;
	int declareCase, abstractCase;
	TreeCCNode *tempNode;
	int num, first;
	int needComma;
	if(node->parent)
	{
		ImplementVirtuals(context, stream, node->parent, actualNode);
	}
	virt = node->virtuals;
	while(virt != 0)
	{
		/* Determine if we need a definition for this virtual,
		   and whether the definition is real or abstract */
		operCase = TreeCCOperationFindCase(context, actualNode, virt->name);
		if(!operCase)
		{
			tempNode = actualNode->parent;
			abstractCase = 1;
			while(tempNode != 0)
			{
				operCase = TreeCCOperationFindCase
								(context, tempNode, virt->name);
				if(operCase != 0)
				{
					abstractCase = 0;
					break;
				}
				tempNode = tempNode->parent;
			}
			declareCase = abstractCase;
		}
		else
		{
			declareCase = 1;
			abstractCase = 0;
		}
		if(declareCase)
		{
			if(abstractCase)
			{
				if(node == actualNode)
				{
				/*	TreeCCStreamPrint(stream,
				 					  "    public abstract %s %s(",
				 					  virt->returnType, virt->name); */
				TreeCCStreamPrint(stream,  "    function  %s(", virt->name);
				}
				else
				{
					/* Inherit the "abstract" definition from the parent */
					virt = virt->next;
					continue;
				}
			}
			else
			{
				/*if(node == actualNode)
				{
					TreeCCStreamPrint(stream, "    public virtual %s %s(",
									  virt->returnType, virt->name);
				}
				else
				{
					TreeCCStreamPrint(stream, "    public override %s %s(",
									  virt->returnType, virt->name);
				}*/
				TreeCCStreamPrint(stream, "    function %s(", virt->name);
				
				
			}
			param = virt->oper->params;
			needComma = 0;
			num = 1;
			first = 1;
			while(param != 0)
			{
				if(needComma)
				{
					TreeCCStreamPrint(stream, ", ");
				}
				if(first)
				{
					/* Skip the first argument, which corresponds to "this" */
					if(!(param->name))
					{
						++num;
					}
					first = 0;
				}
				else
				{
					if(param->name)
					{
						TreeCCStreamPrint(stream, "$%s ",
										/*  param->type, */ param->name);
					}
					else
					{
						TreeCCStreamPrint(stream, "$P%d__",
										  /* param->type, */ num);
						++num;
					}
					needComma = 1;
				}
				param = param->next;
			}
			if(!abstractCase)
			{
				TreeCCStreamPrint(stream, ")\n");
				TreeCCStreamLine(stream, operCase->codeLinenum,
								 operCase->codeFilename);
				TreeCCStreamPrint(stream, "    {");
				if(!(virt->oper->params->name) ||
				   !strcmp(virt->oper->params->name, "this"))
				{
					/* The first parameter is called "this", so we don't
					   need to declare it at the head of the function */
					TreeCCStreamCodeIndent(stream, operCase->code, 1);
				}
				else
				{
					/* The first parameter is called something else,
					   so create a temporary variable to hold "this" */
				   	/*
					TreeCCStreamPrint(stream, "\n        %s %s = $this;\n    ",
									  actualNode->name,
									  virt->oper->params->name);
					TreeCCStreamCodeIndent(stream, operCase->code, 1);
					*/
					TreeCCStreamPrint(stream, "\n        $%s = &$this;\n    ", virt->oper->params->name);
					TreeCCStreamCodeIndent(stream, operCase->code, 1);
				}
				TreeCCStreamPrint(stream, "}\n");
				TreeCCStreamFixLine(stream);
				TreeCCStreamPrint(stream, "\n");
			}
			else
			{
				TreeCCStreamPrint(stream, ") {}\n\n");
			}
		}
		virt = virt->next;
	}
}

/*
 * Build the type declarations for a node type.
 */
static void BuildTypeDecls(TreeCCContext *context,
						   TreeCCNode *node)
{
	TreeCCStream *stream;
	int needComma;
	const char *constructorAccess;
	TreeCCField *field;
	int isAbstract;

	/* Ignore if this is an enumerated type node */
	if((node->flags & (TREECC_NODE_ENUM | TREECC_NODE_ENUM_VALUE)) != 0)
	{
		return;
	}
	/* Determine if this class has abstract virtuals */
	isAbstract = TreeCCNodeHasAbstracts(context, node);

	/* Output the class header */
	stream = node->source;
	
	if(node->parent)
	{
		/*
		TreeCCStreamPrint(stream, "    public new const int KIND = %d;\n\n",
						  node->number);
		*/
		TreeCCStreamPrint(stream, "define('%s_KIND',%d);\n",
						  node->name,node->number);
	}
	else
	{
		/*
		TreeCCStreamPrint(stream, "    public const int KIND = %d;\n\n",
						  node->number);
		*/
		TreeCCStreamPrint(stream, "define('%s_KIND', %d);\n",
						  node->name,node->number);
	}
	
	if(node->parent)
	{
		/* Inherit from a specified parent type */
		if(isAbstract)
		{
			TreeCCStreamPrint(stream, "class %s extends %s\n{\n",
							  node->name, node->parent->name);
		}
		else
		{
			TreeCCStreamPrint(stream, "class %s extends %s\n{\n",
							  node->name, node->parent->name);
		}
	}
	else
	{
		/* This type is the base of a class hierarchy */
		if(isAbstract)
		{
			TreeCCStreamPrint(stream, "class %s\n{\n",
							  node->name);
		}
		else
		{
			TreeCCStreamPrint(stream, "class %s\n{\n", node->name);
		}

		/* Declare the node kind member variable */
		TreeCCStreamPrint(stream, "    var $kind__;\n");

		/* Declare the filename and linenum fields if we are tracking lines */
		if(context->track_lines)
		{
			TreeCCStreamPrint(stream, "    var $filename__;\n");
			TreeCCStreamPrint(stream, "    var $linenum__;\n");
		}
		TreeCCStreamPrint(stream, "\n");

		/* Declare the public methods for access to the above fields */
		TreeCCStreamPrint(stream,
				"    function getKind() { return $this->kind__; }\n");
		if(context->track_lines)
		{
			TreeCCStreamPrint(stream,
				"    function getFilename() { return $this->filename__; }\n");
			TreeCCStreamPrint(stream,
				"    function getLinenum() { return $this->linenum__; }\n");
			TreeCCStreamPrint(stream,
			 	"    function setFilename($filename) "
					"{ $this->filename__ = $filename; }\n");
			TreeCCStreamPrint(stream,
				"    function setLinenum($linenum) "
					"{ $this->linenum__ = $linenum; }\n");
		}
		TreeCCStreamPrint(stream, "\n");
	}

	/* Declare the kind value */
	

	/* Declare the fields */
	if(node->fields)
	{
		DeclareFields(context, stream, node);
		TreeCCStreamPrint(stream, "\n");
	}

	/* Declare the constructor for the node type */
	if(context->reentrant)
	{
		/* Re-entrant systems use a factory to create the nodes.
		   C# doesn't have a notion of "access by members of
		   the namespace only".  The closest is "internal", but
		   even that isn't quite right, so we always use "public" */
		/*constructorAccess = "public "; */
		constructorAccess = ""; 
	}
	else
	{
		/* Non-reentrant systems can construct nodes directly,
		   unless the node happens to be abstract, in which
		   case we force the constructor to be protected */
		if((node->flags & TREECC_NODE_ABSTRACT) != 0)
		{
			/* constructorAccess = "protected "; */
			constructorAccess = "";
		}
		else
		{
			/* constructorAccess = "public "; */
			constructorAccess = "";
		}
	}
	TreeCCStreamPrint(stream, "    function %s%s(", constructorAccess, node->name);
	if(context->reentrant)
	{
		/* TreeCCStreamPrint(stream, "%s state__", context->state_type); */
		TreeCCStreamPrint(stream, "&$state__"); 
		needComma = 1;
	}
	else
	{
		needComma = 0;
	}
	CreateParams(context, stream, node, needComma);
	TreeCCStreamPrint(stream, ")\n");
	 TreeCCStreamPrint(stream, "    {\n"); 
	/* Call the parent class constructor */
	if(node->parent)
	{
		TreeCCStreamPrint(stream, "        parent::%s (",node->parent->name);
		if(context->reentrant)
		{
			TreeCCStreamPrint(stream, "&$state__");
			needComma = 1;
		}
		else
		{
			needComma = 0;
		}
		InheritParamsSource(context, stream, node->parent, needComma);
		TreeCCStreamPrint(stream, ");\n");
	}

	/* Set the node kind */

	TreeCCStreamPrint(stream, "        $this->kind__ = %s_KIND;\n",node->name);

	/* Track the filename and line number if necessary */
	if(context->track_lines && !(node->parent))
	{
		if(context->reentrant)
		{
			TreeCCStreamPrint(stream,
					"        $this->filename__ = $state__->currFilename();\n");
			TreeCCStreamPrint(stream,
					"        $this->linenum__ = $state__->currLinenum();\n");
		}
		else
		{
			TreeCCStreamPrint(stream,
					"        $_tmp = &%s::getState(); $this->filename__ = $_tmp->currFilename();\n",
					context->state_type);
			TreeCCStreamPrint(stream,
					"        $_tmp = &%s::getState(); $this->linenum__ = $_tmp->currLinenum();\n",
					context->state_type);
		}
	}

	/* Initialize the fields that are specific to this node type */
	field = node->fields;
	while(field != 0)
	{
		if((field->flags & TREECC_FIELD_NOCREATE) == 0)
		{
			TreeCCStreamPrint(stream, "        $this->%s = $%s;\n",
							  field->name, field->name);
		}
		else if(field->value)
		{
			TreeCCStreamPrint(stream, "        $this->%s = $%s;\n",
							  field->name, field->value);
		}
		field = field->next;
	}
	TreeCCStreamPrint(stream, "    }\n\n");

	/* Implement the virtual functions */
	ImplementVirtuals(context, stream, node, node);

	/* Declare the "isA" and "getKindName" helper methods */
	if(node->parent)
	{
		TreeCCStreamPrint(stream, "    function isA($kind)\n");
	}
	else
	{
		TreeCCStreamPrint(stream, "    function isA($kind)\n");
	}
	TreeCCStreamPrint(stream, "    {\n");
	TreeCCStreamPrint(stream, "        if($kind == %s_KIND)\n",node->name);
	TreeCCStreamPrint(stream, "            return 1;\n");
	TreeCCStreamPrint(stream, "        else\n");
	if(node->parent)
	{
		TreeCCStreamPrint(stream, "            return parent::isA($kind);\n");
	}
	else
	{
		TreeCCStreamPrint(stream, "            return 0;\n");
	}
	TreeCCStreamPrint(stream, "    }\n\n");
	if(node->parent)
	{
		TreeCCStreamPrint(stream, "    function getKindName()\n");
	}
	else
	{
		TreeCCStreamPrint(stream, "    function getKindName()\n");
	}
	TreeCCStreamPrint(stream, "    {\n");
	TreeCCStreamPrint(stream, "        return \"%s\";\n", node->name);
	TreeCCStreamPrint(stream, "    }\n");

	/* Output the class footer */
	TreeCCStreamPrint(stream, "}\n\n");
}

/*
 * Declare the parameters for a factory method in the state type.
 */
static int FactoryCreateParams(TreeCCContext *context, TreeCCStream *stream,
							   TreeCCNode *node, int needComma)
{
	TreeCCField *field;
	if(node->parent)
	{
		needComma = FactoryCreateParams(context, stream,
										node->parent, needComma);
	}
	field = node->fields;
	while(field != 0)
	{
		if((field->flags & TREECC_FIELD_NOCREATE) == 0)
		{
			if(needComma)
			{
				TreeCCStreamPrint(stream, ", ");
			}
			TreeCCStreamPrint(stream, "$%s",
							  /* field->type, */ field->name);
			needComma = 1;
		}
		field = field->next;
	}
	return needComma;
}

/*
 * Output invocation parameters for a call to a constructor
 * from within a factory method.
 */
static int FactoryInvokeParams(TreeCCContext *context, TreeCCStream *stream,
							   TreeCCNode *node, int needComma)
{
	TreeCCField *field;
	if(node->parent)
	{
		needComma = FactoryInvokeParams(context, stream,
										node->parent, needComma);
	}
	field = node->fields;
	while(field != 0)
	{
		if((field->flags & TREECC_FIELD_NOCREATE) == 0)
		{
			if(needComma)
			{
				TreeCCStreamPrint(stream, ", ");
			}
			TreeCCStreamPrint(stream, "$%s", field->name);
			needComma = 1;
		}
		field = field->next;
	}
	return needComma;
}

/*
 * Implement the create function for a node type.
 */
static void ImplementCreateFuncs(TreeCCContext *context, TreeCCNode *node)
{
	TreeCCStream *stream;

	/* Ignore if this is an enumerated type node */
	if((node->flags & (TREECC_NODE_ENUM | TREECC_NODE_ENUM_VALUE)) != 0)
	{
		return;
	}

	/* Ignore this if it is an abstract node */
	if((node->flags & TREECC_NODE_ABSTRACT) != 0)
	{
		return;
	}

	/* Determine which stream to write to */
	if(context->commonSource)
	{
		stream = context->commonSource;
	}
	else
	{
		stream = context->sourceStream;
	}

	/* Output the start of the function definition */
	if(context->abstract_factory)
	{
		TreeCCStreamPrint(stream, "    function %sCreate(",
						  /* node->name, */ node->name);
	}
	else if(context->virtual_factory)
	{
		TreeCCStreamPrint(stream, "    function %sCreate(",
						  /*node->name, */ node->name);
	}
	else
	{
		TreeCCStreamPrint(stream, "    function %sCreate(",
						  /* node->name, */ node->name);
	}

	/* Output the parameters for the create function */
	FactoryCreateParams(context, stream, node, 0);

	/* Output the body of the creation function */
	if(context->abstract_factory)
	{
		TreeCCStreamPrint(stream, ");\n");
	}
	else
	{
		TreeCCStreamPrint(stream, ")\n");
		TreeCCStreamPrint(stream, "    {\n");
		TreeCCStreamPrint(stream, "        return new %s($this", node->name);
		FactoryInvokeParams(context, stream, node, 1);
		TreeCCStreamPrint(stream, ");\n");
		TreeCCStreamPrint(stream, "    }\n\n");
	}
}

/*
 * Implement the state type in the source stream.
 */
static void ImplementStateType(TreeCCContext *context, TreeCCStream *stream)
{
	/* Declare the class header */
	if(context->reentrant && context->abstract_factory)
	{
		TreeCCStreamPrint(stream, "class %s\n{\n\n",
						  context->state_type);
	}
	else
	{
		TreeCCStreamPrint(stream, "class %s\n{\n\n",
						  context->state_type);
	}

	/* Singleton handling for non-reentrant systems */
	if(!(context->reentrant))
	{
		/* TreeCCStreamPrint(stream, "    var $state;\n\n" ,
		 				  context->state_type );*/
		TreeCCStreamPrint(stream, "    function &getState()\n" /*,
						  context->state_type*/ );
		TreeCCStreamPrint(stream, "    {\n");
		TreeCCStreamPrint(stream, "        static $state = null;\n");
		TreeCCStreamPrint(stream, "        if($state != null) return $state;\n");
		TreeCCStreamPrint(stream, "        $state = new %s();\n",
						  context->state_type);
		TreeCCStreamPrint(stream, "        return $state;\n");
		TreeCCStreamPrint(stream, "    }\n\n");
	}

	/* Implement the constructor */
	/*
	-- we cant do constructor too well for this - (as $state is a static var in getState..)
	if(context->reentrant)
	{
		TreeCCStreamPrint(stream, "    function %s() {}\n\n", context->state_type);
	}
	else
	{
		TreeCCStreamPrint(stream, "    function %s() { $this->state__ = $this; }\n\n",
						  context->state_type);
	}
	*/
	/* Implement the create functions for all of the node types */
	if(context->reentrant)
	{
		TreeCCNodeVisitAll(context, ImplementCreateFuncs);
	}

	/* Implement the line number tracking methods */
	if(context->track_lines)
	{
		TreeCCStreamPrint(stream,
			"    function currFilename() { return null; }\n");
		TreeCCStreamPrint(stream,
			"    function currLinenum() { return 0; }\n\n");
	}

	/* Declare the end of the state type */
	TreeCCStreamPrint(stream, "}\n\n");
}

/*
 * Write out header information for all streams.
 */
static void WritePHPHeaders(TreeCCContext *context)
{
	TreeCCStream *stream = context->streamList;
	while(stream != 0)
	{
		if(!(stream->isHeader))
		{
			TreeCCStreamPrint(stream,
					"<?php\n\n/* %s.  Generated automatically by treecc */\n\n",
					stream->embedName);
			/* if(context->namespace)
			{
				TreeCCStreamPrint(stream, "namespace %s\n{\n\n",
								  context->namespace);
			}
			
			TreeCCStreamPrint(stream, "using System;\n\n");
			*/
			TreeCCStreamSourceTopCS(stream);
		}
		if(stream->defaultFile)
		{
			/* Reset the dirty flag if this is a default stream,
			   because we don't want to write out the final file
			   if it isn't actually written to in practice */
			stream->dirty = 0;
		}
		stream = stream->nextStream;
	}
}

/*
 * Write out footer information for all streams.
 */
static void WritePHPFooters(TreeCCContext *context)
{
	TreeCCStream *stream = context->streamList;
	while(stream != 0)
	{
		if(stream->defaultFile && !(stream->dirty))
		{
			/* Clear the default file's contents, which we don't need */
			TreeCCStreamClear(stream);
		}
		else if(!(stream->isHeader))
		{
			TreeCCStreamSourceBottom(stream);
			/* if(context->namespace)
			{
				TreeCCStreamPrint(stream, "}\n");
			}
			*/
		}
		TreeCCStreamPrint(stream, "\n?>");
		stream = stream->nextStream;
	}
}
 
 
static int IsEnumType(TreeCCContext *context, const char *type)
{
	TreeCCNode *node = TreeCCNodeFindByType(context, type);
	if(node)
	{
		if((node->flags & TREECC_NODE_ENUM) != 0)
		{
			return 1;
		}
	}
	return 0;
}
 
 
/*
 * Generate the start declarations for a non-virtual operation.
 */
static void PHP_GenStart(TreeCCContext *context, TreeCCStream *stream,
					      TreeCCOperation *oper)
{
	if(oper->className)
	{
		TreeCCStreamPrint(stream, "class %s\n{\n", oper->className);
	}
	else
	{
		TreeCCStreamPrint(stream, "class %s\n{\n", oper->name);
	}
}

/*
 * Generate the entry point for a non-virtual operation.
 */
static void PHPGenEntry(TreeCCContext *context, TreeCCStream *stream,
					     TreeCCOperation *oper, int number)
{
	TreeCCParam *param;
	int num;
	int needComma;
	/*
	if(number != -1)
	{
		TreeCCStreamPrint(stream, "    private static %s %s_split_%d__(",
						  oper->returnType, oper->name, number);
	}
	else
	{
		TreeCCStreamPrint(stream, "    public static %s %s(",
						  oper->returnType, oper->name);
	}
	*/
	if(number != -1)
	{
		TreeCCStreamPrint(stream, "    function %s_split_%d__(&",
						  oper->name, number);
	}
	else
	{
		TreeCCStreamPrint(stream, "    function %s(&", oper->name);
	}	
	param = oper->params;
	num = 1;
	needComma = 0;
	while(param != 0)
	{
		if(needComma)
		{
			TreeCCStreamPrint(stream, ", ");
		}
		/*
		if(context->language == TREECC_LANG_CSHARP)
		{
			TreeCCStreamPrint(stream, "%s ", param->type);
		}
		else
		{
			TreeCCStreamPrint(stream, "%s ", ConvertType(context, param->type));
		}
		*/
		if(param->name)
		{
			TreeCCStreamPrint(stream, "$%s", param->name);
		}
		else
		{
			TreeCCStreamPrint(stream, "$P%d__", num);
			++num;
		}
		if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if(!IsEnumType(context, param->type))
			{
				TreeCCStreamPrint(stream, "__");
			}
		}
		needComma = 1;
		param = param->next;
	}
	TreeCCStreamPrint(stream, ")\n");
	TreeCCStreamPrint(stream, "    {\n");
}

/*
 * Generate the entry point for a non-virtual operation.
 */
static void PHP_GenEntry(TreeCCContext *context, TreeCCStream *stream,
					      TreeCCOperation *oper)
{
	PHPGenEntry(context, stream, oper, -1);
}

/*
 * Generate the entry point for a split-out function.
 */
static void PHP_GenSplitEntry(TreeCCContext *context, TreeCCStream *stream,
					           TreeCCOperation *oper, int number)
{
	PHPGenEntry(context, stream, oper, number);
}

/*
 * Output TAB's for a specific level of indenting.
 */
static void Indent(TreeCCStream *stream, int indent)
{
	while(indent >= 4)
	{
		TreeCCStreamPrint(stream, "                ");
		indent -= 4;
	}
	if(indent == 1)
	{
		TreeCCStreamPrint(stream, "    ");
	}
	else if(indent == 2)
	{
		TreeCCStreamPrint(stream, "        ");
	}
	else if(indent == 3)
	{
		TreeCCStreamPrint(stream, "            ");
	}
}

/*
 * Generate the head of a "switch" statement.
 */
static void PHP_GenSwitchHead(TreeCCContext *context, TreeCCStream *stream,
							   char *paramName, int level, int isEnum)
{
	Indent(stream, level * 2 + 2);
	if(isEnum)
	{
		TreeCCStreamPrint(stream, "switch($%s)\n", paramName);
	}
	else
	{
		TreeCCStreamPrint(stream, "switch($%s__->getKind())\n", paramName);
	}
	Indent(stream, level * 2 + 2);
	TreeCCStreamPrint(stream, "{\n");
}

/*
 * Generate a selector for a "switch" case.
 */
static void PHP_GenSelector(TreeCCContext *context, TreeCCStream *stream,
						     TreeCCNode *node, int level)
{
	if((node->flags & TREECC_NODE_ENUM_VALUE) != 0)
	{
		Indent(stream, level * 2 + 3);
		TreeCCStreamPrint(stream, "case %s_%s:\n",
						  node->parent->name, node->name);
	}
	else if((node->flags & TREECC_NODE_ENUM) == 0)
	{
		Indent(stream, level * 2 + 3);
		TreeCCStreamPrint(stream, "case %s_KIND:\n", node->name);
	}
}

/*
 * Terminate the selectors and begin the body of a "switch" case.
 */
static void PHP_GenEndSelectors(TreeCCContext *context, TreeCCStream *stream,
							     int level)
{
	Indent(stream, level * 2 + 3);
	TreeCCStreamPrint(stream, "{\n");
}

/*
 * Generate the code for a case within a function.
 */
static void PHP_GenCaseFunc(TreeCCContext *context, TreeCCStream *stream,
						     TreeCCOperationCase *operCase, int number)
{
	TreeCCParam *param;
	TreeCCTrigger *trigger;
	int num;
	int needComma;
	char *type;

	/* Output the header for the function */
	/*TreeCCStreamPrint(stream, "    private static %s %s_%d__(",
					  ConvertType(context, operCase->oper->returnType),
					  operCase->oper->name, number);
					  */
	TreeCCStreamPrint(stream, "    function %s_%d__(&",
					  operCase->oper->name, number);					  
	param = operCase->oper->params;
	trigger = operCase->triggers;
	num = 1;
	needComma = 0;
	while(param != 0)
	{
		if(needComma)
		{
			TreeCCStreamPrint(stream, ", ");
		}
		if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
		   	if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
		   	   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
			{
				type = trigger->node->name;
			}
			else
			{
				type = param->type;
			}
			trigger = trigger->next;
		}
		else
		{
			type = param->type;
		}
		if(param->name)
		{
			
				TreeCCStreamPrint(stream, "$%s", param->name);
			 
		}
		else
		{
			 
				TreeCCStreamPrint(stream, "$P%d__",   num);
			 
			 
			++num;
		}
		needComma = 1;
		param = param->next;
	}
	TreeCCStreamPrint(stream, ")\n");

	/* Output the code for the operation case */
	if(context->language == TREECC_LANG_CSHARP)
	{
		TreeCCStreamLine(stream, operCase->codeLinenum, operCase->codeFilename);
	}
	TreeCCStreamPrint(stream, "    {");
	if(operCase->code)
	{
		TreeCCStreamCodeIndent(stream, operCase->code, 1);
	}
	TreeCCStreamPrint(stream, "}\n");
	if(context->language == TREECC_LANG_CSHARP)
	{
		TreeCCStreamFixLine(stream);
	}
	TreeCCStreamPrint(stream, "\n");
}

/*
 * Generate a call to a case function from within the "switch".
 */
static void PHP_GenCaseCall(TreeCCContext *context, TreeCCStream *stream,
						     TreeCCOperationCase *operCase, int number,
						     int level)
{
	TreeCCParam *param;
	TreeCCTrigger *trigger;
	int num;
	int needComma;

	/* Indent to the correct level */
	Indent(stream, level * 2 + 4);

	/* Add "return" to the front if the operation is non-void */
	if(strcmp(operCase->oper->returnType, "void") != 0)
	{
		TreeCCStreamPrint(stream, "return ");
	}

	/* Print out the call */
	TreeCCStreamPrint(stream, "$_t = __CLASS__;$_t = new $_t; $_t->%s_%d__(", operCase->oper->name, number);
	param = operCase->oper->params;
	trigger = operCase->triggers;
	num = 1;
	needComma = 0;
	while(param != 0)
	{
		if(needComma)
		{
			TreeCCStreamPrint(stream, ", ");
		}
		/* if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
		   	   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
			{
				TreeCCStreamPrint(stream, "(%s)", trigger->node->name);
			}
		}
		*/
		if(param->name)
		{
			TreeCCStreamPrint(stream, "$%s", param->name);
		}
		else
		{
			TreeCCStreamPrint(stream, "$P%d__", num);
			++num;
		}
		if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
		   	   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
			{
				TreeCCStreamPrint(stream, "__");
			}
			trigger = trigger->next;
		}
		needComma = 1;
		param = param->next;
	}
	TreeCCStreamPrint(stream, ");\n");
}

/*
 * Generate the code for a case inline within the "switch".
 */
static void PHP_GenCaseInline(TreeCCContext *context, TreeCCStream *stream,
						       TreeCCOperationCase *operCase, int level)
{
	TreeCCParam *param;
	TreeCCTrigger *trigger;

	/* Copy the parameters to new variables of the correct types */
	param = operCase->oper->params;
	trigger = operCase->triggers;
	while(param != 0)
	{
		if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if(param->name != 0)
			{
				if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
				   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
				{
					Indent(stream, level * 2 + 4);
					/* TreeCCStreamPrint(stream, "%s %s = (%s)%s__;\n",
									  trigger->node->name, param->name,
									  trigger->node->name, param->name); */
					TreeCCStreamPrint(stream, "$%s = %s__;\n",
									param->name, param->name);

									  
				}
			}
			trigger = trigger->next;
		}
		param = param->next;
	}

	/* Output the inline code for the case */
	if(context->language == TREECC_LANG_CSHARP)
	{
		TreeCCStreamLine(stream, operCase->codeLinenum, operCase->codeFilename);
	}
	Indent(stream, level * 2 + 4);
	TreeCCStreamPrint(stream, "{");
	if(operCase->code)
	{
		TreeCCStreamCodeIndent(stream, operCase->code, level * 2 + 4);
	}
	TreeCCStreamPrint(stream, "}\n");
	if(context->language == TREECC_LANG_CSHARP)
	{
		TreeCCStreamFixLine(stream);
	}
}

/*
 * Generate a call to a split function from within the "switch".
 */
static void PHP_GenCaseSplit(TreeCCContext *context, TreeCCStream *stream,
						      TreeCCOperationCase *operCase,
							  int number, int level)
{
	TreeCCParam *param;
	TreeCCTrigger *trigger;
	int num;
	int needComma;

	/* Indent to the correct level */
	Indent(stream, level * 2 + 4);

	/* Add "return" to the front if the operation is non-void */
	if(strcmp(operCase->oper->returnType, "void") != 0)
	{
		TreeCCStreamPrint(stream, "return ");
	}

	/* Print out the call */
	/* cheezy kludge, as self::method() doesnt working php4 (although it will in php5) */
	TreeCCStreamPrint(stream, "$_t = __CLASS__;$_t = new $_t; $_t->%s_split_%d__(", operCase->oper->name, number);
	param = operCase->oper->params;
	trigger = operCase->triggers;
	num = 1;
	needComma = 0;
	while(param != 0)
	{
		if(needComma)
		{
			TreeCCStreamPrint(stream, ", ");
		}
		/*if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
		   	   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
			{
				TreeCCStreamPrint(stream, "(%s)", trigger->node->name);
			}
		}
		*/
		if(param->name)
		{
			TreeCCStreamPrint(stream, "$%s", param->name);
		}
		else
		{
			TreeCCStreamPrint(stream, "P%d__", num);
			++num;
		}
		if((param->flags & TREECC_PARAM_TRIGGER) != 0)
		{
			if((trigger->node->flags & TREECC_NODE_ENUM) == 0 &&
		   	   (trigger->node->flags & TREECC_NODE_ENUM_VALUE) == 0)
			{
				TreeCCStreamPrint(stream, "__");
			}
			trigger = trigger->next;
		}
		needComma = 1;
		param = param->next;
	}
	TreeCCStreamPrint(stream, ");\n");
}

/*
 * Terminate a "switch" case.
 */
static void PHP_GenEndCase(TreeCCContext *context, TreeCCStream *stream,
						    int level)
{
	Indent(stream, level * 2 + 3);
	TreeCCStreamPrint(stream, "}\n");
	Indent(stream, level * 2 + 3);
	TreeCCStreamPrint(stream, "break;\n\n");
}

/*
 * Terminate the "switch" statement.
 */
static void PHP_GenEndSwitch(TreeCCContext *context, TreeCCStream *stream,
						      int level)
{
	Indent(stream, level * 2 + 3);
	TreeCCStreamPrint(stream, "default: break;\n");
	Indent(stream, level * 2 + 2);
	TreeCCStreamPrint(stream, "}\n");
}

/*
 * Generate the exit point for a non-virtual operation.
 */
static void PHP_GenExit(TreeCCContext *context, TreeCCStream *stream,
					     TreeCCOperation *oper)
{
	if(strcmp(oper->returnType, "void") != 0)
	{
		/* Generate a default return value for the function */
		if(oper->defValue)
		{
			TreeCCStreamPrint(stream, "    return (%s);\n", oper->defValue);
		}
		else
		{
			TreeCCStreamPrint(stream, "    return 0;\n");
		}
	}
	TreeCCStreamPrint(stream, "    }\n");
}

/*
 * Generate the end declarations for a non-virtual operation.
 */
static void PHP_GenEnd(TreeCCContext *context, TreeCCStream *stream,
					    TreeCCOperation *oper)
{
	TreeCCStreamPrint(stream, "}\n");
	if(context->language == TREECC_LANG_CSHARP)
	{
		TreeCCStreamPrint(stream, "\n");
	}
}

/*
 * Table of non-virtual code generation functions.
 */
TreeCCNonVirtual const TreeCCNonVirtualFuncsPHP = {
	PHP_GenStart,
	PHP_GenEntry,
	PHP_GenSplitEntry,
	PHP_GenSwitchHead,
	PHP_GenSelector,
	PHP_GenEndSelectors,
	PHP_GenCaseFunc,
	PHP_GenCaseCall,
	PHP_GenCaseInline,
	PHP_GenCaseSplit,
	PHP_GenEndCase,
	PHP_GenEndSwitch,
	PHP_GenExit,
	PHP_GenEnd,
};

 
 
 
 
 
 
 
 
 

void TreeCCGeneratePHP(TreeCCContext *context)
{
	/* Write all stream headers */
	WritePHPHeaders(context);

	/* Generate the contents of the source stream */
	TreeCCNodeVisitAll(context, DeclareTypeDefs);
	if(context->commonSource)
	{
		ImplementStateType(context, context->commonSource);
	}
	else
	{
		ImplementStateType(context, context->sourceStream);
	}
	TreeCCNodeVisitAll(context, BuildTypeDecls);
	TreeCCGenerateNonVirtuals(context, &TreeCCNonVirtualFuncsPHP);

	/* Write all stream footers */
	WritePHPFooters(context);
}

#ifdef	__cplusplus
};
#endif
