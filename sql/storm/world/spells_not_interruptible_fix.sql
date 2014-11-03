-- Savina Ragefire
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (39747,39823);

-- Fire Phase Halion
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (39863,39864,39944,39945);
-- Shadow Phase Halion
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (40142,40143,40144,40145);

-- Festergut Gas Cloud
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (37562,38602,38760,38761);

-- Professor Putricide Volatile Ooze
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (37697,38604,38758,38759);

-- Rotface Slime Spray
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|33554432 WHERE `entry` IN (36627,38390,38549,38550);
