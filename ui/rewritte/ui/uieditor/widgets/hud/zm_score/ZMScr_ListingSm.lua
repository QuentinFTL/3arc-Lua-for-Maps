require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
require("ui.uieditor.widgets.onOffImage")

CoD.ZMScr_ListingSm = InheritFrom(LUI.UIElement)

function CoD.ZMScr_ListingSm.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMScr_ListingSm)
	Elem.id = "ZMScr_ListingSm"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 85.000000)
	Elem:setTopBottom(true, false, 0.000000, 35.000000)
    Elem.anyChildUsesUpdateState = true
    
	local panel = CoD.DamageWidgetMP_PanelContainer.new(HudRef, InstanceRef)
	panel:setLeftRight(true, false, 0.500000, 28.500000)
	panel:setTopBottom(false, false, -15.000000, 14.000000)
	panel:setRGB(0.610000, 0.610000, 0.610000)
	panel.PanelAmmo0:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	Elem:addElement(panel)
    Elem.Panel = panel
    
	local label3 = LUI.UITightText.new()
	label3:setLeftRight(true, false, 30.000000, 59.000000)
	label3:setTopBottom(true, false, 2.250000, 30.250000)
	label3:setTTF("fonts/WEARETRIPPINShort.ttf")
    label3:setLetterSpacing(0.500000)
    
	local function Label3ClientNum(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			label3:setRGB(ZombieClientScoreboardColor(ModelValue))
		end
	end

    label3:linkToElementModel(Elem, "clientNum", true, Label3ClientNum)
    
	local function Label3PlayerScore(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			label3:setText(Engine.Localize(ModelValue))
		end
	end

    label3:linkToElementModel(Elem, "playerScore", true, Label3PlayerScore)
    
	local function Label3SetText(Element, arg1)
		ScaleWidgetToLabel(Elem, Element, 0.000000)
	end

    LUI.OverrideFunction_CallOriginalFirst(label3, "setText", Label3SetText)
    
	Elem:addElement(label3)
    Elem.Label3 = label3
    
	local PortraitIcon = CoD.onOffImage.new(HudRef, InstanceRef)
	PortraitIcon:setLeftRight(true, false, 2.280000, 26.000000)
    PortraitIcon:setTopBottom(true, false, 4.250000, 27.970000)
    
	local function portraitIconLinkModel(Model)
		PortraitIcon:setModel(Model, InstanceRef)
	end

    PortraitIcon:linkToElementModel(Elem, nil, false, portraitIconLinkModel)
    
	local function portraitIconZmPlayerIcon(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			PortraitIcon.image:setImage(RegisterImage(ModelValue))
		end
	end

	PortraitIcon:linkToElementModel(Elem, "zombiePlayerIcon", true, portraitIconZmPlayerIcon)

	local function portraitIconOnCondition(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "zombieWearableIcon", "blacktransparent")
	end


    PortraitIcon:mergeStateConditions({{stateName = "On", condition = portraitIconOnCondition}})
    
	local function portraitIconZmWearableIcon(ModelRef)
		HudRef:updateElementState(PortraitIcon, {name = "model_validation", menu = HudRef,
            modelValue = Engine.GetModelValue(ModelRef),
            modelName = "zombieWearableIcon"
        })
	end

	PortraitIcon:linkToElementModel(PortraitIcon, "zombieWearableIcon", true, portraitIconZmWearableIcon)
	Elem:addElement(PortraitIcon)
    Elem.portraitIcon = PortraitIcon
    
	local WearableIcon = CoD.onOffImage.new(HudRef, InstanceRef)
	WearableIcon:setLeftRight(true, false, 2.280000, 26.000000)
    WearableIcon:setTopBottom(true, false, 4.250000, 27.970000)
    
	local function wearableIconLinkModel(Model)
		WearableIcon:setModel(Model, InstanceRef)
	end

    WearableIcon:linkToElementModel(Elem, nil, false, wearableIconLinkModel)
    
	local function wearableIconSetImage(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			WearableIcon.image:setImage(RegisterImage(ModelValue))
		end
	end

	WearableIcon:linkToElementModel(Elem, "zombieWearableIcon", true, wearableIconSetImage)

	local function wearableIconOnCondition(arg0, arg2, arg3)
		return not IsSelfModelValueEqualTo(arg2, InstanceRef, "zombieWearableIcon", "blacktransparent")
	end

    WearableIcon:mergeStateConditions({{stateName = "On", condition = wearableIconOnCondition}})
    
	local function wearableIconOnUpdate(ModelRef)
		HudRef:updateElementState(WearableIcon, {name = "model_validation", menu = HudRef,
            modelValue = Engine.GetModelValue(ModelRef),
            modelName = "zombieWearableIcon"
        })
	end

    WearableIcon:linkToElementModel(WearableIcon, "zombieWearableIcon", true, wearableIconOnUpdate)
    
	Elem:addElement(WearableIcon)
    Elem.wearableIcon = WearableIcon
    
	local glow = LUI.UIImage.new()
	glow:setLeftRight(true, true, 9.000000, -5.000000)
	glow:setTopBottom(true, false, 0.000000, 34.500000)
	glow:setAlpha(0.200000)
	glow:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
    glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
    
	local function GlowClientNum(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			glow:setRGB(ZombieClientScoreboardGlowColor(ModelValue))
		end
	end

    glow:linkToElementModel(Elem, "clientNum", true, GlowClientNum)
    
	Elem:addElement(glow)
    Elem.Glow = glow
    
	local image0 = LUI.UIImage.new()
	image0:setLeftRight(true, false, 0.000000, 20.000000)
    image0:setTopBottom(false, true, -20.000000, 0.000000)
    
	local function Image0ZMInventoryIcon(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			image0:setImage(RegisterImage(ModelValue))
		end
	end

    image0:linkToElementModel(Elem, "zombieInventoryIcon", true, Image0ZMInventoryIcon)
    
	Elem:addElement(image0)
    Elem.Image0 = image0

	local function DSDefaultClip()
		Elem:setupElementClipCounter(6.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		label3:completeAnimation()
		Elem.Label3:setAlpha(0.000000)
		Elem.clipFinished(label3, {})
		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(0.000000)
		Elem.clipFinished(PortraitIcon, {})
		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(0.000000)
		Elem.clipFinished(WearableIcon, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)
		Elem.clipFinished(glow, {})
		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, 0.000000, 20.000000)
		Elem.Image0:setTopBottom(false, true, -20.000000, 0.000000)
		Elem.Image0:setAlpha(0.000000)
		Elem.clipFinished(image0, {})
	end

	local function DSVisible()
        Elem:setupElementClipCounter(6.000000)
        
		local function Panel_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)

        Panel_DSVisible_1(panel, {})
        
		local function Label3_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		label3:completeAnimation()
		Elem.Label3:setAlpha(0.000000)

        Label3_DSVisible_1(label3, {})
        
		local function PortraitIcon_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(0.000000)

        PortraitIcon_DSVisible_1(PortraitIcon, {})
        
		local function WearableIcon_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(0.000000)

        WearableIcon_DSVisible_1(WearableIcon, {})
        
		local function Glow_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(0.200000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)

        Glow_DSVisible_1(glow, {})
        
		local function Image0_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		image0:completeAnimation()
		Elem.Image0:setAlpha(0.000000)

        image0_DSVisible_1(image0, {})
	end

	local function DSVisibleTomb()
        Elem:setupElementClipCounter(6.000000)
        
		local function Panel_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)

        Panel_DSVisibleTomb(panel, {})
        
		local function Label3_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		label3:completeAnimation()
		Elem.Label3:setAlpha(0.000000)

        Label3_DSVisibleTomb(label3, {})
        
        local function PortraitIcon_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(0.000000)

        PortraitIcon_DSVisibleTomb(PortraitIcon, {})

		local function WearableIcon_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(0.000000)

        WearableIcon_DSVisibleTomb(WearableIcon, {})
        
		local function Glow_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(0.200000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)

        Glow_DSVisibleTomb(glow, {})
        
		local function Image0_DSVisibleTomb(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setLeftRight(true, false, -13.720000, 6.280000)
			Element:setTopBottom(false, true, -27.030000, -7.030000)
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, -13.720000, 6.280000)
		Elem.Image0:setTopBottom(false, true, -27.030000, -7.030000)
		Elem.Image0:setAlpha(0.000000)

        Image0_DSVisibleTomb(image0, {})
	end

	local function VTDefaultClip()
		Elem:setupElementClipCounter(6.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)
        Elem.clipFinished(panel, {})
		label3:completeAnimation()
		Elem.Label3:setAlpha(1.000000)
		Elem.clipFinished(label3, {})
		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(1.000000)
		Elem.clipFinished(PortraitIcon, {})
		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(1.000000)
		Elem.clipFinished(WearableIcon, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.200000)
		Elem.clipFinished(glow, {})
		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, -13.720000, 6.280000)
		Elem.Image0:setTopBottom(false, true, -27.030000, -7.030000)
		Elem.Image0:setAlpha(1.000000)
		Elem.clipFinished(image0, {})
	end

	local function VTDefaultState()
        Elem:setupElementClipCounter(6.000000)
        
		local function Panel_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)

        Panel_VTDefaultState(panel, {})

		local function Label3_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		label3:completeAnimation()
		Elem.Label3:setAlpha(1.000000)

        Label3_VTDefaultState(label3, {})

		local function PortraitIcon_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(1.000000)

        PortraitIcon_VTDefaultState(PortraitIcon, {})

		local function WearableIcon_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(1.000000)

        WearableIcon_VTDefaultState(WearableIcon, {})

		local function Glow_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.200000)

        Glow_VTDefaultState(glow, {})

		local function Image0_VTDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, -13.720000, 6.280000)
			Element:setTopBottom(false, true, -27.030000, -7.030000)
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, -13.720000, 6.280000)
		Elem.Image0:setTopBottom(false, true, -27.030000, -7.030000)
		Elem.Image0:setAlpha(1.000000)

        Image0_VTDefaultState(image0, {})
	end

	local function VDefaultClip()
		Elem:setupElementClipCounter(6.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)
		Elem.clipFinished(panel, {})
		label3:completeAnimation()
		Elem.Label3:setAlpha(1.000000)
		Elem.clipFinished(label3, {})
		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(1.000000)
		Elem.clipFinished(PortraitIcon, {})
		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(1.000000)
		Elem.clipFinished(WearableIcon, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.200000)
		Elem.clipFinished(glow, {})
		image0:completeAnimation()
		Elem.Image0:setAlpha(1.000000)
		Elem.clipFinished(image0, {})
	end

	local function VDefaultState()
        Elem:setupElementClipCounter(6.000000)
        
		local function Panel_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)

        Panel_VDefaultState(panel, {})
        
		local function Label3_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		label3:completeAnimation()
		Elem.Label3:setAlpha(1.000000)

        Label3_VDefaultState(label3, {})
        
		local function PortraitIcon_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		PortraitIcon:completeAnimation()
		Elem.portraitIcon:setAlpha(1.000000)

        PortraitIcon_VDefaultState(PortraitIcon, {})
        
		local function WearableIcon_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		WearableIcon:completeAnimation()
		Elem.wearableIcon:setAlpha(1.000000)

        WearableIcon_VDefaultState(WearableIcon, {})
        
		local function Glow_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.200000)

        Glow_VDefaultState(glow, {})

		local function Image0_VDefaultState(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		image0:completeAnimation()
		Elem.Image0:setAlpha(1.000000)

        Image0_VDefaultState(image0, {})
    end
    
    Elem.clipsPerState = 
    {
        DefaultState = {
            DefaultClip = DSDefaultClip,
            Visible = DSVisible,
            VisibleTomb = DSVisibleTomb
        },
        VisibleTomb = {
            DefaultClip = VTDefaultClip,
            DefaultState = VTDefaultState
        },
        Visible = {
            DefaultClip = VDefaultClip,
            DefaultState = VDefaultState
        }
    }
    
	local function TombCondition(arg0, arg2, arg3)
		local isTomb = false
		if not IsSelfModelValueEqualTo(arg2, InstanceRef, "playerScoreShown", 0.000000) then
			isTomb = IsMapName("zm_tomb")
		end
		return isTomb
	end

	local function BasicCondition(arg0, arg2, arg3)
		return not IsSelfModelValueEqualTo(arg2, InstanceRef, "playerScoreShown", 0.000000)
	end

    Elem:mergeStateConditions({{stateName = "VisibleTomb", condition = TombCondition},{stateName = "Visible", condition = BasicCondition}})
    
	local function PlayerScrShwn(ModelRef)
		HudRef:updateElementState(Elem, {name = "model_validation", menu = HudRef,
            modelValue = Engine.GetModelValue(ModelRef),
            modelName = "playerScoreShown"
        })
	end

    Elem:linkToElementModel(Elem, "playerScoreShown", true, PlayerScrShwn)
    
	local function CloseEvent(SenderObj)
		SenderObj.Panel:close()
		SenderObj.portraitIcon:close()
		SenderObj.wearableIcon:close()
		SenderObj.Label3:close()
		SenderObj.Glow:close()
		SenderObj.Image0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

