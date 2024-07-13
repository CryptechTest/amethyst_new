minetest.register_node("amethyst_new:lantern", {
    description = "Bronze Amethyst Lantern",
    tiles = {"amethyst_block.png^amethyst_lantern_frame.png"},
    groups = {cracky = 1, level = 2},
    paramtype = "light",
    light_source = 14,
    on_punch = function(pos, node, puncher)
        local name = puncher:get_player_name() or ""
        if minetest.is_protected(pos, name) then return end
        node.name = "amethyst_new:lantern_off"
        minetest.swap_node(pos, node)
    end,
    sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("amethyst_new:lantern_off", {
    description = "Bronze Amethyst Lantern",
    tiles = {"amethyst_block.png^amethyst_lantern_frame.png"},
    groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
    drop = "amethyst_new:lantern",
    on_punch = function(pos, node, puncher)
        local name = puncher:get_player_name() or ""
        if minetest.is_protected(pos, name) then return end
        node.name = "amethyst_new:lantern"
        minetest.swap_node(pos, node)
    end,
    sounds = default.node_sound_metal_defaults(),
})
