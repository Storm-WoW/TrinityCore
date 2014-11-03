-- NPC Sister Svalna damage correction - 37126 & 38258
UPDATE `creature_template` SET `DamageModifier`=390 WHERE `entry`=37126;
UPDATE `creature_template` SET `DamageModifier`=470 WHERE `entry`=38258;

-- Sister Svalna should drop gold when killed
UPDATE `creature_template` SET `mingold`=730000,`maxgold`=950000 WHERE `entry` IN (37126,38258);

-- Immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=mechanic_immune_mask
|1 -- CHARM
|2 -- DISORIENTED
|4 -- DISARM
|8 -- DISTRACT
|16 -- FEAR
|32 -- GRIP
|64 -- ROOT
|256 -- SILENCE
|512 -- SLEEP
|1024 -- SNARE
|2048 -- STUN
|4096 -- FREEZE
|8192 -- KNOCKOUT
|65536 -- POLYMORPH
|131072 -- BANISH
|524288 -- SHACKLE
|4194304 -- TURN
|8388608 -- HORROR
|67108864 -- DAZE
|536870912 -- SAPPED
WHERE `entry` IN
(37126,38258);
