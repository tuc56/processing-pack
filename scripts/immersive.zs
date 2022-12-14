<recipetype:immersiveengineering:crusher>.addRecipe("lollipellet", <item:contenttweaker:graphite_lollipop>, 500, <item:contenttweaker:graphite_dust>, <item:contenttweaker:bronze_half_dust>);

<recipetype:immersiveengineering:metal_press>.addRecipe("rod_bronze_from_press", <tag:items:forge:ingots/bronze>, <item:immersiveengineering:mold_rod>, 1000, <item:contenttweaker:bronze_rod> * 2);
<recipetype:immersiveengineering:metal_press>.addRecipe("nickel_wire_from_press", <tag:items:forge:ingots/nickel>, <item:immersiveengineering:mold_wire>, 1000, <item:contenttweaker:nickel_wire> * 2);
<recipetype:immersiveengineering:metal_press>.addRecipe("uncommon_plate", <item:contenttweaker:uncommon_plastic>.withTag({SequencedAssembly: {Progress: 0.6 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 3 as int}}), <item:immersiveengineering:mold_plate>, 1000, <item:contenttweaker:uncommon_plate>.withTag({SequencedAssembly: {Progress: 0.8 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 4 as int}}));

<recipetype:immersiveengineering:squeezer>.addRecipe("cactus", <item:minecraft:cactus>, 1000, <item:contenttweaker:cactus_pulp>);
<recipetype:immersiveengineering:crusher>.addRecipe("cactus_2", <item:contenttweaker:cactus_pulp>, 1000, <item:contenttweaker:cactus_shreds>, <item:thermal:niter_dust>);

<recipetype:immersiveengineering:crusher>.addRecipe("gunpowder", <item:minecraft:gunpowder>, 1000, <item:immersiveengineering:dust_sulfur>, <item:mekanism:dust_coal>);

<recipetype:immersiveengineering:metal_press>.addRecipe("lumium_plate", <tag:items:forge:ingots/lumium>, <item:immersiveengineering:mold_plate>, 1000, <item:thermal:lumium_plate>);
