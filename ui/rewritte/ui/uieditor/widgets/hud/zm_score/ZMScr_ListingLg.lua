require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
require("ui.uieditor.widgets.onOffImage")

CoD.ZMScr_ListingLg = InheritFrom(LUI.UIElement)

function CoD.ZMScr_ListingLg.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMScr_ListingLg)
	Elem.id = "ZMScr_ListingLg"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 134.000000)
	Elem:setTopBottom(true, false, 0.000000, 58.000000)
	Elem.anyChildUsesUpdateState = true

	local panel = CoD.DamageWidgetMP_PanelContainer.new(HudRef, InstanceRef)
	panel:setLeftRight(true, false, 0.000000, 45.000000)
	panel:setTopBottom(false, false, -18.250000, 28.750000)
	panel:setRGB(0.610000, 0.610000, 0.610000)
	panel.PanelAmmo0:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	Elem:addElement(panel)
	Elem.Panel = panel

	local score = LUI.UITightText.new()
	score:setLeftRight(true, false, 45.000000, 102.000000)
	score:setTopBottom(true, false, 7.500000, 44.500000)
	score:setTTF("fonts/WEARETRIPPINShort.ttf")

	local function ScoreSetColor(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			score:setRGB(ZombieClientScoreboardColor(ModelValue))
		end
	end

	score:linkToElementModel(Elem, "clientNum", true, ScoreSetColor)

	local function ScoreChange(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			score:setText(Engine.Localize(ModelValue))
		end
	end

	score:linkToElementModel(Elem, "playerScore", true, ScoreChange)
	local function scoreSetText(Element, unk1)
		ScaleWidgetToLabel(Elem, Element, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(score, "setText", scoreSetText)
	Elem:addElement(score)
	Elem.Score = score

	local PortraitIcon = CoD.onOffImage.new(HudRef, InstanceRef)
	PortraitIcon:setLeftRight(true, false, 2.000000, 43.000000)
	PortraitIcon:setTopBottom(true, false, 13.220000, 54.220000)
	local function PortraitIconLinkModel(Model)
		PortraitIcon:setModel(Model, InstanceRef)
	end

	PortraitIcon:linkToElementModel(Elem, nil, false, PortraitIconLinkModel)

	local function PortraitIconChange(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			PortraitIcon.image:setImage(RegisterImage(ModelValue))
		end
	end

	PortraitIcon:linkToElementModel(Elem, "zombiePlayerIcon", true, PortraitIconChange)

	local function PortraitIconShown(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "zombieWearableIcon", "blacktransparent")
	end

	PortraitIcon:mergeStateConditions({{stateName = "On", condition = PortraitIconShown}})

	local function PortraitIconShownUpdate(ModelRef)
		HudRef:updateElementState(PortraitIcon, {name = "model_validation", menu = HudRef,
			modelValue = Engine.GetModelValue(ModelRef),
			modelName = "zombieWearableIcon"
		})
	end

	PortraitIcon:linkToElementModel(PortraitIcon, "zombieWearableIcon", true, PortraitIconShownUpdate)
	Elem:addElement(PortraitIcon)
	Elem.portraitIcon = PortraitIcon

	local PortraitIcon0 = CoD.onOffImage.new(HudRef, InstanceRef)
	PortraitIcon0:setLeftRight(true, false, 2.000000, 43.000000)
	PortraitIcon0:setTopBottom(true, false, 13.220000, 54.220000)
	local function PortraitIcon0LinkModel(Model)
		PortraitIcon0:setModel(Model, InstanceRef)
	end

	PortraitIcon0:linkToElementModel(Elem, nil, false, PortraitIcon0LinkModel)

	local function PortraitIcon0Change(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			PortraitIcon0.image:setImage(RegisterImage(ModelValue))
		end
	end

	PortraitIcon0:linkToElementModel(Elem, "zombieWearableIcon", true, PortraitIcon0Change)

	local function PortraitIcon0Shown(arg0, arg2, arg3)
		return not IsSelfModelValueEqualTo(arg2, InstanceRef, "zombieWearableIcon", "blacktransparent")
	end

	PortraitIcon0:mergeStateConditions({{stateName = "On",condition = PortraitIcon0Shown}})

	local function PortraitIcon0ShownUpdate(ModelRef)
		HudRef:updateElementState(PortraitIcon0, {name = "model_validation",menu = HudRef,
			modelValue = Engine.GetModelValue(ModelRef),
			modelName = "zombieWearableIcon"
		})
	end

	PortraitIcon0:linkToElementModel(PortraitIcon0, "zombieWearableIcon", true, PortraitIcon0ShownUpdate)

	Elem:addElement(PortraitIcon0)
	Elem.portraitIcon0 = PortraitIcon0

	local image0 = LUI.UIImage.new()
	image0:setLeftRight(true, false, 0.000000, 28.000000)
	image0:setTopBottom(false, true, -28.000000, 0.000000)

	local function image0Change(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			image0:setImage(RegisterImage(ModelValue))
		end
	end

	image0:linkToElementModel(Elem, "zombieInventoryIcon", true, image0Change)
	Elem:addElement(image0)
	Elem.Image0 = image0

	local glow = LUI.UIImage.new()
	glow:setLeftRight(true, true, 14.000000, -7.000000)
	glow:setTopBottom(true, false, 2.000000, 50.000000)
	glow:setAlpha(0.420000)
	glow:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	local function glowChange(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			glow:setRGB(ZombieClientScoreboardGlowColor(ModelValue))
		end
	end

	glow:linkToElementModel(Elem, "clientNum", true, glowChange)
	Elem:addElement(glow)
	Elem.Glow = glow

	local function DSDefaultClip()
		Elem:setupElementClipCounter(4.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		score:completeAnimation()
		Elem.Score:setAlpha(0.000000)
		Elem.clipFinished(score, {})
		image0:completeAnimation()
		Elem.Image0:setAlpha(0.000000)
		Elem.clipFinished(image0, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)
		Elem.clipFinished(glow, {})
	end

	local function DSVisible()
		Elem:setupElementClipCounter(4.000000)
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

		local function Score_DSVisible_1(Element, Event)
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

		score:completeAnimation()
		Elem.Score:setAlpha(0.000000)

		Score_DSVisible_1(score, {})

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

		Image0_DSVisible_1(image0, {})

		local function Glow_DSVisible_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(0.420000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)

		Glow_DSVisible_1(glow, {})
	end

	local function DSVisibleTomb()
		Elem:setupElementClipCounter(4.000000)
		local function Panel_DSVisibleTomb_1(Element, Event)
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

		Panel_DSVisibleTomb_1(panel, {})

		local function Score_DSVisibleTomb_1(Element, Event)
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

		score:completeAnimation()
		Elem.Score:setAlpha(0.000000)

		Score_DSVisibleTomb_1(score, {})

		local function Image0_DSVisibleTomb_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setLeftRight(true, false, -21.000000, 7.000000)
			Element:setTopBottom(false, true, -31.780000, -3.780000)
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, -21.000000, 7.000000)
		Elem.Image0:setTopBottom(false, true, -31.780000, -3.780000)
		Elem.Image0:setAlpha(0.000000)

		Image0_DSVisibleTomb_1(image0, {})

		local function Glow_DSVisibleTomb_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(0.420000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		glow:completeAnimation()
		Elem.Glow:setAlpha(0.000000)

		Glow_DSVisibleTomb_1(glow, {})
	end

	local function VTDefaultClip()
		Elem:setupElementClipCounter(4.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)
		Elem.clipFinished(panel, {})
		score:completeAnimation()
		Elem.Score:setAlpha(1.000000)
		Elem.clipFinished(score, {})
		image0:completeAnimation()
		Elem.Image0:setLeftRight(true, false, -21.000000, 7.000000)
		Elem.Image0:setTopBottom(false, true, -31.780000, -3.780000)
		Elem.Image0:setAlpha(1.000000)
		Elem.clipFinished(image0, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.420000)
		Elem.clipFinished(glow, {})
	end

	local function VTDefaultState()
		Elem:setupElementClipCounter(4.000000)
		local function Panel_VTDefaultState_1(Element, Event)
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

		Panel_VTDefaultState_1(panel, {})

		local function Score_VTDefaultState_1(Element, Event)
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

		score:completeAnimation()
		Elem.Score:setAlpha(1.000000)

		Score_VTDefaultState_1(score, {})

		local function Image0_VTDefaultState_1(Element, Event)
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

		Image0_VTDefaultState_1(image0, {})

		local function Glow_VTDefaultState_1(Element, Event)
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
		Elem.Glow:setAlpha(0.420000)

		Glow_VTDefaultState_1(glow, {})
	end

	local function VDefaultClip()
		Elem:setupElementClipCounter(4.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(1.000000)
		Elem.clipFinished(panel, {})
		score:completeAnimation()
		Elem.Score:setAlpha(1.000000)
		Elem.clipFinished(score, {})
		image0:completeAnimation()
		Elem.Image0:setAlpha(1.000000)
		Elem.clipFinished(image0, {})
		glow:completeAnimation()
		Elem.Glow:setAlpha(0.420000)
		Elem.clipFinished(glow, {})
	end

	local function VDefaultState()
		Elem:setupElementClipCounter(4.000000)
		local function Panel_VDefaultState_1(Element, Event)
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

		Panel_VDefaultState_1(panel, {})

		local function Score_VDefaultState_1(Element, Event)
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

		score:completeAnimation()
		Elem.Score:setAlpha(1.000000)

		Score_VDefaultState_1(score, {})

		local function Image0_VDefaultState_1(Element, Event)
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

		Image0_VDefaultState_1(image0, {})

		local function Glow_VDefaultState_1(Element, Event)
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
		Elem.Glow:setAlpha(0.420000)

		Glow_VDefaultState_1(glow, {})
	end

	Elem.clipsPerState = 
	{
		DefaultState = 
		{
			DefaultClip = DSDefaultClip,
			Visible = DSVisible,
			VisibleTomb = DSVisibleTomb
		},
		VisibleTomb =
		{
			DefaultClip = VTDefaultClip,
			DefaultState = VTDefaultState
		},
		Visible =
		{
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

	local function SeeCondition(arg0, arg2, arg3)
		return not IsSelfModelValueEqualTo(arg2, InstanceRef, "playerScoreShown", 0.000000)
	end

	Elem:mergeStateConditions({{stateName = "VisibleTomb", condition = TombCondition},{stateName = "Visible", condition = SeeCondition}})
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
		SenderObj.portraitIcon0:close()
		SenderObj.Score:close()
		SenderObj.Image0:close()
		SenderObj.Glow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

