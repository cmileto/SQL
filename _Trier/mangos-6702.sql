/*FAIT :
creature
creature_addon
creature_equip_template
creature_involvedrelation
creature_questrelation
creature_template
creature_template_addon
game_tele
gameobject
gameobject_loot_template
gameobject_template
item_loot_template
item_template
npc_vendor
quest_end_scripts
quest_template*/

CREATE TABLE `creature` (
  `guid` int(10) unsigned NOT NULL auto_increment COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Creature Identifier',
  `map` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `spawnMask` tinyint(3) unsigned NOT NULL default '1',
  `modelid` mediumint(8) unsigned NOT NULL default '0',
  `equipment_id` mediumint(9) NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(10) unsigned NOT NULL default '120',
  `spawndist` float NOT NULL default '5',
  `currentwaypoint` mediumint(8) unsigned NOT NULL default '0',
  `curhealth` int(10) unsigned NOT NULL default '1',
  `curmana` int(10) unsigned NOT NULL default '0',
  `DeathState` tinyint(3) unsigned NOT NULL default '0',
  `MovementType` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  KEY `idx_map` (`map`),
  KEY `index_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';

CREATE TABLE `creature_addon` (
  `guid` int(10) unsigned NOT NULL default '0',
  `mount` mediumint(8) unsigned NOT NULL default '0',
  `bytes0` int(10) unsigned NOT NULL default '0',
  `bytes1` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `emote` int(10) unsigned NOT NULL default '0',
  `moveflags` int(10) unsigned NOT NULL default '0',
  `auras` text,
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Unique entry',
  `equipmodel1` mediumint(8) unsigned NOT NULL default '0',
  `equipmodel2` mediumint(8) unsigned NOT NULL default '0',
  `equipmodel3` mediumint(8) unsigned NOT NULL default '0',
  `equipinfo1` int(10) unsigned NOT NULL default '0',
  `equipinfo2` mediumint(8) unsigned NOT NULL default '0',
  `equipinfo3` mediumint(8) unsigned NOT NULL default '0',
  `equipslot1` mediumint(8) unsigned NOT NULL default '0',
  `equipslot2` mediumint(8) unsigned NOT NULL default '0',
  `equipslot3` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';

CREATE TABLE `creature_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

CREATE TABLE `creature_questrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

CREATE TABLE `creature_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `heroic_entry` mediumint(8) unsigned NOT NULL default '0',
  `modelid_A` mediumint(8) unsigned NOT NULL default '0',
  `modelid_A2` mediumint(8) unsigned NOT NULL default '0',
  `modelid_H` mediumint(8) unsigned NOT NULL default '0',
  `modelid_H2` mediumint(8) unsigned NOT NULL default '0',
  `name` char(100) NOT NULL default '0',
  `subname` char(100) default NULL,
  `IconName` char(100) default NULL,
  `minlevel` tinyint(3) unsigned NOT NULL default '1',
  `maxlevel` tinyint(3) unsigned NOT NULL default '1',
  `minhealth` int(10) unsigned NOT NULL default '0',
  `maxhealth` int(10) unsigned NOT NULL default '0',
  `minmana` int(10) unsigned NOT NULL default '0',
  `maxmana` int(10) unsigned NOT NULL default '0',
  `armor` mediumint(8) unsigned NOT NULL default '0',
  `faction_A` smallint(5) unsigned NOT NULL default '0',
  `faction_H` smallint(5) unsigned NOT NULL default '0',
  `npcflag` int(10) unsigned NOT NULL default '0',
  `speed` float NOT NULL default '1' COMMENT 'Result of 2.5/2.5, most common value',
  `scale` float NOT NULL default '1',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  `mindmg` float NOT NULL default '0',
  `maxdmg` float NOT NULL default '0',
  `dmgschool` tinyint(4) NOT NULL default '0',
  `attackpower` int(10) unsigned NOT NULL default '0',
  `baseattacktime` int(10) unsigned NOT NULL default '0',
  `rangeattacktime` int(10) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `dynamicflags` int(10) unsigned NOT NULL default '0',
  `family` tinyint(4) NOT NULL default '0',
  `trainer_type` tinyint(4) NOT NULL default '0',
  `trainer_spell` mediumint(8) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `race` tinyint(3) unsigned NOT NULL default '0',
  `minrangedmg` float NOT NULL default '0',
  `maxrangedmg` float NOT NULL default '0',
  `rangedattackpower` smallint(5) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `flag1` int(10) unsigned NOT NULL default '0',
  `lootid` mediumint(8) unsigned NOT NULL default '0',
  `pickpocketloot` mediumint(8) unsigned NOT NULL default '0',
  `skinloot` mediumint(8) unsigned NOT NULL default '0',
  `resistance1` smallint(5) NOT NULL default '0',
  `resistance2` smallint(5) NOT NULL default '0',
  `resistance3` smallint(5) NOT NULL default '0',
  `resistance4` smallint(5) NOT NULL default '0',
  `resistance5` smallint(5) NOT NULL default '0',
  `resistance6` smallint(5) NOT NULL default '0',
  `spell1` mediumint(8) unsigned NOT NULL default '0',
  `spell2` mediumint(8) unsigned NOT NULL default '0',
  `spell3` mediumint(8) unsigned NOT NULL default '0',
  `spell4` mediumint(8) unsigned NOT NULL default '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL default '0',
  `mingold` mediumint(8) unsigned NOT NULL default '0',
  `maxgold` mediumint(8) unsigned NOT NULL default '0',
  `AIName` char(64) NOT NULL default '',
  `MovementType` tinyint(3) unsigned NOT NULL default '0',
  `InhabitType` tinyint(3) unsigned NOT NULL default '3',
  `RacialLeader` tinyint(3) unsigned NOT NULL default '0',
  `RegenHealth` tinyint(3) unsigned NOT NULL default '1',
  `equipment_id` mediumint(8) unsigned NOT NULL default '0',
  `mechanic_immune_mask` int(10) unsigned NOT NULL default '0',
  `flags_extra` int(10) unsigned NOT NULL default '0',
  `ScriptName` char(64) NOT NULL default '',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

CREATE TABLE `creature_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `mount` mediumint(8) unsigned NOT NULL default '0',
  `bytes0` int(10) unsigned NOT NULL default '0',
  `bytes1` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `emote` mediumint(8) unsigned NOT NULL default '0',
  `moveflags` int(10) unsigned NOT NULL default '0',
  `auras` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `game_tele` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';

CREATE TABLE `gameobject` (
  `guid` int(10) unsigned NOT NULL auto_increment COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Gameobject Identifier',
  `map` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `spawnMask` tinyint(3) unsigned NOT NULL default '1',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `rotation0` float NOT NULL default '0',
  `rotation1` float NOT NULL default '0',
  `rotation2` float NOT NULL default '0',
  `rotation3` float NOT NULL default '0',
  `spawntimesecs` int(11) NOT NULL default '0',
  `animprogress` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

CREATE TABLE `gameobject_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

CREATE TABLE `gameobject_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `displayId` mediumint(8) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `castBarCaption` varchar(100) NOT NULL default '',
  `faction` smallint(5) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `size` float NOT NULL default '1',
  `data0` int(10) unsigned NOT NULL default '0',
  `data1` int(10) unsigned NOT NULL default '0',
  `data2` int(10) unsigned NOT NULL default '0',
  `data3` int(10) unsigned NOT NULL default '0',
  `data4` int(10) unsigned NOT NULL default '0',
  `data5` int(10) unsigned NOT NULL default '0',
  `data6` int(10) unsigned NOT NULL default '0',
  `data7` int(10) unsigned NOT NULL default '0',
  `data8` int(10) unsigned NOT NULL default '0',
  `data9` int(10) unsigned NOT NULL default '0',
  `data10` int(10) unsigned NOT NULL default '0',
  `data11` int(10) unsigned NOT NULL default '0',
  `data12` int(10) unsigned NOT NULL default '0',
  `data13` int(10) unsigned NOT NULL default '0',
  `data14` int(10) unsigned NOT NULL default '0',
  `data15` int(10) unsigned NOT NULL default '0',
  `data16` int(10) unsigned NOT NULL default '0',
  `data17` int(10) unsigned NOT NULL default '0',
  `data18` int(10) unsigned NOT NULL default '0',
  `data19` int(10) unsigned NOT NULL default '0',
  `data20` int(10) unsigned NOT NULL default '0',
  `data21` int(10) unsigned NOT NULL default '0',
  `data22` int(10) unsigned NOT NULL default '0',
  `data23` int(10) unsigned NOT NULL default '0',
  `ScriptName` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

CREATE TABLE `item_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

CREATE TABLE `item_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `subclass` tinyint(3) unsigned NOT NULL default '0',
  `unk0` int(11) NOT NULL default '-1',
  `name` varchar(255) NOT NULL default '',
  `displayid` mediumint(8) unsigned NOT NULL default '0',
  `Quality` tinyint(3) unsigned NOT NULL default '0',
  `Flags` int(10) unsigned NOT NULL default '0',
  `BuyCount` tinyint(3) unsigned NOT NULL default '1',
  `BuyPrice` int(10) unsigned NOT NULL default '0',
  `SellPrice` int(10) unsigned NOT NULL default '0',
  `InventoryType` tinyint(3) unsigned NOT NULL default '0',
  `AllowableClass` mediumint(9) NOT NULL default '-1',
  `AllowableRace` mediumint(9) NOT NULL default '-1',
  `ItemLevel` smallint(5) unsigned NOT NULL default '0',
  `RequiredLevel` tinyint(3) unsigned NOT NULL default '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL default '0',
  `RequiredSkillRank` smallint(5) unsigned NOT NULL default '0',
  `requiredspell` mediumint(8) unsigned NOT NULL default '0',
  `requiredhonorrank` mediumint(8) unsigned NOT NULL default '0',
  `RequiredCityRank` mediumint(8) unsigned NOT NULL default '0',
  `RequiredReputationFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredReputationRank` smallint(5) unsigned NOT NULL default '0',
  `maxcount` smallint(5) NOT NULL default '-1',
  `stackable` smallint(5) NOT NULL default '1',
  `ContainerSlots` tinyint(3) unsigned NOT NULL default '0',
  `stat_type1` tinyint(3) unsigned NOT NULL default '0',
  `stat_value1` smallint(6) NOT NULL default '0',
  `stat_type2` tinyint(3) unsigned NOT NULL default '0',
  `stat_value2` smallint(6) NOT NULL default '0',
  `stat_type3` tinyint(3) unsigned NOT NULL default '0',
  `stat_value3` smallint(6) NOT NULL default '0',
  `stat_type4` tinyint(3) unsigned NOT NULL default '0',
  `stat_value4` smallint(6) NOT NULL default '0',
  `stat_type5` tinyint(3) unsigned NOT NULL default '0',
  `stat_value5` smallint(6) NOT NULL default '0',
  `stat_type6` tinyint(3) unsigned NOT NULL default '0',
  `stat_value6` smallint(6) NOT NULL default '0',
  `stat_type7` tinyint(3) unsigned NOT NULL default '0',
  `stat_value7` smallint(6) NOT NULL default '0',
  `stat_type8` tinyint(3) unsigned NOT NULL default '0',
  `stat_value8` smallint(6) NOT NULL default '0',
  `stat_type9` tinyint(3) unsigned NOT NULL default '0',
  `stat_value9` smallint(6) NOT NULL default '0',
  `stat_type10` tinyint(3) unsigned NOT NULL default '0',
  `stat_value10` smallint(6) NOT NULL default '0',
  `dmg_min1` float NOT NULL default '0',
  `dmg_max1` float NOT NULL default '0',
  `dmg_type1` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min2` float NOT NULL default '0',
  `dmg_max2` float NOT NULL default '0',
  `dmg_type2` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min3` float NOT NULL default '0',
  `dmg_max3` float NOT NULL default '0',
  `dmg_type3` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min4` float NOT NULL default '0',
  `dmg_max4` float NOT NULL default '0',
  `dmg_type4` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min5` float NOT NULL default '0',
  `dmg_max5` float NOT NULL default '0',
  `dmg_type5` tinyint(3) unsigned NOT NULL default '0',
  `armor` smallint(5) unsigned NOT NULL default '0',
  `holy_res` tinyint(3) unsigned NOT NULL default '0',
  `fire_res` tinyint(3) unsigned NOT NULL default '0',
  `nature_res` tinyint(3) unsigned NOT NULL default '0',
  `frost_res` tinyint(3) unsigned NOT NULL default '0',
  `shadow_res` tinyint(3) unsigned NOT NULL default '0',
  `arcane_res` tinyint(3) unsigned NOT NULL default '0',
  `delay` smallint(5) unsigned NOT NULL default '1000',
  `ammo_type` tinyint(3) unsigned NOT NULL default '0',
  `RangedModRange` float NOT NULL default '0',
  `spellid_1` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_1` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_1` smallint(5) NOT NULL default '0',
  `spellppmRate_1` float NOT NULL default '0',
  `spellcooldown_1` int(11) NOT NULL default '-1',
  `spellcategory_1` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_1` int(11) NOT NULL default '-1',
  `spellid_2` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_2` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_2` smallint(5) NOT NULL default '0',
  `spellppmRate_2` float NOT NULL default '0',
  `spellcooldown_2` int(11) NOT NULL default '-1',
  `spellcategory_2` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_2` int(11) NOT NULL default '-1',
  `spellid_3` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_3` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_3` smallint(5) NOT NULL default '0',
  `spellppmRate_3` float NOT NULL default '0',
  `spellcooldown_3` int(11) NOT NULL default '-1',
  `spellcategory_3` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_3` int(11) NOT NULL default '-1',
  `spellid_4` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_4` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_4` smallint(5) NOT NULL default '0',
  `spellppmRate_4` float NOT NULL default '0',
  `spellcooldown_4` int(11) NOT NULL default '-1',
  `spellcategory_4` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_4` int(11) NOT NULL default '-1',
  `spellid_5` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_5` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_5` smallint(5) NOT NULL default '0',
  `spellppmRate_5` float NOT NULL default '0',
  `spellcooldown_5` int(11) NOT NULL default '-1',
  `spellcategory_5` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_5` int(11) NOT NULL default '-1',
  `bonding` tinyint(3) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `PageText` mediumint(8) unsigned NOT NULL default '0',
  `LanguageID` tinyint(3) unsigned NOT NULL default '0',
  `PageMaterial` tinyint(3) unsigned NOT NULL default '0',
  `startquest` mediumint(8) unsigned NOT NULL default '0',
  `lockid` mediumint(8) unsigned NOT NULL default '0',
  `Material` tinyint(4) NOT NULL default '0',
  `sheath` tinyint(3) unsigned NOT NULL default '0',
  `RandomProperty` mediumint(8) unsigned NOT NULL default '0',
  `RandomSuffix` mediumint(8) unsigned NOT NULL default '0',
  `block` mediumint(8) unsigned NOT NULL default '0',
  `itemset` mediumint(8) unsigned NOT NULL default '0',
  `MaxDurability` smallint(5) unsigned NOT NULL default '0',
  `area` mediumint(8) unsigned NOT NULL default '0',
  `Map` smallint(6) NOT NULL default '0',
  `BagFamily` mediumint(9) NOT NULL default '0',
  `TotemCategory` mediumint(9) NOT NULL default '0',
  `socketColor_1` tinyint(4) NOT NULL default '0',
  `socketContent_1` mediumint(9) NOT NULL default '0',
  `socketColor_2` tinyint(4) NOT NULL default '0',
  `socketContent_2` mediumint(9) NOT NULL default '0',
  `socketColor_3` tinyint(4) NOT NULL default '0',
  `socketContent_3` mediumint(9) NOT NULL default '0',
  `socketBonus` mediumint(9) NOT NULL default '0',
  `GemProperties` mediumint(9) NOT NULL default '0',
  `RequiredDisenchantSkill` smallint(6) NOT NULL default '-1',
  `ArmorDamageModifier` float NOT NULL default '0',
  `ItemLimitCategory` smallint(6) NOT NULL default '0',
  `HolidayId` int(11) UNSIGNED DEFAULT '0' NOT NULL,
  `ScriptName` varchar(64) NOT NULL default '',
  `DisenchantID` mediumint(8) unsigned NOT NULL default '0',
  `FoodType` tinyint(3) unsigned NOT NULL default '0',
  `minMoneyLoot` int(10) unsigned NOT NULL default '0',
  `maxMoneyLoot` int(10) unsigned NOT NULL default '0',
  `Duration` int(11) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Duration in seconds.',
  PRIMARY KEY  (`entry`),
  KEY `items_index` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

CREATE TABLE `npc_vendor` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `maxcount` tinyint(3) unsigned NOT NULL default '0',
  `incrtime` int(10) unsigned NOT NULL default '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`,`ExtendedCost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';

CREATE TABLE `quest_end_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `quest_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `ZoneOrSort` smallint(6) NOT NULL default '0',
  `SkillOrClass` smallint(6) NOT NULL default '0',
  `MinLevel` tinyint(3) unsigned NOT NULL default '0',
  `QuestLevel` smallint(6) NOT NULL default '0',
  `Type` smallint(5) unsigned NOT NULL default '0',
  `RequiredRaces` smallint(5) unsigned NOT NULL default '0',
  `RequiredSkillValue` smallint(5) unsigned NOT NULL default '0',
  `RepObjectiveFaction` smallint(5) unsigned NOT NULL default '0',
  `RepObjectiveValue` mediumint(9) NOT NULL default '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredMinRepValue` mediumint(9) NOT NULL default '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredMaxRepValue` mediumint(9) NOT NULL default '0',
  `SuggestedPlayers` tinyint(3) unsigned NOT NULL default '0',
  `LimitTime` int(10) unsigned NOT NULL default '0',
  `QuestFlags` mediumint(8) unsigned NOT NULL default '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL default '0',
  `CharTitleId` tinyint(3) unsigned NOT NULL default '0',
  `PrevQuestId` mediumint(9) NOT NULL default '0',
  `NextQuestId` mediumint(9) NOT NULL default '0',
  `ExclusiveGroup` mediumint(9) NOT NULL default '0',
  `NextQuestInChain` mediumint(8) unsigned NOT NULL default '0',
  `SrcItemId` mediumint(8) unsigned NOT NULL default '0',
  `SrcItemCount` tinyint(3) unsigned NOT NULL default '0',
  `SrcSpell` mediumint(8) unsigned NOT NULL default '0',
  `Title` text,
  `Details` text,
  `Objectives` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `EndText` text,
  `ObjectiveText1` text,
  `ObjectiveText2` text,
  `ObjectiveText3` text,
  `ObjectiveText4` text,
  `ReqItemId1` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId2` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId3` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId4` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceId1` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId2` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId3` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId4` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceRef1` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceRef2` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceRef3` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceRef4` mediumint(8) unsigned NOT NULL default '0',
  `ReqCreatureOrGOId1` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId2` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId3` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId4` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSpellCast1` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast2` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast3` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast4` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId1` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId2` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId3` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId4` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId5` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId6` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemCount1` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount2` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount3` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount4` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount5` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount6` smallint(5) unsigned NOT NULL default '0',
  `RewItemId1` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId2` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId3` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId4` mediumint(8) unsigned NOT NULL default '0',
  `RewItemCount1` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount2` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount3` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount4` smallint(5) unsigned NOT NULL default '0',
  `RewRepFaction1` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction2` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction3` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction4` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction5` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepValue1` mediumint(9) NOT NULL default '0',
  `RewRepValue2` mediumint(9) NOT NULL default '0',
  `RewRepValue3` mediumint(9) NOT NULL default '0',
  `RewRepValue4` mediumint(9) NOT NULL default '0',
  `RewRepValue5` mediumint(9) NOT NULL default '0',
  `RewOrReqMoney` int(11) NOT NULL default '0',
  `RewMoneyMaxLevel` int(10) unsigned NOT NULL default '0',
  `RewSpell` mediumint(8) unsigned NOT NULL default '0',
  `RewSpellCast` mediumint(8) unsigned NOT NULL default '0',
  `RewMailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `RewMailDelaySecs` int(11) unsigned NOT NULL default '0',
  `PointMapId` smallint(5) unsigned NOT NULL default '0',
  `PointX` float NOT NULL default '0',
  `PointY` float NOT NULL default '0',
  `PointOpt` mediumint(8) unsigned NOT NULL default '0',
  `DetailsEmote1` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL default '0',
  `IncompleteEmote` smallint(5) unsigned NOT NULL default '0',
  `CompleteEmote` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL default '0',
  `StartScript` mediumint(8) unsigned NOT NULL default '0',
  `CompleteScript` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';