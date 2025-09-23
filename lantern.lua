local lantern_rules = {
    {x = 1, y = 0, z = 0},
    {x =-1, y = 0, z = 0},
    {x = 0, y = 1, z = 0},
    {x = 0, y =-1, z = 0},
    {x = 0, y = 0, z = 1},
    {x = 0, y = 0, z =-1},
}

local on_def = {
    description = "Bronze Amethyst Lantern",
    tiles = {"amethyst_block.png^amethyst_lantern_frame.png"},
    groups = {cracky = 1, level = 2},
    paramtype = "light",
    light_source = 14,
    sounds = default.node_sound_metal_defaults(),
}

local off_def = {
    description = "Bronze Amethyst Lantern",
    tiles = {"amethyst_block.png^amethyst_lantern_frame.png"},
    groups = {cracky = 1, level = 2, not_in_creative_inventory = 1},
    drop = "amethyst_new:lantern",
    sounds = default.node_sound_metal_defaults(),
}

if core.get_modpath("mesecons") then
    on_def.mesecons = {receptor = {
            rules = lantern_rules,
            state = mesecon.state.on,
        },
        effector = {
            rules = lantern_rules,
            action_on = function (pos, node)
                node.name = "amethyst_new:lantern_off"
                core.swap_node(pos, node)
                mesecon.receptor_off(pos, lantern_rules)
            end
    }}
    off_def.mesecons = {receptor = {
            rules = lantern_rules,
            state = mesecon.state.off,
        },
        effector = {
            rules = lantern_rules,
            action_on = function (pos, node)
                node.name = "amethyst_new:lantern"
                core.swap_node(pos, node)
                mesecon.receptor_on(pos, lantern_rules)
            end
    }}
else
    off_def.on_punch = function(pos, node, puncher)
        local name = puncher:get_player_name() or ""
        if core.is_protected(pos, name) then return end
        node.name = "amethyst_new:lantern"
        core.swap_node(pos, node)
    end
    on_def.on_punch = function(pos, node, puncher)
        local name = puncher:get_player_name() or ""
        if core.is_protected(pos, name) then return end
        node.name = "amethyst_new:lantern_off"
        core.swap_node(pos, node)
    end
end

core.register_node("amethyst_new:lantern", on_def)
core.register_node("amethyst_new:lantern_off", off_def)
