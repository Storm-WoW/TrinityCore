-- https://github.com/TrinityCore/TrinityCore/issues/12897 - Remove the XP
UPDATE `creature_template` SET `flags_extra`=64 WHERE `entry`=10925;
