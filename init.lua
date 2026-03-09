local modpath = core.get_modpath("amethyst_new")

dofile(modpath.."/nodes.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/budding.lua")
dofile(modpath.."/lantern.lua")

geodes_lib:register_geode({
    id = 'shallow',
    wherein = "default:stone",
    y_min = -1000,
    y_max = -128,
    scarcity = 80,
    generation_chance = 60,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 200,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 2,
    radius_max = 5,
})

geodes_lib:register_geode({
    id = 'deep',
    wherein = "default:stone",
    y_min = -5000,
    y_max = -1000,
    scarcity = 70,
    generation_chance = 70,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 160,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 2,
    radius_max = 7,
})

geodes_lib:register_geode({
    id = 'deep_water',
    wherein = "default:stone",
    y_min = -7000,
    y_max = -1000,
    scarcity = 60,
    generation_chance = 50,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 200,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 40, span = 30 },
    radius_min = 3,
    radius_max = 8,
})

geodes_lib:register_geode({
    id = 'deepest',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -5000,
    scarcity = 70,
    generation_chance = 100,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 128,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 3,
    radius_max = 10,
})

geodes_lib:register_geode({
    id = 'deepest_water',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -7000,
    scarcity = 60,
    generation_chance = 50,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 160,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 60, span = 50 },
    radius_min = 4,
    radius_max = 11,
})

if core.get_modpath("ctg_world") then
    geodes_lib:register_geode({
        id = 'core',
        wherein = "ctg_world:corestone",
        y_min = -11000,
        y_max = -9000,
        scarcity = 60,
        generation_chance = 90,
        inner = "amethyst_new:amethyst",
        inner_alt = "amethyst_new:amethyst_budding",
        inner_alt_chance = 96,
        shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
        radius_min = 4,
        radius_max = 12,
    })

    if core.get_modpath("ctg_airs") then
        geodes_lib:register_geode({
            id = 'core2',
            wherein = "ctg_world:corestone",
            y_min = -11000,
            y_max = -9000,
            scarcity = 80,
            generation_chance = 70,
            inner = "amethyst_new:amethyst",
            inner_alt = "amethyst_new:amethyst_budding",
            inner_alt_chance = 196,
            shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite"},
            cavity = { lower_fill = "default:lava_source", upper_fill = "ctg_airs:atmos_hot", threshold = 40, span = 30 },
            radius_min = 4,
            radius_max = 11,
        })
    else
        geodes_lib:register_geode({
            id = 'core2',
            wherein = "ctg_world:corestone",
            y_min = -11000,
            y_max = -9000,
            scarcity = 80,
            generation_chance = 70,
            inner = "amethyst_new:amethyst",
            inner_alt = "amethyst_new:amethyst_budding",
            inner_alt_chance = 196,
            shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite"},
            cavity = { lower_fill = "default:lava_source", upper_fill = "air", threshold = 40, span = 30 },
            radius_min = 4,
            radius_max = 11,
        })
    end
end

if core.get_modpath("lucky_block") then
    dofile(modpath.."/lucky_block.lua")
end
