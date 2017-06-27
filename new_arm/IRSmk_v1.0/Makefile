#BHEADER****************************************************************
# (c) 2006   The Regents of the University of California               *
#                                                                      *
# See the file COPYRIGHT_and_DISCLAIMER for a complete copyright       *
# notice and disclaimer.                                               *
#                                                                      *
#EHEADER****************************************************************
CC       = xlc
LDR      = xlc

CFLAGS   = -c -qlanglvl=stdc99 -O5 -qalias=allp -qtune=auto -qarch=auto -qcache=auto -qmaxmem=16384  

LDFLAGS  = -blpdata -lm -O5

LIBS     = 
LIB_DIRS = 

PROG     = IRSmk

OBJS     = main.o rmatmult3.o utility.o

all : $(PROG)

$(PROG) : $(OBJS)
	$(LDR)  $(LDFLAGS) -o $(PROG) $(OBJS) $(LIB_DIRS) $(LIBS)


clean :
	rm -f *.o $(PROG) core job.out *~ 


.SUFFIXES : .o  .c

#*****************************************************************
#* Rules for C object file dependencies
#*****************************************************************
.c.o :
	$(CC) $(CFLAGS) $*.c 







