-- Nerub'Ar Victim by DDuarte closes #13621
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|4, `flags_extra`=`flags_extra`|64 WHERE `entry`=25284;
-- Search for Incendicite by Exodius closes #13309
UPDATE `gameobject_loot_template` SET `QuestRequired`=0 WHERE `Entry`=1409 AND `Item`=3340;
-- Feeding Arngrim closes #12826
UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=30423;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30422;

DELETE FROM `smart_scripts` WHERE `entryorguid` =30422;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30422, 0, 0, 1, 8,  0, 100, 0, 56727, 0, 0, 0, 12, 30423, 1, 240000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Roaming Jormungar - On Spellhit - Spawn Disembodied Jormungar'),
(30422, 0, 1, 0,61,  0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Roaming Jormungar - Linked with Previous Event - Despawn');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30423;

DELETE FROM `smart_scripts` WHERE `entryorguid` =30423;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30423, 0, 0, 0, 2,  0, 100, 1, 0, 30, 0, 0, 11, 56732, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disembodied Jormungar - On 30% HP - Summon Arngrim'),
(30423, 0, 1, 2,38,  0, 100, 0, 1, 1, 0, 0, 11, 56731, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Disembodied Jormungar - On Spellhit - Cast Kill Credit'),
(30423, 0, 2, 0,61,  0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Disembodied Jormungar - Linked with Previous Event - Despawn');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30425;

DELETE FROM `smart_scripts` WHERE `entryorguid` =30425;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30425, 0, 0, 0,11,  0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 30423, 200, 0, 0, 0, 0, 0, 'Arngrim - On Spawn - Move to closest disembodied jormungar'),
(30425, 0, 1, 2, 1,  0, 100, 0, 10000, 10000, 30000, 30000, 45, 1, 1, 0, 0, 0, 0, 19, 30423, 20, 0, 0, 0, 0, 0, 'Arngrim - OOC - Cast Ping Jormungar'),
(30425, 0, 2, 0,61,  0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arngrim - OOC - Linked with Previous Event - Despawn After 5 seconds');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`IN(13,17) AND `SourceEntry`=56727;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,56727,0,0,31,1,3,30422,0,0,0, '', 'Arngrims Tooth only hits Roaming Jormungar'),
(13,0,56727,0,0,31,1,3,30422,0,0,0, '', 'Arngrims Tooth only hits Roaming Jormungar');
