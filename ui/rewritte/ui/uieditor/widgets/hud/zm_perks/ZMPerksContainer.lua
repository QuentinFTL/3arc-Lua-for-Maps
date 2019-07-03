local table0 = {
    additional_primary_weapon = "specialty_three_guns_zombies",
    dead_shot = "specialty_ads_zombies",
    dive_to_nuke = "specialty_divetonuke_zombies",
    doubletap2 = "specialty_doubletap_zombies",
    juggernaut = "specialty_juggernaut_zombies",
    marathon = "specialty_marathon_zombies",
    quick_revive = "specialty_quickrevive_zombies",
    sleight_of_hand = "specialty_fastreload_zombies",
    tombstone = "specialty_tombstone_zombies",
    widows_wine = "specialty_widows_wine_zombies",
}

CoD.ZMPerksContainer = InheritFrom(LUI.UIElement)

local function CheckExistantCF(PerkList, PerkKey)--__FUNC_529_
	if PerkList ~= nil then
		for index=1.000000, #PerkList, 1.000000 do
			if PerkList[index].properties.key == PerkKey then
				return index
			end
		end
		return nil
	end
end

local function InitPerks(PerkList, InstanceRef)
	if not PerkList.perksList then
		PerkList.perksList = {}
	end
	local PerkModelBase = Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.perks")
	local k, v, p = pairs(perkListBase)
	for PerkKey,value in k, v, p do
		local ModelValue = Engine.GetModelValue(Engine.GetModel(PerkModelBase, PerkKey))
		if ModelValue ~= nil then
			if 0.000000 < ModelValue then
				local isPerkExist1 = CheckExistantCF(PerkList.perksList, PerkKey)
				if not isPerkExist1 then
                    local props = {models = {image = value, status = ModelValue, newPerk = false},properties = {key = PerkKey} }
					table.insert(PerkList.perksList, props)
                end
			else
				local isPerkExist2 = CheckExistantCF(PerkList.perksList, PerkKey)
				if isPerkExist2 then
					table.remove(PerkList.perksList, isPerkExist2)
				end
			end
		end
    end
    if PerkList then
	    for index1=1.000000, #PerkList.perksList, 1.000000 do
	    	local returnval9 = (index1 == #PerkList.perksList)
	    	PerkList.perksList[index1].models.newPerk = returnval9
        end
        if PerkList then
            return true
        end
	else
		for index2=1.000000, #PerkList.perksList, 1.000000 do
			local returnval10 = Engine.GetModel(returnval1, PerkList.perksList[index2].properties.key)
			Engine.SetModelValue(returnval10, PerkList.perksList[index2].models.status)
		end
		return false
	end
end

local function DataSourceInit(InstanceRef, PerkList)
	InitPerks(PerkList, InstanceRef)
	return PerkList.perksList
end

local function PreLoadCustom(Elem, InstanceRef)
	local PerkModelBase = Engine.CreateModel(Engine.GetModelForController(InstanceRef), "hudItems.perks")
	for index,value in pairs(table0) do
        local PerkModel = Engine.CreateModel(PerkModelBase, index)
        
	    local function PerkModelUpdate(ModelRef)
	    	if InitPerks(Elem.PerkList, InstanceRef) then
	    		Elem.PerkList:updateDataSource()
	    	end
	    end

		Elem:subscribeToModel(PerkModel, PerkModelUpdate, false)
	end
end

function CoD.ZMPerksContainer.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadCustom then
		PreLoadCustom(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMPerksContainer)
	Elem.id = "ZMPerksContainer"
	Elem.soundSet = "default"
	Elem:setLeftRight(true, false, 0.000000, 151.000000)
	Elem:setTopBottom(true, false, 0.000000, 36.000000)
    Elem.anyChildUsesUpdateState = true
    
	local perkList = LUI.UIList.new(HudRef, InstanceRef, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	perkList:makeFocusable()
	perkList:setLeftRight(true, false, 0.000000, 264.000000)
	perkList:setTopBottom(false, true, -36.000000, 0.000000)
	perkList:setWidgetType(CoD.PerkListItem)
	perkList:setHorizontalCount(7.000000)
    perkList:setDataSource("ZMPerks")
    
	Elem:addElement(perkList)
	Elem.PerkList = perkList

	local function DSDefaultClip()
		Elem:setupElementClipCounter(1.000000)
		perkList:completeAnimation()
		Elem.PerkList:setAlpha(1.000000)
		Elem.clipFinished(perkList, {})
	end

	local function HiddenDefaultClip()
		Elem:setupElementClipCounter(1.000000)
		perkList:completeAnimation()
		Elem.PerkList:setAlpha(0.000000)
		Elem.clipFinished(perkList, {})
	end

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = DSDefaultClip
        },
        Hidden =
        {
            DefaultClip = HiddenDefaultClip
        }
    }
    local function HiddenCondition(arg0, arg2, arg3)
        if IsModelValueTrue(InstanceRef, "hudItems.playerSpawned") and
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_HUD_VISIBLE) and
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_HUD_HARDCORE) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_GAME_ENDED) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IN_KILLCAM) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_UI_ACTIVE) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IS_SCOPED) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IN_VEHICLE) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC) and not
        Engine.IsVisibilityBitSet(InstanceRef, Enum.UIVisibilityBit.BIT_EMP_ACTIVE) then
            return false
        else
            return true
        end
    end
    
	Elem:mergeStateConditions({{stateName = "Hidden", condition = HiddenCondition}})
    local function PlayerSpawnCallback(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
            modelName = "hudItems.playerSpawned"})
    end
    
    local function MergeBitVisible(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE})
    end
    
    local function MergeBitWeapon(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE})
    end
    
    local function MergeBitHardcore(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE})
    end
    
    local function MergeBitEndGame(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED})
    end
    
    local function MergeBitDemoMovie(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM})
    end
    
    local function MergeBitDemoHidden(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN})
    end
    
    local function MergeBitInKillcam(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM})
    end
    
    local function MergeBitFlash(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED})
    end
    
    local function MergeBitActive(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE})
    end
    
    local function MergeBitScoped(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED})
    end
    
    local function MergeBitVehicle(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE})
    end
    
    local function MergeBitMissile(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE})
    end
    
    local function MergeBitBoardOpen(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN})
    end
    
    local function MergeBitStaticKill(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC})
    end
    
    local function MergeBitEmpActive(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE})
    end
    
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.playerSpawned"), PlayerSpawnCallback)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE), MergeBitVisible)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE), MergeBitWeapon)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE), MergeBitHardcore)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED), MergeBitEndGame)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM), MergeBitDemoMovie)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN), MergeBitDemoHidden)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM), MergeBitInKillcam)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED), MergeBitFlash)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE), MergeBitActive)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED), MergeBitScoped)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE), MergeBitVehicle)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE), MergeBitMissile)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN), MergeBitBoardOpen)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC), MergeBitStaticKill)
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE), MergeBitEmpActive)
    
    perkList.id = "PerkList"
    
	local function CloseEvent(SenderObj)
		SenderObj.PerkList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

DataSources.ZMPerks = DataSourceHelpers.ListSetup("ZMPerks", DataSourceInit, true)
