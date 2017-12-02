REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (200099, 0, 0, 0, 0, 0, 22959, 0, 22959, 0, 'SHMOT A6', 'PvP Sets', '', 0, 83, 83, 0, 35, 35, 4224, 1, 2, 50, 150, 0, 1000, 1000, 2000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 57, 75, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4493, 0, 0, '');

/*
new
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (200099, 0, 0, 0, 0, 0, 22959, 0, 22959, 0, 'A5 Set', 'PvP Sets', '', 0, 83, 83, 0, 35, 35, 4224, 1, 2, 50, 150, 0, 1000, 1000, 2000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 57, 75, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '');
*/

DELETE FROM `npc_vendor` WHERE (`entry`=200099);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(200099, 40787, 0, 0, 0),
(200099, 40788, 0, 0, 0),
(200099, 40789, 0, 0, 0),
(200099, 40807, 0, 0, 0),
(200099, 40808, 0, 0, 0),
(200099, 40809, 0, 0, 0),
(200099, 40826, 0, 0, 0),
(200099, 40827, 0, 0, 0),
(200099, 40828, 0, 0, 0),
(200099, 40847, 0, 0, 0),
(200099, 40848, 0, 0, 0),
(200099, 40849, 0, 0, 0),
(200099, 40866, 0, 0, 0),
(200099, 40868, 0, 0, 0),
(200099, 40869, 0, 0, 0),
(200099, 40907, 0, 0, 0),
(200099, 40927, 0, 0, 0),
(200099, 40933, 0, 0, 0),
(200099, 40939, 0, 0, 0),
(200099, 40963, 0, 0, 0),
(200099, 40992, 0, 0, 0),
(200099, 40993, 0, 0, 0),
(200099, 41001, 0, 0, 0),
(200099, 41007, 0, 0, 0),
(200099, 41013, 0, 0, 0),
(200099, 41019, 0, 0, 0),
(200099, 41027, 0, 0, 0),
(200099, 41033, 0, 0, 0),
(200099, 41038, 0, 0, 0),
(200099, 41044, 0, 0, 0),
(200099, 41081, 0, 0, 0),
(200099, 41087, 0, 0, 0),
(200099, 41137, 0, 0, 0),
(200099, 41143, 0, 0, 0),
(200099, 41151, 0, 0, 0),
(200099, 41157, 0, 0, 0),
(200099, 41199, 0, 0, 0),
(200099, 41205, 0, 0, 0),
(200099, 41211, 0, 0, 0),
(200099, 41217, 0, 0, 0),
(200099, 41275, 0, 0, 0),
(200099, 41281, 0, 0, 0),
(200099, 41287, 0, 0, 0),
(200099, 41293, 0, 0, 0),
(200099, 41298, 0, 0, 0),
(200099, 41304, 0, 0, 0),
(200099, 41310, 0, 0, 0),
(200099, 41316, 0, 0, 0),
(200099, 41321, 0, 0, 0),
(200099, 41327, 0, 0, 0),
(200099, 41650, 0, 0, 0),
(200099, 41655, 0, 0, 0),
(200099, 41661, 0, 0, 0),
(200099, 41667, 0, 0, 0),
(200099, 41672, 0, 0, 0),
(200099, 41678, 0, 0, 0),
(200099, 41683, 0, 0, 0),
(200099, 41715, 0, 0, 0),
(200099, 41767, 0, 0, 0),
(200099, 41773, 0, 0, 0),
(200099, 41854, 0, 0, 0),
(200099, 41859, 0, 0, 0),
(200099, 41864, 0, 0, 0),
(200099, 41869, 0, 0, 0),
(200099, 41874, 0, 0, 0),
(200099, 41915, 0, 0, 0),
(200099, 41921, 0, 0, 0),
(200099, 41927, 0, 0, 0),
(200099, 41934, 0, 0, 0),
(200099, 41940, 0, 0, 0),
(200099, 41946, 0, 0, 0),
(200099, 41953, 0, 0, 0),
(200099, 41959, 0, 0, 0),
(200099, 41965, 0, 0, 0),
(200099, 41971, 0, 0, 0),
(200099, 41993, 0, 0, 0),
(200099, 41998, 0, 0, 0),
(200099, 42005, 0, 0, 0),
(200099, 42011, 0, 0, 0),
(200099, 42017, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=200099;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(9338225, 200099, 0, 1, 1, 0, 0, -8933.07, 536.303, 94.3787, 0.777401, 300, 0, 0, 331056, 0, 0),
(9338222, 200099, 1, 1, 1, 0, 0, 1428.2, -4425.06, 25.4633, 0.0729456, 300, 0, 0, 331056, 0, 0);