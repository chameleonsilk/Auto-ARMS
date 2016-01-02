Setup = function(_triggerZone, _flag)
  mist.flagFunc.units_in_zones{ 
   units = {'[red][plane]'}, 
   zones = {'_triggerZone'},
   flag = _flag, 
   radius = 80000, 
   stopflag = _flag, 
   --req_num = 1, 
   zone_type = 'sphere', 
   interval = 15, 
   toggle = true,
 } 
 end
 
 
 
Respawners = function(_groupName, _type)
      --if Group.getByName(_groupName) and Group.getByName(_groupName):isExist() == false then
     -- trigger.action.activateGroup(Group.getByName(_groupName))
      --end
      
      if _type == "MiG29A" then
          if MiG29A >= 1 then      
                mist.respawnGroup(_groupName, true)
                MiG29A = MiG29A - 1
                local cntrlr = Group.getByName(_groupName)        
                local thisPlane = cntrlr:getController()
                thisPlane:setOption(AI.Option.Air.id.RTB_ON_BINGO, false)
                thisPlane:setOption(AI.Option.Air.id.RADAR_USING, AI.Option.Air.val.RADAR_USING.FOR_CONTINUOUS_SEARCH)
                thisPlane:setOption(AI.Option.Air.id.ROE, AI.Option.Air.val.ROE.OPEN_FIRE_WEAPON_FREE)
                thisPlane:setOption(AI.Option.Air.id.REACTION_ON_THREAT, AI.Option.Air.val.REACTION_ON_THREAT.EVADE_FIRE)
                thisPlane:setOption(AI.Option.Air.id.FLARE_USING, AI.Option.Air.val.FLARE_USING.WHEN_FLYING_NEAR_ENEMIES)
                mist.scheduleFunction(Garbage_Collect, {_groupName}, timer.getTime() + antiquatedGroupTime)
                trigger.action.outText("REDFORCE SPAWNED MIG29A REINFORCEMENT" .. MiG29A, 120)
             -- return
              end
              trigger.action.outText("RED FORCE HAS NO REMAINING MIG29A", 4)
             -- trigger.action.setUserFlag('150',true)
          end
          
            if _type == "MiG21" then
          if MiG21 >= 1 then      
                mist.respawnGroup(_groupName, true)
                MiG21 = MiG21 - 1
                local cntrlr = Group.getByName(_groupName)        
                local thisPlane = cntrlr:getController()
                thisPlane:setOption(AI.Option.Air.id.RTB_ON_BINGO, false)
                thisPlane:setOption(AI.Option.Air.id.RADAR_USING, AI.Option.Air.val.RADAR_USING.FOR_CONTINUOUS_SEARCH)
                thisPlane:setOption(AI.Option.Air.id.ROE, AI.Option.Air.val.ROE.OPEN_FIRE_WEAPON_FREE)
                thisPlane:setOption(AI.Option.Air.id.REACTION_ON_THREAT, AI.Option.Air.val.REACTION_ON_THREAT.EVADE_FIRE)
                thisPlane:setOption(AI.Option.Air.id.FLARE_USING, AI.Option.Air.val.FLARE_USING.WHEN_FLYING_NEAR_ENEMIES)
                mist.scheduleFunction(Garbage_Collect, {_groupName}, timer.getTime() + antiquatedGroupTime)
                trigger.action.outText("REDFORCE SPAWNED MIG21Bis REINFORCEMENT" .. MiG21, 120)
          --    return
              end
              trigger.action.outText("RED FORCE HAS NO REMAINING MIG21Bis", 4)
             -- trigger.action.setUserFlag('150',true)
          end
          
            if _type == "MiG23" then
          if MiG23 >= 1 then      
                mist.respawnGroup(_groupName, true)
                MiG23 = MiG23 - 1
                local cntrlr = Group.getByName(_groupName)        
                local thisPlane = cntrlr:getController()
                thisPlane:setOption(AI.Option.Air.id.RTB_ON_BINGO, false)
                thisPlane:setOption(AI.Option.Air.id.RADAR_USING, AI.Option.Air.val.RADAR_USING.FOR_CONTINUOUS_SEARCH)
                thisPlane:setOption(AI.Option.Air.id.ROE, AI.Option.Air.val.ROE.OPEN_FIRE_WEAPON_FREE)
                thisPlane:setOption(AI.Option.Air.id.REACTION_ON_THREAT, AI.Option.Air.val.REACTION_ON_THREAT.EVADE_FIRE)
                thisPlane:setOption(AI.Option.Air.id.FLARE_USING, AI.Option.Air.val.FLARE_USING.WHEN_FLYING_NEAR_ENEMIES)
              --  mist.scheduleFunction(Garbage_Collect, {_groupName}, timer.getTime() + antiquatedGroupTime)
                trigger.action.outText("REDFORCE SPAWNED MIG23 REINFORCEMENT" .. MiG23, 120)
        --      return
              end
              trigger.action.outText("RED FORCE HAS NO REMAINING MIG23", 4)
             -- trigger.action.setUserFlag('150',true)
          end
          
       
              
end


--  function Garbage_Collect(_unitsRemoved)
--  trigger.action.outText("GARBAGE COLLECTOR WAS USED" .. " Interceptor:" .. MiG29A, 120)
--  if _unitsRemoved then
--   Removethis = _unitsRemoved:getUnits()[1]
--  if Removethis or Unit.inAir(Removethis) == false then
--		Removethis:destroy()
  -- end
    
  --  Removethis = _unitsRemoved:getUnits()[2]
  --if Removethis or Unit.inAir(Removethis) == false then
	--	Removethis:destroy()
--  end  
--end
--end
