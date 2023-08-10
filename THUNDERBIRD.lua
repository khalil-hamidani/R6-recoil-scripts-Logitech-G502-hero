EnablePrimaryMouseButtonEvents  (true);
local recoil
function OnEvent(event,arg)
        if IsMouseButtonPressed(3)then
            repeat
		        if IsKeyLockOn("capslock")then
			        recoil = 6
		        else
			        recoil = 0
		        end
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(0,recoil)
                        Sleep(9)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
end