-- In https://github.com/TrinityCore/TrinityCore/commit/bd9d3dedeffaea35884b6eb920015e1de422fdd3
-- Razorscale Harpoon Gun: https://github.com/TrinityCore/TrinityCore/issues/13056 - https://github.com/TrinityCore/TrinityCore/blob/bd9d3dedeffaea35884b6eb920015e1de422fdd3/sql/updates/world/2014_08_29_05_world_creature_template.sql#L3005
UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 33184;
