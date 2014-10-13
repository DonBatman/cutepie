
--cute block

local function update_node(pos, node) 
	minetest.set_node(pos, node)
end

local function punch(pos)
	local meta = minetest.get_meta(pos)
	local state = meta:get_int("state")
	local me = minetest.get_node(pos)
	local tmp_node
	local tmp_node2
	oben = {x=pos.x, y=pos.y, z=pos.z}
		if state == 1 then
			state = 0
			tmp_node = {name="cutepie:cute_block", param1=me.param1, param2=me.param2}
		else
			state = 1
			tmp_node = {name="cutepie:cute_block_light", param1=me.param1, param2=me.param2}
		end
		update_node(pos, tmp_node)
		meta:set_int("state", state)
end


minetest.register_node("cutepie:cute_block", {
	description = "Cutepie Block",
	drawtype = "normal",
	tiles = {"cute_block_tb.png","cute_block_tb.png","cute_block.png","cute_block.png","cute_block.png","cute_block.png"},
	paramtype = "light",
  	paramtype2 = "facedir",
	groups = {cracky = 2},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,
})
--cute block light

minetest.register_node("cutepie:cute_block_light", {
--	description = "Cutepie Block Light",
	drawtype = "normal",
	tiles = {"cute_block_tb.png","cute_block_tb.png","cute_block.png","cute_block.png","cute_block.png","cute_block.png"},
	paramtype = "light",
  	paramtype2 = "facedir",
	light_source = 14,
	groups = {cracky = 2},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,
})

-- cute cobble

minetest.register_node("cutepie:cute_cobble", {
	description = "Cutepie Cobble",
	drawtype = "normal",
	tiles = {"cute_cobble.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

-- cute purple tile

minetest.register_node("cutepie:cute_purple_tile", {
	description = "Cutepie Purple Tile",
	drawtype = "normal",
	tiles = {"cute_purple_tile.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

-- cute blocks

minetest.register_node("cutepie:cute_blocks", {
	description = "Cutepie Beans",
	light_source = 7,
	drawtype = "normal",
	tiles = {
		{name="cute_blocks_ani.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.8}},
		},
	paramtype = "light",
	groups = {cracky = 2},

})


--Cute Cane

minetest.register_node("cutepie:cute_cane", {
	description = "Cutepie Cane",
	tiles = {
		"cute_cane.png",
		"cute_cane.png",
		"cute_cane.png",
		"cute_cane.png",
		"cute_cane.png",
		"cute_cane.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.1875, 0.25, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.25, 0.1875, 0.5, 0.25}, -- NodeBox2
			{-0.125, -0.5, -0.3125, 0.125, 0.5, 0.3125}, -- NodeBox3
			{-0.3125, -0.5, -0.125, 0.3125, 0.5, 0.125}, -- NodeBox4
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.1875, 0.25, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.25, 0.1875, 0.5, 0.25}, -- NodeBox2
			{-0.125, -0.5, -0.3125, 0.125, 0.5, 0.3125}, -- NodeBox3
			{-0.3125, -0.5, -0.125, 0.3125, 0.5, 0.125}, -- NodeBox4
		}
	}
})

--cute light

minetest.register_node("cutepie:cute_light", {
	description = "Cutepie Light",
	tiles = {
		"cute_yellow.png",
		"cute_yellow.png",
		"cute_yellow.png",
		"cute_yellow.png",
		"cute_smile.png",
		"cute_smile.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, snappy=2},
	sunlight_propagates = true,
	light_source = 14,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.1875, 0.375, 0.5, 0.1875, 0.5}, -- NodeBox1
			{-0.1875, -0.5, 0.375, 0.1875, 0.5, 0.5}, -- NodeBox2
			{-0.4375, -0.3125, 0.375, 0.4375, 0.3125, 0.5}, -- NodeBox3
			{-0.3125, -0.4375, 0.375, 0.3125, 0.4375, 0.5}, -- NodeBox4
		}
	}
})



-- cute pinknblue

minetest.register_node("cutepie:cute_pinknblue", {
	description = "Cutepie Pink n Blue",
	drawtype = "normal",
	paramtype = "light",
	tiles = {"cute_pinknblue.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

-- cute greenx

minetest.register_node("cutepie:cute_greenx", {
	description = "Cutepie Green X",
	drawtype = "normal",
	paramtype = "light",
	tiles = {"cute_greenx.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

-- cute greennorange

minetest.register_node("cutepie:cute_greennorange", {
	description = "Cutepie Green n Orange",
	drawtype = "normal",
	paramtype = "light",
	tiles = {"cute_greennorange.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

-- cute bluex

minetest.register_node("cutepie:cute_bluex", {
	description = "Cutepie Blue X",
	drawtype = "normal",
	paramtype = "light",
	tiles = {"cute_bluex.png"},
	paramtype = "light",
	groups = {cracky = 2},

})

--Crafts
---------------------------------------------------

--cute block
minetest.register_craft({
	output = "cutepie:cute_block 6",
	recipe = {
		{'wool:black', 'wool:yellow', 'wool:black'},
		{'wool:yellow', 'wool:yellow', 'wool:yellow'},
		{'wool:black', 'wool:yellow', 'wool:black'}
	}
})

--cute block light
minetest.register_craft({
	output = "cutepie:cute_block_light 1",
	recipe = {
		{'cutepie:cute_block', 'default:torch', ''},
		{'', '', ''},
		{'', '', ''}
	}
})

--cute cobble
minetest.register_craft({
	output = "cutepie:cute_cobble 6",
	recipe = {
		{'dye:red', 'dye:yellow', 'dye:green'},
		{'default:cobble', 'dye:blue', 'default:cobble'},
		{'', '', ''}
	}
})

--cute purple tile
minetest.register_craft({
	output = "cutepie:cute_purple_tile 2",
	recipe = {
		{'dye:red', 'dye:blue', ''},
		{'cutepie:cute_block', 'cutepie:cute_block', ''},
		{'', '', ''}
	}
})

--cute cane
minetest.register_craft({
	output = "cutepie:cute_cane 6",
	recipe = {
		{'wool:red', 'wool:white', 'wool:red'},
		{'wool:white', 'wool:red', ''},
		{'wool:red', '', ''}
	}
})

--cute blocks
minetest.register_craft({
	output = "cutepie:cute_blocks 6",
	recipe = {
		{'cutepie:cute_cobble', 'cutepie:cute_cobble', 'cutepie:cute_cobble'},
		{'cutepie:cute_cobble', 'cutepie:cute_light', 'cutepie:cute_cobble'},
		{'cutepie:cute_cobble', 'cutepie:cute_cobble', 'cutepie:cute_cobble'}
	}
})

--cute light
minetest.register_craft({
	output = "cutepie:cute_light 2",
	recipe = {
		{'wool:yellow', 'default:torch', 'wool:yellow'},
		{'wool:black', 'wool:yellow', 'wool:black'},
		{'wool:yellow', 'default:torch', 'wool:yellow'}
	}
})

--cute pinknblue
minetest.register_craft({
	output = "cutepie:cute_pinknblue 1",
	recipe = {
		{'cutepie:cute_cobble', 'dye:pink', ''},
		{'', '', ''},
		{'', '', ''}
	}
})

--cute blue x
minetest.register_craft({
	output = "cutepie:cute_bluex 1",
	recipe = {
		{'cutepie:cute_pinknblue', '', ''},
		{'', '', ''},
		{'', '', ''}
	}
})
--cute greennorange
minetest.register_craft({
	output = "cutepie:cute_greennorange 1",
	recipe = {
		{'cutepie:cute_cobble', 'dye:orange', ''},
		{'', '', ''},
		{'', '', ''}
	}
})
--cute green x
minetest.register_craft({
	output = "cutepie:cute_greenx 1",
	recipe = {
		{'cutepie:cute_greennorange', '', ''},
		{'', '', ''},
		{'', '', ''}
	}
})
