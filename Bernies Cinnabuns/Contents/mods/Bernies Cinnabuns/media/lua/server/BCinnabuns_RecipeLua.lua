function Recipe.OnCanPerform.TakeCinnabunsFromTray(recipe, playerObj, item)
    return item and instanceof(item, "Food") and (item:isCooked() or item:isBurnt())
end

function Recipe.OnCreate.TakeCinnabunsFromTray(items, result, player)
    for i = 6, 1, -1 do
        player:getInventory():AddItem("BCinnabuns.BCinnabun");
    end
end

function Recipe.OnCreate.PutCakeBatterInBakingPan(items, result, player)
    player:getInventory():AddItem("Base.Bowl");
end