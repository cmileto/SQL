REPLACE INTO `smart_scripts` VALUES ('40419', '0', '0', '0', '0', '0', '100', '0', '38000', '38000', '38000', '38000', '11', '75417', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40419', '0', '1', '0', '0', '0', '100', '0', '15000', '15000', '15000', '15000', '11', '15284', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40417', '0', '0', '0', '0', '0', '100', '0', '27000', '27000', '27000', '27000', '11', '75413', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40417', '0', '1', '0', '0', '0', '100', '0', '15000', '15000', '15000', '15000', '11', '75412', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40421', '0', '0', '0', '0', '0', '100', '0', '32000', '32000', '32000', '32000', '11', '15621', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40423', '0', '0', '0', '0', '0', '100', '0', '27000', '27000', '27000', '27000', '11', '75414', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `smart_scripts` VALUES ('40423', '0', '1', '0', '0', '0', '100', '0', '17000', '17000', '17000', '17000', '11', '13737', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '');

UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry` IN (40419, 40417, 40421, 40423);