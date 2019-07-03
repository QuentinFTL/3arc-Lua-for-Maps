require("ui.rewritte.ui.uieditor.widgets.HUD.ZM_RoundWidget.ZmRnd")

CoD.ZmRndContainer = InheritFrom(LUI.UIElement)

function CoD.ZmRndContainer.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmRndContainer)
	Elem.id = "ZmRndContainer"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 224.000000)
	Elem:setTopBottom(true, false, 0.000000, 200.000000)
    Elem.anyChildUsesUpdateState = true
    
	local zmRnd = CoD.ZmRnd.new(HudRef, InstanceRef)
	zmRnd:setLeftRight(true, false, 0.000000, 224.000000)
    zmRnd:setTopBottom(false, true, -200.000000, 0.000000)
    
	local function zmRndGameScore(Model)
		zmRnd:setModel(Model, InstanceRef)
	end

	zmRnd:subscribeToGlobalModel(InstanceRef, "GameScore", nil, zmRndGameScore)
	Elem:addElement(zmRnd)
	Elem.ZmRnd = zmRnd

	local function DefaultStateDefaultClip()
		Elem:setupElementClipCounter(1.000000)
		zmRnd:completeAnimation()
		Elem.ZmRnd:setAlpha(1.000000)
		Elem.clipFinished(zmRnd, {})
	end

	local function DefaultStateInvisible()
		Elem:setupElementClipCounter(1.000000)
		local function zmRound_DefaultStateInvisible(Element, Event)
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

		zmRnd:completeAnimation()
		Elem.ZmRnd:setAlpha(1.000000)
		zmRound_DefaultStateInvisible(zmRnd, {})
	end

	local function InvisibleDefaultClip()
		Elem:setupElementClipCounter(1.000000)
		zmRnd:completeAnimation()
		Elem.ZmRnd:setAlpha(0.000000)
		Elem.clipFinished(zmRnd, {})
	end


	local function InvisibleDefaultState()
		Elem:setupElementClipCounter(1.000000)
		local function zmRound_InvisibleDefaultState(Element, Event)
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

		zmRnd:completeAnimation()
		Elem.ZmRnd:setAlpha(0.000000)
		zmRound_InvisibleDefaultState(zmRnd, {})
	end

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = DefaultStateDefaultClip,
            Invisible = DefaultStateInvisible
        },
        Invisible =
        {
            DefaultClip = __FUNC_12D9_,
            DefaultState = InvisibleDefaultState
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
		SenderObj.ZmRnd:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end