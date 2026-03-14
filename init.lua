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
    scarcity = 90,
    generation_chance = 40,
    inner = "amethyst_new:amethyst",
    inners = {{ name = "amethyst_new:amethyst", fill = 60 }, { name = "ctg_quartz:quartz", fill = 40 }},
    inner_alt = {"amethyst_new:amethyst_budding", "ctg_quartz:quartz_budding"},
    inner_alt_chance = 150,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 2,
    radius_max = 5,
})

geodes_lib:register_geode({
    id = 'deep',
    wherein = "default:stone",
    y_min = -7000,
    y_max = -1000,
    scarcity = 77,
    generation_chance = 30,
    inner = "amethyst_new:amethyst",
    inners = {{ name = "amethyst_new:amethyst", fill = 80 }, { name = "ctg_quartz:quartz", fill = 20 }},
    inner_alt = {"amethyst_new:amethyst_budding", "ctg_quartz:quartz_budding"},
    inner_alt_chance = 100,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 2,
    radius_max = 8,
})

geodes_lib:register_geode({
    id = 'deep_water',
    wherein = "default:stone",
    y_min = -7000,
    y_max = -1000,
    scarcity = 80,
    generation_chance = 30,
    inner = "amethyst_new:amethyst",
    inners = {{ name = "amethyst_new:amethyst", fill = 90 }, { name = "ctg_quartz:quartz", fill = 10 }},
    inner_alt = {"amethyst_new:amethyst_budding", "ctg_quartz:quartz_budding"},
    inner_alt_chance = 125,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 30, span = 25 },
    radius_min = 3,
    radius_max = 10,
})

geodes_lib:register_geode({
    id = 'deepest',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -5000,
    scarcity = 78,
    generation_chance = 40,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 60,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 3,
    radius_max = 12,
})

geodes_lib:register_geode({
    id = 'deepest_water',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -7000,
    scarcity = 64,
    generation_chance = 20,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 90,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 40, span = 20 },
    radius_min = 3,
    radius_max = 13,
})


if core.get_modpath("deepslate") then
    -- slate
    geodes_lib:register_geode({
        id = 'deepest',
        wherein = "deepslate:deepslate",
        y_min = -10000,
        y_max = -5000,
        scarcity = 78,
        generation_chance = 60,
        inner = "amethyst_new:amethyst",
        inner_alt = "amethyst_new:amethyst_budding",
        inner_alt_chance = 60,
        shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite"},
        radius_min = 3,
        radius_max = 12,
    })
end

geodes_lib:register_geode({
    id = 'deepest_water',
    wherein = "deepslate:deepslate",
    y_min = -10000,
    y_max = -7000,
    scarcity = 60,
    generation_chance = 25,
    inner = "amethyst_new:amethyst",
    inner_alt = "amethyst_new:amethyst_budding",
    inner_alt_chance = 80,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 40, span = 20 },
    radius_min = 3,
    radius_max = 13,
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
        inner_alt_chance = 64,
        shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
        radius_min = 4,
        radius_max = 15,
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
            shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:basalt"},
            cavity = { lower_fill = "default:lava_source", upper_fill = "ctg_airs:atmos_hot", threshold = 30, span = 10 },
            radius_min = 4,
            radius_max = 13,
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
            shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:basalt"},
            cavity = { lower_fill = "default:lava_source", upper_fill = "air", threshold = 30, span = 10 },
            radius_min = 4,
            radius_max = 13,
        })
    end
end

if core.get_modpath("lucky_block") then
    dofile(modpath.."/lucky_block.lua")
end
