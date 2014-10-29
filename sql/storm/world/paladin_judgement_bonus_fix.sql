-- https://github.com/TrinityCore/TrinityCore/issues/13021
UPDATE `spell_bonus_data` SET `direct_bonus`=0.25, `ap_bonus`=0.16 WHERE `entry`=54158; -- Judgement
UPDATE `spell_bonus_data` SET `direct_bonus`=0.22, `ap_bonus`=0.14 WHERE `entry`=31804; -- Judgement of Vengeance
