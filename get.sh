cd data

for i in 1111 1112 1113 1114 1115 1116 1117 1118 1119 1120 \
         1121 1122 1123 1124 1125 1126 1127 1128 1211 1212 \
         1213 1214 1215 1216 1217 1218 1219 1220 1221 1222 \
         1223 1224 1225 1226 1227 1228 1229 1230 1311 1312 \
         1313 1314 1315 1316 1317 1318 1319 1320 1321 1322 \
         1323 1324 1325 1326 1327 1411 1412 1413 1414 1415 \
         1416 1417 1418 1419 1420 1421 1422 1423 1424 1425 \
         1426 1427 1511 1512 1513 1514 1515 1516 1517 1518 \
         1519 1520 1521 1522 1523 1524 1525 1526 1527 1611 \
         1612 1613 1614 1615 1616 1617 1618 1619 1620 1621 \
         1622 1623 1624 1625 1626 1627 1711 1712 1713 1714 \
         1715 1716 1717 1718 1719 1720 1721 1722 1723 1724 \
         1725 1726 1727 1811 1812 1813 1814 1815 1816 1817 \
         1818 1819 1820 1821 1822 1823 1824 1825 1826 1827 \
         2111 2112 2113 2114 2115 2116 2117 2118 2119 2120 \
         2121 2122 2123 2124 2125 2126 2127 2128 2129 2130 \
         2131 2132 2133 2134 2135 2136 2137 2138 2139 2140 \
         2141 2142 2143 2144 2145 2146 2147 2148 2149 2150 \
         3111 3112 3113 3114 3115 3116 3117 3118 3119 3211 \
         3212 3213 3214 3215 3216 3217 3218 3219 3311 3312 \
         3313 3314 3315 3316 3317 3318 3319 3411 3412 3413 \
         3414 3415 3416 3417 3418 3419 3511 3512 3513 3514 \
         3515 3516 3517 3518 3611 3612 3613 3614 3615 3616 \
         3617 3618 4111 4112 4113 4114 4115 4116 4117 4118 \
         4119 4120 4121 4122 4123 4124 4125 4126 4211 4212 \
         4213 4214 4215 4216 4217 4218 4219 4220 4221 4222 \
         4223 4224 4225 4311 4312 4313 4314 4315 4316 4317 \
         4318 4319 4320 4321 4322 4323 4324 4325 4326 4411 \
         4412 4413 4414 4415 4416 4417 4418 4419 4420 4421 \
         4422 4423 4424 4425 4511 4512 4513 4514 4515 4516 \
         4517 4518 4519 4520 4521 4522 4523 4524 4525 5111 \
         5112 5113 5114 5115 5116 5117 5118 5119 5120 5121 \
         5122 5123 5124 5125 5211 5212 5213 5214 5215 5216 \
         5217 5218 5219 5220 5221 5222 5223 5224 5311 5312 \
         5313 5314 5315 5316 5317 5318 5319 5320 5321 5322 \
         5323 5324 5325 6111 6112 6113 6114 6115 6116 6117 \
         6118 6119 6120 6121 6122 6211 6212 6213 6214 6215 \
         6216 6217 6218 6219 6220 6221 6222 6311 6312 6313 \
         6314 6315 6316 6317 6318 6319 6320 6411 6412 6413 \
         6414 6415 6416 7101 7102 7103 7104 7105 7106 7107 \
         7108 7109 7110 7111 7201 7202 7203 7204 7206 7207 \
         7208 7209 7210 7211 7212 7301 7302 7303 7304 7305 \
         7306 7307 7308 7309 7310; do
  wget http://neerc.ifmo.ru/school/spb/regional-2015/$i.zip
  unzip $i.zip
  rm $i.zip
done