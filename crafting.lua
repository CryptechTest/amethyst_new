minetest.register_craft({
    output = "amethyst_new:basalt_block 9",
    recipe = {
        {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:basalt"},
        {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:basalt"},
        {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:basalt"},
    },
})

minetest.register_craft({
    output = "amethyst_new:calcite_block 9",
    recipe = {
        {"amethyst_new:calcite", "amethyst_new:calcite", "amethyst_new:calcite"},
        {"amethyst_new:calcite", "amethyst_new:calcite", "amethyst_new:calcite"},
        {"amethyst_new:calcite", "amethyst_new:calcite", "amethyst_new:calcite"},
    },
})

minetest.register_craft({
    output = "amethyst_new:basalt_brick 4",
    recipe = {
        {"amethyst_new:basalt", "amethyst_new:basalt"},
        {"amethyst_new:basalt", "amethyst_new:basalt"},
    },
})

minetest.register_craft({
    output = "amethyst_new:calcite_brick 4",
    recipe = {
        {"amethyst_new:calcite", "amethyst_new:calcite"},
        {"amethyst_new:calcite", "amethyst_new:calcite"},
    },
})

minetest.register_craft({
    output = "amethyst_new:checkerboard 4",
    recipe = {
        {"amethyst_new:calcite", "amethyst_new:basalt"},
        {"amethyst_new:basalt", "amethyst_new:calcite"},
    },
})

minetest.register_craft({
    output = "amethyst_new:amethyst_shard 9",
    recipe = {
        {"amethyst_new:amethyst"},
    },
})

minetest.register_craft({
    output = "amethyst_new:amethyst",
    recipe = {
        {"amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard"},
        {"amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard"},
        {"amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard", "amethyst_new:amethyst_shard"},
    },
})

minetest.register_craft({
    output = "amethyst_new:tinted_glass 2",
    recipe = {
        {"", "amethyst_new:amethyst_shard", ""},
        {"amethyst_new:amethyst_shard", "default:glass", "amethyst_new:amethyst_shard"},
        {"", "amethyst_new:amethyst_shard", ""},
    },
})

if minetest.get_modpath("mesecons") then
    lantern_craft_item = "group:mesecon_conductor_craftable"
else
    lantern_craft_item = "default:torch"
end

minetest.register_craft({
    output = "amethyst_new:lantern",
    recipe = {
        {"default:bronze_ingot", "amethyst_new:amethyst", "default:bronze_ingot"},
        {"amethyst_new:amethyst", lantern_craft_item, "amethyst_new:amethyst"},
        {"default:bronze_ingot", "amethyst_new:amethyst", "default:bronze_ingot"},
    },
})

minetest.register_craft({
    output = "amethyst_new:trapdoor_bronze",
    recipe = {
        {"default:bronze_ingot", "default:bronze_ingot"},
        {"default:bronze_ingot", "default:bronze_ingot"},
    }
})

minetest.register_craft({
    output = "amethyst_new:trapdoor_amethyst_bronze",
    recipe = {
        {"default:bronze_ingot", "default:bronze_ingot"},
        {"amethyst_new:amethyst", "amethyst_new:amethyst"},
    }
})
