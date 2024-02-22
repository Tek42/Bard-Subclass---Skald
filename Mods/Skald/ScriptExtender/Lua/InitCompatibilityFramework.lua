---@diagnostic disable: undefined-global
modGuid = "179f1d6f-45aa-492a-9c72-7f2ff8f3feee"
subClassGuid = "501d72a9-04fe-443b-89ae-1260a9cfb064"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    SkaldSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "bard",
      subClassName = "Skald"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end