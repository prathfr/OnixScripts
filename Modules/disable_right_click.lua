name = "Disable Right Click"
description = "Disables right click when swords or tridents are equipped"

heldItem = ""
function update()
    local held = player.inventory().selectedItem()
    if held then heldItem = held.name else heldItem = "" end
end

event.listen("MouseInput", function (btn, down)
    if btn == 2 and down then
        if heldItem:find("sword") or heldItem:find("trident") then return true end
    end
end)