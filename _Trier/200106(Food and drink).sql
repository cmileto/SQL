REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (200106, 0, 0, 0, 0, 0, 22959, 0, 22959, 0, 'Food and drink', '80lvl', '', 0, 80, 80, 0, 35, 35, 4224, 1, 1, 50, 150, 0, 1000, 1, 2000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4493, 0, 0, '');

DELETE FROM `npc_vendor` WHERE (`entry`=200106);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(200106, 21215, 0, 0, 0),
(200106, 33444, 0, 0, 0),
(200106, 33445, 0, 0, 0),
(200106, 34125, 0, 0, 0),
(200106, 34747, 0, 0, 0),
(200106, 34748, 0, 0, 0),
(200106, 34749, 0, 0, 0),
(200106, 34750, 0, 0, 0),
(200106, 34751, 0, 0, 0),
(200106, 34752, 0, 0, 0),
(200106, 34753, 0, 0, 0),
(200106, 34754, 0, 0, 0),
(200106, 34755, 0, 0, 0),
(200106, 34756, 0, 0, 0),
(200106, 34757, 0, 0, 0),
(200106, 34758, 0, 0, 0),
(200106, 34759, 0, 0, 0),
(200106, 34760, 0, 0, 0),
(200106, 34761, 0, 0, 0),
(200106, 34762, 0, 0, 0),
(200106, 34763, 0, 0, 0),
(200106, 34764, 0, 0, 0),
(200106, 34765, 0, 0, 0),
(200106, 34766, 0, 0, 0),
(200106, 34767, 0, 0, 0),
(200106, 34768, 0, 0, 0),
(200106, 34769, 0, 0, 0),
(200106, 35947, 0, 0, 0),
(200106, 35948, 0, 0, 0),
(200106, 35950, 0, 0, 0),
(200106, 35951, 0, 0, 0),
(200106, 35952, 0, 0, 0),
(200106, 35953, 0, 0, 0),
(200106, 38698, 0, 0, 0),
(200106, 38706, 0, 0, 0),
(200106, 39520, 0, 0, 0),
(200106, 39691, 0, 0, 0),
(200106, 40202, 0, 0, 0),
(200106, 41729, 0, 0, 0),
(200106, 41731, 0, 0, 0),
(200106, 42428, 0, 0, 0),
(200106, 42429, 0, 0, 0),
(200106, 42430, 0, 0, 0),
(200106, 42431, 0, 0, 0),
(200106, 42432, 0, 0, 0),
(200106, 42433, 0, 0, 0),
(200106, 42434, 0, 0, 0),
(200106, 42777, 0, 0, 0),
(200106, 42778, 0, 0, 0),
(200106, 42779, 0, 0, 0),
(200106, 42942, 0, 0, 0),
(200106, 42993, 0, 0, 0),
(200106, 42994, 0, 0, 0),
(200106, 42995, 0, 0, 0),
(200106, 42996, 0, 0, 0),
(200106, 42997, 0, 0, 0),
(200106, 42998, 0, 0, 0),
(200106, 42999, 0, 0, 0),
(200106, 43000, 0, 0, 0),
(200106, 43001, 0, 0, 0),
(200106, 43004, 0, 0, 0),
(200106, 43005, 0, 0, 0),
(200106, 43015, 0, 0, 0),
(200106, 43086, 0, 0, 0),
(200106, 43087, 0, 0, 0),
(200106, 43236, 0, 0, 0),
(200106, 43268, 0, 0, 0),
(200106, 43478, 0, 0, 0),
(200106, 43480, 0, 0, 0),
(200106, 43488, 0, 0, 0),
(200106, 43490, 0, 0, 0),
(200106, 43491, 0, 0, 0),
(200106, 43492, 0, 0, 0),
(200106, 43518, 0, 0, 0),
(200106, 43523, 0, 0, 0),
(200106, 44049, 0, 0, 0),
(200106, 44071, 0, 0, 0),
(200106, 44072, 0, 0, 0),
(200106, 44607, 0, 0, 0),
(200106, 44616, 0, 0, 0),
(200106, 44618, 0, 0, 0),
(200106, 44722, 0, 0, 0),
(200106, 44940, 0, 0, 0),
(200106, 44941, 0, 0, 0),
(200106, 44953, 0, 0, 0),
(200106, 45932, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=200106;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(201157, 200106, 0, 1, 1, 0, 0, -8917.02, 535.308, 95.0445, 3.76798, 300, 0, 0, 5342, 0, 0),
(201251, 200106, 0, 1, 1, 0, 0, -9141.05, 368.215, 90.769, 2.33717, 300, 0, 0, 5342, 0, 0),
(201252, 200106, 1, 1, 1, 0, 0, 1323.2, -4394.54, 26.2344, 1.8001, 300, 0, 0, 5342, 0, 0),
(201423, 200106, 1, 1, 1, 0, 0, 1419.79, -4372.65, 25.4627, 1.72685, 300, 0, 0, 5342, 0, 0);