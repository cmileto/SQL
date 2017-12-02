REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (90011, 0, 0, 0, 0, 0, 22209, 0, 22209, 0, 'Jedidiah Handers', 'Arena Season 8 Custom Items', '', 0, 83, 83, 2, 35, 35, 4225, 1, 2, 340, 510, 0, 127, 1, 2000, 2000, 1, 2, 8, 0, 2, 0, 0, 0, 272, 408, 102, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 100, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 547, 0, 0, '');

DELETE FROM `npc_vendor` WHERE (`entry`=90011);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(90011, 51327, 0, 0, 2569),
(90011, 51328, 0, 0, 2569),
(90011, 51329, 0, 0, 2569),
(90011, 51330, 0, 0, 2561),
(90011, 51331, 0, 0, 2561),
(90011, 51332, 0, 0, 2561),
(90011, 51333, 0, 0, 2561),
(90011, 51334, 0, 0, 2561),
(90011, 51335, 0, 0, 2561),
(90011, 51336, 0, 0, 2559),
(90011, 51337, 0, 0, 2569),
(90011, 51338, 0, 0, 2569),
(90011, 51339, 0, 0, 2569),
(90011, 51340, 0, 0, 2569),
(90011, 51341, 0, 0, 2569),
(90011, 51342, 0, 0, 2569),
(90011, 51343, 0, 0, 2569),
(90011, 51344, 0, 0, 2569),
(90011, 51345, 0, 0, 2569),
(90011, 51346, 0, 0, 2561),
(90011, 51347, 0, 0, 2561),
(90011, 51348, 0, 0, 2561),
(90011, 51349, 0, 0, 2561),
(90011, 51350, 0, 0, 2569),
(90011, 51351, 0, 0, 2569),
(90011, 51352, 0, 0, 2569),
(90011, 51353, 0, 0, 2561),
(90011, 51354, 0, 0, 2561),
(90011, 51355, 0, 0, 2561),
(90011, 51356, 0, 0, 2561),
(90011, 51357, 0, 0, 2561),
(90011, 51358, 0, 0, 2559),
(90011, 51359, 0, 0, 2569),
(90011, 51360, 0, 0, 2569),
(90011, 51361, 0, 0, 2569),
(90011, 51362, 0, 0, 2569),
(90011, 51363, 0, 0, 2569),
(90011, 51364, 0, 0, 2569),
(90011, 51365, 0, 0, 2569),
(90011, 51366, 0, 0, 2569),
(90011, 51367, 0, 0, 2569),
(90011, 51368, 0, 0, 2569),
(90011, 51369, 0, 0, 2569),
(90011, 51370, 0, 0, 2569),
(90011, 51371, 0, 0, 2569),
(90011, 51372, 0, 0, 2569),
(90011, 51373, 0, 0, 2569),
(90011, 51374, 0, 0, 2569),
(90011, 51375, 0, 0, 2569),
(90011, 51376, 0, 0, 2569),
(90011, 51452, 0, 0, 146),
(90011, 51455, 0, 0, 146),
(90011, 51533, 0, 0, 146);

DELETE FROM `creature` WHERE `id`=90011;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(9338217, 90011, 0, 1, 1, 0, 547, -8929.05, 550.419, 94.312, 4.57632, 300, 0, 0, 1394500, 0, 0),
(9338218, 90011, 1, 1, 1, 0, 547, 1438.54, -4376.03, 25.4626, 3.32647, 300, 0, 0, 1394500, 0, 0);
