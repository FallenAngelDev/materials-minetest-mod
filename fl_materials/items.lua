
local tool_statsm = {maxlevel=2, uses=150, times={[1]=1.10, [2]=1.00, [3]=0.80}}
local tool_statsb = {maxlevel=1, uses=100, times={[3]=0.5}}

--- Itens

minetest.register_craftitem("fl_materials:copper_coin", {
    description = "Copper Coin",
    inventory_image = "copper_coin.png"
})

minetest.register_craftitem("fl_materials:silver_coin", {
    description = "Silver Coin",
    inventory_image = "silver_coin.png"
})

minetest.register_craftitem("fl_materials:gold_coin", {
    description = "Gold Coin",
    inventory_image = "gold_coin.png"
})

minetest.register_craftitem("fl_materials:meteorite_fragment",{

    description = "meteorite fragment",
    inventory_image = "meteorite_fragment.png"
})

minetest.register_craftitem("fl_materials:meteorite_ingot",{

    description = "meteorite ingot",
    inventory_image = "meteorite_ingot.png"
})

minetest.register_craftitem("fl_materials:fossil",{

    description = "Fossil",
    inventory_image = "fossil.png"
})

--- Tools

minetest.register_tool("fl_materials:meteorite_pick",{
    description = "Meteorite pickaxe",
    inventory_image = "tool_meteoritepick.png",
    range = 10,
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            cracky = tool_statsm
        },
        damage_groups = {fleshy=1}
    }
})

minetest.register_tool("fl_materials:bone_pick",{
    description = "Bone pickaxe",
    inventory_image = "tool_bonepick.png",
    tool_capabilities = {
        full_punch_interval=1,
        max_drop_level=1,
        groupcaps={
            cracky = tool_statsb
        },
        damage_groups = {fleshy=1}
    }
})

minetest.register_tool("fl_materials:meteorite_axe",{
    description = "Meteorite pickaxe",
    inventory_image = "tool_meteoriteaxe.png",
    range = 10,
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            choppy = tool_statsm
        },
        damage_groups = {fleshy=1}
    }
})

minetest.register_tool("fl_materials:bone_axe",{
    description = "Bone pickaxe",
    inventory_image = "tool_boneaxe.png",
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            choppy = tool_statsb
        },
        damage_groups = {fleshy=1}
    }
})

minetest.register_tool("fl_materials:bone_sword",{
    description = "Bone sword",
    inventory_image = "tool_bonesword.png",
    tool_capabilities = {
        full_punch_interval=0.2,
        max_drop_level=1,
        groupcaps={
            snappy = tool_statsb
        },
        damage_groups = {fleshy=2}
    }
})

minetest.register_tool("fl_materials:meteorite_sword",{
    description = "Meteorite sword",
    inventory_image = "tool_meteoritesword.png",
    range = 5,
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            snappy = tool_statsm
        },
        damage_groups = {fleshy=5}
    }
})


---Recipes

local v = "fl_materials:meteorite_ingot"
local b = "mobs_mc:bone"
local i = "default:stick"

minetest.register_craft({

    type = "shapeless",
    output = "fl_materials:meteorite_ingot",
    recipe = {"default:gold_ingot","default:gold_ingot","default:gold_ingot","default:gold_ingot",
    "fl_materials:meteorite_fragment","fl_materials:meteorite_fragment","fl_materials:meteorite_fragment","fl_materials:meteorite_fragment"}
    })

minetest.register_craft({
    output = "fl_materials:meteorite_pick",
    recipe = {
              {v,v,v},
              {"",i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_pick",
    recipe = {
              {b,b,b},
              {"",i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:meteorite_axe",
    recipe = {
              {v,v,""},
              {v,i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_axe",
    recipe = {
              {b,b,""},
              {b,i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:meteorite_sword",
    recipe = {
              {"",v,""},
              {"",v,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_sword",
    recipe = {
              {"",b,""},
              {"",b,""},
              {"",i,""}
    }
})

