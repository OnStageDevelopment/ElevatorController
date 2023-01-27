peripheral.find("modem", rednet.open)  --Finds Attached Modem and opens it ready for Rednet.

print("Choose Your Floor\n   0: Substage\n   G: Ground\n   1: Level 1\n   2: Level 2\n   3: FlyFloor 2\n   4: FlyFloor 3\n   5: Grid")
while true do
    local event, key, is_held = os.pullEvent("key")
    new_key = keys.getName(key)
    if new_key == "zero" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"substage"}',"liftnet.lift")
    elseif new_key == "g" or new_key == "G" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"ground"}',"liftnet.lift")
    elseif new_key == "one" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"level_1"}',"liftnet.lift")
    elseif new_key == "two" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"level_2"}',"liftnet.lift")
    elseif new_key == "three" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"flyfloor_2"}',"liftnet.lift")
    elseif new_key == "four" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"flyfloor_3"}',"liftnet.lift")
    elseif new_key == "five" then
        rednet.broadcast('{"id":1,"command":"floor","floor":"grid"}',"liftnet.lift")
    end

end