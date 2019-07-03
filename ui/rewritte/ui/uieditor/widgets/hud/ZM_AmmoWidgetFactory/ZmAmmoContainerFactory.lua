require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmoFactory")

CoD.ZmAmmoContainerFactory = InheritFrom(LUI.UIElement)

function CoD.ZmAmmoContainerFactory.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmAmmoContainerFactory)
	Elem.id = "ZmAmmoContainerFactory"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 430.000000)
	Elem:setTopBottom(true, false, 0.000000, 249.000000)
    Elem.anyChildUsesUpdateState = true
    
	local AmmoFactory = CoD.ZmAmmoFactory.new(HudRef, InstanceRef)
	AmmoFactory:setLeftRight(false, true, -430.000000, 0.000000)
	AmmoFactory:setTopBottom(false, true, -249.000000, 0.000000)

    local function HudStartAmmoContainer(Unk1, Unk2, Unk3)
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
            return true
        else
            return false
        end
    end


	AmmoFactory:mergeStateConditions({{stateName = "HudStart", condition = HudStartAmmoContainer}})

    local function viewmodelNameCallback(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
            modelName = "currentWeapon.viewmodelWeaponName"})
    end

    local function PlayerSpawnCallback(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
            modelName = "hudItems.playerSpawned"})
    end
    
    local function MergeBitVisible(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation", 
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE})
    end
    
    local function MergeBitWeapon(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE})
    end
    
    local function MergeBitHardcore(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE})
    end
    
    local function MergeBitEndGame(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED})
    end
    
    local function MergeBitDemoMovie(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM})
    end
    
    local function MergeBitDemoHidden(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN})
    end
    
    local function MergeBitInKillcam(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM})
    end
    
    local function MergeBitFlash(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED})
    end
    
    local function MergeBitActive(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE})
    end
    
    local function MergeBitScoped(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED})
    end
    
    local function MergeBitVehicle(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE})
    end
    
    local function MergeBitMissile(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE})
    end
    
    local function MergeBitBoardOpen(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN})
    end
    
    local function MergeBitStaticKill(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC})
    end
    
    local function MergeBitEmpActive(ModelRef)
        HudRef:updateElementState(AmmoFactory, {name = "model_validation",
            menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE})
    end
    
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "currentWeapon.viewmodelWeaponName"), viewmodelNameCallback)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.playerSpawned"), PlayerSpawnCallback)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE), MergeBitVisible)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE), MergeBitWeapon)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE), MergeBitHardcore)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED), MergeBitEndGame)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM), MergeBitDemoMovie)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN), MergeBitDemoHidden)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM), MergeBitInKillcam)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED), MergeBitFlash)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE), MergeBitActive)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED), MergeBitScoped)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE), MergeBitVehicle)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE), MergeBitMissile)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN), MergeBitBoardOpen)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC), MergeBitStaticKill)
    AmmoFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE), MergeBitEmpActive)

	Elem:addElement(AmmoFactory)
	Elem.ZmAmmo = AmmoFactory

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(1.000000)
                AmmoFactory:completeAnimation()
                Elem.ZmAmmo:setAlpha(1.000000)
                Elem.clipFinished(AmmoFactory, {})
            end,
            Invisible = function()
                Elem:setupElementClipCounter(1.000000)
                local function AmmoFactoryHide(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoFactory:completeAnimation()
                Elem.ZmAmmo:setAlpha(1.000000)
                AmmoFactoryHide(AmmoFactory, {})
            end
        },
        Invisible =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(1.000000)
                AmmoFactory:completeAnimation()
                Elem.ZmAmmo:setAlpha(0.000000)
                Elem.clipFinished(AmmoFactory, {})
            end,
            DefaultState = function()
                Elem:setupElementClipCounter(1.000000)
                local function AmmoFactoryShow(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(1.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
                AmmoFactory:completeAnimation()
                Elem.ZmAmmo:setAlpha(0.000000)
                local table0 = {}
                AmmoFactoryShow(AmmoFactory, table0)
            end
        }

    }

    local function checkBitSets(unk0, unk1, unk2)
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

    Elem:mergeStateConditions({{stateName = "Invisible", condition = checkBitSets}})

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.playerSpawned"), 
    function(ModelRef)
        HudRef:updateElementState(Elem, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), 
        modelName = "hudItems.playerSpawned"})
    end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE})
        end)
    
    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC})
        end)

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE),
        function(ModelRef)
            HudRef:updateElementState(Elem, {name = "model_validation",menu = HudRef, modelValue = Engine.GetModelValue(ModelRef),
            modelName = "UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE})
        end)
        
	local function CloseEvent(SenderObj)
		SenderObj.ZmAmmo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

