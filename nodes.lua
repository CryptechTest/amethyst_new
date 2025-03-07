minetest.register_node("amethyst_new:basalt", {
    description = "Basalt",
    tiles = {"amethyst_basalt.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:basalt_block", {
    description = "Basalt Block",
    tiles = {"amethyst_basalt_block.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:basalt_brick", {
    description = "Basalt Brick",
    tiles = {"amethyst_basalt_brick.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:calcite", {
    description = "Calcite",
    tiles = {"amethyst_calcite.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:calcite_block", {
    description = "Calcite Block",
    tiles = {"amethyst_calcite_block.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:calcite_brick", {
    description = "Calcite Brick",
    tiles = {"amethyst_calcite_brick.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:checkerboard", {
    description = "Checkerboard Block",
    tiles = {"amethyst_checkerboard.png"},
    paramtype2 = "facedir",
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("amethyst_new:amethyst", {
    description = "Amethyst Block",
    tiles = {"amethyst_block.png"},
    groups = {cracky = 3},
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("amethyst_new:amethyst_budding", {
    description = "Budding Amethyst Block",
    tiles = {"amethyst_block.png^[combine:16x80:0,-48=crack_anylength.png"},
    groups = {cracky = 3},
    drop = "amethyst_new:amethyst",
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("amethyst_new:cluster_small", {
    description = "Small Amethyst Cluster",
    tiles = {"amethyst_cluster_small.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 4,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-4/16, -7/16, -4/16, 4/16, -3/16, 4/16},
    },
    groups = {cracky = 3},
    drop = {
        max_items = 1,
        items = {
            items = {"amethyst_new:amethyst_shard"},
            rarity = 6,
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("amethyst_new:cluster_medium", {
    description = "Medium Amethyst Cluster",
    tiles = {"amethyst_cluster_medium.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 7,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, -2/16, 5/16},
    },
    groups = {cracky = 3},
    drop = {
        max_items = 1,
        items = {
            items = {"amethyst_new:amethyst_shard"},
            rarity = 3,
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("amethyst_new:cluster_large", {
    description = "Large Amethyst Cluster",
    tiles = {"amethyst_cluster_large.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 10,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3},
    drop = "amethyst_new:amethyst_shard",
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("amethyst_new:tinted_glass", {
    description = "Tinted Glass",
    drawtype = "glasslike_framed_optional",
    tiles = {"amethyst_tinted_glass.png", "amethyst_tinted_glass_detail.png"},
    use_texture_alpha = "blend",
    sunlight_propagates = false,
    groups = {cracky = 3},
    sounds = default.node_sound_glass_defaults(),
})

if minetest.get_modpath("doors") then
    doors.register("door_bronze", {
        tiles = {{name = "amethyst_bronze_door.png", backface_culling = true}},
        description = "Bronze Door",
        inventory_image = "amethyst_item_bronze_door.png",
        protected = true,
        groups = {node = 1, cracky = 1, level = 2},
        sounds = default.node_sound_metal_defaults(),
        sound_open = "doors_steel_door_open",
        sound_close = "doors_steel_door_close",
        gain_open = 0.2,
        gain_close = 0.2,
        recipe = {
			{"default:bronze_ingot", "default:bronze_ingot"},
			{"default:bronze_ingot", "default:bronze_ingot"},
			{"default:bronze_ingot", "default:bronze_ingot"},
		}
    })
end

if minetest.get_modpath("stairs") then
    stairs.register_stair_and_slab("basalt", "amethyst_new:basalt",
    {cracky = 2},
    {"amethyst_basalt.png"},
    "Basalt Stair",
    "Basalt Slab",
    default.node_sound_stone_defaults())
    
    stairs.register_stair_and_slab("basalt_block", "amethyst_new:basalt_block",
    {cracky = 2},
    {"amethyst_basalt_block.png"},
    "Basalt Block Stair",
    "Basalt Block Slab",
    default.node_sound_stone_defaults())
    
    stairs.register_stair_and_slab("basalt_brick", "amethyst_new:basalt_brick",
    {cracky = 2},
    {"amethyst_basalt_brick.png"},
    "Basalt Brick Stair",
    "Basalt Brick Slab",
    default.node_sound_stone_defaults())

    stairs.register_stair_and_slab("calcite", "amethyst_new:calcite",
    {cracky = 2},
    {"amethyst_calcite.png"},
    "Calcite Stair",
    "Calcite Slab",
    default.node_sound_stone_defaults())
    
    stairs.register_stair_and_slab("calcite_block", "amethyst_new:calcite_block",
    {cracky = 2},
    {"amethyst_calcite_block.png"},
    "Calcite Block Stair",
    "Calcite Block Slab",
    default.node_sound_stone_defaults())
    
    stairs.register_stair_and_slab("calcite_brick", "amethyst_new:calcite_brick",
    {cracky = 2},
    {"amethyst_calcite_brick.png"},
    "Calcite Brick Stair",
    "Calcite Brick Slab",
    default.node_sound_stone_defaults())
    
    stairs.register_stair_and_slab("checkerboard", "amethyst_new:checkerboard",
    {cracky = 2},
    {"amethyst_checkerboard.png"},
    "Checkerboard Block Stair",
    "Checkerboard Block Slab",
    default.node_sound_stone_defaults())
end

if minetest.get_modpath("walls") then
    walls.register("amethyst_new:basalt_brick_wall", "Basalt Brick Wall", "amethyst_basalt_brick.png", "amethyst_new:basalt_brick", default.node_sound_stone_defaults())
    walls.register("amethyst_new:calcite_brick_wall", "Calcite Brick Wall", "amethyst_calcite_brick.png", "amethyst_new:calcite_brick", default.node_sound_stone_defaults())
end

minetest.register_craftitem("amethyst_new:amethyst_shard", {
    description = "Amethyst Shard",
    inventory_image = "amethyst_shard.png",
})

if minetest.get_modpath("mesecons_mvps") then
    mesecon.register_mvps_stopper("amethyst_new:amethyst_budding")
end
