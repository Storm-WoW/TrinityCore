-- NPC High Commander Halford Wyrmbane & Overlord Agmar damage correction - 34924, 35403 & 34922, 35405
UPDATE `creature_template` SET `DamageModifier`=290 WHERE `entry` IN (35403,35405); -- lvl 81
UPDATE `creature_template` SET `DamageModifier`=85 WHERE `entry` IN (34924,34922); -- lvl 71

-- Their immunities:
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
(34924,35403,34922,35405);
