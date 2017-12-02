/*
Créé par la Team Nausica
Réadapter par The-Angelus
de la Team ParamYsticK
http:\\paramystick.online.fr
© 2008 Groupe-ParamYsticK
*/

/*
REQUETTE COMPATIBLE
Serveur Mangos
Core 6702
*/

/*
Définition: Eglise Nausica v.6702
Requète complette
*/

/*
#######################################
#                                    GAME_TELE
#######################################
*/

INSERT INTO `game_tele` 
(`id`,`position_x`,`position_y`,`position_z`,`orientation`,`map`,`name`) 
VALUES 

(2201, 1594.68, -5557.7, 111.171, 1.19122, 0, "eglise");

/*
#######################################
#                                    CREATURE
#######################################
*/

/* On efface les créatures deja existante */

DELETE FROM `creature` 
WHERE  

(`guid`='15515') OR
(`guid`='15534') OR
(`guid`='15573') OR
(`guid`='15550') OR
(`guid`='15505') OR
(`guid`='15511') OR
(`guid`='15664') OR
(`guid`='15445') OR
(`guid`='15427') OR
(`guid`='86082') OR
(`guid`='86083') OR
(`guid`='15419');

INSERT INTO `creature` 
(`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
VALUES  
 
(15550, 9448, 0, 1, 0, 0, 1635.615, -5391.53, 74.01, 0.429, 900, 0, 0, 6500, 2163, 0, 0),
(15664, 9449, 0, 1, 0, 0, 1630.999, -5385.86, 73.99, 0.566, 900, 4, 0, 6100, 2041, 0, 0),
(15445, 11898, 0, 1, 0, 0, 1611.8, -5410.257, 75.71, 0.997, 900, 0, 0, 7400, 9736, 0, 0),
(15427, 10828, 0, 1, 0, 0, 1606.224, -5402.852, 75.71, 5.936, 900, 0, 0, 27000, 35250, 0, 0),
(86082, 9451, 0, 1, 0, 0, 1621.849, -5403.227, 75.71, 3.580, 900, 0, 0, 5400, 5013, 0, 0),
(86083, 9451, 0, 1, 0, 0, 1615.727, -5395.161, 75.71, 3.954, 900, 0, 0, 5400, 5013, 0, 0),
(15419, 12339, 0, 1, 0, 0, 1603.507, -5410.864, 76.4, 0.791, 900, 0, 0, 27000, 35250, 0, 0);

/*
#######################################
#                           GAMEOBJECT_TEMPLATE
#######################################
*/

INSERT INTO `gameobject_template` 
(`entry`,`type`,`displayId`,`name`,`castBarCaption`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`) 
VALUES 

(301000, 5, 4652, "", "", 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301001, 5, 7162, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301002, 7, 6979, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301003, 0, 6702, "", "", 0, 34, 1, 1700, 1700, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301004, 5, 194, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301005, 5, 227, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301006, 5, 397, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301007, 5, 475, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301008, 5, 632, "", "", 0, 0, 1.3298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301009, 5, 1213, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301010, 5, 1267, "", "", 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301011, 7, 92, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301012, 5, 4095, "", "", 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301013, 5, 4652, "", "", 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301014, 5, 3271, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301015, 5, 5113, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301016, 5, 5912, "", "", 0, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301017, 5, 5913, "", "", 0, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301018, 5, 4094, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301019, 5, 6671, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301020, 5, 474, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301021, 5, 201, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301022, 5, 7160, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301023, 5, 7162, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
(301024, 0, 7183, "", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "");

/*
#######################################
#                                      GAMEOBJECT
#######################################
*/

/* On efface les Objets deja présent */

DELETE FROM `gameobject` 
WHERE 

(`guid`='18844') OR
(`guid`='18845') OR
(`guid`='18846') OR
(`guid`='18847') OR
(`guid`='18848') OR
(`guid`='18849') OR
(`guid`='18850') OR
(`guid`='18851') OR
(`guid`='18852') OR
(`guid`='18853') OR
(`guid`='18854') OR
(`guid`='18855') OR
(`guid`='18856') OR
(`guid`='18857') OR
(`guid`='18858') OR
(`guid`='18859');

/* On rajoute les elment de l'eglise */

INSERT INTO `gameobject` 
(`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 

(112000, 301013, 0, 1, 1657.42, -5503, 100.74, 4.414, 0, 0, 0, 0, 900, 0, 1),
(112001, 301000, 0, 1, 1537.69, -5572, 100.908, 4.481, 0, 0, 0, 0, 900, 0, 1),
(112002, 301011, 0, 1, 1587.43, -5579.56, 111.172, 4.22624, 0, 0, 0.856513, -0.516126, 25, 0, 1),
(112003, 301011, 0, 1, 1586.48, -5584.11, 111.172, 4.23487, 0, 0, 0.854276, -0.519819, 25, 0, 1),
(112004, 301011, 0, 1, 1586.43, -5581.56, 111.171, 4.22231, 0, 0, 0.857525, -0.514443, 25, 0, 1),
(112005, 301011, 0, 1, 1585.39, -5583.5, 111.171, 4.22702, 0, 0, 0.856311, -0.516461, 25, 0, 1),
(112006, 301011, 0, 1, 1588.47, -5580.19, 111.171, 4.2498, 0, 0, 0.850373, -0.52618, 25, 0, 1),
(112007, 301011, 0, 1, 1585.32, -5581, 111.171, 4.21838, 0, 0, 0.858533, -0.512758, 25, 0, 1),
(112008, 301013, 0, 1, 1647.92, -5506, 100.729, 4.414, 0, 0, 0, 0, 900, 0, 1),
(112009, 301003, 0, 1, 1608.53, -5531.65, 111.171, 1.11475, 0, 0, 0.528962, 0.848646, 25, 0, 1),
(112010, 301022, 0, 1, 1601.31, -5531.97, 111.171, 1.05583, 0, 0, 0.503732, 0.86386, 25, 0, 1),
(112011, 301022, 0, 1, 1611.75, -5537.3, 111.171, 1.12101, 0, 0, 0.531616, 0.846986, 25, 0, 1),
(112012, 301008, 0, 1, 1604.76, -5580.98, 111.17, 5.8141, 0, 0, 0.2324, -0.97262, 25, 0, 1),
(112013, 301008, 0, 1, 1596.94, -5595.77, 111.169, 5.8141, 0, 0, 0.2324, -0.97262, 25, 0, 1),
(112014, 301008, 0, 1, 1589.41, -5610.57, 111.17, 5.79053, 0, 0, 0.243843, -0.969815, 25, 0, 1),
(112015, 301008, 0, 1, 1559.06, -5585.49, 111.174, 2.6255, 0, 0, 0.96689, 0.255193, 25, 0, 1),
(112016, 301008, 0, 1, 1562.7, -5577.95, 111.171, 2.62157, 0, 0, 0.966387, 0.257091, 25, 0, 1),
(112017, 301019, 0, 1, 1604.75, -5547.57, 111.171, 2.6777, 0, 0, 0.97322, 0.229874, 25, 0, 1),
(112018, 301019, 0, 1, 1603.41, -5550.13, 111.171, 2.6777, 0, 0, 0.97322, 0.229874, 25, 0, 1),
(112019, 301018, 0, 1, 1605.8, -5526.31, 111.169, 4.22992, 0, 0, 0.855562, -0.517701, 25, 0, 1),
(112020, 301019, 0, 1, 1604.05, -5548.88, 111.171, 2.6777, 0, 0, 0.97322, 0.229874, 25, 0, 1),
(112021, 301008, 0, 1, 1608.71, -5573.57, 111.17, 5.8141, 0, 0, 0.232401, -0.97262, 25, 0, 1),
(112022, 301008, 0, 1, 1570.76, -5563.28, 111.172, 2.6255, 0, 0, 0.96689, 0.255193, 25, 0, 1),
(112023, 301008, 0, 1, 1574.67, -5555.93, 111.172, 2.62943, 0, 0, 0.967389, 0.253294, 25, 0, 1),
(112024, 301008, 0, 1, 1601.01, -5588.44, 111.169, 5.81017, 0, 0, 0.23431, -0.972162, 25, 0, 1),
(112025, 301011, 0, 1, 1584.25, -5583, 111.171, 4.22702, 0, 0, 0.856311, -0.516461, 25, 0, 1),
(112026, 301011, 0, 1, 1587.45, -5582.19, 111.171, 4.23802, 0, 0, 0.853457, -0.521163, 25, 0, 1),
(112027, 301011, 0, 1, 1581.12, -5594.24, 111.171, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112028, 301011, 0, 1, 1579.99, -5593.63, 111.172, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112029, 301011, 0, 1, 1578.96, -5593.08, 111.172, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112030, 301011, 0, 1, 1574.96, -5590.94, 111.172, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112031, 301011, 0, 1, 1573.82, -5590.33, 111.171, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112032, 301011, 0, 1, 1572.7, -5589.73, 111.171, 4.22073, 0, 0, 0.85793, -0.513767, 25, 0, 1),
(112033, 301011, 0, 1, 1583.42, -5589.82, 111.172, 4.25842, 0, 0, 0.848096, -0.529843, 25, 0, 1),
(112034, 301011, 0, 1, 1584.42, -5587.97, 111.172, 4.22309, 0, 0, 0.857324, -0.514777, 25, 0, 1),
(112035, 301011, 0, 1, 1583.32, -5587.38, 111.171, 4.23879, 0, 0, 0.853255, -0.521494, 25, 0, 1),
(112036, 301011, 0, 1, 1582.33, -5589.34, 111.172, 4.21523, 0, 0, 0.85934, -0.511404, 25, 0, 1),
(112037, 301011, 0, 1, 1580.24, -5590.72, 111.171, 4.20345, 0, 0, 0.862338, -0.506333, 25, 0, 1),
(112038, 301011, 0, 1, 1581.22, -5588.78, 111.171, 4.21523, 0, 0, 0.85934, -0.511404, 25, 0, 1),
(112039, 301011, 0, 1, 1582.42, -5591.89, 111.172, 4.2113, 0, 0, 0.860342, -0.509717, 25, 0, 1),
(112040, 301011, 0, 1, 1581.24, -5591.3, 111.172, 4.2113, 0, 0, 0.860343, -0.509716, 25, 0, 1),
(112041, 301011, 0, 1, 1584.34, -5585.43, 111.172, 4.21524, 0, 0, 0.859338, -0.511408, 25, 0, 1),
(112042, 301011, 0, 1, 1583.22, -5584.91, 111.171, 4.22309, 0, 0, 0.857323, -0.514778, 25, 0, 1),
(112043, 301011, 0, 1, 1585.46, -5586.02, 111.171, 4.23095, 0, 0, 0.855295, -0.518141, 25, 0, 1),
(112044, 301011, 0, 1, 1582.23, -5586.86, 111.172, 4.23094, 0, 0, 0.855296, -0.51814, 25, 0, 1),
(112045, 301011, 0, 1, 1586.31, -5579.14, 111.172, 4.21446, 0, 0, 0.859538, -0.511072, 25, 0, 1),
(112046, 301011, 0, 1, 1576.25, -5588.51, 111.172, 4.22859, 0, 0, 0.855904, -0.517135, 25, 0, 1),
(112047, 301011, 0, 1, 1575.09, -5587.98, 111.171, 4.20503, 0, 0, 0.861936, -0.507016, 25, 0, 1),
(112048, 301011, 0, 1, 1573.93, -5587.44, 111.171, 4.20111, 0, 0, 0.86293, -0.505323, 25, 0, 1),
(112049, 301011, 0, 1, 1577.18, -5586.67, 111.171, 4.23645, 0, 0, 0.853865, -0.520495, 25, 0, 1),
(112050, 301011, 0, 1, 1576.11, -5586.12, 111.171, 4.21289, 0, 0, 0.859937, -0.510401, 25, 0, 1),
(112051, 301011, 0, 1, 1574.97, -5585.48, 111.172, 4.20504, 0, 0, 0.861935, -0.507019, 25, 0, 1),
(112052, 301011, 0, 1, 1578.19, -5584.66, 111.172, 4.22075, 0, 0, 0.857926, -0.513773, 25, 0, 1),
(112053, 301011, 0, 1, 1577.17, -5584.18, 111.171, 4.2286, 0, 0, 0.855902, -0.517138, 25, 0, 1),
(112054, 301011, 0, 1, 1575.97, -5583.58, 111.172, 4.19326, 0, 0, 0.864906, -0.501934, 25, 0, 1),
(112055, 301011, 0, 1, 1579.23, -5582.67, 111.171, 4.25609, 0, 0, 0.848714, -0.528852, 25, 0, 1),
(112056, 301011, 0, 1, 1578.18, -5582.24, 111.172, 4.23253, 0, 0, 0.854885, -0.518817, 25, 0, 1),
(112057, 301011, 0, 1, 1576.99, -5581.66, 111.172, 4.21289, 0, 0, 0.859937, -0.5104, 25, 0, 1),
(112058, 301011, 0, 1, 1580.14, -5580.89, 111.171, 4.25294, 0, 0, 0.849544, -0.527517, 25, 0, 1),
(112059, 301011, 0, 1, 1579.18, -5580.29, 111.171, 4.22153, 0, 0, 0.857725, -0.514108, 25, 0, 1),
(112060, 301011, 0, 1, 1578.13, -5579.71, 111.171, 4.22153, 0, 0, 0.857724, -0.51411, 25, 0, 1),
(112061, 301011, 0, 1, 1581.21, -5578.88, 111.171, 4.23881, 0, 0, 0.853251, -0.5215, 25, 0, 1),
(112062, 301011, 0, 1, 1580.21, -5578.29, 111.172, 4.23488, 0, 0, 0.854273, -0.519824, 25, 0, 1),
(112063, 301011, 0, 1, 1579.18, -5577.77, 111.172, 4.21917, 0, 0, 0.85833, -0.513098, 25, 0, 1),
(112064, 301011, 0, 1, 1582.2, -5576.96, 111.172, 4.23096, 0, 0, 0.855291, -0.518147, 25, 0, 1),
(112065, 301011, 0, 1, 1581.2, -5576.43, 111.172, 4.22546, 0, 0, 0.856713, -0.515793, 25, 0, 1),
(112066, 301011, 0, 1, 1580.11, -5575.88, 111.171, 4.22153, 0, 0, 0.857724, -0.51411, 25, 0, 1),
(112067, 301014, 0, 1, 1568.24, -5609.12, 115.397, 1.07206, 0, 0, 0.510726, 0.859743, 25, 0, 1),
(112068, 301014, 0, 1, 1568.24, -5609.12, 115.397, 4.19402, 0, 0, 0.864715, -0.502263, 25, 0, 1),
(112069, 301008, 0, 1, 1566.83, -5570.7, 111.171, 2.60979, 0, 0, 0.964856, 0.262779, 25, 0, 1),
(112070, 301008, 0, 1, 1554.8, -5592.62, 111.172, 2.63728, 0, 0, 0.968377, 0.249493, 25, 0, 1),
(112071, 301008, 0, 1, 1593.21, -5603.11, 111.17, 5.77482, 0, 0, 0.251452, -0.96787, 25, 0, 1),
(112072, 301017, 0, 1, 1590.86, -5578.47, 111.171, 1.17788, 0, 0, 0.55548, 0.83153, 25, 0, 1),
(112073, 301016, 0, 1, 1580.18, -5572.94, 111.171, 4.2095, 0, 0, 0.860802, -0.50894, 25, 0, 1),
(112074, 301021, 0, 1, 1605.47, -5576.41, 111.17, 5.80778, 0, 0, 0.235468, -0.971882, 25, 0, 1),
(112075, 301007, 0, 1, 1601.52, -5583.97, 111.17, 5.83527, 0, 0, 0.222089, -0.975026, 25, 0, 1),
(112076, 301021, 0, 1, 1597.86, -5591.29, 111.17, 5.75281, 0, 0, 0.26209, -0.965043, 25, 0, 1),
(112077, 301007, 0, 1, 1594.02, -5598.78, 111.17, 5.78816, 0, 0, 0.244995, -0.969524, 25, 0, 1),
(112078, 301021, 0, 1, 1589.79, -5606.02, 111.17, 5.77638, 0, 0, 0.250701, -0.968064, 25, 0, 1),
(112079, 301021, 0, 1, 1557.68, -5589.52, 111.174, 2.63871, 0, 0, 0.968555, 0.2488, 25, 0, 1),
(112080, 301007, 0, 1, 1561.84, -5582.18, 111.173, 2.63871, 0, 0, 0.968555, 0.2488, 25, 0, 1),
(112081, 301021, 0, 1, 1565.49, -5574.61, 111.171, 2.65442, 0, 0, 0.970479, 0.241186, 25, 0, 1),
(112082, 301021, 0, 1, 1565.49, -5574.61, 111.171, 2.65442, 0, 0, 0.970479, 0.241186, 25, 0, 1),
(112083, 301007, 0, 1, 1569.48, -5567.28, 111.172, 2.65834, 0, 0, 0.970951, 0.23928, 25, 0, 1),
(112084, 301021, 0, 1, 1573.42, -5559.85, 111.171, 2.61201, 0, 0, 0.965147, 0.26171, 25, 0, 1),
(112085, 301020, 0, 1, 1575.23, -5606.42, 111.172, 4.22365, 0, 0, 0.85718, -0.515016, 25, 0, 1),
(112086, 301020, 0, 1, 1566.18, -5601.88, 111.172, 4.22286, 0, 0, 0.857383, -0.514679, 25, 0, 1),
(112087, 301012, 0, 1, 1591.02, -5560.16, 111.172, 1.10483, 0, 0, 0.524745, 0.851259, 25, 0, 1),
(112088, 301012, 0, 1, 1595.15, -5562.02, 111.172, 1.09305, 0, 0, 0.519722, 0.854336, 25, 0, 1),
(112089, 301015, 0, 1, 1591.94, -5563.42, 111.171, 4.22286, 0, 0, 0.857382, -0.514681, 25, 0, 1),
(112090, 301015, 0, 1, 1590.85, -5565.42, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112091, 301015, 0, 1, 1589.82, -5567.38, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112092, 301015, 0, 1, 1588.74, -5569.45, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112093, 301015, 0, 1, 1587.82, -5571.21, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112094, 301015, 0, 1, 1586.79, -5573.18, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112095, 301015, 0, 1, 1585.72, -5575.23, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112096, 301015, 0, 1, 1584.69, -5577.2, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112097, 301015, 0, 1, 1583.5, -5579.47, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112098, 301015, 0, 1, 1582.26, -5581.84, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112099, 301015, 0, 1, 1581.29, -5583.71, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112100, 301015, 0, 1, 1580.37, -5585.46, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112101, 301015, 0, 1, 1579.4, -5587.32, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112102, 301015, 0, 1, 1578.43, -5589.18, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112103, 301015, 0, 1, 1577.4, -5591.15, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112104, 301015, 0, 1, 1576.48, -5592.91, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112105, 301015, 0, 1, 1575.5, -5594.77, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112106, 301015, 0, 1, 1574.53, -5596.62, 111.171, 4.23071, 0, 0, 0.855355, -0.518043, 25, 0, 1),
(112107, 301006, 0, 1, 1584.89, -5579.35, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112108, 301006, 0, 1, 1583.84, -5581.31, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112109, 301006, 0, 1, 1582.77, -5583.31, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112110, 301006, 0, 1, 1581.78, -5585.17, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112111, 301006, 0, 1, 1580.77, -5587.07, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112112, 301006, 0, 1, 1579.68, -5589.1, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112113, 301006, 0, 1, 1578.64, -5591.05, 111.172, 4.22177, 0, 0, 0.857662, -0.514214, 25, 0, 1),
(112114, 301006, 0, 1, 1576.71, -5589.87, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112115, 301006, 0, 1, 1577.76, -5587.92, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112116, 301006, 0, 1, 1578.8, -5586, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112117, 301006, 0, 1, 1579.82, -5584.1, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112118, 301006, 0, 1, 1580.87, -5582.16, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112119, 301006, 0, 1, 1581.76, -5580.5, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112120, 301006, 0, 1, 1582.85, -5578.49, 111.172, 1.07625, 0, 0, 0.512529, 0.85867, 25, 0, 1),
(112121, 301022, 0, 1, 1613.43, -5538.12, 111.171, 1.12101, 0, 0, 0.531616, 0.846986, 25, 0, 1),
(112122, 301022, 0, 1, 1614.92, -5538.81, 111.171, 1.06761, 0, 0, 0.508811, 0.860878, 25, 0, 1),
(112123, 301022, 0, 1, 1599.58, -5530.99, 111.171, 1.05583, 0, 0, 0.503732, 0.86386, 25, 0, 1),
(112124, 301022, 0, 1, 1598.18, -5530.19, 111.171, 1.05583, 0, 0, 0.503732, 0.86386, 25, 0, 1),
(112125, 301019, 0, 1, 1605.36, -5546.38, 111.171, 2.6777, 0, 0, 0.97322, 0.229874, 25, 0, 1),
(112126, 301019, 0, 1, 1597.88, -5542.22, 111.172, 5.82715, 0, 0, 0.226047, -0.974116, 25, 0, 1),
(112127, 301019, 0, 1, 1597.21, -5543.57, 111.172, 5.82322, 0, 0, 0.227959, -0.973671, 25, 0, 1),
(112128, 301019, 0, 1, 1596.48, -5545.03, 111.172, 5.82322, 0, 0, 0.227959, -0.973671, 25, 0, 1),
(112129, 301019, 0, 1, 1595.9, -5546.18, 111.172, 5.82322, 0, 0, 0.227959, -0.973671, 25, 0, 1),
(112130, 301002, 0, 1, 1588.32, -5553.69, 111.172, 1.06948, 0, 0, 0.509619, 0.8604, 25, 0, 1),
(112131, 301002, 0, 1, 1601.9, -5560.86, 111.172, 1.08127, 0, 0, 0.51468, 0.857382, 25, 0, 1),
(112132, 301012, 0, 1, 1578.09, -5601.69, 111.671, 3.84196, 0, 0, 0.939311, -0.343068, 25, 0, 1),
(112133, 301019, 0, 1, 1597.04, -5563.05, 111.604, 1.11424, 0, 0, 0.528746, 0.84878, 25, 0, 1),
(112134, 301019, 0, 1, 1589.51, -5559.12, 111.622, 1.11032, 0, 0, 0.527078, 0.849817, 25, 0, 1),
(112135, 301019, 0, 1, 1582.3, -5564.53, 111.627, 2.6929, 0, 0, 0.974939, 0.222471, 25, 0, 1),
(112136, 301019, 0, 1, 1578.46, -5571.93, 111.626, 2.73452, 0, 0, 0.979358, 0.202133, 25, 0, 1),
(112137, 301019, 0, 1, 1574.63, -5579.38, 111.622, 2.59708, 0, 0, 0.963166, 0.268907, 25, 0, 1),
(112138, 301019, 0, 1, 1570.82, -5586.76, 111.621, 2.75023, 0, 0, 0.980915, 0.194435, 25, 0, 1),
(112139, 301019, 0, 1, 1566.84, -5594.24, 111.627, 2.64813, 0, 0, 0.969716, 0.244237, 25, 0, 1),
(112140, 301019, 0, 1, 1581.33, -5601.63, 111.61, 5.69547, 0, 0, 0.289644, -0.957134, 25, 0, 1),
(112141, 301019, 0, 1, 1585.16, -5594.27, 111.612, 5.86826, 0, 0, 0.205977, -0.978557, 25, 0, 1),
(112142, 301019, 0, 1, 1588.95, -5586.93, 111.607, 5.95466, 0, 0, 0.163526, -0.986539, 25, 0, 1),
(112143, 301019, 0, 1, 1592.83, -5579.46, 111.607, 5.88005, 0, 0, 0.200204, -0.979754, 25, 0, 1),
(112144, 301019, 0, 1, 1596.75, -5571.92, 111.606, 5.82508, 0, 0, 0.227056, -0.973882, 25, 0, 1),
(112145, 301012, 0, 1, 1576.31, -5603.19, 112.499, 3.84196, 0, 0, 0.939311, -0.343068, 25, 0, 1),
(112146, 301012, 0, 1, 1573.87, -5605.38, 113.681, 3.86552, 0, 0, 0.935204, -0.35411, 25, 0, 1),
(112147, 301012, 0, 1, 1568.69, -5596.93, 111.715, 4.57238, 0, 0, 0.754837, -0.655913, 25, 0, 1),
(112148, 301012, 0, 1, 1568.35, -5599.23, 112.563, 4.56452, 0, 0, 0.757406, -0.652944, 25, 0, 1),
(112149, 301012, 0, 1, 1567.95, -5601.94, 113.559, 4.56452, 0, 0, 0.757406, -0.652944, 25, 0, 1),
(112150, 301024, 0, 1, 1586.44, -5585.53, 126.165, 1.1284, 0, 0, 0.534742, 0.845016, 25, 0, 1),
(112151, 301024, 0, 1, 1587.34, -5580.05, 125.975, 1.93894, 0, 0, 0.824585, 0.565739, 25, 0, 1),
(112152, 301024, 0, 1, 1584.56, -5576.1, 126.414, 4.29828, 0, 0, 0.83737, -0.546637, 25, 0, 1),
(112153, 301024, 0, 1, 1579.17, -5576.26, 126.833, 5.7866, 0, 0, 0.24575, -0.969333, 25, 0, 1),
(112154, 301024, 0, 1, 1576.39, -5580.28, 127.302, 5.75126, 0, 0, 0.26284, -0.964839, 25, 0, 1),
(112155, 301004, 0, 1, 1570.31, -5609.88, 114.185, 1.05536, 0, 0, 0.503531, 0.863977, 25, 0, 1),
(112156, 301001, 0, 1, 1609.3, -5533.52, 111.171, 1.04199, 0, 0, 0.497745, 0.867323, 25, 0, 1),
(112157, 301004, 0, 1, 1565.98, -5607.87, 114.184, 1.10641, 0, 0, 0.525415, 0.850846, 25, 0, 1),
(112158, 301010, 0, 1, 1581.75, -5582.25, 127.472, 4.23386, 0, 0, 0.854538, -0.519389, 25, 0, 1),
(112159, 301018, 0, 1, 1614.28, -5530.12, 111.167, 4.1985, 0, 0, 0.863587, -0.5042, 25, 0, 1),
(112160, 301023, 0, 1, 1606.21, -5531.71, 111.171, 1.04199, 0, 0, 0.497745, 0.867323, 25, 0, 1),
(112161, 301014, 0, 1, 1577.98, -5596.92, 111.171, 1.06948, 0, 0, 0.509618, 0.860401, 25, 0, 1),
(112162, 301014, 0, 1, 1572.76, -5593.62, 111.172, 4.21108, 0, 0, 0.8604, -0.509619, 25, 0, 1),
(112163, 301014, 0, 1, 1584.59, -5570.13, 111.172, 4.22285, 0, 0, 0.857385, -0.514675, 25, 0, 1),
(112164, 301014, 0, 1, 1588.89, -5562.05, 111.172, 4.22285, 0, 0, 0.857385, -0.514675, 25, 0, 1),
(112165, 301014, 0, 1, 1590.06, -5574.4, 111.172, 1.02235, 0, 0, 0.489204, 0.872169, 25, 0, 1),
(112166, 301014, 0, 1, 1594.68, -5565.37, 111.172, 1.07733, 0, 0, 0.512991, 0.858394, 25, 0, 1),
(112167, 301019, 0, 1, 1622.3, -5518.74, 107.491, 5.58472, 0, 0, 0.342179, -0.939635, 25, 0, 1),
(112168, 301019, 0, 1, 1621.51, -5520, 108.229, 5.57293, 0, 0, 0.347708, -0.937603, 25, 0, 1),
(112169, 301019, 0, 1, 1620.96, -5521.75, 108.961, 5.57293, 0, 0, 0.347708, -0.937603, 25, 0, 1),
(112170, 301019, 0, 1, 1620.18, -5523.48, 109.694, 5.68289, 0, 0, 0.295663, -0.955292, 25, 0, 1),
(112171, 301019, 0, 1, 1610.86, -5512.81, 107.471, 2.86724, 0, 0, 0.990606, 0.136746, 25, 0, 1),
(112172, 301019, 0, 1, 1609.84, -5514.35, 108.224, 2.81226, 0, 0, 0.986473, 0.163921, 25, 0, 1),
(112173, 301019, 0, 1, 1609.04, -5515.74, 108.946, 2.76514, 0, 0, 0.982338, 0.187117, 25, 0, 1),
(112174, 301019, 0, 1, 1608.2, -5517.16, 109.682, 2.77692, 0, 0, 0.983423, 0.181327, 25, 0, 1),
(112175, 301009, 0, 1, 1604.57, -5542.58, 111.172, 4.24141, 0, 0, 0.852572, -0.52261, 25, 0, 1),
(112176, 301009, 0, 1, 1601.26, -5540.86, 111.172, 4.22963, 0, 0, 0.855635, -0.517579, 25, 0, 1),
(112177, 301009, 0, 1, 1602.73, -5541.62, 111.172, 4.23749, 0, 0, 0.853596, -0.520936, 25, 0, 1),
(112178, 301009, 0, 1, 1600, -5551.45, 111.171, 1.00163, 0, 0, 0.480141, 0.877191, 25, 0, 1),
(112179, 301009, 0, 1, 1596.77, -5549.77, 111.171, 1.06446, 0, 0, 0.507457, 0.861677, 25, 0, 1),
(112180, 301009, 0, 1, 1598.34, -5550.58, 111.171, 1.06839, 0, 0, 0.509148, 0.860679, 25, 0, 1),
(112181, 301005, 0, 1, 1604.65, -5410.04, 76.4, 0.703, 0, 0, 0.509148, 0.860679, 25, 0, 1);

/*
#######################################
MERCI DE NE PAS MODIFIER LE COPYRIGHT EN DEBUT DE REQUETTE - © 2008 Groupe-ParamYsticK -  */