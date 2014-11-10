-- NPC 7th Legion Infantry & Kor'kron Guard damage correction - 35401, 34919 & 35407, 34918
UPDATE `creature_template` SET `DamageModifier`=4 WHERE `entry` IN (35401,35407); -- lvl 81
UPDATE `creature_template` SET `DamageModifier`=3 WHERE `entry` IN (34919,34918); -- lvl 71
