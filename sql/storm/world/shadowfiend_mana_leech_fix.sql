-- Priest: Shadowfiend's Mana leech procs on absorb fix - https://github.com/TrinityCore/TrinityCore/issues/7983
DELETE FROM `spell_proc_event` WHERE `entry`=28305;
INSERT INTO `spell_proc_event` VALUES (28305, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 0);
