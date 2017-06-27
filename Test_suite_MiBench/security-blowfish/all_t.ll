; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

@BF_version = global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 4
@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1
@bf_init = internal global %struct.bf_key_st { [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], [1024 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946, i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241, i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504, i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462] }, align 4
@bf_key = global [2 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.4, i32 0, i32 0)], align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.4 = private unnamed_addr constant [18 x i8] c"Who is John Galt?\00", align 1
@bf_plain = global [2 x [2 x i32]] [[2 x i32] [i32 1112297303, i32 1179210568], [2 x i32] [i32 -19088744, i32 1985229328]], align 4
@bf_cipher = global [2 x [2 x i32]] [[2 x i32] [i32 844026110, i32 -200039933], [2 x i32] [i32 -862883029, i32 -2145192316]], align 4
@key_test = global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 1
@key_data = global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@key_out = global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\5C\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\5C", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.3.5 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\5C\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\5C\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\5CP\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 1
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\5CZ\9C]\9E\0AZ"], align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" k[%2d]=\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"testing blowfish in raw ecb mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Set key.\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Encrypted.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"BF_encrypt error encrypting\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"got     :\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%08lX \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"decrypted.\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"BF_encrypt error decrypting\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"testing blowfish in ecb mode\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"BF_ecb_encrypt blowfish error encrypting\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"BF_ecb_encrypt error decrypting\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"testing blowfish set_key\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"blowfish setkey error\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"testing blowfish in cbc mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt encrypt error\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt decrypt error\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"testing blowfish in cfb64 mode\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt encrypt error\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt decrypt error\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"testing blowfish in ofb64\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt encrypt error\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt decrypt error\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @BF_cbc_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec92 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec93 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec94 = alloca <4 x i32>, align 16
  %CastInst2 = alloca i32, align 4
  %CastInstVec3 = alloca <4 x i32>, align 16
  %allocaVec95 = alloca <4 x i32>, align 16
  %CastInst4 = alloca i32, align 4
  %CastInstVec5 = alloca <4 x i32>, align 16
  %allocaVec96 = alloca <4 x i32>, align 16
  %CastInst6 = alloca i32, align 4
  %CastInstVec7 = alloca <4 x i32>, align 16
  %allocaVec97 = alloca <4 x i32>, align 16
  %CastInst8 = alloca i32, align 4
  %CastInstVec9 = alloca <4 x i32>, align 16
  %allocaVec98 = alloca <4 x i32>, align 16
  %CastInst10 = alloca i32, align 4
  %CastInstVec11 = alloca <4 x i32>, align 16
  %allocaVec99 = alloca <4 x i32>, align 16
  %CastInst12 = alloca i32, align 4
  %CastInstVec13 = alloca <4 x i32>, align 16
  %allocaVec100 = alloca <4 x i32>, align 16
  %CastInst14 = alloca i32, align 4
  %CastInstVec15 = alloca <4 x i32>, align 16
  %allocaVec101 = alloca <4 x i32>, align 16
  %CastInst16 = alloca i32, align 4
  %CastInstVec17 = alloca <4 x i32>, align 16
  %allocaVec102 = alloca <4 x i32>, align 16
  %CastInst18 = alloca i32, align 4
  %CastInstVec19 = alloca <4 x i32>, align 16
  %allocaVec103 = alloca <4 x i32>, align 16
  %CastInst20 = alloca i32, align 4
  %CastInstVec21 = alloca <4 x i32>, align 16
  %allocaVec104 = alloca <4 x i32>, align 16
  %CastInst22 = alloca i32, align 4
  %CastInstVec23 = alloca <4 x i32>, align 16
  %allocaVec105 = alloca <4 x i32>, align 16
  %CastInst24 = alloca i32, align 4
  %CastInstVec25 = alloca <4 x i32>, align 16
  %allocaVec106 = alloca <4 x i32>, align 16
  %CastInst26 = alloca i32, align 4
  %CastInstVec27 = alloca <4 x i32>, align 16
  %allocaVec107 = alloca <4 x i32>, align 16
  %CastInst28 = alloca i32, align 4
  %CastInstVec29 = alloca <4 x i32>, align 16
  %allocaVec108 = alloca <4 x i32>, align 16
  %CastInst30 = alloca i32, align 4
  %CastInstVec31 = alloca <4 x i32>, align 16
  %allocaVec109 = alloca <4 x i32>, align 16
  %CastInst32 = alloca i32, align 4
  %CastInstVec33 = alloca <4 x i32>, align 16
  %allocaVec110 = alloca <4 x i32>, align 16
  %CastInst34 = alloca i32, align 4
  %CastInstVec35 = alloca <4 x i32>, align 16
  %allocaVec111 = alloca <4 x i32>, align 16
  %CastInst36 = alloca i32, align 4
  %CastInstVec37 = alloca <4 x i32>, align 16
  %allocaVec112 = alloca <4 x i32>, align 16
  %CastInst38 = alloca i32, align 4
  %CastInstVec39 = alloca <4 x i32>, align 16
  %allocaVec113 = alloca <4 x i32>, align 16
  %CastInst40 = alloca i32, align 4
  %CastInstVec41 = alloca <4 x i32>, align 16
  %allocaVec114 = alloca <4 x i32>, align 16
  %CastInst42 = alloca i32, align 4
  %CastInstVec43 = alloca <4 x i32>, align 16
  %allocaVec115 = alloca <4 x i32>, align 16
  %CastInst44 = alloca i32, align 4
  %CastInstVec45 = alloca <4 x i32>, align 16
  %allocaVec116 = alloca <4 x i32>, align 16
  %CastInst46 = alloca i32, align 4
  %CastInstVec47 = alloca <4 x i32>, align 16
  %allocaVec117 = alloca <4 x i32>, align 16
  %CastInst48 = alloca i32, align 4
  %CastInstVec49 = alloca <4 x i32>, align 16
  %allocaVec118 = alloca <4 x i32>, align 16
  %CastInst50 = alloca i32, align 4
  %CastInstVec51 = alloca <4 x i32>, align 16
  %allocaVec119 = alloca <4 x i32>, align 16
  %CastInst52 = alloca i32, align 4
  %CastInstVec53 = alloca <4 x i32>, align 16
  %allocaVec120 = alloca <4 x i32>, align 16
  %CastInst54 = alloca i32, align 4
  %CastInstVec55 = alloca <4 x i32>, align 16
  %allocaVec121 = alloca <4 x i32>, align 16
  %CastInst56 = alloca i32, align 4
  %CastInstVec57 = alloca <4 x i32>, align 16
  %allocaVec122 = alloca <4 x i32>, align 16
  %CastInst58 = alloca i32, align 4
  %CastInstVec59 = alloca <4 x i32>, align 16
  %allocaVec123 = alloca <4 x i32>, align 16
  %CastInst60 = alloca i32, align 4
  %CastInstVec61 = alloca <4 x i32>, align 16
  %allocaVec124 = alloca <4 x i32>, align 16
  %CastInst62 = alloca i32, align 4
  %CastInstVec63 = alloca <4 x i32>, align 16
  %allocaVec125 = alloca <4 x i32>, align 16
  %CastInst64 = alloca i32, align 4
  %CastInstVec65 = alloca <4 x i32>, align 16
  %allocaVec126 = alloca <4 x i32>, align 16
  %CastInst66 = alloca i32, align 4
  %CastInstVec67 = alloca <4 x i32>, align 16
  %allocaVec127 = alloca <4 x i32>, align 16
  %CastInst68 = alloca i32, align 4
  %CastInstVec69 = alloca <4 x i32>, align 16
  %allocaVec128 = alloca <4 x i32>, align 16
  %CastInst70 = alloca i32, align 4
  %CastInstVec71 = alloca <4 x i32>, align 16
  %allocaVec129 = alloca <4 x i32>, align 16
  %CastInst72 = alloca i32, align 4
  %CastInstVec73 = alloca <4 x i32>, align 16
  %allocaVec130 = alloca <4 x i32>, align 16
  %CastInst74 = alloca i32, align 4
  %CastInstVec75 = alloca <4 x i32>, align 16
  %allocaVec131 = alloca <4 x i32>, align 16
  %CastInst76 = alloca i32, align 4
  %CastInstVec77 = alloca <4 x i32>, align 16
  %allocaVec132 = alloca <4 x i32>, align 16
  %CastInst78 = alloca i32, align 4
  %CastInstVec79 = alloca <4 x i32>, align 16
  %allocaVec133 = alloca <4 x i32>, align 16
  %CastInst80 = alloca i32, align 4
  %CastInstVec81 = alloca <4 x i32>, align 16
  %allocaVec134 = alloca <4 x i32>, align 16
  %CastInst82 = alloca i32, align 4
  %CastInstVec83 = alloca <4 x i32>, align 16
  %allocaVec135 = alloca <4 x i32>, align 16
  %CastInst84 = alloca i32, align 4
  %CastInstVec85 = alloca <4 x i32>, align 16
  %allocaVec136 = alloca <4 x i32>, align 16
  %CastInst86 = alloca i32, align 4
  %CastInstVec87 = alloca <4 x i32>, align 16
  %allocaVec137 = alloca <4 x i32>, align 16
  %CastInst88 = alloca i32, align 4
  %CastInstVec89 = alloca <4 x i32>, align 16
  %allocaVec138 = alloca <4 x i32>, align 16
  %CastInst90 = alloca i32, align 4
  %CastInstVec91 = alloca <4 x i32>, align 16
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %allocaVec139 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.bf_key_st*, align 4
  %11 = alloca i8*, align 4
  %allocaVec140 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec141 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec142 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec143 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec144 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec145 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec146 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec147 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 4
  store i8* %1, i8** %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 4
  store i8* %4, i8** %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %474

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %11, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %11, align 4
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %CastInst
  %29 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %29, i32 0
  %insertCast148 = insertelement <4 x i32> %insertCast, i32 %29, i32 1
  %insertCast149 = insertelement <4 x i32> %insertCast148, i32 %29, i32 2
  %insertCast150 = insertelement <4 x i32> %insertCast149, i32 %29, i32 3
  store <4 x i32> %insertCast150, <4 x i32>* %CastInstVec, align 4
  %30 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = shl <4 x i32> %30, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec143
  %31 = shl i32 %28, 24
  store i32 %31, i32* %15, align 4
  %32 = load i8*, i8** %11, align 4
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 4
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %CastInst2
  %36 = load i32, i32* %CastInst2, align 4
  %insertCast151 = insertelement <4 x i32> undef, i32 %36, i32 0
  %insertCast152 = insertelement <4 x i32> %insertCast151, i32 %36, i32 1
  %insertCast153 = insertelement <4 x i32> %insertCast152, i32 %36, i32 2
  %insertCast154 = insertelement <4 x i32> %insertCast153, i32 %36, i32 3
  store <4 x i32> %insertCast154, <4 x i32>* %CastInstVec3, align 4
  %37 = load <4 x i32>, <4 x i32>* %CastInstVec3, align 4
  %Vop155 = shl <4 x i32> %37, <i32 16, i32 16, i32 16, i32 16>
  %38 = shl i32 %35, 16
  %39 = load i32, i32* %15, align 4
  %40 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop156 = or <4 x i32> %40, %Vop155
  store <4 x i32> %Vop156, <4 x i32>* %allocaVec143
  %41 = or i32 %39, %38
  store i32 %41, i32* %15, align 4
  %42 = load i8*, i8** %11, align 4
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 4
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %CastInst4
  %46 = load i32, i32* %CastInst4, align 4
  %insertCast157 = insertelement <4 x i32> undef, i32 %46, i32 0
  %insertCast158 = insertelement <4 x i32> %insertCast157, i32 %46, i32 1
  %insertCast159 = insertelement <4 x i32> %insertCast158, i32 %46, i32 2
  %insertCast160 = insertelement <4 x i32> %insertCast159, i32 %46, i32 3
  store <4 x i32> %insertCast160, <4 x i32>* %CastInstVec5, align 4
  %47 = load <4 x i32>, <4 x i32>* %CastInstVec5, align 4
  %Vop161 = shl <4 x i32> %47, <i32 8, i32 8, i32 8, i32 8>
  %48 = shl i32 %45, 8
  %49 = load i32, i32* %15, align 4
  %50 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop162 = or <4 x i32> %50, %Vop161
  store <4 x i32> %Vop162, <4 x i32>* %allocaVec143
  %51 = or i32 %49, %48
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %11, align 4
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 4
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %15, align 4
  %57 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  store i32 %55, i32* %CastInst6
  %58 = load i32, i32* %CastInst6, align 4
  %insertCast163 = insertelement <4 x i32> undef, i32 %58, i32 0
  %insertCast164 = insertelement <4 x i32> %insertCast163, i32 %58, i32 1
  %insertCast165 = insertelement <4 x i32> %insertCast164, i32 %58, i32 2
  %insertCast166 = insertelement <4 x i32> %insertCast165, i32 %58, i32 3
  store <4 x i32> %insertCast166, <4 x i32>* %CastInstVec7, align 4
  %59 = load <4 x i32>, <4 x i32>* %CastInstVec7, align 4
  %Vop167 = or <4 x i32> %57, %59
  store <4 x i32> %Vop167, <4 x i32>* %allocaVec143
  %60 = or i32 %56, %55
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %11, align 4
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 4
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %CastInst8
  %65 = load i32, i32* %CastInst8, align 4
  %insertCast168 = insertelement <4 x i32> undef, i32 %65, i32 0
  %insertCast169 = insertelement <4 x i32> %insertCast168, i32 %65, i32 1
  %insertCast170 = insertelement <4 x i32> %insertCast169, i32 %65, i32 2
  %insertCast171 = insertelement <4 x i32> %insertCast170, i32 %65, i32 3
  store <4 x i32> %insertCast171, <4 x i32>* %CastInstVec9, align 4
  %66 = load <4 x i32>, <4 x i32>* %CastInstVec9, align 4
  %Vop172 = shl <4 x i32> %66, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop172, <4 x i32>* %allocaVec144
  %67 = shl i32 %64, 24
  store i32 %67, i32* %16, align 4
  %68 = load i8*, i8** %11, align 4
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 4
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %CastInst10
  %72 = load i32, i32* %CastInst10, align 4
  %insertCast173 = insertelement <4 x i32> undef, i32 %72, i32 0
  %insertCast174 = insertelement <4 x i32> %insertCast173, i32 %72, i32 1
  %insertCast175 = insertelement <4 x i32> %insertCast174, i32 %72, i32 2
  %insertCast176 = insertelement <4 x i32> %insertCast175, i32 %72, i32 3
  store <4 x i32> %insertCast176, <4 x i32>* %CastInstVec11, align 4
  %73 = load <4 x i32>, <4 x i32>* %CastInstVec11, align 4
  %Vop177 = shl <4 x i32> %73, <i32 16, i32 16, i32 16, i32 16>
  %74 = shl i32 %71, 16
  %75 = load i32, i32* %16, align 4
  %76 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop178 = or <4 x i32> %76, %Vop177
  store <4 x i32> %Vop178, <4 x i32>* %allocaVec144
  %77 = or i32 %75, %74
  store i32 %77, i32* %16, align 4
  %78 = load i8*, i8** %11, align 4
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 4
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %CastInst12
  %82 = load i32, i32* %CastInst12, align 4
  %insertCast179 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertCast180 = insertelement <4 x i32> %insertCast179, i32 %82, i32 1
  %insertCast181 = insertelement <4 x i32> %insertCast180, i32 %82, i32 2
  %insertCast182 = insertelement <4 x i32> %insertCast181, i32 %82, i32 3
  store <4 x i32> %insertCast182, <4 x i32>* %CastInstVec13, align 4
  %83 = load <4 x i32>, <4 x i32>* %CastInstVec13, align 4
  %Vop183 = shl <4 x i32> %83, <i32 8, i32 8, i32 8, i32 8>
  %84 = shl i32 %81, 8
  %85 = load i32, i32* %16, align 4
  %86 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop184 = or <4 x i32> %86, %Vop183
  store <4 x i32> %Vop184, <4 x i32>* %allocaVec144
  %87 = or i32 %85, %84
  store i32 %87, i32* %16, align 4
  %88 = load i8*, i8** %11, align 4
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %11, align 4
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* %16, align 4
  %93 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  store i32 %91, i32* %CastInst14
  %94 = load i32, i32* %CastInst14, align 4
  %insertCast185 = insertelement <4 x i32> undef, i32 %94, i32 0
  %insertCast186 = insertelement <4 x i32> %insertCast185, i32 %94, i32 1
  %insertCast187 = insertelement <4 x i32> %insertCast186, i32 %94, i32 2
  %insertCast188 = insertelement <4 x i32> %insertCast187, i32 %94, i32 3
  store <4 x i32> %insertCast188, <4 x i32>* %CastInstVec15, align 4
  %95 = load <4 x i32>, <4 x i32>* %CastInstVec15, align 4
  %Vop189 = or <4 x i32> %93, %95
  store <4 x i32> %Vop189, <4 x i32>* %allocaVec144
  %96 = or i32 %92, %91
  store i32 %96, i32* %16, align 4
  %97 = load i8*, i8** %11, align 4
  %98 = getelementptr inbounds i8, i8* %97, i32 -8
  store i8* %98, i8** %11, align 4
  %99 = load i32, i32* %19, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %99, i32 0
  %insertElmt190 = insertelement <4 x i32> %insertElmt, i32 %99, i32 1
  %insertElmt191 = insertelement <4 x i32> %insertElmt190, i32 %99, i32 2
  %insertElmt192 = insertelement <4 x i32> %insertElmt191, i32 %99, i32 3
  store <4 x i32> %insertElmt192, <4 x i32>* %allocaVec147, align 16
  %100 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop193 = sub <4 x i32> %100, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop193, <4 x i32>* %allocaVec147
  %101 = sub nsw i32 %99, 8
  store i32 %101, i32* %19, align 4
  br label %102

; <label>:102:                                    ; preds = %252, %24
  %103 = load i32, i32* %19, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %256

; <label>:105:                                    ; preds = %102
  %106 = load i8*, i8** %7, align 4
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 4
  %108 = load i8, i8* %106, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, i32* %CastInst16
  %110 = load i32, i32* %CastInst16, align 4
  %insertCast194 = insertelement <4 x i32> undef, i32 %110, i32 0
  %insertCast195 = insertelement <4 x i32> %insertCast194, i32 %110, i32 1
  %insertCast196 = insertelement <4 x i32> %insertCast195, i32 %110, i32 2
  %insertCast197 = insertelement <4 x i32> %insertCast196, i32 %110, i32 3
  store <4 x i32> %insertCast197, <4 x i32>* %CastInstVec17, align 4
  %111 = load <4 x i32>, <4 x i32>* %CastInstVec17, align 4
  %Vop198 = shl <4 x i32> %111, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop198, <4 x i32>* %allocaVec141
  %112 = shl i32 %109, 24
  store i32 %112, i32* %13, align 4
  %113 = load i8*, i8** %7, align 4
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 4
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %CastInst18
  %117 = load i32, i32* %CastInst18, align 4
  %insertCast199 = insertelement <4 x i32> undef, i32 %117, i32 0
  %insertCast200 = insertelement <4 x i32> %insertCast199, i32 %117, i32 1
  %insertCast201 = insertelement <4 x i32> %insertCast200, i32 %117, i32 2
  %insertCast202 = insertelement <4 x i32> %insertCast201, i32 %117, i32 3
  store <4 x i32> %insertCast202, <4 x i32>* %CastInstVec19, align 4
  %118 = load <4 x i32>, <4 x i32>* %CastInstVec19, align 4
  %Vop203 = shl <4 x i32> %118, <i32 16, i32 16, i32 16, i32 16>
  %119 = shl i32 %116, 16
  %120 = load i32, i32* %13, align 4
  %121 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop204 = or <4 x i32> %121, %Vop203
  store <4 x i32> %Vop204, <4 x i32>* %allocaVec141
  %122 = or i32 %120, %119
  store i32 %122, i32* %13, align 4
  %123 = load i8*, i8** %7, align 4
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 4
  %125 = load i8, i8* %123, align 1
  %126 = zext i8 %125 to i32
  store i32 %126, i32* %CastInst20
  %127 = load i32, i32* %CastInst20, align 4
  %insertCast205 = insertelement <4 x i32> undef, i32 %127, i32 0
  %insertCast206 = insertelement <4 x i32> %insertCast205, i32 %127, i32 1
  %insertCast207 = insertelement <4 x i32> %insertCast206, i32 %127, i32 2
  %insertCast208 = insertelement <4 x i32> %insertCast207, i32 %127, i32 3
  store <4 x i32> %insertCast208, <4 x i32>* %CastInstVec21, align 4
  %128 = load <4 x i32>, <4 x i32>* %CastInstVec21, align 4
  %Vop209 = shl <4 x i32> %128, <i32 8, i32 8, i32 8, i32 8>
  %129 = shl i32 %126, 8
  %130 = load i32, i32* %13, align 4
  %131 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop210 = or <4 x i32> %131, %Vop209
  store <4 x i32> %Vop210, <4 x i32>* %allocaVec141
  %132 = or i32 %130, %129
  store i32 %132, i32* %13, align 4
  %133 = load i8*, i8** %7, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 4
  %135 = load i8, i8* %133, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %13, align 4
  %138 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  store i32 %136, i32* %CastInst22
  %139 = load i32, i32* %CastInst22, align 4
  %insertCast211 = insertelement <4 x i32> undef, i32 %139, i32 0
  %insertCast212 = insertelement <4 x i32> %insertCast211, i32 %139, i32 1
  %insertCast213 = insertelement <4 x i32> %insertCast212, i32 %139, i32 2
  %insertCast214 = insertelement <4 x i32> %insertCast213, i32 %139, i32 3
  store <4 x i32> %insertCast214, <4 x i32>* %CastInstVec23, align 4
  %140 = load <4 x i32>, <4 x i32>* %CastInstVec23, align 4
  %Vop215 = or <4 x i32> %138, %140
  store <4 x i32> %Vop215, <4 x i32>* %allocaVec141
  %141 = or i32 %137, %136
  store i32 %141, i32* %13, align 4
  %142 = load i8*, i8** %7, align 4
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 4
  %144 = load i8, i8* %142, align 1
  %145 = zext i8 %144 to i32
  store i32 %145, i32* %CastInst24
  %146 = load i32, i32* %CastInst24, align 4
  %insertCast216 = insertelement <4 x i32> undef, i32 %146, i32 0
  %insertCast217 = insertelement <4 x i32> %insertCast216, i32 %146, i32 1
  %insertCast218 = insertelement <4 x i32> %insertCast217, i32 %146, i32 2
  %insertCast219 = insertelement <4 x i32> %insertCast218, i32 %146, i32 3
  store <4 x i32> %insertCast219, <4 x i32>* %CastInstVec25, align 4
  %147 = load <4 x i32>, <4 x i32>* %CastInstVec25, align 4
  %Vop220 = shl <4 x i32> %147, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop220, <4 x i32>* %allocaVec142
  %148 = shl i32 %145, 24
  store i32 %148, i32* %14, align 4
  %149 = load i8*, i8** %7, align 4
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %7, align 4
  %151 = load i8, i8* %149, align 1
  %152 = zext i8 %151 to i32
  store i32 %152, i32* %CastInst26
  %153 = load i32, i32* %CastInst26, align 4
  %insertCast221 = insertelement <4 x i32> undef, i32 %153, i32 0
  %insertCast222 = insertelement <4 x i32> %insertCast221, i32 %153, i32 1
  %insertCast223 = insertelement <4 x i32> %insertCast222, i32 %153, i32 2
  %insertCast224 = insertelement <4 x i32> %insertCast223, i32 %153, i32 3
  store <4 x i32> %insertCast224, <4 x i32>* %CastInstVec27, align 4
  %154 = load <4 x i32>, <4 x i32>* %CastInstVec27, align 4
  %Vop225 = shl <4 x i32> %154, <i32 16, i32 16, i32 16, i32 16>
  %155 = shl i32 %152, 16
  %156 = load i32, i32* %14, align 4
  %157 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop226 = or <4 x i32> %157, %Vop225
  store <4 x i32> %Vop226, <4 x i32>* %allocaVec142
  %158 = or i32 %156, %155
  store i32 %158, i32* %14, align 4
  %159 = load i8*, i8** %7, align 4
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %7, align 4
  %161 = load i8, i8* %159, align 1
  %162 = zext i8 %161 to i32
  store i32 %162, i32* %CastInst28
  %163 = load i32, i32* %CastInst28, align 4
  %insertCast227 = insertelement <4 x i32> undef, i32 %163, i32 0
  %insertCast228 = insertelement <4 x i32> %insertCast227, i32 %163, i32 1
  %insertCast229 = insertelement <4 x i32> %insertCast228, i32 %163, i32 2
  %insertCast230 = insertelement <4 x i32> %insertCast229, i32 %163, i32 3
  store <4 x i32> %insertCast230, <4 x i32>* %CastInstVec29, align 4
  %164 = load <4 x i32>, <4 x i32>* %CastInstVec29, align 4
  %Vop231 = shl <4 x i32> %164, <i32 8, i32 8, i32 8, i32 8>
  %165 = shl i32 %162, 8
  %166 = load i32, i32* %14, align 4
  %167 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop232 = or <4 x i32> %167, %Vop231
  store <4 x i32> %Vop232, <4 x i32>* %allocaVec142
  %168 = or i32 %166, %165
  store i32 %168, i32* %14, align 4
  %169 = load i8*, i8** %7, align 4
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %7, align 4
  %171 = load i8, i8* %169, align 1
  %172 = zext i8 %171 to i32
  %173 = load i32, i32* %14, align 4
  %174 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  store i32 %172, i32* %CastInst30
  %175 = load i32, i32* %CastInst30, align 4
  %insertCast233 = insertelement <4 x i32> undef, i32 %175, i32 0
  %insertCast234 = insertelement <4 x i32> %insertCast233, i32 %175, i32 1
  %insertCast235 = insertelement <4 x i32> %insertCast234, i32 %175, i32 2
  %insertCast236 = insertelement <4 x i32> %insertCast235, i32 %175, i32 3
  store <4 x i32> %insertCast236, <4 x i32>* %CastInstVec31, align 4
  %176 = load <4 x i32>, <4 x i32>* %CastInstVec31, align 4
  %Vop237 = or <4 x i32> %174, %176
  store <4 x i32> %Vop237, <4 x i32>* %allocaVec142
  %177 = or i32 %173, %172
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %181 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop238 = xor <4 x i32> %180, %181
  store <4 x i32> %Vop238, <4 x i32>* %allocaVec141
  %182 = xor i32 %179, %178
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %186 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop239 = xor <4 x i32> %185, %186
  store <4 x i32> %Vop239, <4 x i32>* %allocaVec142
  %187 = xor i32 %184, %183
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %14, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %193 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %192, %struct.bf_key_st* %193, i32 1)
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %15, align 4
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop240 = lshr <4 x i32> %199, <i32 24, i32 24, i32 24, i32 24>
  %200 = lshr i32 %198, 24
  %Vop241 = and <4 x i32> %Vop240, <i32 255, i32 255, i32 255, i32 255>
  %201 = and i32 %200, 255
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %8, align 4
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %8, align 4
  store i8 %202, i8* %203, align 1
  %205 = load i32, i32* %15, align 4
  %206 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop242 = lshr <4 x i32> %206, <i32 16, i32 16, i32 16, i32 16>
  %207 = lshr i32 %205, 16
  %Vop243 = and <4 x i32> %Vop242, <i32 255, i32 255, i32 255, i32 255>
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %8, align 4
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %8, align 4
  store i8 %209, i8* %210, align 1
  %212 = load i32, i32* %15, align 4
  %213 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop244 = lshr <4 x i32> %213, <i32 8, i32 8, i32 8, i32 8>
  %214 = lshr i32 %212, 8
  %Vop245 = and <4 x i32> %Vop244, <i32 255, i32 255, i32 255, i32 255>
  %215 = and i32 %214, 255
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %8, align 4
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %8, align 4
  store i8 %216, i8* %217, align 1
  %219 = load i32, i32* %15, align 4
  %220 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop246 = and <4 x i32> %220, <i32 255, i32 255, i32 255, i32 255>
  %221 = and i32 %219, 255
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %8, align 4
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %8, align 4
  store i8 %222, i8* %223, align 1
  %225 = load i32, i32* %16, align 4
  %226 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop247 = lshr <4 x i32> %226, <i32 24, i32 24, i32 24, i32 24>
  %227 = lshr i32 %225, 24
  %Vop248 = and <4 x i32> %Vop247, <i32 255, i32 255, i32 255, i32 255>
  %228 = and i32 %227, 255
  %229 = trunc i32 %228 to i8
  %230 = load i8*, i8** %8, align 4
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %8, align 4
  store i8 %229, i8* %230, align 1
  %232 = load i32, i32* %16, align 4
  %233 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop249 = lshr <4 x i32> %233, <i32 16, i32 16, i32 16, i32 16>
  %234 = lshr i32 %232, 16
  %Vop250 = and <4 x i32> %Vop249, <i32 255, i32 255, i32 255, i32 255>
  %235 = and i32 %234, 255
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %8, align 4
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %8, align 4
  store i8 %236, i8* %237, align 1
  %239 = load i32, i32* %16, align 4
  %240 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop251 = lshr <4 x i32> %240, <i32 8, i32 8, i32 8, i32 8>
  %241 = lshr i32 %239, 8
  %Vop252 = and <4 x i32> %Vop251, <i32 255, i32 255, i32 255, i32 255>
  %242 = and i32 %241, 255
  %243 = trunc i32 %242 to i8
  %244 = load i8*, i8** %8, align 4
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %8, align 4
  store i8 %243, i8* %244, align 1
  %246 = load i32, i32* %16, align 4
  %247 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop253 = and <4 x i32> %247, <i32 255, i32 255, i32 255, i32 255>
  %248 = and i32 %246, 255
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %8, align 4
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %8, align 4
  store i8 %249, i8* %250, align 1
  br label %252

; <label>:252:                                    ; preds = %105
  %253 = load i32, i32* %19, align 4
  %254 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop254 = sub <4 x i32> %254, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop254, <4 x i32>* %allocaVec147
  %255 = sub nsw i32 %253, 8
  store i32 %255, i32* %19, align 4
  br label %102

; <label>:256:                                    ; preds = %102
  %257 = load i32, i32* %19, align 4
  %258 = icmp ne i32 %257, -8
  br i1 %258, label %259, label %419

; <label>:259:                                    ; preds = %256
  %260 = load i32, i32* %19, align 4
  %261 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop255 = add <4 x i32> %261, <i32 8, i32 8, i32 8, i32 8>
  %262 = add nsw i32 %260, 8
  %263 = load i8*, i8** %7, align 4
  %264 = getelementptr inbounds i8, i8* %263, i32 %262
  store i8* %264, i8** %7, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec142
  store i32 0, i32* %14, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec141
  store i32 0, i32* %13, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop256 = add <4 x i32> %266, <i32 8, i32 8, i32 8, i32 8>
  %267 = add nsw i32 %265, 8
  switch i32 %267, label %344 [
    i32 8, label %268
    i32 7, label %273
    i32 6, label %284
    i32 5, label %295
    i32 4, label %306
    i32 3, label %311
    i32 2, label %322
    i32 1, label %333
  ]

; <label>:268:                                    ; preds = %259
  %269 = load i8*, i8** %7, align 4
  %270 = getelementptr inbounds i8, i8* %269, i32 -1
  store i8* %270, i8** %7, align 4
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  store i32 %272, i32* %14, align 4
  br label %273

; <label>:273:                                    ; preds = %268, %259
  %274 = load i8*, i8** %7, align 4
  %275 = getelementptr inbounds i8, i8* %274, i32 -1
  store i8* %275, i8** %7, align 4
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  store i32 %277, i32* %CastInst32
  %278 = load i32, i32* %CastInst32, align 4
  %insertCast257 = insertelement <4 x i32> undef, i32 %278, i32 0
  %insertCast258 = insertelement <4 x i32> %insertCast257, i32 %278, i32 1
  %insertCast259 = insertelement <4 x i32> %insertCast258, i32 %278, i32 2
  %insertCast260 = insertelement <4 x i32> %insertCast259, i32 %278, i32 3
  store <4 x i32> %insertCast260, <4 x i32>* %CastInstVec33, align 4
  %279 = load <4 x i32>, <4 x i32>* %CastInstVec33, align 4
  %Vop261 = shl <4 x i32> %279, <i32 8, i32 8, i32 8, i32 8>
  %280 = shl i32 %277, 8
  %281 = load i32, i32* %14, align 4
  %282 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop262 = or <4 x i32> %282, %Vop261
  store <4 x i32> %Vop262, <4 x i32>* %allocaVec142
  %283 = or i32 %281, %280
  store i32 %283, i32* %14, align 4
  br label %284

; <label>:284:                                    ; preds = %273, %259
  %285 = load i8*, i8** %7, align 4
  %286 = getelementptr inbounds i8, i8* %285, i32 -1
  store i8* %286, i8** %7, align 4
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  store i32 %288, i32* %CastInst34
  %289 = load i32, i32* %CastInst34, align 4
  %insertCast263 = insertelement <4 x i32> undef, i32 %289, i32 0
  %insertCast264 = insertelement <4 x i32> %insertCast263, i32 %289, i32 1
  %insertCast265 = insertelement <4 x i32> %insertCast264, i32 %289, i32 2
  %insertCast266 = insertelement <4 x i32> %insertCast265, i32 %289, i32 3
  store <4 x i32> %insertCast266, <4 x i32>* %CastInstVec35, align 4
  %290 = load <4 x i32>, <4 x i32>* %CastInstVec35, align 4
  %Vop267 = shl <4 x i32> %290, <i32 16, i32 16, i32 16, i32 16>
  %291 = shl i32 %288, 16
  %292 = load i32, i32* %14, align 4
  %293 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop268 = or <4 x i32> %293, %Vop267
  store <4 x i32> %Vop268, <4 x i32>* %allocaVec142
  %294 = or i32 %292, %291
  store i32 %294, i32* %14, align 4
  br label %295

; <label>:295:                                    ; preds = %284, %259
  %296 = load i8*, i8** %7, align 4
  %297 = getelementptr inbounds i8, i8* %296, i32 -1
  store i8* %297, i8** %7, align 4
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  store i32 %299, i32* %CastInst36
  %300 = load i32, i32* %CastInst36, align 4
  %insertCast269 = insertelement <4 x i32> undef, i32 %300, i32 0
  %insertCast270 = insertelement <4 x i32> %insertCast269, i32 %300, i32 1
  %insertCast271 = insertelement <4 x i32> %insertCast270, i32 %300, i32 2
  %insertCast272 = insertelement <4 x i32> %insertCast271, i32 %300, i32 3
  store <4 x i32> %insertCast272, <4 x i32>* %CastInstVec37, align 4
  %301 = load <4 x i32>, <4 x i32>* %CastInstVec37, align 4
  %Vop273 = shl <4 x i32> %301, <i32 24, i32 24, i32 24, i32 24>
  %302 = shl i32 %299, 24
  %303 = load i32, i32* %14, align 4
  %304 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop274 = or <4 x i32> %304, %Vop273
  store <4 x i32> %Vop274, <4 x i32>* %allocaVec142
  %305 = or i32 %303, %302
  store i32 %305, i32* %14, align 4
  br label %306

; <label>:306:                                    ; preds = %295, %259
  %307 = load i8*, i8** %7, align 4
  %308 = getelementptr inbounds i8, i8* %307, i32 -1
  store i8* %308, i8** %7, align 4
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  store i32 %310, i32* %13, align 4
  br label %311

; <label>:311:                                    ; preds = %306, %259
  %312 = load i8*, i8** %7, align 4
  %313 = getelementptr inbounds i8, i8* %312, i32 -1
  store i8* %313, i8** %7, align 4
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  store i32 %315, i32* %CastInst38
  %316 = load i32, i32* %CastInst38, align 4
  %insertCast275 = insertelement <4 x i32> undef, i32 %316, i32 0
  %insertCast276 = insertelement <4 x i32> %insertCast275, i32 %316, i32 1
  %insertCast277 = insertelement <4 x i32> %insertCast276, i32 %316, i32 2
  %insertCast278 = insertelement <4 x i32> %insertCast277, i32 %316, i32 3
  store <4 x i32> %insertCast278, <4 x i32>* %CastInstVec39, align 4
  %317 = load <4 x i32>, <4 x i32>* %CastInstVec39, align 4
  %Vop279 = shl <4 x i32> %317, <i32 8, i32 8, i32 8, i32 8>
  %318 = shl i32 %315, 8
  %319 = load i32, i32* %13, align 4
  %320 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop280 = or <4 x i32> %320, %Vop279
  store <4 x i32> %Vop280, <4 x i32>* %allocaVec141
  %321 = or i32 %319, %318
  store i32 %321, i32* %13, align 4
  br label %322

; <label>:322:                                    ; preds = %311, %259
  %323 = load i8*, i8** %7, align 4
  %324 = getelementptr inbounds i8, i8* %323, i32 -1
  store i8* %324, i8** %7, align 4
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  store i32 %326, i32* %CastInst40
  %327 = load i32, i32* %CastInst40, align 4
  %insertCast281 = insertelement <4 x i32> undef, i32 %327, i32 0
  %insertCast282 = insertelement <4 x i32> %insertCast281, i32 %327, i32 1
  %insertCast283 = insertelement <4 x i32> %insertCast282, i32 %327, i32 2
  %insertCast284 = insertelement <4 x i32> %insertCast283, i32 %327, i32 3
  store <4 x i32> %insertCast284, <4 x i32>* %CastInstVec41, align 4
  %328 = load <4 x i32>, <4 x i32>* %CastInstVec41, align 4
  %Vop285 = shl <4 x i32> %328, <i32 16, i32 16, i32 16, i32 16>
  %329 = shl i32 %326, 16
  %330 = load i32, i32* %13, align 4
  %331 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop286 = or <4 x i32> %331, %Vop285
  store <4 x i32> %Vop286, <4 x i32>* %allocaVec141
  %332 = or i32 %330, %329
  store i32 %332, i32* %13, align 4
  br label %333

; <label>:333:                                    ; preds = %322, %259
  %334 = load i8*, i8** %7, align 4
  %335 = getelementptr inbounds i8, i8* %334, i32 -1
  store i8* %335, i8** %7, align 4
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  store i32 %337, i32* %CastInst42
  %338 = load i32, i32* %CastInst42, align 4
  %insertCast287 = insertelement <4 x i32> undef, i32 %338, i32 0
  %insertCast288 = insertelement <4 x i32> %insertCast287, i32 %338, i32 1
  %insertCast289 = insertelement <4 x i32> %insertCast288, i32 %338, i32 2
  %insertCast290 = insertelement <4 x i32> %insertCast289, i32 %338, i32 3
  store <4 x i32> %insertCast290, <4 x i32>* %CastInstVec43, align 4
  %339 = load <4 x i32>, <4 x i32>* %CastInstVec43, align 4
  %Vop291 = shl <4 x i32> %339, <i32 24, i32 24, i32 24, i32 24>
  %340 = shl i32 %337, 24
  %341 = load i32, i32* %13, align 4
  %342 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop292 = or <4 x i32> %342, %Vop291
  store <4 x i32> %Vop292, <4 x i32>* %allocaVec141
  %343 = or i32 %341, %340
  store i32 %343, i32* %13, align 4
  br label %344

; <label>:344:                                    ; preds = %333, %259
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* %13, align 4
  %347 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %348 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop293 = xor <4 x i32> %347, %348
  store <4 x i32> %Vop293, <4 x i32>* %allocaVec141
  %349 = xor i32 %346, %345
  store i32 %349, i32* %13, align 4
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %14, align 4
  %352 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %353 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop294 = xor <4 x i32> %352, %353
  store <4 x i32> %Vop294, <4 x i32>* %allocaVec142
  %354 = xor i32 %351, %350
  store i32 %354, i32* %14, align 4
  %355 = load i32, i32* %13, align 4
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %355, i32* %356, align 4
  %357 = load i32, i32* %14, align 4
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %357, i32* %358, align 4
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %360 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %359, %struct.bf_key_st* %360, i32 1)
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %15, align 4
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %16, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop295 = lshr <4 x i32> %366, <i32 24, i32 24, i32 24, i32 24>
  %367 = lshr i32 %365, 24
  %Vop296 = and <4 x i32> %Vop295, <i32 255, i32 255, i32 255, i32 255>
  %368 = and i32 %367, 255
  %369 = trunc i32 %368 to i8
  %370 = load i8*, i8** %8, align 4
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %8, align 4
  store i8 %369, i8* %370, align 1
  %372 = load i32, i32* %15, align 4
  %373 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop297 = lshr <4 x i32> %373, <i32 16, i32 16, i32 16, i32 16>
  %374 = lshr i32 %372, 16
  %Vop298 = and <4 x i32> %Vop297, <i32 255, i32 255, i32 255, i32 255>
  %375 = and i32 %374, 255
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %8, align 4
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %8, align 4
  store i8 %376, i8* %377, align 1
  %379 = load i32, i32* %15, align 4
  %380 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop299 = lshr <4 x i32> %380, <i32 8, i32 8, i32 8, i32 8>
  %381 = lshr i32 %379, 8
  %Vop300 = and <4 x i32> %Vop299, <i32 255, i32 255, i32 255, i32 255>
  %382 = and i32 %381, 255
  %383 = trunc i32 %382 to i8
  %384 = load i8*, i8** %8, align 4
  %385 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %385, i8** %8, align 4
  store i8 %383, i8* %384, align 1
  %386 = load i32, i32* %15, align 4
  %387 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop301 = and <4 x i32> %387, <i32 255, i32 255, i32 255, i32 255>
  %388 = and i32 %386, 255
  %389 = trunc i32 %388 to i8
  %390 = load i8*, i8** %8, align 4
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %8, align 4
  store i8 %389, i8* %390, align 1
  %392 = load i32, i32* %16, align 4
  %393 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop302 = lshr <4 x i32> %393, <i32 24, i32 24, i32 24, i32 24>
  %394 = lshr i32 %392, 24
  %Vop303 = and <4 x i32> %Vop302, <i32 255, i32 255, i32 255, i32 255>
  %395 = and i32 %394, 255
  %396 = trunc i32 %395 to i8
  %397 = load i8*, i8** %8, align 4
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %8, align 4
  store i8 %396, i8* %397, align 1
  %399 = load i32, i32* %16, align 4
  %400 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop304 = lshr <4 x i32> %400, <i32 16, i32 16, i32 16, i32 16>
  %401 = lshr i32 %399, 16
  %Vop305 = and <4 x i32> %Vop304, <i32 255, i32 255, i32 255, i32 255>
  %402 = and i32 %401, 255
  %403 = trunc i32 %402 to i8
  %404 = load i8*, i8** %8, align 4
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %8, align 4
  store i8 %403, i8* %404, align 1
  %406 = load i32, i32* %16, align 4
  %407 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop306 = lshr <4 x i32> %407, <i32 8, i32 8, i32 8, i32 8>
  %408 = lshr i32 %406, 8
  %Vop307 = and <4 x i32> %Vop306, <i32 255, i32 255, i32 255, i32 255>
  %409 = and i32 %408, 255
  %410 = trunc i32 %409 to i8
  %411 = load i8*, i8** %8, align 4
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %8, align 4
  store i8 %410, i8* %411, align 1
  %413 = load i32, i32* %16, align 4
  %414 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop308 = and <4 x i32> %414, <i32 255, i32 255, i32 255, i32 255>
  %415 = and i32 %413, 255
  %416 = trunc i32 %415 to i8
  %417 = load i8*, i8** %8, align 4
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %8, align 4
  store i8 %416, i8* %417, align 1
  br label %419

; <label>:419:                                    ; preds = %344, %256
  %420 = load i32, i32* %15, align 4
  %421 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop309 = lshr <4 x i32> %421, <i32 24, i32 24, i32 24, i32 24>
  %422 = lshr i32 %420, 24
  %Vop310 = and <4 x i32> %Vop309, <i32 255, i32 255, i32 255, i32 255>
  %423 = and i32 %422, 255
  %424 = trunc i32 %423 to i8
  %425 = load i8*, i8** %11, align 4
  %426 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %426, i8** %11, align 4
  store i8 %424, i8* %425, align 1
  %427 = load i32, i32* %15, align 4
  %428 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop311 = lshr <4 x i32> %428, <i32 16, i32 16, i32 16, i32 16>
  %429 = lshr i32 %427, 16
  %Vop312 = and <4 x i32> %Vop311, <i32 255, i32 255, i32 255, i32 255>
  %430 = and i32 %429, 255
  %431 = trunc i32 %430 to i8
  %432 = load i8*, i8** %11, align 4
  %433 = getelementptr inbounds i8, i8* %432, i32 1
  store i8* %433, i8** %11, align 4
  store i8 %431, i8* %432, align 1
  %434 = load i32, i32* %15, align 4
  %435 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop313 = lshr <4 x i32> %435, <i32 8, i32 8, i32 8, i32 8>
  %436 = lshr i32 %434, 8
  %Vop314 = and <4 x i32> %Vop313, <i32 255, i32 255, i32 255, i32 255>
  %437 = and i32 %436, 255
  %438 = trunc i32 %437 to i8
  %439 = load i8*, i8** %11, align 4
  %440 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %440, i8** %11, align 4
  store i8 %438, i8* %439, align 1
  %441 = load i32, i32* %15, align 4
  %442 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop315 = and <4 x i32> %442, <i32 255, i32 255, i32 255, i32 255>
  %443 = and i32 %441, 255
  %444 = trunc i32 %443 to i8
  %445 = load i8*, i8** %11, align 4
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %11, align 4
  store i8 %444, i8* %445, align 1
  %447 = load i32, i32* %16, align 4
  %448 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop316 = lshr <4 x i32> %448, <i32 24, i32 24, i32 24, i32 24>
  %449 = lshr i32 %447, 24
  %Vop317 = and <4 x i32> %Vop316, <i32 255, i32 255, i32 255, i32 255>
  %450 = and i32 %449, 255
  %451 = trunc i32 %450 to i8
  %452 = load i8*, i8** %11, align 4
  %453 = getelementptr inbounds i8, i8* %452, i32 1
  store i8* %453, i8** %11, align 4
  store i8 %451, i8* %452, align 1
  %454 = load i32, i32* %16, align 4
  %455 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop318 = lshr <4 x i32> %455, <i32 16, i32 16, i32 16, i32 16>
  %456 = lshr i32 %454, 16
  %Vop319 = and <4 x i32> %Vop318, <i32 255, i32 255, i32 255, i32 255>
  %457 = and i32 %456, 255
  %458 = trunc i32 %457 to i8
  %459 = load i8*, i8** %11, align 4
  %460 = getelementptr inbounds i8, i8* %459, i32 1
  store i8* %460, i8** %11, align 4
  store i8 %458, i8* %459, align 1
  %461 = load i32, i32* %16, align 4
  %462 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop320 = lshr <4 x i32> %462, <i32 8, i32 8, i32 8, i32 8>
  %463 = lshr i32 %461, 8
  %Vop321 = and <4 x i32> %Vop320, <i32 255, i32 255, i32 255, i32 255>
  %464 = and i32 %463, 255
  %465 = trunc i32 %464 to i8
  %466 = load i8*, i8** %11, align 4
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %11, align 4
  store i8 %465, i8* %466, align 1
  %468 = load i32, i32* %16, align 4
  %469 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop322 = and <4 x i32> %469, <i32 255, i32 255, i32 255, i32 255>
  %470 = and i32 %468, 255
  %471 = trunc i32 %470 to i8
  %472 = load i8*, i8** %11, align 4
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %11, align 4
  store i8 %471, i8* %472, align 1
  br label %922

; <label>:474:                                    ; preds = %6
  %475 = load i8*, i8** %11, align 4
  %476 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %476, i8** %11, align 4
  %477 = load i8, i8* %475, align 1
  %478 = zext i8 %477 to i32
  store i32 %478, i32* %CastInst44
  %479 = load i32, i32* %CastInst44, align 4
  %insertCast323 = insertelement <4 x i32> undef, i32 %479, i32 0
  %insertCast324 = insertelement <4 x i32> %insertCast323, i32 %479, i32 1
  %insertCast325 = insertelement <4 x i32> %insertCast324, i32 %479, i32 2
  %insertCast326 = insertelement <4 x i32> %insertCast325, i32 %479, i32 3
  store <4 x i32> %insertCast326, <4 x i32>* %CastInstVec45, align 4
  %480 = load <4 x i32>, <4 x i32>* %CastInstVec45, align 4
  %Vop327 = shl <4 x i32> %480, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop327, <4 x i32>* %allocaVec145
  %481 = shl i32 %478, 24
  store i32 %481, i32* %17, align 4
  %482 = load i8*, i8** %11, align 4
  %483 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %483, i8** %11, align 4
  %484 = load i8, i8* %482, align 1
  %485 = zext i8 %484 to i32
  store i32 %485, i32* %CastInst46
  %486 = load i32, i32* %CastInst46, align 4
  %insertCast328 = insertelement <4 x i32> undef, i32 %486, i32 0
  %insertCast329 = insertelement <4 x i32> %insertCast328, i32 %486, i32 1
  %insertCast330 = insertelement <4 x i32> %insertCast329, i32 %486, i32 2
  %insertCast331 = insertelement <4 x i32> %insertCast330, i32 %486, i32 3
  store <4 x i32> %insertCast331, <4 x i32>* %CastInstVec47, align 4
  %487 = load <4 x i32>, <4 x i32>* %CastInstVec47, align 4
  %Vop332 = shl <4 x i32> %487, <i32 16, i32 16, i32 16, i32 16>
  %488 = shl i32 %485, 16
  %489 = load i32, i32* %17, align 4
  %490 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop333 = or <4 x i32> %490, %Vop332
  store <4 x i32> %Vop333, <4 x i32>* %allocaVec145
  %491 = or i32 %489, %488
  store i32 %491, i32* %17, align 4
  %492 = load i8*, i8** %11, align 4
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %11, align 4
  %494 = load i8, i8* %492, align 1
  %495 = zext i8 %494 to i32
  store i32 %495, i32* %CastInst48
  %496 = load i32, i32* %CastInst48, align 4
  %insertCast334 = insertelement <4 x i32> undef, i32 %496, i32 0
  %insertCast335 = insertelement <4 x i32> %insertCast334, i32 %496, i32 1
  %insertCast336 = insertelement <4 x i32> %insertCast335, i32 %496, i32 2
  %insertCast337 = insertelement <4 x i32> %insertCast336, i32 %496, i32 3
  store <4 x i32> %insertCast337, <4 x i32>* %CastInstVec49, align 4
  %497 = load <4 x i32>, <4 x i32>* %CastInstVec49, align 4
  %Vop338 = shl <4 x i32> %497, <i32 8, i32 8, i32 8, i32 8>
  %498 = shl i32 %495, 8
  %499 = load i32, i32* %17, align 4
  %500 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop339 = or <4 x i32> %500, %Vop338
  store <4 x i32> %Vop339, <4 x i32>* %allocaVec145
  %501 = or i32 %499, %498
  store i32 %501, i32* %17, align 4
  %502 = load i8*, i8** %11, align 4
  %503 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %503, i8** %11, align 4
  %504 = load i8, i8* %502, align 1
  %505 = zext i8 %504 to i32
  %506 = load i32, i32* %17, align 4
  %507 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  store i32 %505, i32* %CastInst50
  %508 = load i32, i32* %CastInst50, align 4
  %insertCast340 = insertelement <4 x i32> undef, i32 %508, i32 0
  %insertCast341 = insertelement <4 x i32> %insertCast340, i32 %508, i32 1
  %insertCast342 = insertelement <4 x i32> %insertCast341, i32 %508, i32 2
  %insertCast343 = insertelement <4 x i32> %insertCast342, i32 %508, i32 3
  store <4 x i32> %insertCast343, <4 x i32>* %CastInstVec51, align 4
  %509 = load <4 x i32>, <4 x i32>* %CastInstVec51, align 4
  %Vop344 = or <4 x i32> %507, %509
  store <4 x i32> %Vop344, <4 x i32>* %allocaVec145
  %510 = or i32 %506, %505
  store i32 %510, i32* %17, align 4
  %511 = load i8*, i8** %11, align 4
  %512 = getelementptr inbounds i8, i8* %511, i32 1
  store i8* %512, i8** %11, align 4
  %513 = load i8, i8* %511, align 1
  %514 = zext i8 %513 to i32
  store i32 %514, i32* %CastInst52
  %515 = load i32, i32* %CastInst52, align 4
  %insertCast345 = insertelement <4 x i32> undef, i32 %515, i32 0
  %insertCast346 = insertelement <4 x i32> %insertCast345, i32 %515, i32 1
  %insertCast347 = insertelement <4 x i32> %insertCast346, i32 %515, i32 2
  %insertCast348 = insertelement <4 x i32> %insertCast347, i32 %515, i32 3
  store <4 x i32> %insertCast348, <4 x i32>* %CastInstVec53, align 4
  %516 = load <4 x i32>, <4 x i32>* %CastInstVec53, align 4
  %Vop349 = shl <4 x i32> %516, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop349, <4 x i32>* %allocaVec146
  %517 = shl i32 %514, 24
  store i32 %517, i32* %18, align 4
  %518 = load i8*, i8** %11, align 4
  %519 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %519, i8** %11, align 4
  %520 = load i8, i8* %518, align 1
  %521 = zext i8 %520 to i32
  store i32 %521, i32* %CastInst54
  %522 = load i32, i32* %CastInst54, align 4
  %insertCast350 = insertelement <4 x i32> undef, i32 %522, i32 0
  %insertCast351 = insertelement <4 x i32> %insertCast350, i32 %522, i32 1
  %insertCast352 = insertelement <4 x i32> %insertCast351, i32 %522, i32 2
  %insertCast353 = insertelement <4 x i32> %insertCast352, i32 %522, i32 3
  store <4 x i32> %insertCast353, <4 x i32>* %CastInstVec55, align 4
  %523 = load <4 x i32>, <4 x i32>* %CastInstVec55, align 4
  %Vop354 = shl <4 x i32> %523, <i32 16, i32 16, i32 16, i32 16>
  %524 = shl i32 %521, 16
  %525 = load i32, i32* %18, align 4
  %526 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop355 = or <4 x i32> %526, %Vop354
  store <4 x i32> %Vop355, <4 x i32>* %allocaVec146
  %527 = or i32 %525, %524
  store i32 %527, i32* %18, align 4
  %528 = load i8*, i8** %11, align 4
  %529 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %529, i8** %11, align 4
  %530 = load i8, i8* %528, align 1
  %531 = zext i8 %530 to i32
  store i32 %531, i32* %CastInst56
  %532 = load i32, i32* %CastInst56, align 4
  %insertCast356 = insertelement <4 x i32> undef, i32 %532, i32 0
  %insertCast357 = insertelement <4 x i32> %insertCast356, i32 %532, i32 1
  %insertCast358 = insertelement <4 x i32> %insertCast357, i32 %532, i32 2
  %insertCast359 = insertelement <4 x i32> %insertCast358, i32 %532, i32 3
  store <4 x i32> %insertCast359, <4 x i32>* %CastInstVec57, align 4
  %533 = load <4 x i32>, <4 x i32>* %CastInstVec57, align 4
  %Vop360 = shl <4 x i32> %533, <i32 8, i32 8, i32 8, i32 8>
  %534 = shl i32 %531, 8
  %535 = load i32, i32* %18, align 4
  %536 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop361 = or <4 x i32> %536, %Vop360
  store <4 x i32> %Vop361, <4 x i32>* %allocaVec146
  %537 = or i32 %535, %534
  store i32 %537, i32* %18, align 4
  %538 = load i8*, i8** %11, align 4
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %11, align 4
  %540 = load i8, i8* %538, align 1
  %541 = zext i8 %540 to i32
  %542 = load i32, i32* %18, align 4
  %543 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  store i32 %541, i32* %CastInst58
  %544 = load i32, i32* %CastInst58, align 4
  %insertCast362 = insertelement <4 x i32> undef, i32 %544, i32 0
  %insertCast363 = insertelement <4 x i32> %insertCast362, i32 %544, i32 1
  %insertCast364 = insertelement <4 x i32> %insertCast363, i32 %544, i32 2
  %insertCast365 = insertelement <4 x i32> %insertCast364, i32 %544, i32 3
  store <4 x i32> %insertCast365, <4 x i32>* %CastInstVec59, align 4
  %545 = load <4 x i32>, <4 x i32>* %CastInstVec59, align 4
  %Vop366 = or <4 x i32> %543, %545
  store <4 x i32> %Vop366, <4 x i32>* %allocaVec146
  %546 = or i32 %542, %541
  store i32 %546, i32* %18, align 4
  %547 = load i8*, i8** %11, align 4
  %548 = getelementptr inbounds i8, i8* %547, i32 -8
  store i8* %548, i8** %11, align 4
  %549 = load i32, i32* %19, align 4
  %550 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop367 = sub <4 x i32> %550, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop367, <4 x i32>* %allocaVec147
  %551 = sub nsw i32 %549, 8
  store i32 %551, i32* %19, align 4
  br label %552

; <label>:552:                                    ; preds = %690, %474
  %553 = load i32, i32* %19, align 4
  %554 = icmp sge i32 %553, 0
  br i1 %554, label %555, label %694

; <label>:555:                                    ; preds = %552
  %556 = load i8*, i8** %7, align 4
  %557 = getelementptr inbounds i8, i8* %556, i32 1
  store i8* %557, i8** %7, align 4
  %558 = load i8, i8* %556, align 1
  %559 = zext i8 %558 to i32
  store i32 %559, i32* %CastInst60
  %560 = load i32, i32* %CastInst60, align 4
  %insertCast368 = insertelement <4 x i32> undef, i32 %560, i32 0
  %insertCast369 = insertelement <4 x i32> %insertCast368, i32 %560, i32 1
  %insertCast370 = insertelement <4 x i32> %insertCast369, i32 %560, i32 2
  %insertCast371 = insertelement <4 x i32> %insertCast370, i32 %560, i32 3
  store <4 x i32> %insertCast371, <4 x i32>* %CastInstVec61, align 4
  %561 = load <4 x i32>, <4 x i32>* %CastInstVec61, align 4
  %Vop372 = shl <4 x i32> %561, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop372, <4 x i32>* %allocaVec141
  %562 = shl i32 %559, 24
  store i32 %562, i32* %13, align 4
  %563 = load i8*, i8** %7, align 4
  %564 = getelementptr inbounds i8, i8* %563, i32 1
  store i8* %564, i8** %7, align 4
  %565 = load i8, i8* %563, align 1
  %566 = zext i8 %565 to i32
  store i32 %566, i32* %CastInst62
  %567 = load i32, i32* %CastInst62, align 4
  %insertCast373 = insertelement <4 x i32> undef, i32 %567, i32 0
  %insertCast374 = insertelement <4 x i32> %insertCast373, i32 %567, i32 1
  %insertCast375 = insertelement <4 x i32> %insertCast374, i32 %567, i32 2
  %insertCast376 = insertelement <4 x i32> %insertCast375, i32 %567, i32 3
  store <4 x i32> %insertCast376, <4 x i32>* %CastInstVec63, align 4
  %568 = load <4 x i32>, <4 x i32>* %CastInstVec63, align 4
  %Vop377 = shl <4 x i32> %568, <i32 16, i32 16, i32 16, i32 16>
  %569 = shl i32 %566, 16
  %570 = load i32, i32* %13, align 4
  %571 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop378 = or <4 x i32> %571, %Vop377
  store <4 x i32> %Vop378, <4 x i32>* %allocaVec141
  %572 = or i32 %570, %569
  store i32 %572, i32* %13, align 4
  %573 = load i8*, i8** %7, align 4
  %574 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %574, i8** %7, align 4
  %575 = load i8, i8* %573, align 1
  %576 = zext i8 %575 to i32
  store i32 %576, i32* %CastInst64
  %577 = load i32, i32* %CastInst64, align 4
  %insertCast379 = insertelement <4 x i32> undef, i32 %577, i32 0
  %insertCast380 = insertelement <4 x i32> %insertCast379, i32 %577, i32 1
  %insertCast381 = insertelement <4 x i32> %insertCast380, i32 %577, i32 2
  %insertCast382 = insertelement <4 x i32> %insertCast381, i32 %577, i32 3
  store <4 x i32> %insertCast382, <4 x i32>* %CastInstVec65, align 4
  %578 = load <4 x i32>, <4 x i32>* %CastInstVec65, align 4
  %Vop383 = shl <4 x i32> %578, <i32 8, i32 8, i32 8, i32 8>
  %579 = shl i32 %576, 8
  %580 = load i32, i32* %13, align 4
  %581 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop384 = or <4 x i32> %581, %Vop383
  store <4 x i32> %Vop384, <4 x i32>* %allocaVec141
  %582 = or i32 %580, %579
  store i32 %582, i32* %13, align 4
  %583 = load i8*, i8** %7, align 4
  %584 = getelementptr inbounds i8, i8* %583, i32 1
  store i8* %584, i8** %7, align 4
  %585 = load i8, i8* %583, align 1
  %586 = zext i8 %585 to i32
  %587 = load i32, i32* %13, align 4
  %588 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  store i32 %586, i32* %CastInst66
  %589 = load i32, i32* %CastInst66, align 4
  %insertCast385 = insertelement <4 x i32> undef, i32 %589, i32 0
  %insertCast386 = insertelement <4 x i32> %insertCast385, i32 %589, i32 1
  %insertCast387 = insertelement <4 x i32> %insertCast386, i32 %589, i32 2
  %insertCast388 = insertelement <4 x i32> %insertCast387, i32 %589, i32 3
  store <4 x i32> %insertCast388, <4 x i32>* %CastInstVec67, align 4
  %590 = load <4 x i32>, <4 x i32>* %CastInstVec67, align 4
  %Vop389 = or <4 x i32> %588, %590
  store <4 x i32> %Vop389, <4 x i32>* %allocaVec141
  %591 = or i32 %587, %586
  store i32 %591, i32* %13, align 4
  %592 = load i8*, i8** %7, align 4
  %593 = getelementptr inbounds i8, i8* %592, i32 1
  store i8* %593, i8** %7, align 4
  %594 = load i8, i8* %592, align 1
  %595 = zext i8 %594 to i32
  store i32 %595, i32* %CastInst68
  %596 = load i32, i32* %CastInst68, align 4
  %insertCast390 = insertelement <4 x i32> undef, i32 %596, i32 0
  %insertCast391 = insertelement <4 x i32> %insertCast390, i32 %596, i32 1
  %insertCast392 = insertelement <4 x i32> %insertCast391, i32 %596, i32 2
  %insertCast393 = insertelement <4 x i32> %insertCast392, i32 %596, i32 3
  store <4 x i32> %insertCast393, <4 x i32>* %CastInstVec69, align 4
  %597 = load <4 x i32>, <4 x i32>* %CastInstVec69, align 4
  %Vop394 = shl <4 x i32> %597, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop394, <4 x i32>* %allocaVec142
  %598 = shl i32 %595, 24
  store i32 %598, i32* %14, align 4
  %599 = load i8*, i8** %7, align 4
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** %7, align 4
  %601 = load i8, i8* %599, align 1
  %602 = zext i8 %601 to i32
  store i32 %602, i32* %CastInst70
  %603 = load i32, i32* %CastInst70, align 4
  %insertCast395 = insertelement <4 x i32> undef, i32 %603, i32 0
  %insertCast396 = insertelement <4 x i32> %insertCast395, i32 %603, i32 1
  %insertCast397 = insertelement <4 x i32> %insertCast396, i32 %603, i32 2
  %insertCast398 = insertelement <4 x i32> %insertCast397, i32 %603, i32 3
  store <4 x i32> %insertCast398, <4 x i32>* %CastInstVec71, align 4
  %604 = load <4 x i32>, <4 x i32>* %CastInstVec71, align 4
  %Vop399 = shl <4 x i32> %604, <i32 16, i32 16, i32 16, i32 16>
  %605 = shl i32 %602, 16
  %606 = load i32, i32* %14, align 4
  %607 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop400 = or <4 x i32> %607, %Vop399
  store <4 x i32> %Vop400, <4 x i32>* %allocaVec142
  %608 = or i32 %606, %605
  store i32 %608, i32* %14, align 4
  %609 = load i8*, i8** %7, align 4
  %610 = getelementptr inbounds i8, i8* %609, i32 1
  store i8* %610, i8** %7, align 4
  %611 = load i8, i8* %609, align 1
  %612 = zext i8 %611 to i32
  store i32 %612, i32* %CastInst72
  %613 = load i32, i32* %CastInst72, align 4
  %insertCast401 = insertelement <4 x i32> undef, i32 %613, i32 0
  %insertCast402 = insertelement <4 x i32> %insertCast401, i32 %613, i32 1
  %insertCast403 = insertelement <4 x i32> %insertCast402, i32 %613, i32 2
  %insertCast404 = insertelement <4 x i32> %insertCast403, i32 %613, i32 3
  store <4 x i32> %insertCast404, <4 x i32>* %CastInstVec73, align 4
  %614 = load <4 x i32>, <4 x i32>* %CastInstVec73, align 4
  %Vop405 = shl <4 x i32> %614, <i32 8, i32 8, i32 8, i32 8>
  %615 = shl i32 %612, 8
  %616 = load i32, i32* %14, align 4
  %617 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop406 = or <4 x i32> %617, %Vop405
  store <4 x i32> %Vop406, <4 x i32>* %allocaVec142
  %618 = or i32 %616, %615
  store i32 %618, i32* %14, align 4
  %619 = load i8*, i8** %7, align 4
  %620 = getelementptr inbounds i8, i8* %619, i32 1
  store i8* %620, i8** %7, align 4
  %621 = load i8, i8* %619, align 1
  %622 = zext i8 %621 to i32
  %623 = load i32, i32* %14, align 4
  %624 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  store i32 %622, i32* %CastInst74
  %625 = load i32, i32* %CastInst74, align 4
  %insertCast407 = insertelement <4 x i32> undef, i32 %625, i32 0
  %insertCast408 = insertelement <4 x i32> %insertCast407, i32 %625, i32 1
  %insertCast409 = insertelement <4 x i32> %insertCast408, i32 %625, i32 2
  %insertCast410 = insertelement <4 x i32> %insertCast409, i32 %625, i32 3
  store <4 x i32> %insertCast410, <4 x i32>* %CastInstVec75, align 4
  %626 = load <4 x i32>, <4 x i32>* %CastInstVec75, align 4
  %Vop411 = or <4 x i32> %624, %626
  store <4 x i32> %Vop411, <4 x i32>* %allocaVec142
  %627 = or i32 %623, %622
  store i32 %627, i32* %14, align 4
  %628 = load i32, i32* %13, align 4
  %629 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %628, i32* %629, align 4
  %630 = load i32, i32* %14, align 4
  %631 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %630, i32* %631, align 4
  %632 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %633 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %632, %struct.bf_key_st* %633, i32 0)
  %634 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %17, align 4
  %637 = xor i32 %635, %636
  store i32 %637, i32* %15, align 4
  %638 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* %18, align 4
  %641 = xor i32 %639, %640
  store i32 %641, i32* %16, align 4
  %642 = load i32, i32* %15, align 4
  %643 = lshr i32 %642, 24
  %644 = and i32 %643, 255
  %645 = trunc i32 %644 to i8
  %646 = load i8*, i8** %8, align 4
  %647 = getelementptr inbounds i8, i8* %646, i32 1
  store i8* %647, i8** %8, align 4
  store i8 %645, i8* %646, align 1
  %648 = load i32, i32* %15, align 4
  %649 = lshr i32 %648, 16
  %650 = and i32 %649, 255
  %651 = trunc i32 %650 to i8
  %652 = load i8*, i8** %8, align 4
  %653 = getelementptr inbounds i8, i8* %652, i32 1
  store i8* %653, i8** %8, align 4
  store i8 %651, i8* %652, align 1
  %654 = load i32, i32* %15, align 4
  %655 = lshr i32 %654, 8
  %656 = and i32 %655, 255
  %657 = trunc i32 %656 to i8
  %658 = load i8*, i8** %8, align 4
  %659 = getelementptr inbounds i8, i8* %658, i32 1
  store i8* %659, i8** %8, align 4
  store i8 %657, i8* %658, align 1
  %660 = load i32, i32* %15, align 4
  %661 = and i32 %660, 255
  %662 = trunc i32 %661 to i8
  %663 = load i8*, i8** %8, align 4
  %664 = getelementptr inbounds i8, i8* %663, i32 1
  store i8* %664, i8** %8, align 4
  store i8 %662, i8* %663, align 1
  %665 = load i32, i32* %16, align 4
  %666 = lshr i32 %665, 24
  %667 = and i32 %666, 255
  %668 = trunc i32 %667 to i8
  %669 = load i8*, i8** %8, align 4
  %670 = getelementptr inbounds i8, i8* %669, i32 1
  store i8* %670, i8** %8, align 4
  store i8 %668, i8* %669, align 1
  %671 = load i32, i32* %16, align 4
  %672 = lshr i32 %671, 16
  %673 = and i32 %672, 255
  %674 = trunc i32 %673 to i8
  %675 = load i8*, i8** %8, align 4
  %676 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %676, i8** %8, align 4
  store i8 %674, i8* %675, align 1
  %677 = load i32, i32* %16, align 4
  %678 = lshr i32 %677, 8
  %679 = and i32 %678, 255
  %680 = trunc i32 %679 to i8
  %681 = load i8*, i8** %8, align 4
  %682 = getelementptr inbounds i8, i8* %681, i32 1
  store i8* %682, i8** %8, align 4
  store i8 %680, i8* %681, align 1
  %683 = load i32, i32* %16, align 4
  %684 = and i32 %683, 255
  %685 = trunc i32 %684 to i8
  %686 = load i8*, i8** %8, align 4
  %687 = getelementptr inbounds i8, i8* %686, i32 1
  store i8* %687, i8** %8, align 4
  store i8 %685, i8* %686, align 1
  %688 = load i32, i32* %13, align 4
  store i32 %688, i32* %17, align 4
  %689 = load i32, i32* %14, align 4
  store i32 %689, i32* %18, align 4
  br label %690

; <label>:690:                                    ; preds = %555
  %691 = load i32, i32* %19, align 4
  %692 = load <4 x i32>, <4 x i32>* %allocaVec147, align 16
  %Vop412 = sub <4 x i32> %692, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop412, <4 x i32>* %allocaVec147
  %693 = sub nsw i32 %691, 8
  store i32 %693, i32* %19, align 4
  br label %552

; <label>:694:                                    ; preds = %552
  %695 = load i32, i32* %19, align 4
  %696 = icmp ne i32 %695, -8
  br i1 %696, label %697, label %867

; <label>:697:                                    ; preds = %694
  %698 = load i8*, i8** %7, align 4
  %699 = getelementptr inbounds i8, i8* %698, i32 1
  store i8* %699, i8** %7, align 4
  %700 = load i8, i8* %698, align 1
  %701 = zext i8 %700 to i32
  store i32 %701, i32* %CastInst76
  %702 = load i32, i32* %CastInst76, align 4
  %insertCast413 = insertelement <4 x i32> undef, i32 %702, i32 0
  %insertCast414 = insertelement <4 x i32> %insertCast413, i32 %702, i32 1
  %insertCast415 = insertelement <4 x i32> %insertCast414, i32 %702, i32 2
  %insertCast416 = insertelement <4 x i32> %insertCast415, i32 %702, i32 3
  store <4 x i32> %insertCast416, <4 x i32>* %CastInstVec77, align 4
  %703 = load <4 x i32>, <4 x i32>* %CastInstVec77, align 4
  %Vop417 = shl <4 x i32> %703, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop417, <4 x i32>* %allocaVec141
  %704 = shl i32 %701, 24
  store i32 %704, i32* %13, align 4
  %705 = load i8*, i8** %7, align 4
  %706 = getelementptr inbounds i8, i8* %705, i32 1
  store i8* %706, i8** %7, align 4
  %707 = load i8, i8* %705, align 1
  %708 = zext i8 %707 to i32
  store i32 %708, i32* %CastInst78
  %709 = load i32, i32* %CastInst78, align 4
  %insertCast418 = insertelement <4 x i32> undef, i32 %709, i32 0
  %insertCast419 = insertelement <4 x i32> %insertCast418, i32 %709, i32 1
  %insertCast420 = insertelement <4 x i32> %insertCast419, i32 %709, i32 2
  %insertCast421 = insertelement <4 x i32> %insertCast420, i32 %709, i32 3
  store <4 x i32> %insertCast421, <4 x i32>* %CastInstVec79, align 4
  %710 = load <4 x i32>, <4 x i32>* %CastInstVec79, align 4
  %Vop422 = shl <4 x i32> %710, <i32 16, i32 16, i32 16, i32 16>
  %711 = shl i32 %708, 16
  %712 = load i32, i32* %13, align 4
  %713 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop423 = or <4 x i32> %713, %Vop422
  store <4 x i32> %Vop423, <4 x i32>* %allocaVec141
  %714 = or i32 %712, %711
  store i32 %714, i32* %13, align 4
  %715 = load i8*, i8** %7, align 4
  %716 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %716, i8** %7, align 4
  %717 = load i8, i8* %715, align 1
  %718 = zext i8 %717 to i32
  store i32 %718, i32* %CastInst80
  %719 = load i32, i32* %CastInst80, align 4
  %insertCast424 = insertelement <4 x i32> undef, i32 %719, i32 0
  %insertCast425 = insertelement <4 x i32> %insertCast424, i32 %719, i32 1
  %insertCast426 = insertelement <4 x i32> %insertCast425, i32 %719, i32 2
  %insertCast427 = insertelement <4 x i32> %insertCast426, i32 %719, i32 3
  store <4 x i32> %insertCast427, <4 x i32>* %CastInstVec81, align 4
  %720 = load <4 x i32>, <4 x i32>* %CastInstVec81, align 4
  %Vop428 = shl <4 x i32> %720, <i32 8, i32 8, i32 8, i32 8>
  %721 = shl i32 %718, 8
  %722 = load i32, i32* %13, align 4
  %723 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  %Vop429 = or <4 x i32> %723, %Vop428
  store <4 x i32> %Vop429, <4 x i32>* %allocaVec141
  %724 = or i32 %722, %721
  store i32 %724, i32* %13, align 4
  %725 = load i8*, i8** %7, align 4
  %726 = getelementptr inbounds i8, i8* %725, i32 1
  store i8* %726, i8** %7, align 4
  %727 = load i8, i8* %725, align 1
  %728 = zext i8 %727 to i32
  %729 = load i32, i32* %13, align 4
  %730 = load <4 x i32>, <4 x i32>* %allocaVec141, align 16
  store i32 %728, i32* %CastInst82
  %731 = load i32, i32* %CastInst82, align 4
  %insertCast430 = insertelement <4 x i32> undef, i32 %731, i32 0
  %insertCast431 = insertelement <4 x i32> %insertCast430, i32 %731, i32 1
  %insertCast432 = insertelement <4 x i32> %insertCast431, i32 %731, i32 2
  %insertCast433 = insertelement <4 x i32> %insertCast432, i32 %731, i32 3
  store <4 x i32> %insertCast433, <4 x i32>* %CastInstVec83, align 4
  %732 = load <4 x i32>, <4 x i32>* %CastInstVec83, align 4
  %Vop434 = or <4 x i32> %730, %732
  store <4 x i32> %Vop434, <4 x i32>* %allocaVec141
  %733 = load <4 x i32>, <4 x i32>* %allocaVec141, align 4
  %extractE = extractelement <4 x i32> %733, i64 0
  %extractE435 = extractelement <4 x i32> %733, i64 1
  %extractE436 = extractelement <4 x i32> %733, i64 2
  %sum = add i32 %extractE, %extractE435
  %sum437 = add i32 %sum, %extractE436
  %734 = or i32 %729, %728
  %Fmul = mul i32 %734, 3
  store i32 %734, i32* %Recovery
  %Fcmp = icmp ne i32 %sum437, %Fmul
  br i1 %Fcmp, label %735, label %739

; <label>:735:                                    ; preds = %697
  %remThree = sdiv i32 %sum437, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %736, label %737

; <label>:736:                                    ; preds = %735
  store i32 %734, i32* %Recovery, align 4
  br label %738

; <label>:737:                                    ; preds = %735
  store i32 %extractE, i32* %Recovery, align 4
  br label %738

; <label>:738:                                    ; preds = %737, %736
  br label %739

; <label>:739:                                    ; preds = %697, %738
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %13, align 4
  %740 = load i8*, i8** %7, align 4
  %741 = getelementptr inbounds i8, i8* %740, i32 1
  store i8* %741, i8** %7, align 4
  %742 = load i8, i8* %740, align 1
  %743 = zext i8 %742 to i32
  store i32 %743, i32* %CastInst84
  %744 = load i32, i32* %CastInst84, align 4
  %insertCast438 = insertelement <4 x i32> undef, i32 %744, i32 0
  %insertCast439 = insertelement <4 x i32> %insertCast438, i32 %744, i32 1
  %insertCast440 = insertelement <4 x i32> %insertCast439, i32 %744, i32 2
  %insertCast441 = insertelement <4 x i32> %insertCast440, i32 %744, i32 3
  store <4 x i32> %insertCast441, <4 x i32>* %CastInstVec85, align 4
  %745 = load <4 x i32>, <4 x i32>* %CastInstVec85, align 4
  %Vop442 = shl <4 x i32> %745, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop442, <4 x i32>* %allocaVec142
  %746 = shl i32 %743, 24
  store i32 %746, i32* %14, align 4
  %747 = load i8*, i8** %7, align 4
  %748 = getelementptr inbounds i8, i8* %747, i32 1
  store i8* %748, i8** %7, align 4
  %749 = load i8, i8* %747, align 1
  %750 = zext i8 %749 to i32
  store i32 %750, i32* %CastInst86
  %751 = load i32, i32* %CastInst86, align 4
  %insertCast443 = insertelement <4 x i32> undef, i32 %751, i32 0
  %insertCast444 = insertelement <4 x i32> %insertCast443, i32 %751, i32 1
  %insertCast445 = insertelement <4 x i32> %insertCast444, i32 %751, i32 2
  %insertCast446 = insertelement <4 x i32> %insertCast445, i32 %751, i32 3
  store <4 x i32> %insertCast446, <4 x i32>* %CastInstVec87, align 4
  %752 = load <4 x i32>, <4 x i32>* %CastInstVec87, align 4
  %Vop447 = shl <4 x i32> %752, <i32 16, i32 16, i32 16, i32 16>
  %753 = shl i32 %750, 16
  %754 = load i32, i32* %14, align 4
  %755 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop448 = or <4 x i32> %755, %Vop447
  store <4 x i32> %Vop448, <4 x i32>* %allocaVec142
  %756 = or i32 %754, %753
  store i32 %756, i32* %14, align 4
  %757 = load i8*, i8** %7, align 4
  %758 = getelementptr inbounds i8, i8* %757, i32 1
  store i8* %758, i8** %7, align 4
  %759 = load i8, i8* %757, align 1
  %760 = zext i8 %759 to i32
  store i32 %760, i32* %CastInst88
  %761 = load i32, i32* %CastInst88, align 4
  %insertCast449 = insertelement <4 x i32> undef, i32 %761, i32 0
  %insertCast450 = insertelement <4 x i32> %insertCast449, i32 %761, i32 1
  %insertCast451 = insertelement <4 x i32> %insertCast450, i32 %761, i32 2
  %insertCast452 = insertelement <4 x i32> %insertCast451, i32 %761, i32 3
  store <4 x i32> %insertCast452, <4 x i32>* %CastInstVec89, align 4
  %762 = load <4 x i32>, <4 x i32>* %CastInstVec89, align 4
  %Vop453 = shl <4 x i32> %762, <i32 8, i32 8, i32 8, i32 8>
  %763 = shl i32 %760, 8
  %764 = load i32, i32* %14, align 4
  %765 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  %Vop454 = or <4 x i32> %765, %Vop453
  store <4 x i32> %Vop454, <4 x i32>* %allocaVec142
  %766 = or i32 %764, %763
  store i32 %766, i32* %14, align 4
  %767 = load i8*, i8** %7, align 4
  %768 = getelementptr inbounds i8, i8* %767, i32 1
  store i8* %768, i8** %7, align 4
  %769 = load i8, i8* %767, align 1
  %770 = zext i8 %769 to i32
  %771 = load i32, i32* %14, align 4
  %772 = load <4 x i32>, <4 x i32>* %allocaVec142, align 16
  store i32 %770, i32* %CastInst90
  %773 = load i32, i32* %CastInst90, align 4
  %insertCast455 = insertelement <4 x i32> undef, i32 %773, i32 0
  %insertCast456 = insertelement <4 x i32> %insertCast455, i32 %773, i32 1
  %insertCast457 = insertelement <4 x i32> %insertCast456, i32 %773, i32 2
  %insertCast458 = insertelement <4 x i32> %insertCast457, i32 %773, i32 3
  store <4 x i32> %insertCast458, <4 x i32>* %CastInstVec91, align 4
  %774 = load <4 x i32>, <4 x i32>* %CastInstVec91, align 4
  %Vop459 = or <4 x i32> %772, %774
  store <4 x i32> %Vop459, <4 x i32>* %allocaVec142
  %775 = load <4 x i32>, <4 x i32>* %allocaVec142, align 4
  %extractE461 = extractelement <4 x i32> %775, i64 0
  %extractE462 = extractelement <4 x i32> %775, i64 1
  %extractE463 = extractelement <4 x i32> %775, i64 2
  %sum464 = add i32 %extractE461, %extractE462
  %sum465 = add i32 %sum464, %extractE463
  %776 = or i32 %771, %770
  %Fmul460 = mul i32 %776, 3
  store i32 %776, i32* %Recovery1
  %Fcmp466 = icmp ne i32 %sum465, %Fmul460
  br i1 %Fcmp466, label %777, label %781

; <label>:777:                                    ; preds = %739
  %remThree495 = sdiv i32 %sum465, %extractE461
  %FcmpThree496 = icmp ne i32 %remThree495, 3
  br i1 %FcmpThree496, label %778, label %779

; <label>:778:                                    ; preds = %777
  store i32 %776, i32* %Recovery1, align 4
  br label %780

; <label>:779:                                    ; preds = %777
  store i32 %extractE461, i32* %Recovery1, align 4
  br label %780

; <label>:780:                                    ; preds = %779, %778
  br label %781

; <label>:781:                                    ; preds = %739, %780
  %ReplaceInst497 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst497, i32* %14, align 4
  %782 = load i32, i32* %13, align 4
  %783 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %782, i32* %783, align 4
  %784 = load i32, i32* %14, align 4
  %785 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %784, i32* %785, align 4
  %786 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %787 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %786, %struct.bf_key_st* %787, i32 0)
  %788 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %789 = load i32, i32* %788, align 4
  %790 = load i32, i32* %17, align 4
  %791 = xor i32 %789, %790
  store i32 %791, i32* %15, align 4
  %792 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %793 = load i32, i32* %792, align 4
  %794 = load i32, i32* %18, align 4
  %795 = xor i32 %793, %794
  store i32 %795, i32* %16, align 4
  %796 = load i32, i32* %19, align 4
  %797 = add nsw i32 %796, 8
  %798 = load i8*, i8** %8, align 4
  %799 = getelementptr inbounds i8, i8* %798, i32 %797
  store i8* %799, i8** %8, align 4
  %800 = load i32, i32* %19, align 4
  %801 = add nsw i32 %800, 8
  switch i32 %801, label %864 [
    i32 8, label %802
    i32 7, label %809
    i32 6, label %817
    i32 5, label %825
    i32 4, label %833
    i32 3, label %840
    i32 2, label %848
    i32 1, label %856
  ]

; <label>:802:                                    ; preds = %781
  %803 = load i32, i32* %16, align 4
  %804 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop467 = and <4 x i32> %804, <i32 255, i32 255, i32 255, i32 255>
  %805 = and i32 %803, 255
  %806 = trunc i32 %805 to i8
  %807 = load i8*, i8** %8, align 4
  %808 = getelementptr inbounds i8, i8* %807, i32 -1
  store i8* %808, i8** %8, align 4
  store i8 %806, i8* %808, align 1
  br label %809

; <label>:809:                                    ; preds = %802, %781
  %810 = load i32, i32* %16, align 4
  %811 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop468 = lshr <4 x i32> %811, <i32 8, i32 8, i32 8, i32 8>
  %812 = lshr i32 %810, 8
  %Vop469 = and <4 x i32> %Vop468, <i32 255, i32 255, i32 255, i32 255>
  %813 = and i32 %812, 255
  %814 = trunc i32 %813 to i8
  %815 = load i8*, i8** %8, align 4
  %816 = getelementptr inbounds i8, i8* %815, i32 -1
  store i8* %816, i8** %8, align 4
  store i8 %814, i8* %816, align 1
  br label %817

; <label>:817:                                    ; preds = %809, %781
  %818 = load i32, i32* %16, align 4
  %819 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop470 = lshr <4 x i32> %819, <i32 16, i32 16, i32 16, i32 16>
  %820 = lshr i32 %818, 16
  %Vop471 = and <4 x i32> %Vop470, <i32 255, i32 255, i32 255, i32 255>
  %821 = and i32 %820, 255
  %822 = trunc i32 %821 to i8
  %823 = load i8*, i8** %8, align 4
  %824 = getelementptr inbounds i8, i8* %823, i32 -1
  store i8* %824, i8** %8, align 4
  store i8 %822, i8* %824, align 1
  br label %825

; <label>:825:                                    ; preds = %817, %781
  %826 = load i32, i32* %16, align 4
  %827 = load <4 x i32>, <4 x i32>* %allocaVec144, align 16
  %Vop472 = lshr <4 x i32> %827, <i32 24, i32 24, i32 24, i32 24>
  %828 = lshr i32 %826, 24
  %Vop473 = and <4 x i32> %Vop472, <i32 255, i32 255, i32 255, i32 255>
  %829 = and i32 %828, 255
  %830 = trunc i32 %829 to i8
  %831 = load i8*, i8** %8, align 4
  %832 = getelementptr inbounds i8, i8* %831, i32 -1
  store i8* %832, i8** %8, align 4
  store i8 %830, i8* %832, align 1
  br label %833

; <label>:833:                                    ; preds = %825, %781
  %834 = load i32, i32* %15, align 4
  %835 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop474 = and <4 x i32> %835, <i32 255, i32 255, i32 255, i32 255>
  %836 = and i32 %834, 255
  %837 = trunc i32 %836 to i8
  %838 = load i8*, i8** %8, align 4
  %839 = getelementptr inbounds i8, i8* %838, i32 -1
  store i8* %839, i8** %8, align 4
  store i8 %837, i8* %839, align 1
  br label %840

; <label>:840:                                    ; preds = %833, %781
  %841 = load i32, i32* %15, align 4
  %842 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop475 = lshr <4 x i32> %842, <i32 8, i32 8, i32 8, i32 8>
  %843 = lshr i32 %841, 8
  %Vop476 = and <4 x i32> %Vop475, <i32 255, i32 255, i32 255, i32 255>
  %844 = and i32 %843, 255
  %845 = trunc i32 %844 to i8
  %846 = load i8*, i8** %8, align 4
  %847 = getelementptr inbounds i8, i8* %846, i32 -1
  store i8* %847, i8** %8, align 4
  store i8 %845, i8* %847, align 1
  br label %848

; <label>:848:                                    ; preds = %840, %781
  %849 = load i32, i32* %15, align 4
  %850 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop477 = lshr <4 x i32> %850, <i32 16, i32 16, i32 16, i32 16>
  %851 = lshr i32 %849, 16
  %Vop478 = and <4 x i32> %Vop477, <i32 255, i32 255, i32 255, i32 255>
  %852 = and i32 %851, 255
  %853 = trunc i32 %852 to i8
  %854 = load i8*, i8** %8, align 4
  %855 = getelementptr inbounds i8, i8* %854, i32 -1
  store i8* %855, i8** %8, align 4
  store i8 %853, i8* %855, align 1
  br label %856

; <label>:856:                                    ; preds = %848, %781
  %857 = load i32, i32* %15, align 4
  %858 = load <4 x i32>, <4 x i32>* %allocaVec143, align 16
  %Vop479 = lshr <4 x i32> %858, <i32 24, i32 24, i32 24, i32 24>
  %859 = lshr i32 %857, 24
  %Vop480 = and <4 x i32> %Vop479, <i32 255, i32 255, i32 255, i32 255>
  %860 = and i32 %859, 255
  %861 = trunc i32 %860 to i8
  %862 = load i8*, i8** %8, align 4
  %863 = getelementptr inbounds i8, i8* %862, i32 -1
  store i8* %863, i8** %8, align 4
  store i8 %861, i8* %863, align 1
  br label %864

; <label>:864:                                    ; preds = %856, %781
  %865 = load i32, i32* %13, align 4
  store i32 %865, i32* %17, align 4
  %866 = load i32, i32* %14, align 4
  store i32 %866, i32* %18, align 4
  br label %867

; <label>:867:                                    ; preds = %864, %694
  %868 = load i32, i32* %17, align 4
  %869 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop481 = lshr <4 x i32> %869, <i32 24, i32 24, i32 24, i32 24>
  %870 = lshr i32 %868, 24
  %Vop482 = and <4 x i32> %Vop481, <i32 255, i32 255, i32 255, i32 255>
  %871 = and i32 %870, 255
  %872 = trunc i32 %871 to i8
  %873 = load i8*, i8** %11, align 4
  %874 = getelementptr inbounds i8, i8* %873, i32 1
  store i8* %874, i8** %11, align 4
  store i8 %872, i8* %873, align 1
  %875 = load i32, i32* %17, align 4
  %876 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop483 = lshr <4 x i32> %876, <i32 16, i32 16, i32 16, i32 16>
  %877 = lshr i32 %875, 16
  %Vop484 = and <4 x i32> %Vop483, <i32 255, i32 255, i32 255, i32 255>
  %878 = and i32 %877, 255
  %879 = trunc i32 %878 to i8
  %880 = load i8*, i8** %11, align 4
  %881 = getelementptr inbounds i8, i8* %880, i32 1
  store i8* %881, i8** %11, align 4
  store i8 %879, i8* %880, align 1
  %882 = load i32, i32* %17, align 4
  %883 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop485 = lshr <4 x i32> %883, <i32 8, i32 8, i32 8, i32 8>
  %884 = lshr i32 %882, 8
  %Vop486 = and <4 x i32> %Vop485, <i32 255, i32 255, i32 255, i32 255>
  %885 = and i32 %884, 255
  %886 = trunc i32 %885 to i8
  %887 = load i8*, i8** %11, align 4
  %888 = getelementptr inbounds i8, i8* %887, i32 1
  store i8* %888, i8** %11, align 4
  store i8 %886, i8* %887, align 1
  %889 = load i32, i32* %17, align 4
  %890 = load <4 x i32>, <4 x i32>* %allocaVec145, align 16
  %Vop487 = and <4 x i32> %890, <i32 255, i32 255, i32 255, i32 255>
  %891 = and i32 %889, 255
  %892 = trunc i32 %891 to i8
  %893 = load i8*, i8** %11, align 4
  %894 = getelementptr inbounds i8, i8* %893, i32 1
  store i8* %894, i8** %11, align 4
  store i8 %892, i8* %893, align 1
  %895 = load i32, i32* %18, align 4
  %896 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop488 = lshr <4 x i32> %896, <i32 24, i32 24, i32 24, i32 24>
  %897 = lshr i32 %895, 24
  %Vop489 = and <4 x i32> %Vop488, <i32 255, i32 255, i32 255, i32 255>
  %898 = and i32 %897, 255
  %899 = trunc i32 %898 to i8
  %900 = load i8*, i8** %11, align 4
  %901 = getelementptr inbounds i8, i8* %900, i32 1
  store i8* %901, i8** %11, align 4
  store i8 %899, i8* %900, align 1
  %902 = load i32, i32* %18, align 4
  %903 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop490 = lshr <4 x i32> %903, <i32 16, i32 16, i32 16, i32 16>
  %904 = lshr i32 %902, 16
  %Vop491 = and <4 x i32> %Vop490, <i32 255, i32 255, i32 255, i32 255>
  %905 = and i32 %904, 255
  %906 = trunc i32 %905 to i8
  %907 = load i8*, i8** %11, align 4
  %908 = getelementptr inbounds i8, i8* %907, i32 1
  store i8* %908, i8** %11, align 4
  store i8 %906, i8* %907, align 1
  %909 = load i32, i32* %18, align 4
  %910 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop492 = lshr <4 x i32> %910, <i32 8, i32 8, i32 8, i32 8>
  %911 = lshr i32 %909, 8
  %Vop493 = and <4 x i32> %Vop492, <i32 255, i32 255, i32 255, i32 255>
  %912 = and i32 %911, 255
  %913 = trunc i32 %912 to i8
  %914 = load i8*, i8** %11, align 4
  %915 = getelementptr inbounds i8, i8* %914, i32 1
  store i8* %915, i8** %11, align 4
  store i8 %913, i8* %914, align 1
  %916 = load i32, i32* %18, align 4
  %917 = load <4 x i32>, <4 x i32>* %allocaVec146, align 16
  %Vop494 = and <4 x i32> %917, <i32 255, i32 255, i32 255, i32 255>
  %918 = and i32 %916, 255
  %919 = trunc i32 %918 to i8
  %920 = load i8*, i8** %11, align 4
  %921 = getelementptr inbounds i8, i8* %920, i32 1
  store i8* %921, i8** %11, align 4
  store i8 %919, i8* %920, align 1
  br label %922

; <label>:922:                                    ; preds = %867, %419
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec146
  store i32 0, i32* %18, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec145
  store i32 0, i32* %17, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec144
  store i32 0, i32* %16, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec143
  store i32 0, i32* %15, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec142
  store i32 0, i32* %14, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec141
  store i32 0, i32* %13, align 4
  %923 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %923, align 4
  %924 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %924, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_cfb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec42 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec43 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec44 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec45 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec46 = alloca <4 x i32>, align 16
  %CastInst4 = alloca i32, align 4
  %CastInstVec5 = alloca <4 x i32>, align 16
  %allocaVec47 = alloca <4 x i32>, align 16
  %CastInst6 = alloca i32, align 4
  %CastInstVec7 = alloca <4 x i32>, align 16
  %allocaVec48 = alloca <4 x i32>, align 16
  %CastInst8 = alloca i32, align 4
  %CastInstVec9 = alloca <4 x i32>, align 16
  %allocaVec49 = alloca <4 x i32>, align 16
  %CastInst10 = alloca i32, align 4
  %CastInstVec11 = alloca <4 x i32>, align 16
  %allocaVec50 = alloca <4 x i32>, align 16
  %CastInst12 = alloca i32, align 4
  %CastInstVec13 = alloca <4 x i32>, align 16
  %allocaVec51 = alloca <4 x i32>, align 16
  %CastInst14 = alloca i32, align 4
  %CastInstVec15 = alloca <4 x i32>, align 16
  %allocaVec52 = alloca <4 x i32>, align 16
  %CastInst16 = alloca i32, align 4
  %CastInstVec17 = alloca <4 x i32>, align 16
  %allocaVec53 = alloca <4 x i32>, align 16
  %CastInst18 = alloca i32, align 4
  %CastInstVec19 = alloca <4 x i32>, align 16
  %allocaVec54 = alloca <4 x i32>, align 16
  %CastInst20 = alloca i32, align 4
  %CastInstVec21 = alloca <4 x i32>, align 16
  %allocaVec55 = alloca <4 x i32>, align 16
  %CastInst22 = alloca i32, align 4
  %CastInstVec23 = alloca <4 x i32>, align 16
  %allocaVec56 = alloca <4 x i32>, align 16
  %CastInst24 = alloca i32, align 4
  %CastInstVec25 = alloca <4 x i32>, align 16
  %allocaVec57 = alloca <4 x i32>, align 16
  %CastInst26 = alloca i32, align 4
  %CastInstVec27 = alloca <4 x i32>, align 16
  %allocaVec58 = alloca <4 x i32>, align 16
  %CastInst28 = alloca i32, align 4
  %CastInstVec29 = alloca <4 x i32>, align 16
  %allocaVec59 = alloca <4 x i32>, align 16
  %CastInst30 = alloca i32, align 4
  %CastInstVec31 = alloca <4 x i32>, align 16
  %allocaVec60 = alloca <4 x i32>, align 16
  %CastInst32 = alloca i32, align 4
  %CastInstVec33 = alloca <4 x i32>, align 16
  %allocaVec61 = alloca <4 x i32>, align 16
  %CastInst34 = alloca i32, align 4
  %CastInstVec35 = alloca <4 x i32>, align 16
  %allocaVec62 = alloca <4 x i32>, align 16
  %CastInst36 = alloca i32, align 4
  %CastInstVec37 = alloca <4 x i32>, align 16
  %allocaVec63 = alloca <4 x i32>, align 16
  %CastInst38 = alloca i32, align 4
  %CastInstVec39 = alloca <4 x i32>, align 16
  %allocaVec64 = alloca <4 x i32>, align 16
  %CastInst40 = alloca i32, align 4
  %CastInstVec41 = alloca <4 x i32>, align 16
  %8 = alloca i8*, align 4
  %9 = alloca i8*, align 4
  %allocaVec65 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.bf_key_st*, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32*, align 4
  %allocaVec66 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec67 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec68 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec69 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec70 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec71 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i8*, align 4
  %allocaVec72 = alloca <4 x i8>, align 16
  %22 = alloca i8, align 1
  %allocaVec73 = alloca <4 x i8>, align 16
  %23 = alloca i8, align 1
  store i8* %0, i8** %8, align 4
  store i8* %1, i8** %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %11, align 4
  store i8* %4, i8** %12, align 4
  store i32* %5, i32** %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %13, align 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %19, align 4
  %27 = load i8*, i8** %12, align 4
  store i8* %27, i8** %21, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %206

; <label>:30:                                     ; preds = %7
  br label %31

; <label>:31:                                     ; preds = %178, %30
  %32 = load i32, i32* %19, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %32, i32 0
  %insertElmt74 = insertelement <4 x i32> %insertElmt, i32 %32, i32 1
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %32, i32 2
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %32, i32 3
  store <4 x i32> %insertElmt76, <4 x i32>* %allocaVec71, align 16
  %33 = load <4 x i32>, <4 x i32>* %allocaVec71, align 16
  %Vop = add <4 x i32> %33, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec71
  %34 = add nsw i32 %32, -1
  store i32 %34, i32* %19, align 4
  %35 = icmp ne i32 %32, 0
  br i1 %35, label %36, label %205

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %178

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %21, align 4
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %21, align 4
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %CastInst
  %44 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %44, i32 0
  %insertCast77 = insertelement <4 x i32> %insertCast, i32 %44, i32 1
  %insertCast78 = insertelement <4 x i32> %insertCast77, i32 %44, i32 2
  %insertCast79 = insertelement <4 x i32> %insertCast78, i32 %44, i32 3
  store <4 x i32> %insertCast79, <4 x i32>* %CastInstVec, align 4
  %45 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop80 = shl <4 x i32> %45, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop80, <4 x i32>* %allocaVec67
  %46 = shl i32 %43, 24
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %21, align 4
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %21, align 4
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %CastInst4
  %51 = load i32, i32* %CastInst4, align 4
  %insertCast81 = insertelement <4 x i32> undef, i32 %51, i32 0
  %insertCast82 = insertelement <4 x i32> %insertCast81, i32 %51, i32 1
  %insertCast83 = insertelement <4 x i32> %insertCast82, i32 %51, i32 2
  %insertCast84 = insertelement <4 x i32> %insertCast83, i32 %51, i32 3
  store <4 x i32> %insertCast84, <4 x i32>* %CastInstVec5, align 4
  %52 = load <4 x i32>, <4 x i32>* %CastInstVec5, align 4
  %Vop85 = shl <4 x i32> %52, <i32 16, i32 16, i32 16, i32 16>
  %53 = shl i32 %50, 16
  %54 = load i32, i32* %15, align 4
  %55 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  %Vop86 = or <4 x i32> %55, %Vop85
  store <4 x i32> %Vop86, <4 x i32>* %allocaVec67
  %56 = or i32 %54, %53
  store i32 %56, i32* %15, align 4
  %57 = load i8*, i8** %21, align 4
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %21, align 4
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %CastInst6
  %61 = load i32, i32* %CastInst6, align 4
  %insertCast87 = insertelement <4 x i32> undef, i32 %61, i32 0
  %insertCast88 = insertelement <4 x i32> %insertCast87, i32 %61, i32 1
  %insertCast89 = insertelement <4 x i32> %insertCast88, i32 %61, i32 2
  %insertCast90 = insertelement <4 x i32> %insertCast89, i32 %61, i32 3
  store <4 x i32> %insertCast90, <4 x i32>* %CastInstVec7, align 4
  %62 = load <4 x i32>, <4 x i32>* %CastInstVec7, align 4
  %Vop91 = shl <4 x i32> %62, <i32 8, i32 8, i32 8, i32 8>
  %63 = shl i32 %60, 8
  %64 = load i32, i32* %15, align 4
  %65 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  %Vop92 = or <4 x i32> %65, %Vop91
  store <4 x i32> %Vop92, <4 x i32>* %allocaVec67
  %66 = or i32 %64, %63
  store i32 %66, i32* %15, align 4
  %67 = load i8*, i8** %21, align 4
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %21, align 4
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %15, align 4
  %72 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  store i32 %70, i32* %CastInst8
  %73 = load i32, i32* %CastInst8, align 4
  %insertCast93 = insertelement <4 x i32> undef, i32 %73, i32 0
  %insertCast94 = insertelement <4 x i32> %insertCast93, i32 %73, i32 1
  %insertCast95 = insertelement <4 x i32> %insertCast94, i32 %73, i32 2
  %insertCast96 = insertelement <4 x i32> %insertCast95, i32 %73, i32 3
  store <4 x i32> %insertCast96, <4 x i32>* %CastInstVec9, align 4
  %74 = load <4 x i32>, <4 x i32>* %CastInstVec9, align 4
  %Vop97 = or <4 x i32> %72, %74
  store <4 x i32> %Vop97, <4 x i32>* %allocaVec67
  %75 = or i32 %71, %70
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %21, align 4
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %21, align 4
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %CastInst10
  %82 = load i32, i32* %CastInst10, align 4
  %insertCast98 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertCast99 = insertelement <4 x i32> %insertCast98, i32 %82, i32 1
  %insertCast100 = insertelement <4 x i32> %insertCast99, i32 %82, i32 2
  %insertCast101 = insertelement <4 x i32> %insertCast100, i32 %82, i32 3
  store <4 x i32> %insertCast101, <4 x i32>* %CastInstVec11, align 4
  %83 = load <4 x i32>, <4 x i32>* %CastInstVec11, align 4
  %Vop102 = shl <4 x i32> %83, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop102, <4 x i32>* %allocaVec68
  %84 = shl i32 %81, 24
  store i32 %84, i32* %16, align 4
  %85 = load i8*, i8** %21, align 4
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %21, align 4
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  store i32 %88, i32* %CastInst12
  %89 = load i32, i32* %CastInst12, align 4
  %insertCast103 = insertelement <4 x i32> undef, i32 %89, i32 0
  %insertCast104 = insertelement <4 x i32> %insertCast103, i32 %89, i32 1
  %insertCast105 = insertelement <4 x i32> %insertCast104, i32 %89, i32 2
  %insertCast106 = insertelement <4 x i32> %insertCast105, i32 %89, i32 3
  store <4 x i32> %insertCast106, <4 x i32>* %CastInstVec13, align 4
  %90 = load <4 x i32>, <4 x i32>* %CastInstVec13, align 4
  %Vop107 = shl <4 x i32> %90, <i32 16, i32 16, i32 16, i32 16>
  %91 = shl i32 %88, 16
  %92 = load i32, i32* %16, align 4
  %93 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  %Vop108 = or <4 x i32> %93, %Vop107
  store <4 x i32> %Vop108, <4 x i32>* %allocaVec68
  %94 = or i32 %92, %91
  store i32 %94, i32* %16, align 4
  %95 = load i8*, i8** %21, align 4
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %21, align 4
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, i32* %CastInst14
  %99 = load i32, i32* %CastInst14, align 4
  %insertCast109 = insertelement <4 x i32> undef, i32 %99, i32 0
  %insertCast110 = insertelement <4 x i32> %insertCast109, i32 %99, i32 1
  %insertCast111 = insertelement <4 x i32> %insertCast110, i32 %99, i32 2
  %insertCast112 = insertelement <4 x i32> %insertCast111, i32 %99, i32 3
  store <4 x i32> %insertCast112, <4 x i32>* %CastInstVec15, align 4
  %100 = load <4 x i32>, <4 x i32>* %CastInstVec15, align 4
  %Vop113 = shl <4 x i32> %100, <i32 8, i32 8, i32 8, i32 8>
  %101 = shl i32 %98, 8
  %102 = load i32, i32* %16, align 4
  %103 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  %Vop114 = or <4 x i32> %103, %Vop113
  store <4 x i32> %Vop114, <4 x i32>* %allocaVec68
  %104 = or i32 %102, %101
  store i32 %104, i32* %16, align 4
  %105 = load i8*, i8** %21, align 4
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %21, align 4
  %107 = load i8, i8* %105, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %16, align 4
  %110 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  store i32 %108, i32* %CastInst16
  %111 = load i32, i32* %CastInst16, align 4
  %insertCast115 = insertelement <4 x i32> undef, i32 %111, i32 0
  %insertCast116 = insertelement <4 x i32> %insertCast115, i32 %111, i32 1
  %insertCast117 = insertelement <4 x i32> %insertCast116, i32 %111, i32 2
  %insertCast118 = insertelement <4 x i32> %insertCast117, i32 %111, i32 3
  store <4 x i32> %insertCast118, <4 x i32>* %CastInstVec17, align 4
  %112 = load <4 x i32>, <4 x i32>* %CastInstVec17, align 4
  %Vop119 = or <4 x i32> %110, %112
  store <4 x i32> %Vop119, <4 x i32>* %allocaVec68
  %113 = or i32 %109, %108
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %117 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 4
  call arm_aapcscc void @BF_encrypt(i32* %116, %struct.bf_key_st* %117, i32 1)
  %118 = load i8*, i8** %12, align 4
  store i8* %118, i8** %21, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %insertElmt120 = insertelement <4 x i32> undef, i32 %121, i32 0
  %insertElmt121 = insertelement <4 x i32> %insertElmt120, i32 %121, i32 1
  %insertElmt122 = insertelement <4 x i32> %insertElmt121, i32 %121, i32 2
  %insertElmt123 = insertelement <4 x i32> %insertElmt122, i32 %121, i32 3
  store <4 x i32> %insertElmt123, <4 x i32>* %allocaVec69, align 16
  %122 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop124 = lshr <4 x i32> %122, <i32 24, i32 24, i32 24, i32 24>
  %123 = lshr i32 %121, 24
  %Vop125 = and <4 x i32> %Vop124, <i32 255, i32 255, i32 255, i32 255>
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %21, align 4
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %21, align 4
  store i8 %125, i8* %126, align 1
  %128 = load i32, i32* %17, align 4
  %insertElmt126 = insertelement <4 x i32> undef, i32 %128, i32 0
  %insertElmt127 = insertelement <4 x i32> %insertElmt126, i32 %128, i32 1
  %insertElmt128 = insertelement <4 x i32> %insertElmt127, i32 %128, i32 2
  %insertElmt129 = insertelement <4 x i32> %insertElmt128, i32 %128, i32 3
  store <4 x i32> %insertElmt129, <4 x i32>* %allocaVec69, align 16
  %129 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop130 = lshr <4 x i32> %129, <i32 16, i32 16, i32 16, i32 16>
  %130 = lshr i32 %128, 16
  %Vop131 = and <4 x i32> %Vop130, <i32 255, i32 255, i32 255, i32 255>
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %21, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %21, align 4
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %17, align 4
  %insertElmt132 = insertelement <4 x i32> undef, i32 %135, i32 0
  %insertElmt133 = insertelement <4 x i32> %insertElmt132, i32 %135, i32 1
  %insertElmt134 = insertelement <4 x i32> %insertElmt133, i32 %135, i32 2
  %insertElmt135 = insertelement <4 x i32> %insertElmt134, i32 %135, i32 3
  store <4 x i32> %insertElmt135, <4 x i32>* %allocaVec69, align 16
  %136 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop136 = lshr <4 x i32> %136, <i32 8, i32 8, i32 8, i32 8>
  %137 = lshr i32 %135, 8
  %Vop137 = and <4 x i32> %Vop136, <i32 255, i32 255, i32 255, i32 255>
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %21, align 4
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %21, align 4
  store i8 %139, i8* %140, align 1
  %142 = load i32, i32* %17, align 4
  %insertElmt138 = insertelement <4 x i32> undef, i32 %142, i32 0
  %insertElmt139 = insertelement <4 x i32> %insertElmt138, i32 %142, i32 1
  %insertElmt140 = insertelement <4 x i32> %insertElmt139, i32 %142, i32 2
  %insertElmt141 = insertelement <4 x i32> %insertElmt140, i32 %142, i32 3
  store <4 x i32> %insertElmt141, <4 x i32>* %allocaVec69, align 16
  %143 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop142 = and <4 x i32> %143, <i32 255, i32 255, i32 255, i32 255>
  %144 = and i32 %142, 255
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %21, align 4
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %21, align 4
  store i8 %145, i8* %146, align 1
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %insertElmt143 = insertelement <4 x i32> undef, i32 %150, i32 0
  %insertElmt144 = insertelement <4 x i32> %insertElmt143, i32 %150, i32 1
  %insertElmt145 = insertelement <4 x i32> %insertElmt144, i32 %150, i32 2
  %insertElmt146 = insertelement <4 x i32> %insertElmt145, i32 %150, i32 3
  store <4 x i32> %insertElmt146, <4 x i32>* %allocaVec69, align 16
  %151 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop147 = lshr <4 x i32> %151, <i32 24, i32 24, i32 24, i32 24>
  %152 = lshr i32 %150, 24
  %Vop148 = and <4 x i32> %Vop147, <i32 255, i32 255, i32 255, i32 255>
  %153 = and i32 %152, 255
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %21, align 4
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %21, align 4
  store i8 %154, i8* %155, align 1
  %157 = load i32, i32* %17, align 4
  %insertElmt149 = insertelement <4 x i32> undef, i32 %157, i32 0
  %insertElmt150 = insertelement <4 x i32> %insertElmt149, i32 %157, i32 1
  %insertElmt151 = insertelement <4 x i32> %insertElmt150, i32 %157, i32 2
  %insertElmt152 = insertelement <4 x i32> %insertElmt151, i32 %157, i32 3
  store <4 x i32> %insertElmt152, <4 x i32>* %allocaVec69, align 16
  %158 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop153 = lshr <4 x i32> %158, <i32 16, i32 16, i32 16, i32 16>
  %159 = lshr i32 %157, 16
  %Vop154 = and <4 x i32> %Vop153, <i32 255, i32 255, i32 255, i32 255>
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %21, align 4
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %21, align 4
  store i8 %161, i8* %162, align 1
  %164 = load i32, i32* %17, align 4
  %insertElmt155 = insertelement <4 x i32> undef, i32 %164, i32 0
  %insertElmt156 = insertelement <4 x i32> %insertElmt155, i32 %164, i32 1
  %insertElmt157 = insertelement <4 x i32> %insertElmt156, i32 %164, i32 2
  %insertElmt158 = insertelement <4 x i32> %insertElmt157, i32 %164, i32 3
  store <4 x i32> %insertElmt158, <4 x i32>* %allocaVec69, align 16
  %165 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop159 = lshr <4 x i32> %165, <i32 8, i32 8, i32 8, i32 8>
  %166 = lshr i32 %164, 8
  %Vop160 = and <4 x i32> %Vop159, <i32 255, i32 255, i32 255, i32 255>
  %167 = and i32 %166, 255
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %21, align 4
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %21, align 4
  store i8 %168, i8* %169, align 1
  %171 = load i32, i32* %17, align 4
  %insertElmt161 = insertelement <4 x i32> undef, i32 %171, i32 0
  %insertElmt162 = insertelement <4 x i32> %insertElmt161, i32 %171, i32 1
  %insertElmt163 = insertelement <4 x i32> %insertElmt162, i32 %171, i32 2
  %insertElmt164 = insertelement <4 x i32> %insertElmt163, i32 %171, i32 3
  store <4 x i32> %insertElmt164, <4 x i32>* %allocaVec69, align 16
  %172 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop165 = and <4 x i32> %172, <i32 255, i32 255, i32 255, i32 255>
  %173 = and i32 %171, 255
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %21, align 4
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %21, align 4
  store i8 %174, i8* %175, align 1
  %177 = load i8*, i8** %12, align 4
  store i8* %177, i8** %21, align 4
  br label %178

; <label>:178:                                    ; preds = %39, %36
  %179 = load i8*, i8** %8, align 4
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %8, align 4
  %181 = load i8, i8* %179, align 1
  %182 = zext i8 %181 to i32
  %183 = load i8*, i8** %21, align 4
  %184 = load i32, i32* %18, align 4
  %185 = getelementptr inbounds i8, i8* %183, i32 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  store i32 %182, i32* %CastInst18
  %188 = load i32, i32* %CastInst18, align 4
  %insertCast166 = insertelement <4 x i32> undef, i32 %188, i32 0
  %insertCast167 = insertelement <4 x i32> %insertCast166, i32 %188, i32 1
  %insertCast168 = insertelement <4 x i32> %insertCast167, i32 %188, i32 2
  %insertCast169 = insertelement <4 x i32> %insertCast168, i32 %188, i32 3
  store <4 x i32> %insertCast169, <4 x i32>* %CastInstVec19, align 4
  %189 = load <4 x i32>, <4 x i32>* %CastInstVec19, align 4
  store i32 %187, i32* %CastInst20
  %190 = load i32, i32* %CastInst20, align 4
  %insertCast170 = insertelement <4 x i32> undef, i32 %190, i32 0
  %insertCast171 = insertelement <4 x i32> %insertCast170, i32 %190, i32 1
  %insertCast172 = insertelement <4 x i32> %insertCast171, i32 %190, i32 2
  %insertCast173 = insertelement <4 x i32> %insertCast172, i32 %190, i32 3
  store <4 x i32> %insertCast173, <4 x i32>* %CastInstVec21, align 4
  %191 = load <4 x i32>, <4 x i32>* %CastInstVec21, align 4
  %Vop174 = xor <4 x i32> %189, %191
  %192 = xor i32 %182, %187
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %22, align 1
  %194 = load i8, i8* %22, align 1
  %195 = load i8*, i8** %9, align 4
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 4
  store i8 %194, i8* %195, align 1
  %197 = load i8, i8* %22, align 1
  %198 = load i8*, i8** %21, align 4
  %199 = load i32, i32* %18, align 4
  %200 = getelementptr inbounds i8, i8* %198, i32 %199
  store i8 %197, i8* %200, align 1
  %201 = load i32, i32* %18, align 4
  %insertElmt175 = insertelement <4 x i32> undef, i32 %201, i32 0
  %insertElmt176 = insertelement <4 x i32> %insertElmt175, i32 %201, i32 1
  %insertElmt177 = insertelement <4 x i32> %insertElmt176, i32 %201, i32 2
  %insertElmt178 = insertelement <4 x i32> %insertElmt177, i32 %201, i32 3
  store <4 x i32> %insertElmt178, <4 x i32>* %allocaVec70, align 16
  %202 = load <4 x i32>, <4 x i32>* %allocaVec70, align 16
  %Vop179 = add <4 x i32> %202, <i32 1, i32 1, i32 1, i32 1>
  %203 = add nsw i32 %201, 1
  %Vop180 = and <4 x i32> %Vop179, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %Vop180, <4 x i32>* %allocaVec70
  %204 = and i32 %203, 7
  store i32 %204, i32* %18, align 4
  br label %31

; <label>:205:                                    ; preds = %31
  br label %407

; <label>:206:                                    ; preds = %7
  br label %207

; <label>:207:                                    ; preds = %405, %206
  %208 = load i32, i32* %19, align 4
  %209 = load <4 x i32>, <4 x i32>* %allocaVec71, align 16
  %Vop181 = add <4 x i32> %209, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop181, <4 x i32>* %allocaVec71
  %210 = load <4 x i32>, <4 x i32>* %allocaVec71, align 4
  %extractE = extractelement <4 x i32> %210, i64 0
  %extractE182 = extractelement <4 x i32> %210, i64 1
  %extractE183 = extractelement <4 x i32> %210, i64 2
  %sum = add i32 %extractE, %extractE182
  %sum184 = add i32 %sum, %extractE183
  %211 = add nsw i32 %208, -1
  %Fmul = mul i32 %211, 3
  store i32 %211, i32* %Recovery
  %Fcmp = icmp ne i32 %sum184, %Fmul
  br i1 %Fcmp, label %212, label %216

; <label>:212:                                    ; preds = %207
  %remThree = sdiv i32 %sum184, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %213, label %214

; <label>:213:                                    ; preds = %212
  store i32 %211, i32* %Recovery, align 4
  br label %215

; <label>:214:                                    ; preds = %212
  store i32 %extractE, i32* %Recovery, align 4
  br label %215

; <label>:215:                                    ; preds = %214, %213
  br label %216

; <label>:216:                                    ; preds = %207, %215
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %19, align 4
  %217 = icmp ne i32 %208, 0
  br i1 %217, label %218, label %406

; <label>:218:                                    ; preds = %216
  %219 = load i32, i32* %18, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %372

; <label>:221:                                    ; preds = %218
  %222 = load i8*, i8** %21, align 4
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %21, align 4
  %224 = load i8, i8* %222, align 1
  %225 = zext i8 %224 to i32
  store i32 %225, i32* %CastInst22
  %226 = load i32, i32* %CastInst22, align 4
  %insertCast185 = insertelement <4 x i32> undef, i32 %226, i32 0
  %insertCast186 = insertelement <4 x i32> %insertCast185, i32 %226, i32 1
  %insertCast187 = insertelement <4 x i32> %insertCast186, i32 %226, i32 2
  %insertCast188 = insertelement <4 x i32> %insertCast187, i32 %226, i32 3
  store <4 x i32> %insertCast188, <4 x i32>* %CastInstVec23, align 4
  %227 = load <4 x i32>, <4 x i32>* %CastInstVec23, align 4
  %Vop189 = shl <4 x i32> %227, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop189, <4 x i32>* %allocaVec67
  %228 = shl i32 %225, 24
  store i32 %228, i32* %15, align 4
  %229 = load i8*, i8** %21, align 4
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %21, align 4
  %231 = load i8, i8* %229, align 1
  %232 = zext i8 %231 to i32
  store i32 %232, i32* %CastInst24
  %233 = load i32, i32* %CastInst24, align 4
  %insertCast190 = insertelement <4 x i32> undef, i32 %233, i32 0
  %insertCast191 = insertelement <4 x i32> %insertCast190, i32 %233, i32 1
  %insertCast192 = insertelement <4 x i32> %insertCast191, i32 %233, i32 2
  %insertCast193 = insertelement <4 x i32> %insertCast192, i32 %233, i32 3
  store <4 x i32> %insertCast193, <4 x i32>* %CastInstVec25, align 4
  %234 = load <4 x i32>, <4 x i32>* %CastInstVec25, align 4
  %Vop194 = shl <4 x i32> %234, <i32 16, i32 16, i32 16, i32 16>
  %235 = shl i32 %232, 16
  %236 = load i32, i32* %15, align 4
  %237 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  %Vop195 = or <4 x i32> %237, %Vop194
  store <4 x i32> %Vop195, <4 x i32>* %allocaVec67
  %238 = or i32 %236, %235
  store i32 %238, i32* %15, align 4
  %239 = load i8*, i8** %21, align 4
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %21, align 4
  %241 = load i8, i8* %239, align 1
  %242 = zext i8 %241 to i32
  store i32 %242, i32* %CastInst26
  %243 = load i32, i32* %CastInst26, align 4
  %insertCast196 = insertelement <4 x i32> undef, i32 %243, i32 0
  %insertCast197 = insertelement <4 x i32> %insertCast196, i32 %243, i32 1
  %insertCast198 = insertelement <4 x i32> %insertCast197, i32 %243, i32 2
  %insertCast199 = insertelement <4 x i32> %insertCast198, i32 %243, i32 3
  store <4 x i32> %insertCast199, <4 x i32>* %CastInstVec27, align 4
  %244 = load <4 x i32>, <4 x i32>* %CastInstVec27, align 4
  %Vop200 = shl <4 x i32> %244, <i32 8, i32 8, i32 8, i32 8>
  %245 = shl i32 %242, 8
  %246 = load i32, i32* %15, align 4
  %247 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  %Vop201 = or <4 x i32> %247, %Vop200
  store <4 x i32> %Vop201, <4 x i32>* %allocaVec67
  %248 = or i32 %246, %245
  store i32 %248, i32* %15, align 4
  %249 = load i8*, i8** %21, align 4
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %21, align 4
  %251 = load i8, i8* %249, align 1
  %252 = zext i8 %251 to i32
  %253 = load i32, i32* %15, align 4
  %254 = load <4 x i32>, <4 x i32>* %allocaVec67, align 16
  store i32 %252, i32* %CastInst28
  %255 = load i32, i32* %CastInst28, align 4
  %insertCast202 = insertelement <4 x i32> undef, i32 %255, i32 0
  %insertCast203 = insertelement <4 x i32> %insertCast202, i32 %255, i32 1
  %insertCast204 = insertelement <4 x i32> %insertCast203, i32 %255, i32 2
  %insertCast205 = insertelement <4 x i32> %insertCast204, i32 %255, i32 3
  store <4 x i32> %insertCast205, <4 x i32>* %CastInstVec29, align 4
  %256 = load <4 x i32>, <4 x i32>* %CastInstVec29, align 4
  %Vop206 = or <4 x i32> %254, %256
  store <4 x i32> %Vop206, <4 x i32>* %allocaVec67
  %257 = load <4 x i32>, <4 x i32>* %allocaVec67, align 4
  %extractE208 = extractelement <4 x i32> %257, i64 0
  %extractE209 = extractelement <4 x i32> %257, i64 1
  %extractE210 = extractelement <4 x i32> %257, i64 2
  %sum211 = add i32 %extractE208, %extractE209
  %sum212 = add i32 %sum211, %extractE210
  %258 = or i32 %253, %252
  %Fmul207 = mul i32 %258, 3
  store i32 %258, i32* %Recovery1
  %Fcmp213 = icmp ne i32 %sum212, %Fmul207
  br i1 %Fcmp213, label %259, label %263

; <label>:259:                                    ; preds = %221
  %remThree307 = sdiv i32 %sum212, %extractE208
  %FcmpThree308 = icmp ne i32 %remThree307, 3
  br i1 %FcmpThree308, label %260, label %261

; <label>:260:                                    ; preds = %259
  store i32 %258, i32* %Recovery1, align 4
  br label %262

; <label>:261:                                    ; preds = %259
  store i32 %extractE208, i32* %Recovery1, align 4
  br label %262

; <label>:262:                                    ; preds = %261, %260
  br label %263

; <label>:263:                                    ; preds = %221, %262
  %ReplaceInst313 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst313, i32* %15, align 4
  %264 = load i32, i32* %15, align 4
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %264, i32* %265, align 4
  %266 = load i8*, i8** %21, align 4
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %21, align 4
  %268 = load i8, i8* %266, align 1
  %269 = zext i8 %268 to i32
  store i32 %269, i32* %CastInst30
  %270 = load i32, i32* %CastInst30, align 4
  %insertCast214 = insertelement <4 x i32> undef, i32 %270, i32 0
  %insertCast215 = insertelement <4 x i32> %insertCast214, i32 %270, i32 1
  %insertCast216 = insertelement <4 x i32> %insertCast215, i32 %270, i32 2
  %insertCast217 = insertelement <4 x i32> %insertCast216, i32 %270, i32 3
  store <4 x i32> %insertCast217, <4 x i32>* %CastInstVec31, align 4
  %271 = load <4 x i32>, <4 x i32>* %CastInstVec31, align 4
  %Vop218 = shl <4 x i32> %271, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop218, <4 x i32>* %allocaVec68
  %272 = shl i32 %269, 24
  store i32 %272, i32* %16, align 4
  %273 = load i8*, i8** %21, align 4
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %21, align 4
  %275 = load i8, i8* %273, align 1
  %276 = zext i8 %275 to i32
  store i32 %276, i32* %CastInst32
  %277 = load i32, i32* %CastInst32, align 4
  %insertCast219 = insertelement <4 x i32> undef, i32 %277, i32 0
  %insertCast220 = insertelement <4 x i32> %insertCast219, i32 %277, i32 1
  %insertCast221 = insertelement <4 x i32> %insertCast220, i32 %277, i32 2
  %insertCast222 = insertelement <4 x i32> %insertCast221, i32 %277, i32 3
  store <4 x i32> %insertCast222, <4 x i32>* %CastInstVec33, align 4
  %278 = load <4 x i32>, <4 x i32>* %CastInstVec33, align 4
  %Vop223 = shl <4 x i32> %278, <i32 16, i32 16, i32 16, i32 16>
  %279 = shl i32 %276, 16
  %280 = load i32, i32* %16, align 4
  %281 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  %Vop224 = or <4 x i32> %281, %Vop223
  store <4 x i32> %Vop224, <4 x i32>* %allocaVec68
  %282 = or i32 %280, %279
  store i32 %282, i32* %16, align 4
  %283 = load i8*, i8** %21, align 4
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %21, align 4
  %285 = load i8, i8* %283, align 1
  %286 = zext i8 %285 to i32
  store i32 %286, i32* %CastInst34
  %287 = load i32, i32* %CastInst34, align 4
  %insertCast225 = insertelement <4 x i32> undef, i32 %287, i32 0
  %insertCast226 = insertelement <4 x i32> %insertCast225, i32 %287, i32 1
  %insertCast227 = insertelement <4 x i32> %insertCast226, i32 %287, i32 2
  %insertCast228 = insertelement <4 x i32> %insertCast227, i32 %287, i32 3
  store <4 x i32> %insertCast228, <4 x i32>* %CastInstVec35, align 4
  %288 = load <4 x i32>, <4 x i32>* %CastInstVec35, align 4
  %Vop229 = shl <4 x i32> %288, <i32 8, i32 8, i32 8, i32 8>
  %289 = shl i32 %286, 8
  %290 = load i32, i32* %16, align 4
  %291 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  %Vop230 = or <4 x i32> %291, %Vop229
  store <4 x i32> %Vop230, <4 x i32>* %allocaVec68
  %292 = or i32 %290, %289
  store i32 %292, i32* %16, align 4
  %293 = load i8*, i8** %21, align 4
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %21, align 4
  %295 = load i8, i8* %293, align 1
  %296 = zext i8 %295 to i32
  %297 = load i32, i32* %16, align 4
  %298 = load <4 x i32>, <4 x i32>* %allocaVec68, align 16
  store i32 %296, i32* %CastInst36
  %299 = load i32, i32* %CastInst36, align 4
  %insertCast231 = insertelement <4 x i32> undef, i32 %299, i32 0
  %insertCast232 = insertelement <4 x i32> %insertCast231, i32 %299, i32 1
  %insertCast233 = insertelement <4 x i32> %insertCast232, i32 %299, i32 2
  %insertCast234 = insertelement <4 x i32> %insertCast233, i32 %299, i32 3
  store <4 x i32> %insertCast234, <4 x i32>* %CastInstVec37, align 4
  %300 = load <4 x i32>, <4 x i32>* %CastInstVec37, align 4
  %Vop235 = or <4 x i32> %298, %300
  store <4 x i32> %Vop235, <4 x i32>* %allocaVec68
  %301 = load <4 x i32>, <4 x i32>* %allocaVec68, align 4
  %extractE237 = extractelement <4 x i32> %301, i64 0
  %extractE238 = extractelement <4 x i32> %301, i64 1
  %extractE239 = extractelement <4 x i32> %301, i64 2
  %sum240 = add i32 %extractE237, %extractE238
  %sum241 = add i32 %sum240, %extractE239
  %302 = or i32 %297, %296
  %Fmul236 = mul i32 %302, 3
  store i32 %302, i32* %Recovery2
  %Fcmp242 = icmp ne i32 %sum241, %Fmul236
  br i1 %Fcmp242, label %303, label %307

; <label>:303:                                    ; preds = %263
  %remThree309 = sdiv i32 %sum241, %extractE237
  %FcmpThree310 = icmp ne i32 %remThree309, 3
  br i1 %FcmpThree310, label %304, label %305

; <label>:304:                                    ; preds = %303
  store i32 %302, i32* %Recovery2, align 4
  br label %306

; <label>:305:                                    ; preds = %303
  store i32 %extractE237, i32* %Recovery2, align 4
  br label %306

; <label>:306:                                    ; preds = %305, %304
  br label %307

; <label>:307:                                    ; preds = %263, %306
  %ReplaceInst314 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst314, i32* %16, align 4
  %308 = load i32, i32* %16, align 4
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %308, i32* %309, align 4
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %311 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 4
  call arm_aapcscc void @BF_encrypt(i32* %310, %struct.bf_key_st* %311, i32 1)
  %312 = load i8*, i8** %12, align 4
  store i8* %312, i8** %21, align 4
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %17, align 4
  %315 = load i32, i32* %17, align 4
  %insertElmt243 = insertelement <4 x i32> undef, i32 %315, i32 0
  %insertElmt244 = insertelement <4 x i32> %insertElmt243, i32 %315, i32 1
  %insertElmt245 = insertelement <4 x i32> %insertElmt244, i32 %315, i32 2
  %insertElmt246 = insertelement <4 x i32> %insertElmt245, i32 %315, i32 3
  store <4 x i32> %insertElmt246, <4 x i32>* %allocaVec69, align 16
  %316 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop247 = lshr <4 x i32> %316, <i32 24, i32 24, i32 24, i32 24>
  %317 = lshr i32 %315, 24
  %Vop248 = and <4 x i32> %Vop247, <i32 255, i32 255, i32 255, i32 255>
  %318 = and i32 %317, 255
  %319 = trunc i32 %318 to i8
  %320 = load i8*, i8** %21, align 4
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %21, align 4
  store i8 %319, i8* %320, align 1
  %322 = load i32, i32* %17, align 4
  %insertElmt249 = insertelement <4 x i32> undef, i32 %322, i32 0
  %insertElmt250 = insertelement <4 x i32> %insertElmt249, i32 %322, i32 1
  %insertElmt251 = insertelement <4 x i32> %insertElmt250, i32 %322, i32 2
  %insertElmt252 = insertelement <4 x i32> %insertElmt251, i32 %322, i32 3
  store <4 x i32> %insertElmt252, <4 x i32>* %allocaVec69, align 16
  %323 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop253 = lshr <4 x i32> %323, <i32 16, i32 16, i32 16, i32 16>
  %324 = lshr i32 %322, 16
  %Vop254 = and <4 x i32> %Vop253, <i32 255, i32 255, i32 255, i32 255>
  %325 = and i32 %324, 255
  %326 = trunc i32 %325 to i8
  %327 = load i8*, i8** %21, align 4
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %21, align 4
  store i8 %326, i8* %327, align 1
  %329 = load i32, i32* %17, align 4
  %insertElmt255 = insertelement <4 x i32> undef, i32 %329, i32 0
  %insertElmt256 = insertelement <4 x i32> %insertElmt255, i32 %329, i32 1
  %insertElmt257 = insertelement <4 x i32> %insertElmt256, i32 %329, i32 2
  %insertElmt258 = insertelement <4 x i32> %insertElmt257, i32 %329, i32 3
  store <4 x i32> %insertElmt258, <4 x i32>* %allocaVec69, align 16
  %330 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop259 = lshr <4 x i32> %330, <i32 8, i32 8, i32 8, i32 8>
  %331 = lshr i32 %329, 8
  %Vop260 = and <4 x i32> %Vop259, <i32 255, i32 255, i32 255, i32 255>
  %332 = and i32 %331, 255
  %333 = trunc i32 %332 to i8
  %334 = load i8*, i8** %21, align 4
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %21, align 4
  store i8 %333, i8* %334, align 1
  %336 = load i32, i32* %17, align 4
  %insertElmt261 = insertelement <4 x i32> undef, i32 %336, i32 0
  %insertElmt262 = insertelement <4 x i32> %insertElmt261, i32 %336, i32 1
  %insertElmt263 = insertelement <4 x i32> %insertElmt262, i32 %336, i32 2
  %insertElmt264 = insertelement <4 x i32> %insertElmt263, i32 %336, i32 3
  store <4 x i32> %insertElmt264, <4 x i32>* %allocaVec69, align 16
  %337 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop265 = and <4 x i32> %337, <i32 255, i32 255, i32 255, i32 255>
  %338 = and i32 %336, 255
  %339 = trunc i32 %338 to i8
  %340 = load i8*, i8** %21, align 4
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %21, align 4
  store i8 %339, i8* %340, align 1
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %17, align 4
  %344 = load i32, i32* %17, align 4
  %insertElmt266 = insertelement <4 x i32> undef, i32 %344, i32 0
  %insertElmt267 = insertelement <4 x i32> %insertElmt266, i32 %344, i32 1
  %insertElmt268 = insertelement <4 x i32> %insertElmt267, i32 %344, i32 2
  %insertElmt269 = insertelement <4 x i32> %insertElmt268, i32 %344, i32 3
  store <4 x i32> %insertElmt269, <4 x i32>* %allocaVec69, align 16
  %345 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop270 = lshr <4 x i32> %345, <i32 24, i32 24, i32 24, i32 24>
  %346 = lshr i32 %344, 24
  %Vop271 = and <4 x i32> %Vop270, <i32 255, i32 255, i32 255, i32 255>
  %347 = and i32 %346, 255
  %348 = trunc i32 %347 to i8
  %349 = load i8*, i8** %21, align 4
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %21, align 4
  store i8 %348, i8* %349, align 1
  %351 = load i32, i32* %17, align 4
  %insertElmt272 = insertelement <4 x i32> undef, i32 %351, i32 0
  %insertElmt273 = insertelement <4 x i32> %insertElmt272, i32 %351, i32 1
  %insertElmt274 = insertelement <4 x i32> %insertElmt273, i32 %351, i32 2
  %insertElmt275 = insertelement <4 x i32> %insertElmt274, i32 %351, i32 3
  store <4 x i32> %insertElmt275, <4 x i32>* %allocaVec69, align 16
  %352 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop276 = lshr <4 x i32> %352, <i32 16, i32 16, i32 16, i32 16>
  %353 = lshr i32 %351, 16
  %Vop277 = and <4 x i32> %Vop276, <i32 255, i32 255, i32 255, i32 255>
  %354 = and i32 %353, 255
  %355 = trunc i32 %354 to i8
  %356 = load i8*, i8** %21, align 4
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %21, align 4
  store i8 %355, i8* %356, align 1
  %358 = load i32, i32* %17, align 4
  %insertElmt278 = insertelement <4 x i32> undef, i32 %358, i32 0
  %insertElmt279 = insertelement <4 x i32> %insertElmt278, i32 %358, i32 1
  %insertElmt280 = insertelement <4 x i32> %insertElmt279, i32 %358, i32 2
  %insertElmt281 = insertelement <4 x i32> %insertElmt280, i32 %358, i32 3
  store <4 x i32> %insertElmt281, <4 x i32>* %allocaVec69, align 16
  %359 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop282 = lshr <4 x i32> %359, <i32 8, i32 8, i32 8, i32 8>
  %360 = lshr i32 %358, 8
  %Vop283 = and <4 x i32> %Vop282, <i32 255, i32 255, i32 255, i32 255>
  %361 = and i32 %360, 255
  %362 = trunc i32 %361 to i8
  %363 = load i8*, i8** %21, align 4
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %21, align 4
  store i8 %362, i8* %363, align 1
  %365 = load i32, i32* %17, align 4
  %insertElmt284 = insertelement <4 x i32> undef, i32 %365, i32 0
  %insertElmt285 = insertelement <4 x i32> %insertElmt284, i32 %365, i32 1
  %insertElmt286 = insertelement <4 x i32> %insertElmt285, i32 %365, i32 2
  %insertElmt287 = insertelement <4 x i32> %insertElmt286, i32 %365, i32 3
  store <4 x i32> %insertElmt287, <4 x i32>* %allocaVec69, align 16
  %366 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop288 = and <4 x i32> %366, <i32 255, i32 255, i32 255, i32 255>
  %367 = and i32 %365, 255
  %368 = trunc i32 %367 to i8
  %369 = load i8*, i8** %21, align 4
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %21, align 4
  store i8 %368, i8* %369, align 1
  %371 = load i8*, i8** %12, align 4
  store i8* %371, i8** %21, align 4
  br label %372

; <label>:372:                                    ; preds = %307, %218
  %373 = load i8*, i8** %8, align 4
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %8, align 4
  %375 = load i8, i8* %373, align 1
  store i8 %375, i8* %23, align 1
  %376 = load i8*, i8** %21, align 4
  %377 = load i32, i32* %18, align 4
  %378 = getelementptr inbounds i8, i8* %376, i32 %377
  %379 = load i8, i8* %378, align 1
  store i8 %379, i8* %22, align 1
  %380 = load i8, i8* %23, align 1
  %381 = load i8*, i8** %21, align 4
  %382 = load i32, i32* %18, align 4
  %383 = getelementptr inbounds i8, i8* %381, i32 %382
  store i8 %380, i8* %383, align 1
  %384 = load i8, i8* %22, align 1
  %385 = zext i8 %384 to i32
  %386 = load i8, i8* %23, align 1
  %387 = zext i8 %386 to i32
  store i32 %385, i32* %CastInst38
  %388 = load i32, i32* %CastInst38, align 4
  %insertCast289 = insertelement <4 x i32> undef, i32 %388, i32 0
  %insertCast290 = insertelement <4 x i32> %insertCast289, i32 %388, i32 1
  %insertCast291 = insertelement <4 x i32> %insertCast290, i32 %388, i32 2
  %insertCast292 = insertelement <4 x i32> %insertCast291, i32 %388, i32 3
  store <4 x i32> %insertCast292, <4 x i32>* %CastInstVec39, align 4
  %389 = load <4 x i32>, <4 x i32>* %CastInstVec39, align 4
  store i32 %387, i32* %CastInst40
  %390 = load i32, i32* %CastInst40, align 4
  %insertCast293 = insertelement <4 x i32> undef, i32 %390, i32 0
  %insertCast294 = insertelement <4 x i32> %insertCast293, i32 %390, i32 1
  %insertCast295 = insertelement <4 x i32> %insertCast294, i32 %390, i32 2
  %insertCast296 = insertelement <4 x i32> %insertCast295, i32 %390, i32 3
  store <4 x i32> %insertCast296, <4 x i32>* %CastInstVec41, align 4
  %391 = load <4 x i32>, <4 x i32>* %CastInstVec41, align 4
  %Vop297 = xor <4 x i32> %389, %391
  %392 = xor i32 %385, %387
  %393 = trunc i32 %392 to i8
  %394 = load i8*, i8** %9, align 4
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %9, align 4
  store i8 %393, i8* %394, align 1
  %396 = load i32, i32* %18, align 4
  %397 = load <4 x i32>, <4 x i32>* %allocaVec70, align 16
  %Vop298 = add <4 x i32> %397, <i32 1, i32 1, i32 1, i32 1>
  %398 = add nsw i32 %396, 1
  %Vop299 = and <4 x i32> %Vop298, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %Vop299, <4 x i32>* %allocaVec70
  %399 = load <4 x i32>, <4 x i32>* %allocaVec70, align 4
  %extractE301 = extractelement <4 x i32> %399, i64 0
  %extractE302 = extractelement <4 x i32> %399, i64 1
  %extractE303 = extractelement <4 x i32> %399, i64 2
  %sum304 = add i32 %extractE301, %extractE302
  %sum305 = add i32 %sum304, %extractE303
  %400 = and i32 %398, 7
  %Fmul300 = mul i32 %400, 3
  store i32 %400, i32* %Recovery3
  %Fcmp306 = icmp ne i32 %sum305, %Fmul300
  br i1 %Fcmp306, label %401, label %405

; <label>:401:                                    ; preds = %372
  %remThree311 = sdiv i32 %sum305, %extractE301
  %FcmpThree312 = icmp ne i32 %remThree311, 3
  br i1 %FcmpThree312, label %402, label %403

; <label>:402:                                    ; preds = %401
  store i32 %400, i32* %Recovery3, align 4
  br label %404

; <label>:403:                                    ; preds = %401
  store i32 %extractE301, i32* %Recovery3, align 4
  br label %404

; <label>:404:                                    ; preds = %403, %402
  br label %405

; <label>:405:                                    ; preds = %372, %404
  %ReplaceInst315 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst315, i32* %18, align 4
  br label %207

; <label>:406:                                    ; preds = %216
  br label %407

; <label>:407:                                    ; preds = %406, %205
  store <4 x i8> zeroinitializer, <4 x i8>* %allocaVec73
  store i8 0, i8* %23, align 1
  store <4 x i8> zeroinitializer, <4 x i8>* %allocaVec72
  store i8 0, i8* %22, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec69
  store i32 0, i32* %17, align 4
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %408, align 4
  %409 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %409, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec68
  store i32 0, i32* %16, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec67
  store i32 0, i32* %15, align 4
  %410 = load i32, i32* %18, align 4
  %411 = load i32*, i32** %13, align 4
  store i32 %410, i32* %411, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i8* @BF_options() #0 {
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_ecb_encrypt(i8*, i8*, %struct.bf_key_st*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec15 = alloca <4 x i32>, align 16
  %CastInst1 = alloca i32, align 4
  %CastInstVec2 = alloca <4 x i32>, align 16
  %allocaVec16 = alloca <4 x i32>, align 16
  %CastInst3 = alloca i32, align 4
  %CastInstVec4 = alloca <4 x i32>, align 16
  %allocaVec17 = alloca <4 x i32>, align 16
  %CastInst5 = alloca i32, align 4
  %CastInstVec6 = alloca <4 x i32>, align 16
  %allocaVec18 = alloca <4 x i32>, align 16
  %CastInst7 = alloca i32, align 4
  %CastInstVec8 = alloca <4 x i32>, align 16
  %allocaVec19 = alloca <4 x i32>, align 16
  %CastInst9 = alloca i32, align 4
  %CastInstVec10 = alloca <4 x i32>, align 16
  %allocaVec20 = alloca <4 x i32>, align 16
  %CastInst11 = alloca i32, align 4
  %CastInstVec12 = alloca <4 x i32>, align 16
  %allocaVec21 = alloca <4 x i32>, align 16
  %CastInst13 = alloca i32, align 4
  %CastInstVec14 = alloca <4 x i32>, align 16
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca %struct.bf_key_st*, align 4
  %allocaVec22 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 4
  store i8* %1, i8** %6, align 4
  store %struct.bf_key_st* %2, %struct.bf_key_st** %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 4
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 4
  %13 = load i8, i8* %11, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %CastInst
  %15 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %15, i32 0
  %insertCast24 = insertelement <4 x i32> %insertCast, i32 %15, i32 1
  %insertCast25 = insertelement <4 x i32> %insertCast24, i32 %15, i32 2
  %insertCast26 = insertelement <4 x i32> %insertCast25, i32 %15, i32 3
  store <4 x i32> %insertCast26, <4 x i32>* %CastInstVec, align 4
  %16 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = shl <4 x i32> %16, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec23
  %17 = shl i32 %14, 24
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %5, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 4
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %CastInst1
  %22 = load i32, i32* %CastInst1, align 4
  %insertCast27 = insertelement <4 x i32> undef, i32 %22, i32 0
  %insertCast28 = insertelement <4 x i32> %insertCast27, i32 %22, i32 1
  %insertCast29 = insertelement <4 x i32> %insertCast28, i32 %22, i32 2
  %insertCast30 = insertelement <4 x i32> %insertCast29, i32 %22, i32 3
  store <4 x i32> %insertCast30, <4 x i32>* %CastInstVec2, align 4
  %23 = load <4 x i32>, <4 x i32>* %CastInstVec2, align 4
  %Vop31 = shl <4 x i32> %23, <i32 16, i32 16, i32 16, i32 16>
  %24 = shl i32 %21, 16
  %25 = load i32, i32* %9, align 4
  %26 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop32 = or <4 x i32> %26, %Vop31
  store <4 x i32> %Vop32, <4 x i32>* %allocaVec23
  %27 = or i32 %25, %24
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %5, align 4
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 4
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %CastInst3
  %32 = load i32, i32* %CastInst3, align 4
  %insertCast33 = insertelement <4 x i32> undef, i32 %32, i32 0
  %insertCast34 = insertelement <4 x i32> %insertCast33, i32 %32, i32 1
  %insertCast35 = insertelement <4 x i32> %insertCast34, i32 %32, i32 2
  %insertCast36 = insertelement <4 x i32> %insertCast35, i32 %32, i32 3
  store <4 x i32> %insertCast36, <4 x i32>* %CastInstVec4, align 4
  %33 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop37 = shl <4 x i32> %33, <i32 8, i32 8, i32 8, i32 8>
  %34 = shl i32 %31, 8
  %35 = load i32, i32* %9, align 4
  %36 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop38 = or <4 x i32> %36, %Vop37
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec23
  %37 = or i32 %35, %34
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %5, align 4
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 4
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  store i32 %41, i32* %CastInst5
  %44 = load i32, i32* %CastInst5, align 4
  %insertCast39 = insertelement <4 x i32> undef, i32 %44, i32 0
  %insertCast40 = insertelement <4 x i32> %insertCast39, i32 %44, i32 1
  %insertCast41 = insertelement <4 x i32> %insertCast40, i32 %44, i32 2
  %insertCast42 = insertelement <4 x i32> %insertCast41, i32 %44, i32 3
  store <4 x i32> %insertCast42, <4 x i32>* %CastInstVec6, align 4
  %45 = load <4 x i32>, <4 x i32>* %CastInstVec6, align 4
  %Vop43 = or <4 x i32> %43, %45
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec23
  %46 = or i32 %42, %41
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %5, align 4
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 4
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %CastInst7
  %53 = load i32, i32* %CastInst7, align 4
  %insertCast44 = insertelement <4 x i32> undef, i32 %53, i32 0
  %insertCast45 = insertelement <4 x i32> %insertCast44, i32 %53, i32 1
  %insertCast46 = insertelement <4 x i32> %insertCast45, i32 %53, i32 2
  %insertCast47 = insertelement <4 x i32> %insertCast46, i32 %53, i32 3
  store <4 x i32> %insertCast47, <4 x i32>* %CastInstVec8, align 4
  %54 = load <4 x i32>, <4 x i32>* %CastInstVec8, align 4
  %Vop48 = shl <4 x i32> %54, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop48, <4 x i32>* %allocaVec23
  %55 = shl i32 %52, 24
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %5, align 4
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 4
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %CastInst9
  %60 = load i32, i32* %CastInst9, align 4
  %insertCast49 = insertelement <4 x i32> undef, i32 %60, i32 0
  %insertCast50 = insertelement <4 x i32> %insertCast49, i32 %60, i32 1
  %insertCast51 = insertelement <4 x i32> %insertCast50, i32 %60, i32 2
  %insertCast52 = insertelement <4 x i32> %insertCast51, i32 %60, i32 3
  store <4 x i32> %insertCast52, <4 x i32>* %CastInstVec10, align 4
  %61 = load <4 x i32>, <4 x i32>* %CastInstVec10, align 4
  %Vop53 = shl <4 x i32> %61, <i32 16, i32 16, i32 16, i32 16>
  %62 = shl i32 %59, 16
  %63 = load i32, i32* %9, align 4
  %64 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop54 = or <4 x i32> %64, %Vop53
  store <4 x i32> %Vop54, <4 x i32>* %allocaVec23
  %65 = or i32 %63, %62
  store i32 %65, i32* %9, align 4
  %66 = load i8*, i8** %5, align 4
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 4
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %CastInst11
  %70 = load i32, i32* %CastInst11, align 4
  %insertCast55 = insertelement <4 x i32> undef, i32 %70, i32 0
  %insertCast56 = insertelement <4 x i32> %insertCast55, i32 %70, i32 1
  %insertCast57 = insertelement <4 x i32> %insertCast56, i32 %70, i32 2
  %insertCast58 = insertelement <4 x i32> %insertCast57, i32 %70, i32 3
  store <4 x i32> %insertCast58, <4 x i32>* %CastInstVec12, align 4
  %71 = load <4 x i32>, <4 x i32>* %CastInstVec12, align 4
  %Vop59 = shl <4 x i32> %71, <i32 8, i32 8, i32 8, i32 8>
  %72 = shl i32 %69, 8
  %73 = load i32, i32* %9, align 4
  %74 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop60 = or <4 x i32> %74, %Vop59
  store <4 x i32> %Vop60, <4 x i32>* %allocaVec23
  %75 = or i32 %73, %72
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %5, align 4
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 4
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %9, align 4
  %81 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  store i32 %79, i32* %CastInst13
  %82 = load i32, i32* %CastInst13, align 4
  %insertCast61 = insertelement <4 x i32> undef, i32 %82, i32 0
  %insertCast62 = insertelement <4 x i32> %insertCast61, i32 %82, i32 1
  %insertCast63 = insertelement <4 x i32> %insertCast62, i32 %82, i32 2
  %insertCast64 = insertelement <4 x i32> %insertCast63, i32 %82, i32 3
  store <4 x i32> %insertCast64, <4 x i32>* %CastInstVec14, align 4
  %83 = load <4 x i32>, <4 x i32>* %CastInstVec14, align 4
  %Vop65 = or <4 x i32> %81, %83
  store <4 x i32> %Vop65, <4 x i32>* %allocaVec23
  %84 = or i32 %80, %79
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %88 = load %struct.bf_key_st*, %struct.bf_key_st** %7, align 4
  %89 = load i32, i32* %8, align 4
  call arm_aapcscc void @BF_encrypt(i32* %87, %struct.bf_key_st* %88, i32 %89)
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop66 = lshr <4 x i32> %93, <i32 24, i32 24, i32 24, i32 24>
  %94 = lshr i32 %92, 24
  %Vop67 = and <4 x i32> %Vop66, <i32 255, i32 255, i32 255, i32 255>
  %95 = and i32 %94, 255
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %6, align 4
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 4
  store i8 %96, i8* %97, align 1
  %99 = load i32, i32* %9, align 4
  %100 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop68 = lshr <4 x i32> %100, <i32 16, i32 16, i32 16, i32 16>
  %101 = lshr i32 %99, 16
  %Vop69 = and <4 x i32> %Vop68, <i32 255, i32 255, i32 255, i32 255>
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %6, align 4
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 4
  store i8 %103, i8* %104, align 1
  %106 = load i32, i32* %9, align 4
  %107 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop70 = lshr <4 x i32> %107, <i32 8, i32 8, i32 8, i32 8>
  %108 = lshr i32 %106, 8
  %Vop71 = and <4 x i32> %Vop70, <i32 255, i32 255, i32 255, i32 255>
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 4
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 4
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %9, align 4
  %114 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop72 = and <4 x i32> %114, <i32 255, i32 255, i32 255, i32 255>
  %115 = and i32 %113, 255
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %6, align 4
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 4
  store i8 %116, i8* %117, align 1
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop73 = lshr <4 x i32> %122, <i32 24, i32 24, i32 24, i32 24>
  %123 = lshr i32 %121, 24
  %Vop74 = and <4 x i32> %Vop73, <i32 255, i32 255, i32 255, i32 255>
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %6, align 4
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 4
  store i8 %125, i8* %126, align 1
  %128 = load i32, i32* %9, align 4
  %129 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop75 = lshr <4 x i32> %129, <i32 16, i32 16, i32 16, i32 16>
  %130 = lshr i32 %128, 16
  %Vop76 = and <4 x i32> %Vop75, <i32 255, i32 255, i32 255, i32 255>
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %6, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 4
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %9, align 4
  %136 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop77 = lshr <4 x i32> %136, <i32 8, i32 8, i32 8, i32 8>
  %137 = lshr i32 %135, 8
  %Vop78 = and <4 x i32> %Vop77, <i32 255, i32 255, i32 255, i32 255>
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %6, align 4
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 4
  store i8 %139, i8* %140, align 1
  %142 = load i32, i32* %9, align 4
  %143 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop79 = and <4 x i32> %143, <i32 255, i32 255, i32 255, i32 255>
  %144 = and i32 %142, 255
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %6, align 4
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 4
  store i8 %145, i8* %146, align 1
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  store i32 0, i32* %149, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_encrypt(i32*, %struct.bf_key_st*, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %4 = alloca i32*, align 4
  %5 = alloca %struct.bf_key_st*, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 4
  %10 = alloca i32*, align 4
  store i32* %0, i32** %4, align 4
  store %struct.bf_key_st* %1, %struct.bf_key_st** %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bf_key_st*, %struct.bf_key_st** %5, align 4
  %12 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %11, i32 0, i32 0
  %13 = getelementptr inbounds [18 x i32], [18 x i32]* %12, i32 0, i32 0
  store i32* %13, i32** %9, align 4
  %14 = load %struct.bf_key_st*, %struct.bf_key_st** %5, align 4
  %15 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %14, i32 0, i32 1
  %16 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i32 0, i32 0
  store i32* %16, i32** %10, align 4
  %17 = load i32*, i32** %4, align 4
  %18 = getelementptr inbounds i32, i32* %17, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 4
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %596

; <label>:25:                                     ; preds = %3
  %26 = load i32*, i32** %9, align 4
  %27 = getelementptr inbounds i32, i32* %26, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %9, align 4
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 24
  %39 = getelementptr inbounds i32, i32* %36, i32 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = add i32 256, %44
  %46 = getelementptr inbounds i32, i32* %41, i32 %45
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %40, %47
  %49 = load i32*, i32** %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = add i32 512, %52
  %54 = getelementptr inbounds i32, i32* %49, i32 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %48, %55
  %57 = load i32*, i32** %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  %60 = add i32 768, %59
  %61 = getelementptr inbounds i32, i32* %57, i32 %60
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %56, %62
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %9, align 4
  %67 = getelementptr inbounds i32, i32* %66, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32*, i32** %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = lshr i32 %72, 24
  %74 = getelementptr inbounds i32, i32* %71, i32 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  %80 = add i32 256, %79
  %81 = getelementptr inbounds i32, i32* %76, i32 %80
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %75, %82
  %84 = load i32*, i32** %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = lshr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = add i32 512, %87
  %89 = getelementptr inbounds i32, i32* %84, i32 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %83, %90
  %92 = load i32*, i32** %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 255
  %95 = add i32 768, %94
  %96 = getelementptr inbounds i32, i32* %92, i32 %95
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %91, %97
  %99 = load i32, i32* %7, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %9, align 4
  %102 = getelementptr inbounds i32, i32* %101, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = xor i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = lshr i32 %107, 24
  %109 = getelementptr inbounds i32, i32* %106, i32 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = add i32 256, %114
  %116 = getelementptr inbounds i32, i32* %111, i32 %115
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %110, %117
  %119 = load i32*, i32** %10, align 4
  %120 = load i32, i32* %7, align 4
  %121 = lshr i32 %120, 8
  %122 = and i32 %121, 255
  %123 = add i32 512, %122
  %124 = getelementptr inbounds i32, i32* %119, i32 %123
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %118, %125
  %127 = load i32*, i32** %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 255
  %130 = add i32 768, %129
  %131 = getelementptr inbounds i32, i32* %127, i32 %130
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %126, %132
  %134 = load i32, i32* %8, align 4
  %135 = xor i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load i32*, i32** %9, align 4
  %137 = getelementptr inbounds i32, i32* %136, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = xor i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32*, i32** %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = lshr i32 %142, 24
  %144 = getelementptr inbounds i32, i32* %141, i32 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  %150 = add i32 256, %149
  %151 = getelementptr inbounds i32, i32* %146, i32 %150
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %145, %152
  %154 = load i32*, i32** %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = lshr i32 %155, 8
  %157 = and i32 %156, 255
  %158 = add i32 512, %157
  %159 = getelementptr inbounds i32, i32* %154, i32 %158
  %160 = load i32, i32* %159, align 4
  %161 = xor i32 %153, %160
  %162 = load i32*, i32** %10, align 4
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, 255
  %165 = add i32 768, %164
  %166 = getelementptr inbounds i32, i32* %162, i32 %165
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %161, %167
  %169 = load i32, i32* %7, align 4
  %170 = xor i32 %169, %168
  store i32 %170, i32* %7, align 4
  %171 = load i32*, i32** %9, align 4
  %172 = getelementptr inbounds i32, i32* %171, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = xor i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load i32*, i32** %10, align 4
  %177 = load i32, i32* %7, align 4
  %178 = lshr i32 %177, 24
  %179 = getelementptr inbounds i32, i32* %176, i32 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = add i32 256, %184
  %186 = getelementptr inbounds i32, i32* %181, i32 %185
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %180, %187
  %189 = load i32*, i32** %10, align 4
  %190 = load i32, i32* %7, align 4
  %191 = lshr i32 %190, 8
  %192 = and i32 %191, 255
  %193 = add i32 512, %192
  %194 = getelementptr inbounds i32, i32* %189, i32 %193
  %195 = load i32, i32* %194, align 4
  %196 = xor i32 %188, %195
  %197 = load i32*, i32** %10, align 4
  %198 = load i32, i32* %7, align 4
  %199 = and i32 %198, 255
  %200 = add i32 768, %199
  %201 = getelementptr inbounds i32, i32* %197, i32 %200
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %196, %202
  %204 = load i32, i32* %8, align 4
  %205 = xor i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = load i32*, i32** %9, align 4
  %207 = getelementptr inbounds i32, i32* %206, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %7, align 4
  %210 = xor i32 %209, %208
  store i32 %210, i32* %7, align 4
  %211 = load i32*, i32** %10, align 4
  %212 = load i32, i32* %8, align 4
  %213 = lshr i32 %212, 24
  %214 = getelementptr inbounds i32, i32* %211, i32 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %10, align 4
  %217 = load i32, i32* %8, align 4
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  %220 = add i32 256, %219
  %221 = getelementptr inbounds i32, i32* %216, i32 %220
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %215, %222
  %224 = load i32*, i32** %10, align 4
  %225 = load i32, i32* %8, align 4
  %226 = lshr i32 %225, 8
  %227 = and i32 %226, 255
  %228 = add i32 512, %227
  %229 = getelementptr inbounds i32, i32* %224, i32 %228
  %230 = load i32, i32* %229, align 4
  %231 = xor i32 %223, %230
  %232 = load i32*, i32** %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = and i32 %233, 255
  %235 = add i32 768, %234
  %236 = getelementptr inbounds i32, i32* %232, i32 %235
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %231, %237
  %239 = load i32, i32* %7, align 4
  %240 = xor i32 %239, %238
  store i32 %240, i32* %7, align 4
  %241 = load i32*, i32** %9, align 4
  %242 = getelementptr inbounds i32, i32* %241, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %8, align 4
  %245 = xor i32 %244, %243
  store i32 %245, i32* %8, align 4
  %246 = load i32*, i32** %10, align 4
  %247 = load i32, i32* %7, align 4
  %248 = lshr i32 %247, 24
  %249 = getelementptr inbounds i32, i32* %246, i32 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %10, align 4
  %252 = load i32, i32* %7, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  %255 = add i32 256, %254
  %256 = getelementptr inbounds i32, i32* %251, i32 %255
  %257 = load i32, i32* %256, align 4
  %258 = add i32 %250, %257
  %259 = load i32*, i32** %10, align 4
  %260 = load i32, i32* %7, align 4
  %261 = lshr i32 %260, 8
  %262 = and i32 %261, 255
  %263 = add i32 512, %262
  %264 = getelementptr inbounds i32, i32* %259, i32 %263
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %258, %265
  %267 = load i32*, i32** %10, align 4
  %268 = load i32, i32* %7, align 4
  %269 = and i32 %268, 255
  %270 = add i32 768, %269
  %271 = getelementptr inbounds i32, i32* %267, i32 %270
  %272 = load i32, i32* %271, align 4
  %273 = add i32 %266, %272
  %274 = load i32, i32* %8, align 4
  %275 = xor i32 %274, %273
  store i32 %275, i32* %8, align 4
  %276 = load i32*, i32** %9, align 4
  %277 = getelementptr inbounds i32, i32* %276, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %7, align 4
  %280 = xor i32 %279, %278
  store i32 %280, i32* %7, align 4
  %281 = load i32*, i32** %10, align 4
  %282 = load i32, i32* %8, align 4
  %283 = lshr i32 %282, 24
  %284 = getelementptr inbounds i32, i32* %281, i32 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %10, align 4
  %287 = load i32, i32* %8, align 4
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 255
  %290 = add i32 256, %289
  %291 = getelementptr inbounds i32, i32* %286, i32 %290
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %285, %292
  %294 = load i32*, i32** %10, align 4
  %295 = load i32, i32* %8, align 4
  %296 = lshr i32 %295, 8
  %297 = and i32 %296, 255
  %298 = add i32 512, %297
  %299 = getelementptr inbounds i32, i32* %294, i32 %298
  %300 = load i32, i32* %299, align 4
  %301 = xor i32 %293, %300
  %302 = load i32*, i32** %10, align 4
  %303 = load i32, i32* %8, align 4
  %304 = and i32 %303, 255
  %305 = add i32 768, %304
  %306 = getelementptr inbounds i32, i32* %302, i32 %305
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %301, %307
  %309 = load i32, i32* %7, align 4
  %310 = xor i32 %309, %308
  store i32 %310, i32* %7, align 4
  %311 = load i32*, i32** %9, align 4
  %312 = getelementptr inbounds i32, i32* %311, i32 9
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %8, align 4
  %315 = xor i32 %314, %313
  store i32 %315, i32* %8, align 4
  %316 = load i32*, i32** %10, align 4
  %317 = load i32, i32* %7, align 4
  %318 = lshr i32 %317, 24
  %319 = getelementptr inbounds i32, i32* %316, i32 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %10, align 4
  %322 = load i32, i32* %7, align 4
  %323 = lshr i32 %322, 16
  %324 = and i32 %323, 255
  %325 = add i32 256, %324
  %326 = getelementptr inbounds i32, i32* %321, i32 %325
  %327 = load i32, i32* %326, align 4
  %328 = add i32 %320, %327
  %329 = load i32*, i32** %10, align 4
  %330 = load i32, i32* %7, align 4
  %331 = lshr i32 %330, 8
  %332 = and i32 %331, 255
  %333 = add i32 512, %332
  %334 = getelementptr inbounds i32, i32* %329, i32 %333
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %328, %335
  %337 = load i32*, i32** %10, align 4
  %338 = load i32, i32* %7, align 4
  %339 = and i32 %338, 255
  %340 = add i32 768, %339
  %341 = getelementptr inbounds i32, i32* %337, i32 %340
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %336, %342
  %344 = load i32, i32* %8, align 4
  %345 = xor i32 %344, %343
  store i32 %345, i32* %8, align 4
  %346 = load i32*, i32** %9, align 4
  %347 = getelementptr inbounds i32, i32* %346, i32 10
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %7, align 4
  %350 = xor i32 %349, %348
  store i32 %350, i32* %7, align 4
  %351 = load i32*, i32** %10, align 4
  %352 = load i32, i32* %8, align 4
  %353 = lshr i32 %352, 24
  %354 = getelementptr inbounds i32, i32* %351, i32 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %10, align 4
  %357 = load i32, i32* %8, align 4
  %358 = lshr i32 %357, 16
  %359 = and i32 %358, 255
  %360 = add i32 256, %359
  %361 = getelementptr inbounds i32, i32* %356, i32 %360
  %362 = load i32, i32* %361, align 4
  %363 = add i32 %355, %362
  %364 = load i32*, i32** %10, align 4
  %365 = load i32, i32* %8, align 4
  %366 = lshr i32 %365, 8
  %367 = and i32 %366, 255
  %368 = add i32 512, %367
  %369 = getelementptr inbounds i32, i32* %364, i32 %368
  %370 = load i32, i32* %369, align 4
  %371 = xor i32 %363, %370
  %372 = load i32*, i32** %10, align 4
  %373 = load i32, i32* %8, align 4
  %374 = and i32 %373, 255
  %375 = add i32 768, %374
  %376 = getelementptr inbounds i32, i32* %372, i32 %375
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %371, %377
  %379 = load i32, i32* %7, align 4
  %380 = xor i32 %379, %378
  store i32 %380, i32* %7, align 4
  %381 = load i32*, i32** %9, align 4
  %382 = getelementptr inbounds i32, i32* %381, i32 11
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %8, align 4
  %385 = xor i32 %384, %383
  store i32 %385, i32* %8, align 4
  %386 = load i32*, i32** %10, align 4
  %387 = load i32, i32* %7, align 4
  %388 = lshr i32 %387, 24
  %389 = getelementptr inbounds i32, i32* %386, i32 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** %10, align 4
  %392 = load i32, i32* %7, align 4
  %393 = lshr i32 %392, 16
  %394 = and i32 %393, 255
  %395 = add i32 256, %394
  %396 = getelementptr inbounds i32, i32* %391, i32 %395
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %390, %397
  %399 = load i32*, i32** %10, align 4
  %400 = load i32, i32* %7, align 4
  %401 = lshr i32 %400, 8
  %402 = and i32 %401, 255
  %403 = add i32 512, %402
  %404 = getelementptr inbounds i32, i32* %399, i32 %403
  %405 = load i32, i32* %404, align 4
  %406 = xor i32 %398, %405
  %407 = load i32*, i32** %10, align 4
  %408 = load i32, i32* %7, align 4
  %409 = and i32 %408, 255
  %410 = add i32 768, %409
  %411 = getelementptr inbounds i32, i32* %407, i32 %410
  %412 = load i32, i32* %411, align 4
  %413 = add i32 %406, %412
  %414 = load i32, i32* %8, align 4
  %415 = xor i32 %414, %413
  store i32 %415, i32* %8, align 4
  %416 = load i32*, i32** %9, align 4
  %417 = getelementptr inbounds i32, i32* %416, i32 12
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %7, align 4
  %420 = xor i32 %419, %418
  store i32 %420, i32* %7, align 4
  %421 = load i32*, i32** %10, align 4
  %422 = load i32, i32* %8, align 4
  %423 = lshr i32 %422, 24
  %424 = getelementptr inbounds i32, i32* %421, i32 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %10, align 4
  %427 = load i32, i32* %8, align 4
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = add i32 256, %429
  %431 = getelementptr inbounds i32, i32* %426, i32 %430
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %425, %432
  %434 = load i32*, i32** %10, align 4
  %435 = load i32, i32* %8, align 4
  %436 = lshr i32 %435, 8
  %437 = and i32 %436, 255
  %438 = add i32 512, %437
  %439 = getelementptr inbounds i32, i32* %434, i32 %438
  %440 = load i32, i32* %439, align 4
  %441 = xor i32 %433, %440
  %442 = load i32*, i32** %10, align 4
  %443 = load i32, i32* %8, align 4
  %444 = and i32 %443, 255
  %445 = add i32 768, %444
  %446 = getelementptr inbounds i32, i32* %442, i32 %445
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %441, %447
  %449 = load i32, i32* %7, align 4
  %450 = xor i32 %449, %448
  store i32 %450, i32* %7, align 4
  %451 = load i32*, i32** %9, align 4
  %452 = getelementptr inbounds i32, i32* %451, i32 13
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %8, align 4
  %455 = xor i32 %454, %453
  store i32 %455, i32* %8, align 4
  %456 = load i32*, i32** %10, align 4
  %457 = load i32, i32* %7, align 4
  %458 = lshr i32 %457, 24
  %459 = getelementptr inbounds i32, i32* %456, i32 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i32*, i32** %10, align 4
  %462 = load i32, i32* %7, align 4
  %463 = lshr i32 %462, 16
  %464 = and i32 %463, 255
  %465 = add i32 256, %464
  %466 = getelementptr inbounds i32, i32* %461, i32 %465
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %460, %467
  %469 = load i32*, i32** %10, align 4
  %470 = load i32, i32* %7, align 4
  %471 = lshr i32 %470, 8
  %472 = and i32 %471, 255
  %473 = add i32 512, %472
  %474 = getelementptr inbounds i32, i32* %469, i32 %473
  %475 = load i32, i32* %474, align 4
  %476 = xor i32 %468, %475
  %477 = load i32*, i32** %10, align 4
  %478 = load i32, i32* %7, align 4
  %479 = and i32 %478, 255
  %480 = add i32 768, %479
  %481 = getelementptr inbounds i32, i32* %477, i32 %480
  %482 = load i32, i32* %481, align 4
  %483 = add i32 %476, %482
  %484 = load i32, i32* %8, align 4
  %485 = xor i32 %484, %483
  store i32 %485, i32* %8, align 4
  %486 = load i32*, i32** %9, align 4
  %487 = getelementptr inbounds i32, i32* %486, i32 14
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %7, align 4
  %490 = xor i32 %489, %488
  store i32 %490, i32* %7, align 4
  %491 = load i32*, i32** %10, align 4
  %492 = load i32, i32* %8, align 4
  %493 = lshr i32 %492, 24
  %494 = getelementptr inbounds i32, i32* %491, i32 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32*, i32** %10, align 4
  %497 = load i32, i32* %8, align 4
  %498 = lshr i32 %497, 16
  %499 = and i32 %498, 255
  %500 = add i32 256, %499
  %501 = getelementptr inbounds i32, i32* %496, i32 %500
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %495, %502
  %504 = load i32*, i32** %10, align 4
  %505 = load i32, i32* %8, align 4
  %506 = lshr i32 %505, 8
  %507 = and i32 %506, 255
  %508 = add i32 512, %507
  %509 = getelementptr inbounds i32, i32* %504, i32 %508
  %510 = load i32, i32* %509, align 4
  %511 = xor i32 %503, %510
  %512 = load i32*, i32** %10, align 4
  %513 = load i32, i32* %8, align 4
  %514 = and i32 %513, 255
  %515 = add i32 768, %514
  %516 = getelementptr inbounds i32, i32* %512, i32 %515
  %517 = load i32, i32* %516, align 4
  %518 = add i32 %511, %517
  %519 = load i32, i32* %7, align 4
  %520 = xor i32 %519, %518
  store i32 %520, i32* %7, align 4
  %521 = load i32*, i32** %9, align 4
  %522 = getelementptr inbounds i32, i32* %521, i32 15
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %8, align 4
  %525 = xor i32 %524, %523
  store i32 %525, i32* %8, align 4
  %526 = load i32*, i32** %10, align 4
  %527 = load i32, i32* %7, align 4
  %528 = lshr i32 %527, 24
  %529 = getelementptr inbounds i32, i32* %526, i32 %528
  %530 = load i32, i32* %529, align 4
  %531 = load i32*, i32** %10, align 4
  %532 = load i32, i32* %7, align 4
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  %535 = add i32 256, %534
  %536 = getelementptr inbounds i32, i32* %531, i32 %535
  %537 = load i32, i32* %536, align 4
  %538 = add i32 %530, %537
  %539 = load i32*, i32** %10, align 4
  %540 = load i32, i32* %7, align 4
  %541 = lshr i32 %540, 8
  %542 = and i32 %541, 255
  %543 = add i32 512, %542
  %544 = getelementptr inbounds i32, i32* %539, i32 %543
  %545 = load i32, i32* %544, align 4
  %546 = xor i32 %538, %545
  %547 = load i32*, i32** %10, align 4
  %548 = load i32, i32* %7, align 4
  %549 = and i32 %548, 255
  %550 = add i32 768, %549
  %551 = getelementptr inbounds i32, i32* %547, i32 %550
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %546, %552
  %554 = load i32, i32* %8, align 4
  %555 = xor i32 %554, %553
  store i32 %555, i32* %8, align 4
  %556 = load i32*, i32** %9, align 4
  %557 = getelementptr inbounds i32, i32* %556, i32 16
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* %7, align 4
  %560 = xor i32 %559, %558
  store i32 %560, i32* %7, align 4
  %561 = load i32*, i32** %10, align 4
  %562 = load i32, i32* %8, align 4
  %563 = lshr i32 %562, 24
  %564 = getelementptr inbounds i32, i32* %561, i32 %563
  %565 = load i32, i32* %564, align 4
  %566 = load i32*, i32** %10, align 4
  %567 = load i32, i32* %8, align 4
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  %570 = add i32 256, %569
  %571 = getelementptr inbounds i32, i32* %566, i32 %570
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %565, %572
  %574 = load i32*, i32** %10, align 4
  %575 = load i32, i32* %8, align 4
  %576 = lshr i32 %575, 8
  %577 = and i32 %576, 255
  %578 = add i32 512, %577
  %579 = getelementptr inbounds i32, i32* %574, i32 %578
  %580 = load i32, i32* %579, align 4
  %581 = xor i32 %573, %580
  %582 = load i32*, i32** %10, align 4
  %583 = load i32, i32* %8, align 4
  %584 = and i32 %583, 255
  %585 = add i32 768, %584
  %586 = getelementptr inbounds i32, i32* %582, i32 %585
  %587 = load i32, i32* %586, align 4
  %588 = add i32 %581, %587
  %589 = load i32, i32* %7, align 4
  %590 = xor i32 %589, %588
  store i32 %590, i32* %7, align 4
  %591 = load i32*, i32** %9, align 4
  %592 = getelementptr inbounds i32, i32* %591, i32 17
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %8, align 4
  %595 = xor i32 %594, %593
  store i32 %595, i32* %8, align 4
  br label %1167

; <label>:596:                                    ; preds = %3
  %597 = load i32*, i32** %9, align 4
  %598 = getelementptr inbounds i32, i32* %597, i32 17
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* %7, align 4
  %601 = xor i32 %600, %599
  store i32 %601, i32* %7, align 4
  %602 = load i32*, i32** %9, align 4
  %603 = getelementptr inbounds i32, i32* %602, i32 16
  %604 = load i32, i32* %603, align 4
  %605 = load i32, i32* %8, align 4
  %606 = xor i32 %605, %604
  store i32 %606, i32* %8, align 4
  %607 = load i32*, i32** %10, align 4
  %608 = load i32, i32* %7, align 4
  %609 = lshr i32 %608, 24
  %610 = getelementptr inbounds i32, i32* %607, i32 %609
  %611 = load i32, i32* %610, align 4
  %612 = load i32*, i32** %10, align 4
  %613 = load i32, i32* %7, align 4
  %614 = lshr i32 %613, 16
  %615 = and i32 %614, 255
  %616 = add i32 256, %615
  %617 = getelementptr inbounds i32, i32* %612, i32 %616
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %611, %618
  %620 = load i32*, i32** %10, align 4
  %621 = load i32, i32* %7, align 4
  %622 = lshr i32 %621, 8
  %623 = and i32 %622, 255
  %624 = add i32 512, %623
  %625 = getelementptr inbounds i32, i32* %620, i32 %624
  %626 = load i32, i32* %625, align 4
  %627 = xor i32 %619, %626
  %628 = load i32*, i32** %10, align 4
  %629 = load i32, i32* %7, align 4
  %630 = and i32 %629, 255
  %631 = add i32 768, %630
  %632 = getelementptr inbounds i32, i32* %628, i32 %631
  %633 = load i32, i32* %632, align 4
  %634 = add i32 %627, %633
  %635 = load i32, i32* %8, align 4
  %636 = xor i32 %635, %634
  store i32 %636, i32* %8, align 4
  %637 = load i32*, i32** %9, align 4
  %638 = getelementptr inbounds i32, i32* %637, i32 15
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* %7, align 4
  %641 = xor i32 %640, %639
  store i32 %641, i32* %7, align 4
  %642 = load i32*, i32** %10, align 4
  %643 = load i32, i32* %8, align 4
  %644 = lshr i32 %643, 24
  %645 = getelementptr inbounds i32, i32* %642, i32 %644
  %646 = load i32, i32* %645, align 4
  %647 = load i32*, i32** %10, align 4
  %648 = load i32, i32* %8, align 4
  %649 = lshr i32 %648, 16
  %650 = and i32 %649, 255
  %651 = add i32 256, %650
  %652 = getelementptr inbounds i32, i32* %647, i32 %651
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %646, %653
  %655 = load i32*, i32** %10, align 4
  %656 = load i32, i32* %8, align 4
  %657 = lshr i32 %656, 8
  %658 = and i32 %657, 255
  %659 = add i32 512, %658
  %660 = getelementptr inbounds i32, i32* %655, i32 %659
  %661 = load i32, i32* %660, align 4
  %662 = xor i32 %654, %661
  %663 = load i32*, i32** %10, align 4
  %664 = load i32, i32* %8, align 4
  %665 = and i32 %664, 255
  %666 = add i32 768, %665
  %667 = getelementptr inbounds i32, i32* %663, i32 %666
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %662, %668
  %670 = load i32, i32* %7, align 4
  %671 = xor i32 %670, %669
  store i32 %671, i32* %7, align 4
  %672 = load i32*, i32** %9, align 4
  %673 = getelementptr inbounds i32, i32* %672, i32 14
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* %8, align 4
  %676 = xor i32 %675, %674
  store i32 %676, i32* %8, align 4
  %677 = load i32*, i32** %10, align 4
  %678 = load i32, i32* %7, align 4
  %679 = lshr i32 %678, 24
  %680 = getelementptr inbounds i32, i32* %677, i32 %679
  %681 = load i32, i32* %680, align 4
  %682 = load i32*, i32** %10, align 4
  %683 = load i32, i32* %7, align 4
  %684 = lshr i32 %683, 16
  %685 = and i32 %684, 255
  %686 = add i32 256, %685
  %687 = getelementptr inbounds i32, i32* %682, i32 %686
  %688 = load i32, i32* %687, align 4
  %689 = add i32 %681, %688
  %690 = load i32*, i32** %10, align 4
  %691 = load i32, i32* %7, align 4
  %692 = lshr i32 %691, 8
  %693 = and i32 %692, 255
  %694 = add i32 512, %693
  %695 = getelementptr inbounds i32, i32* %690, i32 %694
  %696 = load i32, i32* %695, align 4
  %697 = xor i32 %689, %696
  %698 = load i32*, i32** %10, align 4
  %699 = load i32, i32* %7, align 4
  %700 = and i32 %699, 255
  %701 = add i32 768, %700
  %702 = getelementptr inbounds i32, i32* %698, i32 %701
  %703 = load i32, i32* %702, align 4
  %704 = add i32 %697, %703
  %705 = load i32, i32* %8, align 4
  %706 = xor i32 %705, %704
  store i32 %706, i32* %8, align 4
  %707 = load i32*, i32** %9, align 4
  %708 = getelementptr inbounds i32, i32* %707, i32 13
  %709 = load i32, i32* %708, align 4
  %710 = load i32, i32* %7, align 4
  %711 = xor i32 %710, %709
  store i32 %711, i32* %7, align 4
  %712 = load i32*, i32** %10, align 4
  %713 = load i32, i32* %8, align 4
  %714 = lshr i32 %713, 24
  %715 = getelementptr inbounds i32, i32* %712, i32 %714
  %716 = load i32, i32* %715, align 4
  %717 = load i32*, i32** %10, align 4
  %718 = load i32, i32* %8, align 4
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  %721 = add i32 256, %720
  %722 = getelementptr inbounds i32, i32* %717, i32 %721
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %716, %723
  %725 = load i32*, i32** %10, align 4
  %726 = load i32, i32* %8, align 4
  %727 = lshr i32 %726, 8
  %728 = and i32 %727, 255
  %729 = add i32 512, %728
  %730 = getelementptr inbounds i32, i32* %725, i32 %729
  %731 = load i32, i32* %730, align 4
  %732 = xor i32 %724, %731
  %733 = load i32*, i32** %10, align 4
  %734 = load i32, i32* %8, align 4
  %735 = and i32 %734, 255
  %736 = add i32 768, %735
  %737 = getelementptr inbounds i32, i32* %733, i32 %736
  %738 = load i32, i32* %737, align 4
  %739 = add i32 %732, %738
  %740 = load i32, i32* %7, align 4
  %741 = xor i32 %740, %739
  store i32 %741, i32* %7, align 4
  %742 = load i32*, i32** %9, align 4
  %743 = getelementptr inbounds i32, i32* %742, i32 12
  %744 = load i32, i32* %743, align 4
  %745 = load i32, i32* %8, align 4
  %746 = xor i32 %745, %744
  store i32 %746, i32* %8, align 4
  %747 = load i32*, i32** %10, align 4
  %748 = load i32, i32* %7, align 4
  %749 = lshr i32 %748, 24
  %750 = getelementptr inbounds i32, i32* %747, i32 %749
  %751 = load i32, i32* %750, align 4
  %752 = load i32*, i32** %10, align 4
  %753 = load i32, i32* %7, align 4
  %754 = lshr i32 %753, 16
  %755 = and i32 %754, 255
  %756 = add i32 256, %755
  %757 = getelementptr inbounds i32, i32* %752, i32 %756
  %758 = load i32, i32* %757, align 4
  %759 = add i32 %751, %758
  %760 = load i32*, i32** %10, align 4
  %761 = load i32, i32* %7, align 4
  %762 = lshr i32 %761, 8
  %763 = and i32 %762, 255
  %764 = add i32 512, %763
  %765 = getelementptr inbounds i32, i32* %760, i32 %764
  %766 = load i32, i32* %765, align 4
  %767 = xor i32 %759, %766
  %768 = load i32*, i32** %10, align 4
  %769 = load i32, i32* %7, align 4
  %770 = and i32 %769, 255
  %771 = add i32 768, %770
  %772 = getelementptr inbounds i32, i32* %768, i32 %771
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %767, %773
  %775 = load i32, i32* %8, align 4
  %776 = xor i32 %775, %774
  store i32 %776, i32* %8, align 4
  %777 = load i32*, i32** %9, align 4
  %778 = getelementptr inbounds i32, i32* %777, i32 11
  %779 = load i32, i32* %778, align 4
  %780 = load i32, i32* %7, align 4
  %781 = xor i32 %780, %779
  store i32 %781, i32* %7, align 4
  %782 = load i32*, i32** %10, align 4
  %783 = load i32, i32* %8, align 4
  %784 = lshr i32 %783, 24
  %785 = getelementptr inbounds i32, i32* %782, i32 %784
  %786 = load i32, i32* %785, align 4
  %787 = load i32*, i32** %10, align 4
  %788 = load i32, i32* %8, align 4
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = add i32 256, %790
  %792 = getelementptr inbounds i32, i32* %787, i32 %791
  %793 = load i32, i32* %792, align 4
  %794 = add i32 %786, %793
  %795 = load i32*, i32** %10, align 4
  %796 = load i32, i32* %8, align 4
  %797 = lshr i32 %796, 8
  %798 = and i32 %797, 255
  %799 = add i32 512, %798
  %800 = getelementptr inbounds i32, i32* %795, i32 %799
  %801 = load i32, i32* %800, align 4
  %802 = xor i32 %794, %801
  %803 = load i32*, i32** %10, align 4
  %804 = load i32, i32* %8, align 4
  %805 = and i32 %804, 255
  %806 = add i32 768, %805
  %807 = getelementptr inbounds i32, i32* %803, i32 %806
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %802, %808
  %810 = load i32, i32* %7, align 4
  %811 = xor i32 %810, %809
  store i32 %811, i32* %7, align 4
  %812 = load i32*, i32** %9, align 4
  %813 = getelementptr inbounds i32, i32* %812, i32 10
  %814 = load i32, i32* %813, align 4
  %815 = load i32, i32* %8, align 4
  %816 = xor i32 %815, %814
  store i32 %816, i32* %8, align 4
  %817 = load i32*, i32** %10, align 4
  %818 = load i32, i32* %7, align 4
  %819 = lshr i32 %818, 24
  %820 = getelementptr inbounds i32, i32* %817, i32 %819
  %821 = load i32, i32* %820, align 4
  %822 = load i32*, i32** %10, align 4
  %823 = load i32, i32* %7, align 4
  %824 = lshr i32 %823, 16
  %825 = and i32 %824, 255
  %826 = add i32 256, %825
  %827 = getelementptr inbounds i32, i32* %822, i32 %826
  %828 = load i32, i32* %827, align 4
  %829 = add i32 %821, %828
  %830 = load i32*, i32** %10, align 4
  %831 = load i32, i32* %7, align 4
  %832 = lshr i32 %831, 8
  %833 = and i32 %832, 255
  %834 = add i32 512, %833
  %835 = getelementptr inbounds i32, i32* %830, i32 %834
  %836 = load i32, i32* %835, align 4
  %837 = xor i32 %829, %836
  %838 = load i32*, i32** %10, align 4
  %839 = load i32, i32* %7, align 4
  %840 = and i32 %839, 255
  %841 = add i32 768, %840
  %842 = getelementptr inbounds i32, i32* %838, i32 %841
  %843 = load i32, i32* %842, align 4
  %844 = add i32 %837, %843
  %845 = load i32, i32* %8, align 4
  %846 = xor i32 %845, %844
  store i32 %846, i32* %8, align 4
  %847 = load i32*, i32** %9, align 4
  %848 = getelementptr inbounds i32, i32* %847, i32 9
  %849 = load i32, i32* %848, align 4
  %850 = load i32, i32* %7, align 4
  %851 = xor i32 %850, %849
  store i32 %851, i32* %7, align 4
  %852 = load i32*, i32** %10, align 4
  %853 = load i32, i32* %8, align 4
  %854 = lshr i32 %853, 24
  %855 = getelementptr inbounds i32, i32* %852, i32 %854
  %856 = load i32, i32* %855, align 4
  %857 = load i32*, i32** %10, align 4
  %858 = load i32, i32* %8, align 4
  %859 = lshr i32 %858, 16
  %860 = and i32 %859, 255
  %861 = add i32 256, %860
  %862 = getelementptr inbounds i32, i32* %857, i32 %861
  %863 = load i32, i32* %862, align 4
  %864 = add i32 %856, %863
  %865 = load i32*, i32** %10, align 4
  %866 = load i32, i32* %8, align 4
  %867 = lshr i32 %866, 8
  %868 = and i32 %867, 255
  %869 = add i32 512, %868
  %870 = getelementptr inbounds i32, i32* %865, i32 %869
  %871 = load i32, i32* %870, align 4
  %872 = xor i32 %864, %871
  %873 = load i32*, i32** %10, align 4
  %874 = load i32, i32* %8, align 4
  %875 = and i32 %874, 255
  %876 = add i32 768, %875
  %877 = getelementptr inbounds i32, i32* %873, i32 %876
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %872, %878
  %880 = load i32, i32* %7, align 4
  %881 = xor i32 %880, %879
  store i32 %881, i32* %7, align 4
  %882 = load i32*, i32** %9, align 4
  %883 = getelementptr inbounds i32, i32* %882, i32 8
  %884 = load i32, i32* %883, align 4
  %885 = load i32, i32* %8, align 4
  %886 = xor i32 %885, %884
  store i32 %886, i32* %8, align 4
  %887 = load i32*, i32** %10, align 4
  %888 = load i32, i32* %7, align 4
  %889 = lshr i32 %888, 24
  %890 = getelementptr inbounds i32, i32* %887, i32 %889
  %891 = load i32, i32* %890, align 4
  %892 = load i32*, i32** %10, align 4
  %893 = load i32, i32* %7, align 4
  %894 = lshr i32 %893, 16
  %895 = and i32 %894, 255
  %896 = add i32 256, %895
  %897 = getelementptr inbounds i32, i32* %892, i32 %896
  %898 = load i32, i32* %897, align 4
  %899 = add i32 %891, %898
  %900 = load i32*, i32** %10, align 4
  %901 = load i32, i32* %7, align 4
  %902 = lshr i32 %901, 8
  %903 = and i32 %902, 255
  %904 = add i32 512, %903
  %905 = getelementptr inbounds i32, i32* %900, i32 %904
  %906 = load i32, i32* %905, align 4
  %907 = xor i32 %899, %906
  %908 = load i32*, i32** %10, align 4
  %909 = load i32, i32* %7, align 4
  %910 = and i32 %909, 255
  %911 = add i32 768, %910
  %912 = getelementptr inbounds i32, i32* %908, i32 %911
  %913 = load i32, i32* %912, align 4
  %914 = add i32 %907, %913
  %915 = load i32, i32* %8, align 4
  %916 = xor i32 %915, %914
  store i32 %916, i32* %8, align 4
  %917 = load i32*, i32** %9, align 4
  %918 = getelementptr inbounds i32, i32* %917, i32 7
  %919 = load i32, i32* %918, align 4
  %920 = load i32, i32* %7, align 4
  %921 = xor i32 %920, %919
  store i32 %921, i32* %7, align 4
  %922 = load i32*, i32** %10, align 4
  %923 = load i32, i32* %8, align 4
  %924 = lshr i32 %923, 24
  %925 = getelementptr inbounds i32, i32* %922, i32 %924
  %926 = load i32, i32* %925, align 4
  %927 = load i32*, i32** %10, align 4
  %928 = load i32, i32* %8, align 4
  %929 = lshr i32 %928, 16
  %930 = and i32 %929, 255
  %931 = add i32 256, %930
  %932 = getelementptr inbounds i32, i32* %927, i32 %931
  %933 = load i32, i32* %932, align 4
  %934 = add i32 %926, %933
  %935 = load i32*, i32** %10, align 4
  %936 = load i32, i32* %8, align 4
  %937 = lshr i32 %936, 8
  %938 = and i32 %937, 255
  %939 = add i32 512, %938
  %940 = getelementptr inbounds i32, i32* %935, i32 %939
  %941 = load i32, i32* %940, align 4
  %942 = xor i32 %934, %941
  %943 = load i32*, i32** %10, align 4
  %944 = load i32, i32* %8, align 4
  %945 = and i32 %944, 255
  %946 = add i32 768, %945
  %947 = getelementptr inbounds i32, i32* %943, i32 %946
  %948 = load i32, i32* %947, align 4
  %949 = add i32 %942, %948
  %950 = load i32, i32* %7, align 4
  %951 = xor i32 %950, %949
  store i32 %951, i32* %7, align 4
  %952 = load i32*, i32** %9, align 4
  %953 = getelementptr inbounds i32, i32* %952, i32 6
  %954 = load i32, i32* %953, align 4
  %955 = load i32, i32* %8, align 4
  %956 = xor i32 %955, %954
  store i32 %956, i32* %8, align 4
  %957 = load i32*, i32** %10, align 4
  %958 = load i32, i32* %7, align 4
  %959 = lshr i32 %958, 24
  %960 = getelementptr inbounds i32, i32* %957, i32 %959
  %961 = load i32, i32* %960, align 4
  %962 = load i32*, i32** %10, align 4
  %963 = load i32, i32* %7, align 4
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = add i32 256, %965
  %967 = getelementptr inbounds i32, i32* %962, i32 %966
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %961, %968
  %970 = load i32*, i32** %10, align 4
  %971 = load i32, i32* %7, align 4
  %972 = lshr i32 %971, 8
  %973 = and i32 %972, 255
  %974 = add i32 512, %973
  %975 = getelementptr inbounds i32, i32* %970, i32 %974
  %976 = load i32, i32* %975, align 4
  %977 = xor i32 %969, %976
  %978 = load i32*, i32** %10, align 4
  %979 = load i32, i32* %7, align 4
  %980 = and i32 %979, 255
  %981 = add i32 768, %980
  %982 = getelementptr inbounds i32, i32* %978, i32 %981
  %983 = load i32, i32* %982, align 4
  %984 = add i32 %977, %983
  %985 = load i32, i32* %8, align 4
  %986 = xor i32 %985, %984
  store i32 %986, i32* %8, align 4
  %987 = load i32*, i32** %9, align 4
  %988 = getelementptr inbounds i32, i32* %987, i32 5
  %989 = load i32, i32* %988, align 4
  %990 = load i32, i32* %7, align 4
  %991 = xor i32 %990, %989
  store i32 %991, i32* %7, align 4
  %992 = load i32*, i32** %10, align 4
  %993 = load i32, i32* %8, align 4
  %994 = lshr i32 %993, 24
  %995 = getelementptr inbounds i32, i32* %992, i32 %994
  %996 = load i32, i32* %995, align 4
  %997 = load i32*, i32** %10, align 4
  %998 = load i32, i32* %8, align 4
  %999 = lshr i32 %998, 16
  %1000 = and i32 %999, 255
  %1001 = add i32 256, %1000
  %1002 = getelementptr inbounds i32, i32* %997, i32 %1001
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %996, %1003
  %1005 = load i32*, i32** %10, align 4
  %1006 = load i32, i32* %8, align 4
  %1007 = lshr i32 %1006, 8
  %1008 = and i32 %1007, 255
  %1009 = add i32 512, %1008
  %1010 = getelementptr inbounds i32, i32* %1005, i32 %1009
  %1011 = load i32, i32* %1010, align 4
  %1012 = xor i32 %1004, %1011
  %1013 = load i32*, i32** %10, align 4
  %1014 = load i32, i32* %8, align 4
  %1015 = and i32 %1014, 255
  %1016 = add i32 768, %1015
  %1017 = getelementptr inbounds i32, i32* %1013, i32 %1016
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1012, %1018
  %1020 = load i32, i32* %7, align 4
  %1021 = xor i32 %1020, %1019
  store i32 %1021, i32* %7, align 4
  %1022 = load i32*, i32** %9, align 4
  %1023 = getelementptr inbounds i32, i32* %1022, i32 4
  %1024 = load i32, i32* %1023, align 4
  %1025 = load i32, i32* %8, align 4
  %1026 = xor i32 %1025, %1024
  store i32 %1026, i32* %8, align 4
  %1027 = load i32*, i32** %10, align 4
  %1028 = load i32, i32* %7, align 4
  %1029 = lshr i32 %1028, 24
  %1030 = getelementptr inbounds i32, i32* %1027, i32 %1029
  %1031 = load i32, i32* %1030, align 4
  %1032 = load i32*, i32** %10, align 4
  %1033 = load i32, i32* %7, align 4
  %1034 = lshr i32 %1033, 16
  %1035 = and i32 %1034, 255
  %1036 = add i32 256, %1035
  %1037 = getelementptr inbounds i32, i32* %1032, i32 %1036
  %1038 = load i32, i32* %1037, align 4
  %1039 = add i32 %1031, %1038
  %1040 = load i32*, i32** %10, align 4
  %1041 = load i32, i32* %7, align 4
  %1042 = lshr i32 %1041, 8
  %1043 = and i32 %1042, 255
  %1044 = add i32 512, %1043
  %1045 = getelementptr inbounds i32, i32* %1040, i32 %1044
  %1046 = load i32, i32* %1045, align 4
  %1047 = xor i32 %1039, %1046
  %1048 = load i32*, i32** %10, align 4
  %1049 = load i32, i32* %7, align 4
  %1050 = and i32 %1049, 255
  %1051 = add i32 768, %1050
  %1052 = getelementptr inbounds i32, i32* %1048, i32 %1051
  %1053 = load i32, i32* %1052, align 4
  %1054 = add i32 %1047, %1053
  %1055 = load i32, i32* %8, align 4
  %1056 = xor i32 %1055, %1054
  store i32 %1056, i32* %8, align 4
  %1057 = load i32*, i32** %9, align 4
  %1058 = getelementptr inbounds i32, i32* %1057, i32 3
  %1059 = load i32, i32* %1058, align 4
  %1060 = load i32, i32* %7, align 4
  %1061 = xor i32 %1060, %1059
  store i32 %1061, i32* %7, align 4
  %1062 = load i32*, i32** %10, align 4
  %1063 = load i32, i32* %8, align 4
  %1064 = lshr i32 %1063, 24
  %1065 = getelementptr inbounds i32, i32* %1062, i32 %1064
  %1066 = load i32, i32* %1065, align 4
  %1067 = load i32*, i32** %10, align 4
  %1068 = load i32, i32* %8, align 4
  %1069 = lshr i32 %1068, 16
  %1070 = and i32 %1069, 255
  %1071 = add i32 256, %1070
  %1072 = getelementptr inbounds i32, i32* %1067, i32 %1071
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1066, %1073
  %1075 = load i32*, i32** %10, align 4
  %1076 = load i32, i32* %8, align 4
  %1077 = lshr i32 %1076, 8
  %1078 = and i32 %1077, 255
  %1079 = add i32 512, %1078
  %1080 = getelementptr inbounds i32, i32* %1075, i32 %1079
  %1081 = load i32, i32* %1080, align 4
  %1082 = xor i32 %1074, %1081
  %1083 = load i32*, i32** %10, align 4
  %1084 = load i32, i32* %8, align 4
  %1085 = and i32 %1084, 255
  %1086 = add i32 768, %1085
  %1087 = getelementptr inbounds i32, i32* %1083, i32 %1086
  %1088 = load i32, i32* %1087, align 4
  %1089 = add i32 %1082, %1088
  %1090 = load i32, i32* %7, align 4
  %1091 = xor i32 %1090, %1089
  store i32 %1091, i32* %7, align 4
  %1092 = load i32*, i32** %9, align 4
  %1093 = getelementptr inbounds i32, i32* %1092, i32 2
  %1094 = load i32, i32* %1093, align 4
  %1095 = load i32, i32* %8, align 4
  %1096 = xor i32 %1095, %1094
  store i32 %1096, i32* %8, align 4
  %1097 = load i32*, i32** %10, align 4
  %1098 = load i32, i32* %7, align 4
  %1099 = lshr i32 %1098, 24
  %1100 = getelementptr inbounds i32, i32* %1097, i32 %1099
  %1101 = load i32, i32* %1100, align 4
  %1102 = load i32*, i32** %10, align 4
  %1103 = load i32, i32* %7, align 4
  %1104 = lshr i32 %1103, 16
  %1105 = and i32 %1104, 255
  %1106 = add i32 256, %1105
  %1107 = getelementptr inbounds i32, i32* %1102, i32 %1106
  %1108 = load i32, i32* %1107, align 4
  %1109 = add i32 %1101, %1108
  %1110 = load i32*, i32** %10, align 4
  %1111 = load i32, i32* %7, align 4
  %1112 = lshr i32 %1111, 8
  %1113 = and i32 %1112, 255
  %1114 = add i32 512, %1113
  %1115 = getelementptr inbounds i32, i32* %1110, i32 %1114
  %1116 = load i32, i32* %1115, align 4
  %1117 = xor i32 %1109, %1116
  %1118 = load i32*, i32** %10, align 4
  %1119 = load i32, i32* %7, align 4
  %1120 = and i32 %1119, 255
  %1121 = add i32 768, %1120
  %1122 = getelementptr inbounds i32, i32* %1118, i32 %1121
  %1123 = load i32, i32* %1122, align 4
  %1124 = add i32 %1117, %1123
  %1125 = load i32, i32* %8, align 4
  %1126 = xor i32 %1125, %1124
  store i32 %1126, i32* %8, align 4
  %1127 = load i32*, i32** %9, align 4
  %1128 = getelementptr inbounds i32, i32* %1127, i32 1
  %1129 = load i32, i32* %1128, align 4
  %1130 = load i32, i32* %7, align 4
  %1131 = xor i32 %1130, %1129
  store i32 %1131, i32* %7, align 4
  %1132 = load i32*, i32** %10, align 4
  %1133 = load i32, i32* %8, align 4
  %1134 = lshr i32 %1133, 24
  %1135 = getelementptr inbounds i32, i32* %1132, i32 %1134
  %1136 = load i32, i32* %1135, align 4
  %1137 = load i32*, i32** %10, align 4
  %1138 = load i32, i32* %8, align 4
  %1139 = lshr i32 %1138, 16
  %1140 = and i32 %1139, 255
  %1141 = add i32 256, %1140
  %1142 = getelementptr inbounds i32, i32* %1137, i32 %1141
  %1143 = load i32, i32* %1142, align 4
  %1144 = add i32 %1136, %1143
  %1145 = load i32*, i32** %10, align 4
  %1146 = load i32, i32* %8, align 4
  %1147 = lshr i32 %1146, 8
  %1148 = and i32 %1147, 255
  %1149 = add i32 512, %1148
  %1150 = getelementptr inbounds i32, i32* %1145, i32 %1149
  %1151 = load i32, i32* %1150, align 4
  %1152 = xor i32 %1144, %1151
  %1153 = load i32*, i32** %10, align 4
  %1154 = load i32, i32* %8, align 4
  %1155 = and i32 %1154, 255
  %1156 = add i32 768, %1155
  %1157 = getelementptr inbounds i32, i32* %1153, i32 %1156
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1152, %1158
  %1160 = load i32, i32* %7, align 4
  %1161 = xor i32 %1160, %1159
  store i32 %1161, i32* %7, align 4
  %1162 = load i32*, i32** %9, align 4
  %1163 = getelementptr inbounds i32, i32* %1162, i32 0
  %1164 = load i32, i32* %1163, align 4
  %1165 = load i32, i32* %8, align 4
  %1166 = xor i32 %1165, %1164
  store i32 %1166, i32* %8, align 4
  br label %1167

; <label>:1167:                                   ; preds = %596, %25
  %1168 = load i32, i32* %7, align 4
  %1169 = load i32*, i32** %4, align 4
  %1170 = getelementptr inbounds i32, i32* %1169, i32 1
  store i32 %1168, i32* %1170, align 4
  %1171 = load i32, i32* %8, align 4
  %1172 = load i32*, i32** %4, align 4
  %1173 = getelementptr inbounds i32, i32* %1172, i32 0
  store i32 %1171, i32* %1173, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_ofb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec21 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec22 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec24 = alloca <4 x i32>, align 16
  %CastInst3 = alloca i32, align 4
  %CastInstVec4 = alloca <4 x i32>, align 16
  %allocaVec25 = alloca <4 x i32>, align 16
  %CastInst5 = alloca i32, align 4
  %CastInstVec6 = alloca <4 x i32>, align 16
  %allocaVec26 = alloca <4 x i32>, align 16
  %CastInst7 = alloca i32, align 4
  %CastInstVec8 = alloca <4 x i32>, align 16
  %allocaVec27 = alloca <4 x i32>, align 16
  %CastInst9 = alloca i32, align 4
  %CastInstVec10 = alloca <4 x i32>, align 16
  %allocaVec28 = alloca <4 x i32>, align 16
  %CastInst11 = alloca i32, align 4
  %CastInstVec12 = alloca <4 x i32>, align 16
  %allocaVec29 = alloca <4 x i32>, align 16
  %CastInst13 = alloca i32, align 4
  %CastInstVec14 = alloca <4 x i32>, align 16
  %allocaVec30 = alloca <4 x i32>, align 16
  %CastInst15 = alloca i32, align 4
  %CastInstVec16 = alloca <4 x i32>, align 16
  %allocaVec31 = alloca <4 x i32>, align 16
  %CastInst17 = alloca i32, align 4
  %CastInstVec18 = alloca <4 x i32>, align 16
  %allocaVec32 = alloca <4 x i32>, align 16
  %CastInst19 = alloca i32, align 4
  %CastInstVec20 = alloca <4 x i32>, align 16
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %allocaVec33 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.bf_key_st*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32*, align 4
  %allocaVec34 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec35 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec36 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec37 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec38 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %18 = alloca [8 x i8], align 1
  %19 = alloca i8*, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i8*, align 4
  %allocaVec39 = alloca <4 x i32>, align 16
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 4
  store i8* %1, i8** %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 4
  store i8* %4, i8** %11, align 4
  store i32* %5, i32** %12, align 4
  %23 = load i32*, i32** %12, align 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %17, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec39
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %11, align 4
  store i8* %26, i8** %21, align 4
  %27 = load i8*, i8** %21, align 4
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %21, align 4
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %CastInst
  %31 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %31, i32 0
  %insertCast40 = insertelement <4 x i32> %insertCast, i32 %31, i32 1
  %insertCast41 = insertelement <4 x i32> %insertCast40, i32 %31, i32 2
  %insertCast42 = insertelement <4 x i32> %insertCast41, i32 %31, i32 3
  store <4 x i32> %insertCast42, <4 x i32>* %CastInstVec, align 4
  %32 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop = shl <4 x i32> %32, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec34
  %33 = shl i32 %30, 24
  store i32 %33, i32* %13, align 4
  %34 = load i8*, i8** %21, align 4
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %21, align 4
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %CastInst3
  %38 = load i32, i32* %CastInst3, align 4
  %insertCast43 = insertelement <4 x i32> undef, i32 %38, i32 0
  %insertCast44 = insertelement <4 x i32> %insertCast43, i32 %38, i32 1
  %insertCast45 = insertelement <4 x i32> %insertCast44, i32 %38, i32 2
  %insertCast46 = insertelement <4 x i32> %insertCast45, i32 %38, i32 3
  store <4 x i32> %insertCast46, <4 x i32>* %CastInstVec4, align 4
  %39 = load <4 x i32>, <4 x i32>* %CastInstVec4, align 4
  %Vop47 = shl <4 x i32> %39, <i32 16, i32 16, i32 16, i32 16>
  %40 = shl i32 %37, 16
  %41 = load i32, i32* %13, align 4
  %42 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop48 = or <4 x i32> %42, %Vop47
  store <4 x i32> %Vop48, <4 x i32>* %allocaVec34
  %43 = or i32 %41, %40
  store i32 %43, i32* %13, align 4
  %44 = load i8*, i8** %21, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %21, align 4
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %CastInst5
  %48 = load i32, i32* %CastInst5, align 4
  %insertCast49 = insertelement <4 x i32> undef, i32 %48, i32 0
  %insertCast50 = insertelement <4 x i32> %insertCast49, i32 %48, i32 1
  %insertCast51 = insertelement <4 x i32> %insertCast50, i32 %48, i32 2
  %insertCast52 = insertelement <4 x i32> %insertCast51, i32 %48, i32 3
  store <4 x i32> %insertCast52, <4 x i32>* %CastInstVec6, align 4
  %49 = load <4 x i32>, <4 x i32>* %CastInstVec6, align 4
  %Vop53 = shl <4 x i32> %49, <i32 8, i32 8, i32 8, i32 8>
  %50 = shl i32 %47, 8
  %51 = load i32, i32* %13, align 4
  %52 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop54 = or <4 x i32> %52, %Vop53
  store <4 x i32> %Vop54, <4 x i32>* %allocaVec34
  %53 = or i32 %51, %50
  store i32 %53, i32* %13, align 4
  %54 = load i8*, i8** %21, align 4
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %21, align 4
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %13, align 4
  %59 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  store i32 %57, i32* %CastInst7
  %60 = load i32, i32* %CastInst7, align 4
  %insertCast55 = insertelement <4 x i32> undef, i32 %60, i32 0
  %insertCast56 = insertelement <4 x i32> %insertCast55, i32 %60, i32 1
  %insertCast57 = insertelement <4 x i32> %insertCast56, i32 %60, i32 2
  %insertCast58 = insertelement <4 x i32> %insertCast57, i32 %60, i32 3
  store <4 x i32> %insertCast58, <4 x i32>* %CastInstVec8, align 4
  %61 = load <4 x i32>, <4 x i32>* %CastInstVec8, align 4
  %Vop59 = or <4 x i32> %59, %61
  store <4 x i32> %Vop59, <4 x i32>* %allocaVec34
  %62 = or i32 %58, %57
  store i32 %62, i32* %13, align 4
  %63 = load i8*, i8** %21, align 4
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %21, align 4
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %CastInst9
  %67 = load i32, i32* %CastInst9, align 4
  %insertCast60 = insertelement <4 x i32> undef, i32 %67, i32 0
  %insertCast61 = insertelement <4 x i32> %insertCast60, i32 %67, i32 1
  %insertCast62 = insertelement <4 x i32> %insertCast61, i32 %67, i32 2
  %insertCast63 = insertelement <4 x i32> %insertCast62, i32 %67, i32 3
  store <4 x i32> %insertCast63, <4 x i32>* %CastInstVec10, align 4
  %68 = load <4 x i32>, <4 x i32>* %CastInstVec10, align 4
  %Vop64 = shl <4 x i32> %68, <i32 24, i32 24, i32 24, i32 24>
  store <4 x i32> %Vop64, <4 x i32>* %allocaVec35
  %69 = shl i32 %66, 24
  store i32 %69, i32* %14, align 4
  %70 = load i8*, i8** %21, align 4
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %21, align 4
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %CastInst11
  %74 = load i32, i32* %CastInst11, align 4
  %insertCast65 = insertelement <4 x i32> undef, i32 %74, i32 0
  %insertCast66 = insertelement <4 x i32> %insertCast65, i32 %74, i32 1
  %insertCast67 = insertelement <4 x i32> %insertCast66, i32 %74, i32 2
  %insertCast68 = insertelement <4 x i32> %insertCast67, i32 %74, i32 3
  store <4 x i32> %insertCast68, <4 x i32>* %CastInstVec12, align 4
  %75 = load <4 x i32>, <4 x i32>* %CastInstVec12, align 4
  %Vop69 = shl <4 x i32> %75, <i32 16, i32 16, i32 16, i32 16>
  %76 = shl i32 %73, 16
  %77 = load i32, i32* %14, align 4
  %78 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop70 = or <4 x i32> %78, %Vop69
  store <4 x i32> %Vop70, <4 x i32>* %allocaVec35
  %79 = or i32 %77, %76
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %21, align 4
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %21, align 4
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, i32* %CastInst13
  %84 = load i32, i32* %CastInst13, align 4
  %insertCast71 = insertelement <4 x i32> undef, i32 %84, i32 0
  %insertCast72 = insertelement <4 x i32> %insertCast71, i32 %84, i32 1
  %insertCast73 = insertelement <4 x i32> %insertCast72, i32 %84, i32 2
  %insertCast74 = insertelement <4 x i32> %insertCast73, i32 %84, i32 3
  store <4 x i32> %insertCast74, <4 x i32>* %CastInstVec14, align 4
  %85 = load <4 x i32>, <4 x i32>* %CastInstVec14, align 4
  %Vop75 = shl <4 x i32> %85, <i32 8, i32 8, i32 8, i32 8>
  %86 = shl i32 %83, 8
  %87 = load i32, i32* %14, align 4
  %88 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop76 = or <4 x i32> %88, %Vop75
  store <4 x i32> %Vop76, <4 x i32>* %allocaVec35
  %89 = or i32 %87, %86
  store i32 %89, i32* %14, align 4
  %90 = load i8*, i8** %21, align 4
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %21, align 4
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %14, align 4
  %95 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  store i32 %93, i32* %CastInst15
  %96 = load i32, i32* %CastInst15, align 4
  %insertCast77 = insertelement <4 x i32> undef, i32 %96, i32 0
  %insertCast78 = insertelement <4 x i32> %insertCast77, i32 %96, i32 1
  %insertCast79 = insertelement <4 x i32> %insertCast78, i32 %96, i32 2
  %insertCast80 = insertelement <4 x i32> %insertCast79, i32 %96, i32 3
  store <4 x i32> %insertCast80, <4 x i32>* %CastInstVec16, align 4
  %97 = load <4 x i32>, <4 x i32>* %CastInstVec16, align 4
  %Vop81 = or <4 x i32> %95, %97
  store <4 x i32> %Vop81, <4 x i32>* %allocaVec35
  %98 = or i32 %94, %93
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 0
  store i8* %103, i8** %19, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop82 = lshr <4 x i32> %105, <i32 24, i32 24, i32 24, i32 24>
  %106 = lshr i32 %104, 24
  %Vop83 = and <4 x i32> %Vop82, <i32 255, i32 255, i32 255, i32 255>
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %19, align 4
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %19, align 4
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %13, align 4
  %112 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop84 = lshr <4 x i32> %112, <i32 16, i32 16, i32 16, i32 16>
  %113 = lshr i32 %111, 16
  %Vop85 = and <4 x i32> %Vop84, <i32 255, i32 255, i32 255, i32 255>
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %19, align 4
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %19, align 4
  store i8 %115, i8* %116, align 1
  %118 = load i32, i32* %13, align 4
  %119 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop86 = lshr <4 x i32> %119, <i32 8, i32 8, i32 8, i32 8>
  %120 = lshr i32 %118, 8
  %Vop87 = and <4 x i32> %Vop86, <i32 255, i32 255, i32 255, i32 255>
  %121 = and i32 %120, 255
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %19, align 4
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %19, align 4
  store i8 %122, i8* %123, align 1
  %125 = load i32, i32* %13, align 4
  %126 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop88 = and <4 x i32> %126, <i32 255, i32 255, i32 255, i32 255>
  %127 = and i32 %125, 255
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %19, align 4
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %19, align 4
  store i8 %128, i8* %129, align 1
  %131 = load i32, i32* %14, align 4
  %132 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop89 = lshr <4 x i32> %132, <i32 24, i32 24, i32 24, i32 24>
  %133 = lshr i32 %131, 24
  %Vop90 = and <4 x i32> %Vop89, <i32 255, i32 255, i32 255, i32 255>
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %19, align 4
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %19, align 4
  store i8 %135, i8* %136, align 1
  %138 = load i32, i32* %14, align 4
  %139 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop91 = lshr <4 x i32> %139, <i32 16, i32 16, i32 16, i32 16>
  %140 = lshr i32 %138, 16
  %Vop92 = and <4 x i32> %Vop91, <i32 255, i32 255, i32 255, i32 255>
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %19, align 4
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %19, align 4
  store i8 %142, i8* %143, align 1
  %145 = load i32, i32* %14, align 4
  %146 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop93 = lshr <4 x i32> %146, <i32 8, i32 8, i32 8, i32 8>
  %147 = lshr i32 %145, 8
  %Vop94 = and <4 x i32> %Vop93, <i32 255, i32 255, i32 255, i32 255>
  %148 = and i32 %147, 255
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %19, align 4
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %19, align 4
  store i8 %149, i8* %150, align 1
  %152 = load i32, i32* %14, align 4
  %153 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop95 = and <4 x i32> %153, <i32 255, i32 255, i32 255, i32 255>
  %154 = and i32 %152, 255
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %19, align 4
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %19, align 4
  store i8 %155, i8* %156, align 1
  br label %158

; <label>:158:                                    ; preds = %269, %6
  %159 = load i32, i32* %17, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %159, i32 0
  %insertElmt96 = insertelement <4 x i32> %insertElmt, i32 %159, i32 1
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %159, i32 2
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %159, i32 3
  store <4 x i32> %insertElmt98, <4 x i32>* %allocaVec38, align 16
  %160 = load <4 x i32>, <4 x i32>* %allocaVec38, align 16
  %Vop99 = add <4 x i32> %160, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %Vop99, <4 x i32>* %allocaVec38
  %161 = load <4 x i32>, <4 x i32>* %allocaVec38, align 4
  %extractE = extractelement <4 x i32> %161, i64 0
  %extractE100 = extractelement <4 x i32> %161, i64 1
  %extractE101 = extractelement <4 x i32> %161, i64 2
  %sum = add i32 %extractE, %extractE100
  %sum102 = add i32 %sum, %extractE101
  %162 = add nsw i32 %159, -1
  %Fmul = mul i32 %162, 3
  store i32 %162, i32* %Recovery
  %Fcmp = icmp ne i32 %sum102, %Fmul
  br i1 %Fcmp, label %163, label %167

; <label>:163:                                    ; preds = %158
  %remThree = sdiv i32 %sum102, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %164, label %165

; <label>:164:                                    ; preds = %163
  store i32 %162, i32* %Recovery, align 4
  br label %166

; <label>:165:                                    ; preds = %163
  store i32 %extractE, i32* %Recovery, align 4
  br label %166

; <label>:166:                                    ; preds = %165, %164
  br label %167

; <label>:167:                                    ; preds = %158, %166
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %17, align 4
  %168 = icmp ne i32 %159, 0
  br i1 %168, label %169, label %270

; <label>:169:                                    ; preds = %167
  %170 = load i32, i32* %16, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %243

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %174 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %173, %struct.bf_key_st* %174, i32 1)
  %175 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 0
  store i8* %175, i8** %19, align 4
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %insertElmt103 = insertelement <4 x i32> undef, i32 %178, i32 0
  %insertElmt104 = insertelement <4 x i32> %insertElmt103, i32 %178, i32 1
  %insertElmt105 = insertelement <4 x i32> %insertElmt104, i32 %178, i32 2
  %insertElmt106 = insertelement <4 x i32> %insertElmt105, i32 %178, i32 3
  store <4 x i32> %insertElmt106, <4 x i32>* %allocaVec36, align 16
  %179 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop107 = lshr <4 x i32> %179, <i32 24, i32 24, i32 24, i32 24>
  %180 = lshr i32 %178, 24
  %Vop108 = and <4 x i32> %Vop107, <i32 255, i32 255, i32 255, i32 255>
  %181 = and i32 %180, 255
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %19, align 4
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %19, align 4
  store i8 %182, i8* %183, align 1
  %185 = load i32, i32* %15, align 4
  %insertElmt109 = insertelement <4 x i32> undef, i32 %185, i32 0
  %insertElmt110 = insertelement <4 x i32> %insertElmt109, i32 %185, i32 1
  %insertElmt111 = insertelement <4 x i32> %insertElmt110, i32 %185, i32 2
  %insertElmt112 = insertelement <4 x i32> %insertElmt111, i32 %185, i32 3
  store <4 x i32> %insertElmt112, <4 x i32>* %allocaVec36, align 16
  %186 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop113 = lshr <4 x i32> %186, <i32 16, i32 16, i32 16, i32 16>
  %187 = lshr i32 %185, 16
  %Vop114 = and <4 x i32> %Vop113, <i32 255, i32 255, i32 255, i32 255>
  %188 = and i32 %187, 255
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %19, align 4
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %19, align 4
  store i8 %189, i8* %190, align 1
  %192 = load i32, i32* %15, align 4
  %insertElmt115 = insertelement <4 x i32> undef, i32 %192, i32 0
  %insertElmt116 = insertelement <4 x i32> %insertElmt115, i32 %192, i32 1
  %insertElmt117 = insertelement <4 x i32> %insertElmt116, i32 %192, i32 2
  %insertElmt118 = insertelement <4 x i32> %insertElmt117, i32 %192, i32 3
  store <4 x i32> %insertElmt118, <4 x i32>* %allocaVec36, align 16
  %193 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop119 = lshr <4 x i32> %193, <i32 8, i32 8, i32 8, i32 8>
  %194 = lshr i32 %192, 8
  %Vop120 = and <4 x i32> %Vop119, <i32 255, i32 255, i32 255, i32 255>
  %195 = and i32 %194, 255
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %19, align 4
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %19, align 4
  store i8 %196, i8* %197, align 1
  %199 = load i32, i32* %15, align 4
  %insertElmt121 = insertelement <4 x i32> undef, i32 %199, i32 0
  %insertElmt122 = insertelement <4 x i32> %insertElmt121, i32 %199, i32 1
  %insertElmt123 = insertelement <4 x i32> %insertElmt122, i32 %199, i32 2
  %insertElmt124 = insertelement <4 x i32> %insertElmt123, i32 %199, i32 3
  store <4 x i32> %insertElmt124, <4 x i32>* %allocaVec36, align 16
  %200 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop125 = and <4 x i32> %200, <i32 255, i32 255, i32 255, i32 255>
  %201 = and i32 %199, 255
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %19, align 4
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %19, align 4
  store i8 %202, i8* %203, align 1
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %insertElmt126 = insertelement <4 x i32> undef, i32 %207, i32 0
  %insertElmt127 = insertelement <4 x i32> %insertElmt126, i32 %207, i32 1
  %insertElmt128 = insertelement <4 x i32> %insertElmt127, i32 %207, i32 2
  %insertElmt129 = insertelement <4 x i32> %insertElmt128, i32 %207, i32 3
  store <4 x i32> %insertElmt129, <4 x i32>* %allocaVec36, align 16
  %208 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop130 = lshr <4 x i32> %208, <i32 24, i32 24, i32 24, i32 24>
  %209 = lshr i32 %207, 24
  %Vop131 = and <4 x i32> %Vop130, <i32 255, i32 255, i32 255, i32 255>
  %210 = and i32 %209, 255
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %19, align 4
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %19, align 4
  store i8 %211, i8* %212, align 1
  %214 = load i32, i32* %15, align 4
  %insertElmt132 = insertelement <4 x i32> undef, i32 %214, i32 0
  %insertElmt133 = insertelement <4 x i32> %insertElmt132, i32 %214, i32 1
  %insertElmt134 = insertelement <4 x i32> %insertElmt133, i32 %214, i32 2
  %insertElmt135 = insertelement <4 x i32> %insertElmt134, i32 %214, i32 3
  store <4 x i32> %insertElmt135, <4 x i32>* %allocaVec36, align 16
  %215 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop136 = lshr <4 x i32> %215, <i32 16, i32 16, i32 16, i32 16>
  %216 = lshr i32 %214, 16
  %Vop137 = and <4 x i32> %Vop136, <i32 255, i32 255, i32 255, i32 255>
  %217 = and i32 %216, 255
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %19, align 4
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %19, align 4
  store i8 %218, i8* %219, align 1
  %221 = load i32, i32* %15, align 4
  %insertElmt138 = insertelement <4 x i32> undef, i32 %221, i32 0
  %insertElmt139 = insertelement <4 x i32> %insertElmt138, i32 %221, i32 1
  %insertElmt140 = insertelement <4 x i32> %insertElmt139, i32 %221, i32 2
  %insertElmt141 = insertelement <4 x i32> %insertElmt140, i32 %221, i32 3
  store <4 x i32> %insertElmt141, <4 x i32>* %allocaVec36, align 16
  %222 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop142 = lshr <4 x i32> %222, <i32 8, i32 8, i32 8, i32 8>
  %223 = lshr i32 %221, 8
  %Vop143 = and <4 x i32> %Vop142, <i32 255, i32 255, i32 255, i32 255>
  %224 = and i32 %223, 255
  %225 = trunc i32 %224 to i8
  %226 = load i8*, i8** %19, align 4
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %19, align 4
  store i8 %225, i8* %226, align 1
  %228 = load i32, i32* %15, align 4
  %insertElmt144 = insertelement <4 x i32> undef, i32 %228, i32 0
  %insertElmt145 = insertelement <4 x i32> %insertElmt144, i32 %228, i32 1
  %insertElmt146 = insertelement <4 x i32> %insertElmt145, i32 %228, i32 2
  %insertElmt147 = insertelement <4 x i32> %insertElmt146, i32 %228, i32 3
  store <4 x i32> %insertElmt147, <4 x i32>* %allocaVec36, align 16
  %229 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop148 = and <4 x i32> %229, <i32 255, i32 255, i32 255, i32 255>
  %230 = and i32 %228, 255
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %19, align 4
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %19, align 4
  store i8 %231, i8* %232, align 1
  %234 = load i32, i32* %22, align 4
  %insertElmt149 = insertelement <4 x i32> undef, i32 %234, i32 0
  %insertElmt150 = insertelement <4 x i32> %insertElmt149, i32 %234, i32 1
  %insertElmt151 = insertelement <4 x i32> %insertElmt150, i32 %234, i32 2
  %insertElmt152 = insertelement <4 x i32> %insertElmt151, i32 %234, i32 3
  store <4 x i32> %insertElmt152, <4 x i32>* %allocaVec39, align 16
  %235 = load <4 x i32>, <4 x i32>* %allocaVec39, align 16
  %Vop153 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop153, <4 x i32>* %allocaVec39
  %236 = load <4 x i32>, <4 x i32>* %allocaVec39, align 4
  %extractE155 = extractelement <4 x i32> %236, i64 0
  %extractE156 = extractelement <4 x i32> %236, i64 1
  %extractE157 = extractelement <4 x i32> %236, i64 2
  %sum158 = add i32 %extractE155, %extractE156
  %sum159 = add i32 %sum158, %extractE157
  %237 = add nsw i32 %234, 1
  %Fmul154 = mul i32 %237, 3
  store i32 %237, i32* %Recovery1
  %Fcmp160 = icmp ne i32 %sum159, %Fmul154
  br i1 %Fcmp160, label %238, label %242

; <label>:238:                                    ; preds = %172
  %remThree197 = sdiv i32 %sum159, %extractE155
  %FcmpThree198 = icmp ne i32 %remThree197, 3
  br i1 %FcmpThree198, label %239, label %240

; <label>:239:                                    ; preds = %238
  store i32 %237, i32* %Recovery1, align 4
  br label %241

; <label>:240:                                    ; preds = %238
  store i32 %extractE155, i32* %Recovery1, align 4
  br label %241

; <label>:241:                                    ; preds = %240, %239
  br label %242

; <label>:242:                                    ; preds = %172, %241
  %ReplaceInst201 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst201, i32* %22, align 4
  br label %243

; <label>:243:                                    ; preds = %242, %169
  %244 = load i8*, i8** %7, align 4
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %7, align 4
  %246 = load i8, i8* %244, align 1
  %247 = zext i8 %246 to i32
  %248 = load i32, i32* %16, align 4
  %249 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  store i32 %247, i32* %CastInst17
  %252 = load i32, i32* %CastInst17, align 4
  %insertCast161 = insertelement <4 x i32> undef, i32 %252, i32 0
  %insertCast162 = insertelement <4 x i32> %insertCast161, i32 %252, i32 1
  %insertCast163 = insertelement <4 x i32> %insertCast162, i32 %252, i32 2
  %insertCast164 = insertelement <4 x i32> %insertCast163, i32 %252, i32 3
  store <4 x i32> %insertCast164, <4 x i32>* %CastInstVec18, align 4
  %253 = load <4 x i32>, <4 x i32>* %CastInstVec18, align 4
  store i32 %251, i32* %CastInst19
  %254 = load i32, i32* %CastInst19, align 4
  %insertCast165 = insertelement <4 x i32> undef, i32 %254, i32 0
  %insertCast166 = insertelement <4 x i32> %insertCast165, i32 %254, i32 1
  %insertCast167 = insertelement <4 x i32> %insertCast166, i32 %254, i32 2
  %insertCast168 = insertelement <4 x i32> %insertCast167, i32 %254, i32 3
  store <4 x i32> %insertCast168, <4 x i32>* %CastInstVec20, align 4
  %255 = load <4 x i32>, <4 x i32>* %CastInstVec20, align 4
  %Vop169 = xor <4 x i32> %253, %255
  %256 = xor i32 %247, %251
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %8, align 4
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %8, align 4
  store i8 %257, i8* %258, align 1
  %260 = load i32, i32* %16, align 4
  %insertElmt170 = insertelement <4 x i32> undef, i32 %260, i32 0
  %insertElmt171 = insertelement <4 x i32> %insertElmt170, i32 %260, i32 1
  %insertElmt172 = insertelement <4 x i32> %insertElmt171, i32 %260, i32 2
  %insertElmt173 = insertelement <4 x i32> %insertElmt172, i32 %260, i32 3
  store <4 x i32> %insertElmt173, <4 x i32>* %allocaVec37, align 16
  %261 = load <4 x i32>, <4 x i32>* %allocaVec37, align 16
  %Vop174 = add <4 x i32> %261, <i32 1, i32 1, i32 1, i32 1>
  %262 = add nsw i32 %260, 1
  %Vop175 = and <4 x i32> %Vop174, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %Vop175, <4 x i32>* %allocaVec37
  %263 = load <4 x i32>, <4 x i32>* %allocaVec37, align 4
  %extractE177 = extractelement <4 x i32> %263, i64 0
  %extractE178 = extractelement <4 x i32> %263, i64 1
  %extractE179 = extractelement <4 x i32> %263, i64 2
  %sum180 = add i32 %extractE177, %extractE178
  %sum181 = add i32 %sum180, %extractE179
  %264 = and i32 %262, 7
  %Fmul176 = mul i32 %264, 3
  store i32 %264, i32* %Recovery2
  %Fcmp182 = icmp ne i32 %sum181, %Fmul176
  br i1 %Fcmp182, label %265, label %269

; <label>:265:                                    ; preds = %243
  %remThree199 = sdiv i32 %sum181, %extractE177
  %FcmpThree200 = icmp ne i32 %remThree199, 3
  br i1 %FcmpThree200, label %266, label %267

; <label>:266:                                    ; preds = %265
  store i32 %264, i32* %Recovery2, align 4
  br label %268

; <label>:267:                                    ; preds = %265
  store i32 %extractE177, i32* %Recovery2, align 4
  br label %268

; <label>:268:                                    ; preds = %267, %266
  br label %269

; <label>:269:                                    ; preds = %243, %268
  %ReplaceInst202 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst202, i32* %16, align 4
  br label %158

; <label>:270:                                    ; preds = %167
  %271 = load i32, i32* %22, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %333

; <label>:273:                                    ; preds = %270
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %13, align 4
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %14, align 4
  %278 = load i8*, i8** %11, align 4
  store i8* %278, i8** %21, align 4
  %279 = load i32, i32* %13, align 4
  %280 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop183 = lshr <4 x i32> %280, <i32 24, i32 24, i32 24, i32 24>
  %281 = lshr i32 %279, 24
  %Vop184 = and <4 x i32> %Vop183, <i32 255, i32 255, i32 255, i32 255>
  %282 = and i32 %281, 255
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %21, align 4
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %21, align 4
  store i8 %283, i8* %284, align 1
  %286 = load i32, i32* %13, align 4
  %287 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop185 = lshr <4 x i32> %287, <i32 16, i32 16, i32 16, i32 16>
  %288 = lshr i32 %286, 16
  %Vop186 = and <4 x i32> %Vop185, <i32 255, i32 255, i32 255, i32 255>
  %289 = and i32 %288, 255
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %21, align 4
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %21, align 4
  store i8 %290, i8* %291, align 1
  %293 = load i32, i32* %13, align 4
  %294 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop187 = lshr <4 x i32> %294, <i32 8, i32 8, i32 8, i32 8>
  %295 = lshr i32 %293, 8
  %Vop188 = and <4 x i32> %Vop187, <i32 255, i32 255, i32 255, i32 255>
  %296 = and i32 %295, 255
  %297 = trunc i32 %296 to i8
  %298 = load i8*, i8** %21, align 4
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %21, align 4
  store i8 %297, i8* %298, align 1
  %300 = load i32, i32* %13, align 4
  %301 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop189 = and <4 x i32> %301, <i32 255, i32 255, i32 255, i32 255>
  %302 = and i32 %300, 255
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %21, align 4
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %21, align 4
  store i8 %303, i8* %304, align 1
  %306 = load i32, i32* %14, align 4
  %307 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop190 = lshr <4 x i32> %307, <i32 24, i32 24, i32 24, i32 24>
  %308 = lshr i32 %306, 24
  %Vop191 = and <4 x i32> %Vop190, <i32 255, i32 255, i32 255, i32 255>
  %309 = and i32 %308, 255
  %310 = trunc i32 %309 to i8
  %311 = load i8*, i8** %21, align 4
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %21, align 4
  store i8 %310, i8* %311, align 1
  %313 = load i32, i32* %14, align 4
  %314 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop192 = lshr <4 x i32> %314, <i32 16, i32 16, i32 16, i32 16>
  %315 = lshr i32 %313, 16
  %Vop193 = and <4 x i32> %Vop192, <i32 255, i32 255, i32 255, i32 255>
  %316 = and i32 %315, 255
  %317 = trunc i32 %316 to i8
  %318 = load i8*, i8** %21, align 4
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %21, align 4
  store i8 %317, i8* %318, align 1
  %320 = load i32, i32* %14, align 4
  %321 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop194 = lshr <4 x i32> %321, <i32 8, i32 8, i32 8, i32 8>
  %322 = lshr i32 %320, 8
  %Vop195 = and <4 x i32> %Vop194, <i32 255, i32 255, i32 255, i32 255>
  %323 = and i32 %322, 255
  %324 = trunc i32 %323 to i8
  %325 = load i8*, i8** %21, align 4
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %21, align 4
  store i8 %324, i8* %325, align 1
  %327 = load i32, i32* %14, align 4
  %328 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop196 = and <4 x i32> %328, <i32 255, i32 255, i32 255, i32 255>
  %329 = and i32 %327, 255
  %330 = trunc i32 %329 to i8
  %331 = load i8*, i8** %21, align 4
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %21, align 4
  store i8 %330, i8* %331, align 1
  br label %333

; <label>:333:                                    ; preds = %273, %270
  %334 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %334, align 4
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %335, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec35
  store i32 0, i32* %14, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec34
  store i32 0, i32* %13, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec36
  store i32 0, i32* %15, align 4
  %336 = load i32, i32* %16, align 4
  %337 = load i32*, i32** %12, align 4
  store i32 %336, i32* %337, align 4
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @BF_set_key(%struct.bf_key_st*, i32, i8*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %CastInst = alloca i32, align 4
  %CastInstVec = alloca <4 x i32>, align 16
  %allocaVec8 = alloca <4 x i32>, align 16
  %CastInst2 = alloca i32, align 4
  %CastInstVec3 = alloca <4 x i32>, align 16
  %allocaVec9 = alloca <4 x i32>, align 16
  %CastInst4 = alloca i32, align 4
  %CastInstVec5 = alloca <4 x i32>, align 16
  %4 = alloca %struct.bf_key_st*, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i8*, align 4
  %12 = alloca i8*, align 4
  store %struct.bf_key_st* %0, %struct.bf_key_st** %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 4
  %13 = load %struct.bf_key_st*, %struct.bf_key_st** %4, align 4
  %14 = bitcast %struct.bf_key_st* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* bitcast (%struct.bf_key_st* @bf_init to i8*), i32 4168, i32 1, i1 false)
  %15 = load %struct.bf_key_st*, %struct.bf_key_st** %4, align 4
  %16 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %15, i32 0, i32 0
  %17 = getelementptr inbounds [18 x i32], [18 x i32]* %16, i32 0, i32 0
  store i32* %17, i32** %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 72
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3
  store <4 x i32> <i32 72, i32 72, i32 72, i32 72>, <4 x i32>* %allocaVec10
  store i32 72, i32* %5, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %3
  %22 = load i8*, i8** %6, align 4
  store i8* %22, i8** %11, align 4
  %23 = load i8*, i8** %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds i8, i8* %23, i32 %24
  store i8* %25, i8** %12, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %7, align 4
  br label %26

; <label>:26:                                     ; preds = %100, %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 18
  br i1 %28, label %29, label %104

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %11, align 4
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 4
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %11, align 4
  %35 = load i8*, i8** %12, align 4
  %36 = icmp uge i8* %34, %35
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %6, align 4
  store i8* %38, i8** %11, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %29
  %40 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %40, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt, i32 %40, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %40, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %40, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec12, align 16
  %41 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop = shl <4 x i32> %41, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec12
  %42 = shl i32 %40, 8
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %11, align 4
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 4
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  store i32 %46, i32* %CastInst
  %49 = load i32, i32* %CastInst, align 4
  %insertCast = insertelement <4 x i32> undef, i32 %49, i32 0
  %insertCast16 = insertelement <4 x i32> %insertCast, i32 %49, i32 1
  %insertCast17 = insertelement <4 x i32> %insertCast16, i32 %49, i32 2
  %insertCast18 = insertelement <4 x i32> %insertCast17, i32 %49, i32 3
  store <4 x i32> %insertCast18, <4 x i32>* %CastInstVec, align 4
  %50 = load <4 x i32>, <4 x i32>* %CastInstVec, align 4
  %Vop19 = or <4 x i32> %48, %50
  store <4 x i32> %Vop19, <4 x i32>* %allocaVec12
  %51 = or i32 %47, %46
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %11, align 4
  %53 = load i8*, i8** %12, align 4
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %39
  %56 = load i8*, i8** %6, align 4
  store i8* %56, i8** %11, align 4
  br label %57

; <label>:57:                                     ; preds = %55, %39
  %58 = load i32, i32* %9, align 4
  %59 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop20 = shl <4 x i32> %59, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop20, <4 x i32>* %allocaVec12
  %60 = shl i32 %58, 8
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %11, align 4
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 4
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %9, align 4
  %66 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  store i32 %64, i32* %CastInst2
  %67 = load i32, i32* %CastInst2, align 4
  %insertCast21 = insertelement <4 x i32> undef, i32 %67, i32 0
  %insertCast22 = insertelement <4 x i32> %insertCast21, i32 %67, i32 1
  %insertCast23 = insertelement <4 x i32> %insertCast22, i32 %67, i32 2
  %insertCast24 = insertelement <4 x i32> %insertCast23, i32 %67, i32 3
  store <4 x i32> %insertCast24, <4 x i32>* %CastInstVec3, align 4
  %68 = load <4 x i32>, <4 x i32>* %CastInstVec3, align 4
  %Vop25 = or <4 x i32> %66, %68
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec12
  %69 = or i32 %65, %64
  store i32 %69, i32* %9, align 4
  %70 = load i8*, i8** %11, align 4
  %71 = load i8*, i8** %12, align 4
  %72 = icmp uge i8* %70, %71
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %57
  %74 = load i8*, i8** %6, align 4
  store i8* %74, i8** %11, align 4
  br label %75

; <label>:75:                                     ; preds = %73, %57
  %76 = load i32, i32* %9, align 4
  %77 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  %Vop26 = shl <4 x i32> %77, <i32 8, i32 8, i32 8, i32 8>
  store <4 x i32> %Vop26, <4 x i32>* %allocaVec12
  %78 = shl i32 %76, 8
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %11, align 4
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 4
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = load <4 x i32>, <4 x i32>* %allocaVec12, align 16
  store i32 %82, i32* %CastInst4
  %85 = load i32, i32* %CastInst4, align 4
  %insertCast27 = insertelement <4 x i32> undef, i32 %85, i32 0
  %insertCast28 = insertelement <4 x i32> %insertCast27, i32 %85, i32 1
  %insertCast29 = insertelement <4 x i32> %insertCast28, i32 %85, i32 2
  %insertCast30 = insertelement <4 x i32> %insertCast29, i32 %85, i32 3
  store <4 x i32> %insertCast30, <4 x i32>* %CastInstVec5, align 4
  %86 = load <4 x i32>, <4 x i32>* %CastInstVec5, align 4
  %Vop31 = or <4 x i32> %84, %86
  store <4 x i32> %Vop31, <4 x i32>* %allocaVec12
  %87 = or i32 %83, %82
  store i32 %87, i32* %9, align 4
  %88 = load i8*, i8** %11, align 4
  %89 = load i8*, i8** %12, align 4
  %90 = icmp uge i8* %88, %89
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %75
  %92 = load i8*, i8** %6, align 4
  store i8* %92, i8** %11, align 4
  br label %93

; <label>:93:                                     ; preds = %91, %75
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds i32, i32* %95, i32 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* %7, align 4
  %insertElmt32 = insertelement <4 x i32> undef, i32 %101, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %101, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %101, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %101, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec11, align 16
  %102 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop36 = add <4 x i32> %102, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec11
  %103 = add nsw i32 %101, 1
  store i32 %103, i32* %7, align 4
  br label %26

; <label>:104:                                    ; preds = %26
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  store i32 0, i32* %106, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %7, align 4
  br label %107

; <label>:107:                                    ; preds = %125, %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 18
  br i1 %109, label %110, label %129

; <label>:110:                                    ; preds = %107
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %112 = load %struct.bf_key_st*, %struct.bf_key_st** %4, align 4
  call arm_aapcscc void @BF_encrypt(i32* %111, %struct.bf_key_st* %112, i32 1)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = getelementptr inbounds i32, i32* %115, i32 %116
  store i32 %114, i32* %117, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop37 = add <4 x i32> %122, <i32 1, i32 1, i32 1, i32 1>
  %123 = add nsw i32 %121, 1
  %124 = getelementptr inbounds i32, i32* %120, i32 %123
  store i32 %119, i32* %124, align 4
  br label %125

; <label>:125:                                    ; preds = %110
  %126 = load i32, i32* %7, align 4
  %127 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop38 = add <4 x i32> %127, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec11
  %128 = add nsw i32 %126, 2
  store i32 %128, i32* %7, align 4
  br label %107

; <label>:129:                                    ; preds = %107
  %130 = load %struct.bf_key_st*, %struct.bf_key_st** %4, align 4
  %131 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %130, i32 0, i32 1
  %132 = getelementptr inbounds [1024 x i32], [1024 x i32]* %131, i32 0, i32 0
  store i32* %132, i32** %8, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %7, align 4
  br label %133

; <label>:133:                                    ; preds = %160, %129
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 1024
  br i1 %135, label %136, label %161

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %138 = load %struct.bf_key_st*, %struct.bf_key_st** %4, align 4
  call arm_aapcscc void @BF_encrypt(i32* %137, %struct.bf_key_st* %138, i32 1)
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = getelementptr inbounds i32, i32* %141, i32 %142
  store i32 %140, i32* %143, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %8, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop39 = add <4 x i32> %148, <i32 1, i32 1, i32 1, i32 1>
  %149 = add nsw i32 %147, 1
  %150 = getelementptr inbounds i32, i32* %146, i32 %149
  store i32 %145, i32* %150, align 4
  br label %151

; <label>:151:                                    ; preds = %136
  %152 = load i32, i32* %7, align 4
  %153 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop40 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec11
  %154 = load <4 x i32>, <4 x i32>* %allocaVec11, align 4
  %extractE = extractelement <4 x i32> %154, i64 0
  %extractE41 = extractelement <4 x i32> %154, i64 1
  %extractE42 = extractelement <4 x i32> %154, i64 2
  %sum = add i32 %extractE, %extractE41
  %sum43 = add i32 %sum, %extractE42
  %155 = add nsw i32 %152, 2
  %Fmul = mul i32 %155, 3
  store i32 %155, i32* %Recovery1
  %Fcmp = icmp ne i32 %sum43, %Fmul
  br i1 %Fcmp, label %156, label %160

; <label>:156:                                    ; preds = %151
  %remThree = sdiv i32 %sum43, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %157, label %158

; <label>:157:                                    ; preds = %156
  store i32 %155, i32* %Recovery1, align 4
  br label %159

; <label>:158:                                    ; preds = %156
  store i32 %extractE, i32* %Recovery1, align 4
  br label %159

; <label>:159:                                    ; preds = %158, %157
  br label %160

; <label>:160:                                    ; preds = %151, %159
  %ReplaceInst = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst, i32* %7, align 4
  br label %133

; <label>:161:                                    ; preds = %133
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @print_test_data() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec16 = alloca <4 x i32>, align 16
  %CallInst2 = alloca i32, align 4
  %CallInstVec3 = alloca <4 x i32>, align 16
  %allocaVec17 = alloca <4 x i32>, align 16
  %CallInst4 = alloca i32, align 4
  %CallInstVec5 = alloca <4 x i32>, align 16
  %allocaVec18 = alloca <4 x i32>, align 16
  %CallInst6 = alloca i32, align 4
  %CallInstVec7 = alloca <4 x i32>, align 16
  %allocaVec19 = alloca <4 x i32>, align 16
  %CallInst8 = alloca i32, align 4
  %CallInstVec9 = alloca <4 x i32>, align 16
  %allocaVec20 = alloca <4 x i32>, align 16
  %CallInst10 = alloca i32, align 4
  %CallInstVec11 = alloca <4 x i32>, align 16
  %allocaVec21 = alloca <4 x i32>, align 16
  %CallInst12 = alloca i32, align 4
  %CallInstVec13 = alloca <4 x i32>, align 16
  %allocaVec22 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec23 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %3 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %4 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3.5, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec22
  store i32 0, i32* %1, align 4
  br label %5

; <label>:5:                                      ; preds = %60, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 34
  br i1 %7, label %8, label %64

; <label>:8:                                      ; preds = %5
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i32 %13
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i32 0, i32 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %21, i32 0
  %insertElmt24 = insertelement <4 x i32> %insertElmt, i32 %21, i32 1
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %21, i32 2
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %21, i32 3
  store <4 x i32> %insertElmt26, <4 x i32>* %allocaVec23, align 16
  %22 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop = add <4 x i32> %22, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec23
  %23 = add nsw i32 %21, 1
  store i32 %23, i32* %2, align 4
  br label %9

; <label>:24:                                     ; preds = %9
  %25 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %26

; <label>:26:                                     ; preds = %37, %24
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %30
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i32 0, i32 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %35)
  br label %37

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop27 = add <4 x i32> %39, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop27, <4 x i32>* %allocaVec23
  %40 = add nsw i32 %38, 1
  store i32 %40, i32* %2, align 4
  br label %26

; <label>:41:                                     ; preds = %26
  %42 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %43

; <label>:43:                                     ; preds = %54, %41
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %58

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %47
  %49 = load i32, i32* %2, align 4
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i32 0, i32 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %52)
  br label %54

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %2, align 4
  %56 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop28 = add <4 x i32> %56, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop28, <4 x i32>* %allocaVec23
  %57 = add nsw i32 %55, 1
  store i32 %57, i32* %2, align 4
  br label %43

; <label>:58:                                     ; preds = %43
  %59 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %60

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %1, align 4
  %insertElmt29 = insertelement <4 x i32> undef, i32 %61, i32 0
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %61, i32 1
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %61, i32 2
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %61, i32 3
  store <4 x i32> %insertElmt32, <4 x i32>* %allocaVec22, align 16
  %62 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop33 = add <4 x i32> %62, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop33, <4 x i32>* %allocaVec22
  %63 = add nsw i32 %61, 1
  store i32 %63, i32* %1, align 4
  br label %5

; <label>:64:                                     ; preds = %5
  %65 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  %66 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %67

; <label>:67:                                     ; preds = %76, %64
  %68 = load i32, i32* %2, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %80

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %2, align 4
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* @key_data, i32 0, i32 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %74)
  br label %76

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %2, align 4
  %78 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop34 = add <4 x i32> %78, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec23
  %79 = add nsw i32 %77, 1
  store i32 %79, i32* %2, align 4
  br label %67

; <label>:80:                                     ; preds = %67
  %81 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec22
  store i32 0, i32* %1, align 4
  br label %82

; <label>:82:                                     ; preds = %134, %80
  %83 = load i32, i32* %1, align 4
  %84 = icmp slt i32 %83, 24
  br i1 %84, label %85, label %135

; <label>:85:                                     ; preds = %82
  %86 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %87

; <label>:87:                                     ; preds = %98, %85
  %88 = load i32, i32* %2, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %102

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %1, align 4
  %92 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i32 %91
  %93 = load i32, i32* %2, align 4
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %92, i32 0, i32 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %96)
  br label %98

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %2, align 4
  %100 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop35 = add <4 x i32> %100, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop35, <4 x i32>* %allocaVec23
  %101 = add nsw i32 %99, 1
  store i32 %101, i32* %2, align 4
  br label %87

; <label>:102:                                    ; preds = %87
  %103 = load i32, i32* %1, align 4
  %104 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop36 = add <4 x i32> %104, <i32 1, i32 1, i32 1, i32 1>
  %105 = add nsw i32 %103, 1
  %106 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %105)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %107

; <label>:107:                                    ; preds = %119, %102
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* %1, align 4
  %110 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop37 = add <4 x i32> %110, <i32 1, i32 1, i32 1, i32 1>
  %111 = add nsw i32 %109, 1
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %123

; <label>:113:                                    ; preds = %107
  %114 = load i32, i32* %2, align 4
  %115 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i32 0, i32 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %117)
  br label %119

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* %2, align 4
  %121 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop38 = add <4 x i32> %121, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec23
  %122 = add nsw i32 %120, 1
  store i32 %122, i32* %2, align 4
  br label %107

; <label>:123:                                    ; preds = %107
  %124 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %125

; <label>:125:                                    ; preds = %123
  %126 = load i32, i32* %1, align 4
  %127 = load <4 x i32>, <4 x i32>* %allocaVec22, align 16
  %Vop39 = add <4 x i32> %127, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop39, <4 x i32>* %allocaVec22
  %128 = load <4 x i32>, <4 x i32>* %allocaVec22, align 4
  %extractE = extractelement <4 x i32> %128, i64 0
  %extractE40 = extractelement <4 x i32> %128, i64 1
  %extractE41 = extractelement <4 x i32> %128, i64 2
  %sum = add i32 %extractE, %extractE40
  %sum42 = add i32 %sum, %extractE41
  %129 = add nsw i32 %126, 1
  %Fmul = mul i32 %129, 3
  store i32 %129, i32* %Recovery
  %Fcmp = icmp ne i32 %sum42, %Fmul
  br i1 %Fcmp, label %130, label %134

; <label>:130:                                    ; preds = %125
  %remThree = sdiv i32 %sum42, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %131, label %132

; <label>:131:                                    ; preds = %130
  store i32 %129, i32* %Recovery, align 4
  br label %133

; <label>:132:                                    ; preds = %130
  store i32 %extractE, i32* %Recovery, align 4
  br label %133

; <label>:133:                                    ; preds = %132, %131
  br label %134

; <label>:134:                                    ; preds = %125, %133
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %1, align 4
  br label %82

; <label>:135:                                    ; preds = %82
  %136 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  %137 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %138

; <label>:138:                                    ; preds = %147, %135
  %139 = load i32, i32* %2, align 4
  %140 = icmp slt i32 %139, 16
  br i1 %140, label %141, label %151

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %2, align 4
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* @cbc_key, i32 0, i32 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %145)
  br label %147

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %2, align 4
  %149 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop43 = add <4 x i32> %149, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec23
  %150 = add nsw i32 %148, 1
  store i32 %150, i32* %2, align 4
  br label %138

; <label>:151:                                    ; preds = %138
  %152 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %153

; <label>:153:                                    ; preds = %162, %151
  %154 = load i32, i32* %2, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %166

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %2, align 4
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %160)
  br label %162

; <label>:162:                                    ; preds = %156
  %163 = load i32, i32* %2, align 4
  %164 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop44 = add <4 x i32> %164, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop44, <4 x i32>* %allocaVec23
  %165 = add nsw i32 %163, 1
  store i32 %165, i32* %2, align 4
  br label %153

; <label>:166:                                    ; preds = %153
  %167 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %167, i32* %CallInst
  %168 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %168, i32 0
  %insertCall45 = insertelement <4 x i32> %insertCall, i32 %168, i32 1
  %insertCall46 = insertelement <4 x i32> %insertCall45, i32 %168, i32 2
  %insertCall47 = insertelement <4 x i32> %insertCall46, i32 %168, i32 3
  store <4 x i32> %insertCall47, <4 x i32>* %CallInstVec, align 4
  %169 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop48 = add <4 x i32> %169, <i32 1, i32 1, i32 1, i32 1>
  %170 = add i32 %167, 1
  %171 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %172 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %172, i32* %CallInst2
  %173 = load i32, i32* %CallInst2, align 4
  %insertCall49 = insertelement <4 x i32> undef, i32 %173, i32 0
  %insertCall50 = insertelement <4 x i32> %insertCall49, i32 %173, i32 1
  %insertCall51 = insertelement <4 x i32> %insertCall50, i32 %173, i32 2
  %insertCall52 = insertelement <4 x i32> %insertCall51, i32 %173, i32 3
  store <4 x i32> %insertCall52, <4 x i32>* %CallInstVec3, align 4
  %174 = load <4 x i32>, <4 x i32>* %CallInstVec3, align 4
  %Vop53 = add <4 x i32> %174, <i32 1, i32 1, i32 1, i32 1>
  %175 = add i32 %172, 1
  %176 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %175)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %177

; <label>:177:                                    ; preds = %190, %166
  %178 = load i32, i32* %2, align 4
  %179 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %179, i32* %CallInst4
  %180 = load i32, i32* %CallInst4, align 4
  %insertCall54 = insertelement <4 x i32> undef, i32 %180, i32 0
  %insertCall55 = insertelement <4 x i32> %insertCall54, i32 %180, i32 1
  %insertCall56 = insertelement <4 x i32> %insertCall55, i32 %180, i32 2
  %insertCall57 = insertelement <4 x i32> %insertCall56, i32 %180, i32 3
  store <4 x i32> %insertCall57, <4 x i32>* %CallInstVec5, align 4
  %181 = load <4 x i32>, <4 x i32>* %CallInstVec5, align 4
  %Vop58 = add <4 x i32> %181, <i32 1, i32 1, i32 1, i32 1>
  %182 = add i32 %179, 1
  %183 = icmp ult i32 %178, %182
  br i1 %183, label %184, label %194

; <label>:184:                                    ; preds = %177
  %185 = load i32, i32* %2, align 4
  %186 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i32 0, i32 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %188)
  br label %190

; <label>:190:                                    ; preds = %184
  %191 = load i32, i32* %2, align 4
  %192 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop59 = add <4 x i32> %192, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop59, <4 x i32>* %allocaVec23
  %193 = add nsw i32 %191, 1
  store i32 %193, i32* %2, align 4
  br label %177

; <label>:194:                                    ; preds = %177
  %195 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %196 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %197 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 32)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %198

; <label>:198:                                    ; preds = %207, %194
  %199 = load i32, i32* %2, align 4
  %200 = icmp slt i32 %199, 32
  br i1 %200, label %201, label %211

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %2, align 4
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* @cbc_ok, i32 0, i32 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %205)
  br label %207

; <label>:207:                                    ; preds = %201
  %208 = load i32, i32* %2, align 4
  %209 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop60 = add <4 x i32> %209, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop60, <4 x i32>* %allocaVec23
  %210 = add nsw i32 %208, 1
  store i32 %210, i32* %2, align 4
  br label %198

; <label>:211:                                    ; preds = %198
  %212 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %213 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %214 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %214, i32* %CallInst6
  %215 = load i32, i32* %CallInst6, align 4
  %insertCall61 = insertelement <4 x i32> undef, i32 %215, i32 0
  %insertCall62 = insertelement <4 x i32> %insertCall61, i32 %215, i32 1
  %insertCall63 = insertelement <4 x i32> %insertCall62, i32 %215, i32 2
  %insertCall64 = insertelement <4 x i32> %insertCall63, i32 %215, i32 3
  store <4 x i32> %insertCall64, <4 x i32>* %CallInstVec7, align 4
  %216 = load <4 x i32>, <4 x i32>* %CallInstVec7, align 4
  %Vop65 = add <4 x i32> %216, <i32 1, i32 1, i32 1, i32 1>
  %217 = add i32 %214, 1
  %218 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %217)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %219

; <label>:219:                                    ; preds = %232, %211
  %220 = load i32, i32* %2, align 4
  %221 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %221, i32* %CallInst8
  %222 = load i32, i32* %CallInst8, align 4
  %insertCall66 = insertelement <4 x i32> undef, i32 %222, i32 0
  %insertCall67 = insertelement <4 x i32> %insertCall66, i32 %222, i32 1
  %insertCall68 = insertelement <4 x i32> %insertCall67, i32 %222, i32 2
  %insertCall69 = insertelement <4 x i32> %insertCall68, i32 %222, i32 3
  store <4 x i32> %insertCall69, <4 x i32>* %CallInstVec9, align 4
  %223 = load <4 x i32>, <4 x i32>* %CallInstVec9, align 4
  %Vop70 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %224 = add i32 %221, 1
  %225 = icmp ult i32 %220, %224
  br i1 %225, label %226, label %236

; <label>:226:                                    ; preds = %219
  %227 = load i32, i32* %2, align 4
  %228 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i32 0, i32 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %230)
  br label %232

; <label>:232:                                    ; preds = %226
  %233 = load i32, i32* %2, align 4
  %234 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop71 = add <4 x i32> %234, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop71, <4 x i32>* %allocaVec23
  %235 = add nsw i32 %233, 1
  store i32 %235, i32* %2, align 4
  br label %219

; <label>:236:                                    ; preds = %219
  %237 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %238 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  %239 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %239, i32* %CallInst10
  %240 = load i32, i32* %CallInst10, align 4
  %insertCall72 = insertelement <4 x i32> undef, i32 %240, i32 0
  %insertCall73 = insertelement <4 x i32> %insertCall72, i32 %240, i32 1
  %insertCall74 = insertelement <4 x i32> %insertCall73, i32 %240, i32 2
  %insertCall75 = insertelement <4 x i32> %insertCall74, i32 %240, i32 3
  store <4 x i32> %insertCall75, <4 x i32>* %CallInstVec11, align 4
  %241 = load <4 x i32>, <4 x i32>* %CallInstVec11, align 4
  %Vop76 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %242 = add i32 %239, 1
  %243 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %242)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %2, align 4
  br label %244

; <label>:244:                                    ; preds = %266, %236
  %245 = load i32, i32* %2, align 4
  %246 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %246, i32* %CallInst12
  %247 = load i32, i32* %CallInst12, align 4
  %insertCall77 = insertelement <4 x i32> undef, i32 %247, i32 0
  %insertCall78 = insertelement <4 x i32> %insertCall77, i32 %247, i32 1
  %insertCall79 = insertelement <4 x i32> %insertCall78, i32 %247, i32 2
  %insertCall80 = insertelement <4 x i32> %insertCall79, i32 %247, i32 3
  store <4 x i32> %insertCall80, <4 x i32>* %CallInstVec13, align 4
  %248 = load <4 x i32>, <4 x i32>* %CallInstVec13, align 4
  %Vop81 = add <4 x i32> %248, <i32 1, i32 1, i32 1, i32 1>
  %249 = add i32 %246, 1
  %250 = icmp ult i32 %245, %249
  br i1 %250, label %251, label %267

; <label>:251:                                    ; preds = %244
  %252 = load i32, i32* %2, align 4
  %253 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i32 0, i32 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %255)
  br label %257

; <label>:257:                                    ; preds = %251
  %258 = load i32, i32* %2, align 4
  %259 = load <4 x i32>, <4 x i32>* %allocaVec23, align 16
  %Vop82 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop82, <4 x i32>* %allocaVec23
  %260 = load <4 x i32>, <4 x i32>* %allocaVec23, align 4
  %extractE84 = extractelement <4 x i32> %260, i64 0
  %extractE85 = extractelement <4 x i32> %260, i64 1
  %extractE86 = extractelement <4 x i32> %260, i64 2
  %sum87 = add i32 %extractE84, %extractE85
  %sum88 = add i32 %sum87, %extractE86
  %261 = add nsw i32 %258, 1
  %Fmul83 = mul i32 %261, 3
  store i32 %261, i32* %Recovery1
  %Fcmp89 = icmp ne i32 %sum88, %Fmul83
  br i1 %Fcmp89, label %262, label %266

; <label>:262:                                    ; preds = %257
  %remThree90 = sdiv i32 %sum88, %extractE84
  %FcmpThree91 = icmp ne i32 %remThree90, 3
  br i1 %FcmpThree91, label %263, label %264

; <label>:263:                                    ; preds = %262
  store i32 %261, i32* %Recovery1, align 4
  br label %265

; <label>:264:                                    ; preds = %262
  store i32 %extractE84, i32* %Recovery1, align 4
  br label %265

; <label>:265:                                    ; preds = %264, %263
  br label %266

; <label>:266:                                    ; preds = %257, %265
  %ReplaceInst92 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst92, i32* %2, align 4
  br label %244

; <label>:267:                                    ; preds = %244
  %268 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #2

declare arm_aapcscc i32 @strlen(i8*) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = call arm_aapcscc i32 @print_test_data()
  store i32 %10, i32* %6, align 4
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = call arm_aapcscc i32 @test()
  store i32 %12, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %6, align 4
  call arm_aapcscc void @exit(i32 %14) #4
  unreachable
                                                  ; No predecessors!
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: nounwind
define arm_aapcscc i32 @test() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec6 = alloca <4 x i32>, align 16
  %CallInst2 = alloca i32, align 4
  %CallInstVec3 = alloca <4 x i32>, align 16
  %1 = alloca [40 x i8], align 1
  %2 = alloca [40 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %allocaVec7 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf_key_st, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [8 x i8], align 1
  %allocaVec10 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %6, align 4
  %11 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %124, %0
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %128

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i32 %16
  %18 = load i8*, i8** %17, align 4
  %19 = call arm_aapcscc i32 @strlen(i8* %18)
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i32 %20
  %22 = load i8*, i8** %21, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 %19, i8* %22)
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  call arm_aapcscc void @BF_encrypt(i32* %34, %struct.bf_key_st* %7, i32 1)
  %35 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_cipher, i32 0, i32 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to i8*
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  %41 = bitcast i32* %40 to i8*
  %42 = call arm_aapcscc i32 @memcmp(i8* %39, i8* %41, i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

; <label>:44:                                     ; preds = %15
  %45 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0))
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %47

; <label>:47:                                     ; preds = %55, %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %59

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 %51
  %53 = load i32, i32* %52, align 4
  %54 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %53)
  br label %55

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %56, i32 0
  %insertElmt11 = insertelement <4 x i32> %insertElmt, i32 %56, i32 1
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %56, i32 2
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %56, i32 3
  store <4 x i32> %insertElmt13, <4 x i32>* %allocaVec7, align 16
  %57 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop = add <4 x i32> %57, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec7
  %58 = add nsw i32 %56, 1
  store i32 %58, i32* %4, align 4
  br label %47

; <label>:59:                                     ; preds = %47
  %60 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %62

; <label>:62:                                     ; preds = %72, %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %76

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_cipher, i32 0, i32 %66
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %67, i32 0, i32 %68
  %70 = load i32, i32* %69, align 4
  %71 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %70)
  br label %72

; <label>:72:                                     ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop14 = add <4 x i32> %74, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop14, <4 x i32>* %allocaVec7
  %75 = add nsw i32 %73, 1
  store i32 %75, i32* %4, align 4
  br label %62

; <label>:76:                                     ; preds = %62
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  %77 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %78

; <label>:78:                                     ; preds = %76, %15
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  call arm_aapcscc void @BF_encrypt(i32* %79, %struct.bf_key_st* %7, i32 0)
  %80 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %81
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i32 0, i32 0
  %84 = bitcast i32* %83 to i8*
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0
  %86 = bitcast i32* %85 to i8*
  %87 = call arm_aapcscc i32 @memcmp(i8* %84, i8* %86, i32 8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %123

; <label>:89:                                     ; preds = %78
  %90 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  %91 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %92

; <label>:92:                                     ; preds = %100, %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %104

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 %96
  %98 = load i32, i32* %97, align 4
  %99 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %98)
  br label %100

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop15 = add <4 x i32> %102, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec7
  %103 = add nsw i32 %101, 1
  store i32 %103, i32* %4, align 4
  br label %92

; <label>:104:                                    ; preds = %92
  %105 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %106 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %107

; <label>:107:                                    ; preds = %117, %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %121

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @bf_plain, i32 0, i32 %111
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i32 0, i32 %113
  %115 = load i32, i32* %114, align 4
  %116 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %115)
  br label %117

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %4, align 4
  %119 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop16 = add <4 x i32> %119, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop16, <4 x i32>* %allocaVec7
  %120 = add nsw i32 %118, 1
  store i32 %120, i32* %4, align 4
  br label %107

; <label>:121:                                    ; preds = %107
  %122 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %123

; <label>:123:                                    ; preds = %121, %78
  br label %124

; <label>:124:                                    ; preds = %123
  %125 = load i32, i32* %5, align 4
  %insertElmt17 = insertelement <4 x i32> undef, i32 %125, i32 0
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %125, i32 1
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %125, i32 2
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %125, i32 3
  store <4 x i32> %insertElmt20, <4 x i32>* %allocaVec8, align 16
  %126 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop21 = add <4 x i32> %126, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop21, <4 x i32>* %allocaVec8
  %127 = add nsw i32 %125, 1
  store i32 %127, i32* %5, align 4
  br label %12

; <label>:128:                                    ; preds = %12
  %129 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  br label %130

; <label>:130:                                    ; preds = %229, %128
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 34
  br i1 %132, label %133, label %233

; <label>:133:                                    ; preds = %130
  %134 = load i32, i32* %5, align 4
  %135 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i32 %134
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %135, i32 0, i32 0
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 8, i8* %136)
  %137 = load i32, i32* %5, align 4
  %138 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %137
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %138, i32 0, i32 0
  %140 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* %139, i8* %140, %struct.bf_key_st* %7, i32 1)
  %141 = load i32, i32* %5, align 4
  %142 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %141
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %142, i32 0, i32 0
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %145 = call arm_aapcscc i32 @memcmp(i8* %143, i8* %144, i32 8)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %183

; <label>:147:                                    ; preds = %133
  %148 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %149 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %150

; <label>:150:                                    ; preds = %159, %147
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %163

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %157)
  br label %159

; <label>:159:                                    ; preds = %153
  %160 = load i32, i32* %4, align 4
  %161 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop22 = add <4 x i32> %161, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop22, <4 x i32>* %allocaVec7
  %162 = add nsw i32 %160, 1
  store i32 %162, i32* %4, align 4
  br label %150

; <label>:163:                                    ; preds = %150
  %164 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %165 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %166

; <label>:166:                                    ; preds = %177, %163
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 8
  br i1 %168, label %169, label %181

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i32 %170
  %172 = load i32, i32* %4, align 4
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %171, i32 0, i32 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %175)
  br label %177

; <label>:177:                                    ; preds = %169
  %178 = load i32, i32* %4, align 4
  %179 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop23 = add <4 x i32> %179, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop23, <4 x i32>* %allocaVec7
  %180 = add nsw i32 %178, 1
  store i32 %180, i32* %4, align 4
  br label %166

; <label>:181:                                    ; preds = %166
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  %182 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %183

; <label>:183:                                    ; preds = %181, %133
  %184 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %185 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* %184, i8* %185, %struct.bf_key_st* %7, i32 0)
  %186 = load i32, i32* %5, align 4
  %187 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %186
  %188 = getelementptr inbounds [8 x i8], [8 x i8]* %187, i32 0, i32 0
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %190 = call arm_aapcscc i32 @memcmp(i8* %188, i8* %189, i32 8)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %228

; <label>:192:                                    ; preds = %183
  %193 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  %194 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %195

; <label>:195:                                    ; preds = %204, %192
  %196 = load i32, i32* %4, align 4
  %197 = icmp slt i32 %196, 8
  br i1 %197, label %198, label %208

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %202)
  br label %204

; <label>:204:                                    ; preds = %198
  %205 = load i32, i32* %4, align 4
  %206 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop24 = add <4 x i32> %206, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec7
  %207 = add nsw i32 %205, 1
  store i32 %207, i32* %4, align 4
  br label %195

; <label>:208:                                    ; preds = %195
  %209 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %210 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %211

; <label>:211:                                    ; preds = %222, %208
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %212, 8
  br i1 %213, label %214, label %226

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %5, align 4
  %216 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i32 %215
  %217 = load i32, i32* %4, align 4
  %218 = getelementptr inbounds [8 x i8], [8 x i8]* %216, i32 0, i32 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %220)
  br label %222

; <label>:222:                                    ; preds = %214
  %223 = load i32, i32* %4, align 4
  %224 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop25 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec7
  %225 = add nsw i32 %223, 1
  store i32 %225, i32* %4, align 4
  br label %211

; <label>:226:                                    ; preds = %211
  %227 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %228

; <label>:228:                                    ; preds = %226, %183
  br label %229

; <label>:229:                                    ; preds = %228
  %230 = load i32, i32* %5, align 4
  %231 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop26 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop26, <4 x i32>* %allocaVec8
  %232 = add nsw i32 %230, 1
  store i32 %232, i32* %5, align 4
  br label %130

; <label>:233:                                    ; preds = %130
  %234 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec8
  store i32 1, i32* %5, align 4
  br label %235

; <label>:235:                                    ; preds = %261, %233
  %236 = load i32, i32* %5, align 4
  %237 = icmp slt i32 %236, 25
  br i1 %237, label %238, label %262

; <label>:238:                                    ; preds = %235
  %239 = load i32, i32* %5, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 %239, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i32 0, i32 0))
  %240 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  call arm_aapcscc void @BF_ecb_encrypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i32 0, i32 0), i8* %240, %struct.bf_key_st* %7, i32 1)
  %241 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0
  %242 = load i32, i32* %5, align 4
  %243 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop27 = sub <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %244 = sub nsw i32 %242, 1
  %245 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i32 %244
  %246 = getelementptr inbounds [8 x i8], [8 x i8]* %245, i32 0, i32 0
  %247 = call arm_aapcscc i32 @memcmp(i8* %241, i8* %246, i32 8)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

; <label>:249:                                    ; preds = %238
  %250 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %251

; <label>:251:                                    ; preds = %249, %238
  br label %252

; <label>:252:                                    ; preds = %251
  %253 = load i32, i32* %5, align 4
  %254 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop28 = add <4 x i32> %254, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop28, <4 x i32>* %allocaVec8
  %255 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %255, i64 0
  %extractE29 = extractelement <4 x i32> %255, i64 1
  %extractE30 = extractelement <4 x i32> %255, i64 2
  %sum = add i32 %extractE, %extractE29
  %sum31 = add i32 %sum, %extractE30
  %256 = add nsw i32 %253, 1
  %Fmul = mul i32 %256, 3
  store i32 %256, i32* %Recovery
  %Fcmp = icmp ne i32 %sum31, %Fmul
  br i1 %Fcmp, label %257, label %261

; <label>:257:                                    ; preds = %252
  %remThree = sdiv i32 %sum31, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %258, label %259

; <label>:258:                                    ; preds = %257
  store i32 %256, i32* %Recovery, align 4
  br label %260

; <label>:259:                                    ; preds = %257
  store i32 %extractE, i32* %Recovery, align 4
  br label %260

; <label>:260:                                    ; preds = %259, %258
  br label %261

; <label>:261:                                    ; preds = %252, %260
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %5, align 4
  br label %235

; <label>:262:                                    ; preds = %235
  %263 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0))
  %264 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %264, i32* %CallInst
  %265 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %265, i32 0
  %insertCall32 = insertelement <4 x i32> %insertCall, i32 %265, i32 1
  %insertCall33 = insertelement <4 x i32> %insertCall32, i32 %265, i32 2
  %insertCall34 = insertelement <4 x i32> %insertCall33, i32 %265, i32 3
  store <4 x i32> %insertCall34, <4 x i32>* %CallInstVec, align 4
  %266 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop35 = add <4 x i32> %266, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop35, <4 x i32>* %allocaVec10
  %267 = add i32 %264, 1
  store i32 %267, i32* %10, align 4
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %268 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %268, i8 0, i32 40, i32 1, i1 false)
  %269 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %269, i8 0, i32 40, i32 1, i1 false)
  %270 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %271 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %272 = load i32, i32* %10, align 4
  %273 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cbc_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %271, i32 %272, %struct.bf_key_st* %7, i8* %273, i32 1)
  %274 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %275 = call arm_aapcscc i32 @memcmp(i8* %274, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i32 0, i32 0), i32 32)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %293

; <label>:277:                                    ; preds = %262
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  %278 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %279

; <label>:279:                                    ; preds = %288, %277
  %280 = load i32, i32* %4, align 4
  %281 = icmp slt i32 %280, 32
  br i1 %281, label %282, label %292

; <label>:282:                                    ; preds = %279
  %283 = load i32, i32* %4, align 4
  %284 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %286)
  br label %288

; <label>:288:                                    ; preds = %282
  %289 = load i32, i32* %4, align 4
  %290 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop36 = add <4 x i32> %290, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec7
  %291 = add nsw i32 %289, 1
  store i32 %291, i32* %4, align 4
  br label %279

; <label>:292:                                    ; preds = %279
  br label %293

; <label>:293:                                    ; preds = %292, %262
  %294 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %295 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %296 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %297 = load i32, i32* %10, align 4
  %298 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cbc_encrypt(i8* %295, i8* %296, i32 %297, %struct.bf_key_st* %7, i8* %298, i32 0)
  %299 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %300 = call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  store i32 %300, i32* %CallInst2
  %301 = load i32, i32* %CallInst2, align 4
  %insertCall37 = insertelement <4 x i32> undef, i32 %301, i32 0
  %insertCall38 = insertelement <4 x i32> %insertCall37, i32 %301, i32 1
  %insertCall39 = insertelement <4 x i32> %insertCall38, i32 %301, i32 2
  %insertCall40 = insertelement <4 x i32> %insertCall39, i32 %301, i32 3
  store <4 x i32> %insertCall40, <4 x i32>* %CallInstVec3, align 4
  %302 = load <4 x i32>, <4 x i32>* %CallInstVec3, align 4
  %Vop41 = add <4 x i32> %302, <i32 1, i32 1, i32 1, i32 1>
  %303 = add i32 %300, 1
  %304 = call arm_aapcscc i32 @memcmp(i8* %299, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

; <label>:306:                                    ; preds = %293
  %307 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %308

; <label>:308:                                    ; preds = %306, %293
  %309 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0))
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %310 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %310, i8 0, i32 40, i32 1, i1 false)
  %311 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %311, i8 0, i32 40, i32 1, i1 false)
  %312 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  %313 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %314 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %313, i32 13, %struct.bf_key_st* %7, i8* %314, i32* %5, i32 1)
  %315 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 13
  %316 = load i32, i32* %10, align 4
  %317 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop42 = sub <4 x i32> %317, <i32 13, i32 13, i32 13, i32 13>
  %318 = sub i32 %316, 13
  %319 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 13), i8* %315, i32 %318, %struct.bf_key_st* %7, i8* %319, i32* %5, i32 1)
  %320 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %321 = load i32, i32* %10, align 4
  %322 = call arm_aapcscc i32 @memcmp(i8* %320, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i32 0, i32 0), i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %341

; <label>:324:                                    ; preds = %308
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  %325 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %326

; <label>:326:                                    ; preds = %336, %324
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %340

; <label>:330:                                    ; preds = %326
  %331 = load i32, i32* %4, align 4
  %332 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %334)
  br label %336

; <label>:336:                                    ; preds = %330
  %337 = load i32, i32* %4, align 4
  %338 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop43 = add <4 x i32> %338, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec7
  %339 = add nsw i32 %337, 1
  store i32 %339, i32* %4, align 4
  br label %326

; <label>:340:                                    ; preds = %326
  br label %341

; <label>:341:                                    ; preds = %340, %308
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  %342 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %343 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %344 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %345 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* %343, i8* %344, i32 17, %struct.bf_key_st* %7, i8* %345, i32* %5, i32 0)
  %346 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 17
  %347 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 17
  %348 = load i32, i32* %10, align 4
  %349 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop44 = sub <4 x i32> %349, <i32 17, i32 17, i32 17, i32 17>
  %350 = sub i32 %348, 17
  %351 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_cfb64_encrypt(i8* %346, i8* %347, i32 %350, %struct.bf_key_st* %7, i8* %351, i32* %5, i32 0)
  %352 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %353 = load i32, i32* %10, align 4
  %354 = call arm_aapcscc i32 @memcmp(i8* %352, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

; <label>:356:                                    ; preds = %341
  %357 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %358

; <label>:358:                                    ; preds = %356, %341
  %359 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0))
  call arm_aapcscc void @BF_set_key(%struct.bf_key_st* %7, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %360 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %360, i8 0, i32 40, i32 1, i1 false)
  %361 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %361, i8 0, i32 40, i32 1, i1 false)
  %362 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %362, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  %363 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %364 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %363, i32 13, %struct.bf_key_st* %7, i8* %364, i32* %5)
  %365 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 13
  %366 = load i32, i32* %10, align 4
  %367 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop45 = sub <4 x i32> %367, <i32 13, i32 13, i32 13, i32 13>
  %368 = sub i32 %366, 13
  %369 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 13), i8* %365, i32 %368, %struct.bf_key_st* %7, i8* %369, i32* %5)
  %370 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %371 = load i32, i32* %10, align 4
  %372 = call arm_aapcscc i32 @memcmp(i8* %370, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i32 0, i32 0), i32 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %397

; <label>:374:                                    ; preds = %358
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  %375 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec7
  store i32 0, i32* %4, align 4
  br label %376

; <label>:376:                                    ; preds = %395, %374
  %377 = load i32, i32* %4, align 4
  %378 = load i32, i32* %10, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %396

; <label>:380:                                    ; preds = %376
  %381 = load i32, i32* %4, align 4
  %382 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %384)
  br label %386

; <label>:386:                                    ; preds = %380
  %387 = load i32, i32* %4, align 4
  %388 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop46 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop46, <4 x i32>* %allocaVec7
  %389 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE48 = extractelement <4 x i32> %389, i64 0
  %extractE49 = extractelement <4 x i32> %389, i64 1
  %extractE50 = extractelement <4 x i32> %389, i64 2
  %sum51 = add i32 %extractE48, %extractE49
  %sum52 = add i32 %sum51, %extractE50
  %390 = add nsw i32 %387, 1
  %Fmul47 = mul i32 %390, 3
  store i32 %390, i32* %Recovery1
  %Fcmp53 = icmp ne i32 %sum52, %Fmul47
  br i1 %Fcmp53, label %391, label %395

; <label>:391:                                    ; preds = %386
  %remThree55 = sdiv i32 %sum52, %extractE48
  %FcmpThree56 = icmp ne i32 %remThree55, 3
  br i1 %FcmpThree56, label %392, label %393

; <label>:392:                                    ; preds = %391
  store i32 %390, i32* %Recovery1, align 4
  br label %394

; <label>:393:                                    ; preds = %391
  store i32 %extractE48, i32* %Recovery1, align 4
  br label %394

; <label>:394:                                    ; preds = %393, %392
  br label %395

; <label>:395:                                    ; preds = %386, %394
  %ReplaceInst57 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst57, i32* %4, align 4
  br label %376

; <label>:396:                                    ; preds = %376
  br label %397

; <label>:397:                                    ; preds = %396, %358
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  %398 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %398, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i32 8, i32 1, i1 false)
  %399 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %400 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %401 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* %399, i8* %400, i32 17, %struct.bf_key_st* %7, i8* %401, i32* %5)
  %402 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 17
  %403 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 17
  %404 = load i32, i32* %10, align 4
  %405 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop54 = sub <4 x i32> %405, <i32 17, i32 17, i32 17, i32 17>
  %406 = sub i32 %404, 17
  %407 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call arm_aapcscc void @BF_ofb64_encrypt(i8* %402, i8* %403, i32 %406, %struct.bf_key_st* %7, i8* %407, i32* %5)
  %408 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i32 0, i32 0
  %409 = load i32, i32* %10, align 4
  %410 = call arm_aapcscc i32 @memcmp(i8* %408, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i32 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

; <label>:412:                                    ; preds = %397
  %413 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0))
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec9
  store i32 1, i32* %6, align 4
  br label %414

; <label>:414:                                    ; preds = %412, %397
  %415 = load i32, i32* %6, align 4
  ret i32 %415
}

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #3

declare arm_aapcscc i32 @memcmp(i8*, i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
