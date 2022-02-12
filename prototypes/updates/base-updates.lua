
-- TECH CHANGES
data.raw.technology['uranium-processing'].enabled = true
data.raw.technology['uranium-processing'].hidden = false

TECHNOLOGY('uranium-processing'):remove_pack('chemical-science-pack'):remove_prereq('chemical-science-pack')

TECHNOLOGY('chemical-science-pack'):add_prereq('nucleo')

RECIPE('chemical-science-pack'):add_ingredient({type = 'item', name = 'nuclear-sample', amount = 2})

RECIPE("nuclear-reactor"):add_unlock('uranium-processing'):remove_ingredient('super-steel')

--modify reactor to produce very little energy
data.raw.reactor["nuclear-reactor"].energy_source.effectivity = 0.2
data.raw.reactor["nuclear-reactor"].heat_buffer.connections = nil

TECHNOLOGY('atomic-bomb'):remove_prereq('domestication-mk02'):remove_prereq('uranium-mk03'):add_prereq('nucleo'):remove_pack('chemical-science-pack'):remove_pack('space-science-pack')

RECIPE('atomic-bomb'):replace_ingredient('fuelrod-mk01', 'pu-238'):replace_ingredient('neuromorphic-chip', 'advanced-circuit')
