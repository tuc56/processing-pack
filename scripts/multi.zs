//priority 0 so it loads after all other scripts
#priority 0

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.mekanism.api.ingredient.ItemStackIngredient;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.recipes.WrapperRecipe;
import crafttweaker.api.fluid.IFluidStack;

//item inputs. Does not accept tags.
val crush = [<item:contenttweaker:pure_cluster>, <item:contenttweaker:terrestrial_cluster>, <item:contenttweaker:infernal_cluster>, <item:contenttweaker:voidic_cluster>, <item:create:zinc_ingot>, <item:contenttweaker:core_gem>, <item:contenttweaker:pure_cluster>, <item:contenttweaker:epic_cluster>] as IItemStack[];
//item outputs.
val crushed = [<item:contenttweaker:purer_powder>, <item:contenttweaker:pure_terrestrial_sawdust>, <item:contenttweaker:pure_infernal_sawdust>, <item:contenttweaker:pure_voidic_sawdust>, <item:contenttweaker:zinc_dust>, <item:contenttweaker:core_dust>, <item:contenttweaker:pure_powder>, <item:contenttweaker:epic_powder>] as IItemStack[];
//machines
val crushers = [<recipetype:create:milling>, <recipetype:immersiveengineering:crusher>, <recipetype:create:crushing>, <recipetype:thermal:pulverizer>, <recipetype:mekanism:crushing>] as IRecipeManager[];
//minimum tier of the machine that is enabled
var enabled = [3, 5, 5, 5, 5, 5, 5, 3] as int[];
//the power used by machines that take a power param
var power = [500, 500, 500, 500, 500, 500, 500, 1000] as int[];

//loops through each defined machine
for i, crusher in crushers{
    //gets all the recipes of the machine
    var currentRecipes = crusher.getAllRecipes() as WrapperRecipe[];
    for j, item in crush {
        //init as 1 because the final recipe won't add 1 to count
        var count = 1;
        val length = currentRecipes.length;
        for z, recipe in currentRecipes {
            //don't add to the count if there's already a recipe with the ingredient
            if item in recipe.ingredients { 

            } else if (((crushers.length as ulong) as long) as double - enabled[j]) <= i && count == (length as long) as int {
                //check which recipetype we're doing currently and add a recipe to that
                if crusher == <recipetype:create:milling> {
                <recipetype:create:milling>.addRecipe("milling"+"_"+j as string, [crushed[j]], item);
                }
                if crusher == <recipetype:immersiveengineering:crusher> {
                <recipetype:immersiveengineering:crusher>.addRecipe("crushing_immersive"+"_"+j as string, item, power[j], crushed[j]);
                }
                if crusher == <recipetype:create:crushing> {
                <recipetype:create:crushing>.addRecipe("crushing_create"+"_"+j as string, [crushed[j]], item);
                }
                if crusher == <recipetype:thermal:pulverizer> {
                <recipetype:thermal:pulverizer>.addRecipe("pulverising_"+j as string, [crushed[j]], item, 0, power[j]);
                }
                if crusher == <recipetype:mekanism:crushing> {
                <recipetype:mekanism:crushing>.addRecipe("crushing_mekanism_"+j as string, ItemStackIngredient.from(item), crushed[j]);
                }
            } else {
                count++;
            }
        }
    } 
}