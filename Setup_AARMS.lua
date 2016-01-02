_flag = 0
antiquatedGroupTime = 30

--100 nalchik
--200 beslan
--300 mozdok
--400 minvody

MiG29A = 1 -- Enemy force has 1 MiG-29A with R-27R missiles
MiG21 = 4 -- Enemy force has 4 MiG-21Bis
MiG23 = 3 -- Enemy force has 3 MiG-23MLDs

--MiG23start = 0
--MiG21start = 0
--MiG29Astart = 0

MiG23start = MiG23
MiG21start = MiG21
MiG29Astart = MiG29A

Setup("Nalchik_Perimeter", 100) -- create zone at Nalchik
--Setup("Beslan_Perimeter", 200) -- create zone at Nalchik
--Setup("Mozdok_Perimeter", 300) -- create zone at Nalchik
--Setup("MinVody_Perimeter", 400) -- create zone at Nalchik

--Nalchik = true
----------------------------
check_presence = false
--
function Main_Logic(arg, time)
local makechoice = math.random(1,3)


    check_presence = trigger.misc.getUserFlag(100)  
    
    if check_presence then
      if makechoice == 1 then
      local stringName = "Nalchik"
      local typeName = "MiG29A"
      local summon = stringName .. " " .. typeName
      trigger.action.outText("DEBUG:" .. " " .. summon , 4)

                              if MiG29A == MiG29Astart then
             trigger.action.outText("DEBUG:" .. "Current:" .. tostring(MiG29A) .. "Start:" .. tostring(MiG29Astart) , 10)
             trigger.action.activateGroup(Group.getByName(summon))
            end
      
      end
      
      if makechoice == 2 then
      local stringName = "Nalchik"
      local typeName = "MiG21"
      local summon = stringName .. " " .. typeName
      trigger.action.outText("DEBUG:" .. " " .. summon , 4)
           
           
                       if MiG21 == MiG21start then
            trigger.action.outText("DEBUG:" .. "Current:" .. tostring(MiG21) .. "Start:" .. tostring(MiG21start), 10)
            trigger.action.activateGroup(Group.getByName(summon))
            
            end
           
      end
      
      if makechoice == 3 then
      local stringName = "Nalchik"
      local typeName = "MiG23"
      local summon = stringName .. " " .. typeName
      trigger.action.outText("DEBUG:" .. " " .. summon , 4)
         

            if MiG23 == MiG23start then
            trigger.action.outText("DEBUG:" .. "Current:" .. tostring(MiG23) .. "Start:" .. tostring(MiG23start) , 10)
            trigger.action.activateGroup(Group.getByName(summon))
            
            end         
   
      end
    

            

            

    
         
      if not Group.getByName(summon) then
    Respawners(summon, typeName)
    end
    end
    trigger.action.outText("DEBUG: Scheduler is thinking", 4)
return time + 5
end
	
  timer.scheduleFunction(Main_Logic, nil, timer.getTime() + 5)
