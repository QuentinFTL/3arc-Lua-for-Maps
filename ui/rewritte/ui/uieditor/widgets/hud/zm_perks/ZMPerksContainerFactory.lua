require("ui.uieditor.widgets.HUD.ZM_Perks.PerkListItemFactory")
local perkListBase = {
    additional_primary_weapon = "specialty_giant_three_guns_zombies",
    dead_shot = "specialty_giant_ads_zombies",
    dive_to_nuke = "specialty_divetonuke_zombies",
    doubletap2 = "specialty_giant_doubletap_zombies",
    juggernaut = "specialty_giant_juggernaut_zombies",
    marathon = "specialty_giant_marathon_zombies",
    quick_revive = "specialty_giant_quickrevive_zombies",
    sleight_of_hand = "specialty_giant_fastreload_zombies",
    tombstone = "specialty_tombstone_zombies",
    widows_wine = "specialty_giant_widows_wine_zombies",
    electric_cherry = "specialty_blue_electric_cherry_zombies"
}

local function CheckExistantCF(PerkList, perkListBaseCF)
	if PerkList ~= nil then
		for index=1.000000, #PerkList, 1.000000 do
			if PerkList[index].properties.key == perkListBaseCF then
				return index
			end
		end
		return nil
	end
end

local function GetPerkSlotByCFAndValue(PerkList, perkListBaseCF, ModelValue)
	if PerkList ~= nil then
		for index=1.000000, #PerkList, 1.000000 do
			if PerkList[index].properties.key == perkListBaseCF then
				if PerkList[index].models.status ~= ModelValue then
					return index
				end
			end
		end
		return -1.000000
	end
end

local function InitPerks(PerkList, InstanceRef)
	if not PerkList.perksList then
		PerkList.perksList = {}
	end
	local PerksModelBase = Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.perks")
	local k, v, p = pairs(perkListBase)
	for PerkKey,value in k, v, p do
		local ModelValue = Engine.GetModelValue(Engine.GetModel(PerksModelBase, PerkKey))
		if ModelValue ~= nil then
			if 0.000000 < ModelValue then
				local IsPerkExist1 = CheckExistantCF(PerkList.perksList, PerkKey)
                local PerkSlot = GetPerkSlotByCFAndValue(PerkList.perksList, PerkKey, ModelValue)
				if not IsPerkExist1 then
					local props = {models = {image = value, status = ModelValue, newPerk = false},properties = {key = PerkKey} }
					table.insert(PerkList.perksList, props)
                elseif 0.000000 < PerkSlot then
						PerkList.perksList[PerkSlot].models.status = ModelValue
						local ZMPerksFactoryUIModel = Engine.GetModel(Engine.GetModelForController(InstanceRef), "ZMPerksFactory")
						local PerkKey = tostring(PerkSlot)
						local PerkStatutModel = Engine.GetModel(ZMPerksFactoryUIModel, (PerkKey .. ".status"))
                        Engine.SetModelValue(PerkStatutModel, ModelValue)
                end
			else
			    local IsPerkExist2 = CheckExistantCF(PerkList.perksList, PerkKey)
				if IsPerkExist2 then
					table.remove(PerkList.perksList, IsPerkExist2)
				end
			end
		end
	end
	if PerkList then
		for index1=1.000000, #PerkList.perksList, 1.000000 do
			local isNewPerk = (index1 == #PerkList.perksList)
			PerkList.perksList[index1].models.newPerk = isNewPerk
		end
		if PerkList then
            return true
		end
	else
		for index2=1.000000, #PerkList.perksList, 1.000000 do
			local PerkUIModelAtCurrentSlot = Engine.GetModel(PerksModelBase, PerkList.perksList[index2].properties.key)
			Engine.SetModelValue(PerkUIModelAtCurrentSlot, PerkList.perksList[index2].models.status)
		end
		return false
	end
end

local function DataSourcePerkInit(InstanceRef, PerkList)
	InitPerks(PerkList, InstanceRef)
	return PerkList.perksList
end

local function PreLoadCustom(HudRef, InstanceRef)
	for index,value in pairs(perkListBase) do
		local perkUiModel = Engine.CreateModel(Engine.CreateModel(Engine.GetModelForController(InstanceRef), "hudItems.perks"), index)
	    local function InitsPerks(ModelRef)
		    local PerksExists = InitPerks(HudRef.PerkList, InstanceRef)
            if PerksExists then
                HudRef.PerkList:updateDataSource()

		    end
	    end

		HudRef:subscribeToModel(perkUiModel, InitsPerks, false)
	end
end

CoD.ZMPerksContainerFactory = InheritFrom(LUI.UIElement)

function CoD.ZMPerksContainerFactory.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()

	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMPerksContainerFactory)
	Elem.id = "ZMPerksContainerFactory"
	Elem.soundSet = "default"
	Elem:setLeftRight(true, false, 0.000000, 151.000000)
	Elem:setTopBottom(true, false, 0.000000, 36.000000)
    Elem.anyChildUsesUpdateState = true
    
	if PreLoadCustom then
        PreLoadCustom(Elem, InstanceRef)
	end

	local perkList = LUI.UIList.new(HudRef, InstanceRef, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	perkList:makeFocusable()
	perkList:setLeftRight(true, false, 0.000000, 378.000000)
	perkList:setTopBottom(false, true, -36.000000, 0.000000)
	perkList:setWidgetType(CoD.PerkListItemFactory)
    perkList:setHorizontalCount(10.000000)
    perkList:setXRot(180)
	perkList:setDataSource("ZMPerksFactory")
	Elem:addElement(perkList)
    Elem.PerkList = perkList

	local function DefaultClipFn()
		Elem:setupElementClipCounter(1.000000)
		perkList:completeAnimation()
		Elem.PerkList:setAlpha(1.000000)
		Elem.clipFinished(perkList, {})
	end

	local function DefaultClipHideFn()
		Elem:setupElementClipCounter(1.000000)
		perkList:completeAnimation()
		Elem.PerkList:setAlpha(0.000000)
		Elem.clipFinished(perkList, {})
	end

	Elem.clipsPerState = {DefaultState = {DefaultClip = DefaultClipFn}, Hidden = {DefaultClip = DefaultClipHideFn}}

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

DataSources.ZMPerksFactory = DataSourceHelpers.ListSetup("ZMPerksFactory", DataSourcePerkInit, true)
