-- Trigger
function(event, ...)
  local pumper = aura_env.config["pumper"]

  if not UnitExists(pumper) then
    return false
  end

  local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(pumper, "target") 

  return threatpct ~= nil and threatpct > 80
end

-- Untrigger
function(event, ...)
  local pumper = aura_env.config["pumper"]

  if not UnitExists(pumper) then
    return false
  end

  local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(pumper, "target") 

  return threatpct ~= nil and threatpct < 80
end
