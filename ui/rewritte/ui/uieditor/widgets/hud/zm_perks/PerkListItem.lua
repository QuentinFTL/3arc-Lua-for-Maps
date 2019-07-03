require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2Ext")
CoD.PerkListItem = InheritFrom(LUI.UIElement)

function CoD.PerkListItem.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.PerkListItem)
	Elem.id = "PerkListItem"
	Elem.soundSet = "default"
	Elem:setLeftRight(true, false, 0.000000, 36.000000)
	Elem:setTopBottom(true, false, 0.000000, 36.000000)

	local zmFxSpark2Ext000 = CoD.ZmFx_Spark2Ext.new(HudRef, InstanceRef)
	zmFxSpark2Ext000:setLeftRight(true, false, -12.670000, 53.330000)
	zmFxSpark2Ext000:setTopBottom(true, false, -60.000000, 39.000000)
	zmFxSpark2Ext000:setAlpha(0.860000)
	zmFxSpark2Ext000:setZRot(9.000000)
	zmFxSpark2Ext000:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	Elem:addElement(zmFxSpark2Ext000)
	Elem.ZmFxSpark2Ext000 = zmFxSpark2Ext000

	local glowOrangeOver = LUI.UIImage.new()
	glowOrangeOver:setLeftRight(true, false, -7.510000, 43.510000)
	glowOrangeOver:setTopBottom(true, false, -36.850000, 69.850000)
	glowOrangeOver:setRGB(1.000000, 0.310000, 0.000000)
	glowOrangeOver:setZRot(90.000000)
	glowOrangeOver:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOrangeOver:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	Elem:addElement(glowOrangeOver)
	Elem.GlowOrangeOver = glowOrangeOver

	local glowOrangeOver0 = LUI.UIImage.new()
	glowOrangeOver0:setLeftRight(true, false, 11.490000, 24.510000)
	glowOrangeOver0:setTopBottom(true, false, -36.850000, 69.850000)
	glowOrangeOver0:setRGB(1.000000, 0.310000, 0.000000)
	glowOrangeOver0:setAlpha(0.620000)
	glowOrangeOver0:setZRot(90.000000)
	glowOrangeOver0:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOrangeOver0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	Elem:addElement(glowOrangeOver0)
	Elem.GlowOrangeOver0 = glowOrangeOver0

	local perkImage = LUI.UIImage.new()
	perkImage:setLeftRight(true, false, 0.000000, 36.000000)
	perkImage:setTopBottom(false, true, -36.000000, 0.000000)
	local function __FUNC_C98_(arg0)
		local returnval0 = Engine.GetModelValue(arg0)
		if returnval0 then
			perkImage:setImage(RegisterImage(returnval0))
		end
	end

	perkImage:linkToElementModel(Elem, "image", true, __FUNC_C98_)

	Elem:addElement(perkImage)
	Elem.PerkImage = perkImage

	local zmFxSpark2Ext00 = CoD.ZmFx_Spark2Ext.new(HudRef, InstanceRef)
	zmFxSpark2Ext00:setLeftRight(true, false, -12.670000, 53.330000)
	zmFxSpark2Ext00:setTopBottom(true, false, -60.000000, 39.000000)
	zmFxSpark2Ext00:setAlpha(0.000000)
	zmFxSpark2Ext00:setZRot(9.000000)
	zmFxSpark2Ext00:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	Elem:addElement(zmFxSpark2Ext00)
	Elem.ZmFxSpark2Ext00 = zmFxSpark2Ext00

	local glowOrangeOver1 = LUI.UIImage.new()
	glowOrangeOver1:setLeftRight(true, false, -7.510000, 43.510000)
	glowOrangeOver1:setTopBottom(true, false, -36.850000, 69.850000)
	glowOrangeOver1:setRGB(1.000000, 0.310000, 0.000000)
	glowOrangeOver1:setAlpha(0.530000)
	glowOrangeOver1:setZRot(90.000000)
	glowOrangeOver1:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOrangeOver1:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))

	Elem:addElement(glowOrangeOver1)
	Elem.GlowOrangeOver1 = glowOrangeOver1

	local function DSDefaultClip()
		Elem:setupElementClipCounter(6.000000)
		zmFxSpark2Ext000:completeAnimation()
		Elem.ZmFxSpark2Ext000:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext000, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver, {})
		glowOrangeOver0:completeAnimation()
		Elem.GlowOrangeOver0:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver0, {})
		perkImage:completeAnimation()
		Elem.PerkImage:setAlpha(0.000000)
		Elem.clipFinished(perkImage, {})
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver1, {})
	end

	local function EnabledDefaultClip()
		Elem:setupElementClipCounter(6.000000)
		zmFxSpark2Ext000:completeAnimation()
		Elem.ZmFxSpark2Ext000:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext000, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver, {})
		glowOrangeOver0:completeAnimation()
		Elem.GlowOrangeOver0:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver0, {})
		perkImage:completeAnimation()
		Elem.PerkImage:setAlpha(1.000000)
		Elem.clipFinished(perkImage, {})
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver1, {})
	end

	local function EnabledIntro()
		Elem:setupElementClipCounter(6.000000)
		local function Func_1_0(Element, Event)
			local function Func_1_1(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Func_1_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.860000)
			Element:registerEventHandler("transition_complete_keyframe", Func_1_1)
		end

		zmFxSpark2Ext000:completeAnimation()
		Elem.ZmFxSpark2Ext000:setAlpha(0.000000)

		Func_1_0(zmFxSpark2Ext000, {})
		local function Func_2_0(Element, Event)
			local function Func_2_1(Element, Event)
				local function Func_2_2(Element, Event)
					local function Func_2_3(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						Func_2_3(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(1.000000)
					Element:registerEventHandler("transition_complete_keyframe", Func_2_3)
				end

				if Event.interrupted then
					Func_2_2(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.340000)
				Element:registerEventHandler("transition_complete_keyframe", Func_2_2)
			end

			if Event.interrupted then
				Func_2_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", Func_2_1)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setAlpha(0.000000)

		Func_2_0(glowOrangeOver, {})
		local function Func_3_0(Element, Event)
			local function Func_3_1(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setLeftRight(true, false, 11.490000, 24.510000)
				Element:setTopBottom(true, false, -36.850000, 69.850000)
				Element:setRGB(1.000000, 0.480000, 0.000000)
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Func_3_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.540000)
			Element:registerEventHandler("transition_complete_keyframe", Func_3_1)
		end

		glowOrangeOver0:completeAnimation()
		Elem.GlowOrangeOver0:setLeftRight(true, false, 11.490000, 24.510000)
		Elem.GlowOrangeOver0:setTopBottom(true, false, -36.850000, 69.850000)
		Elem.GlowOrangeOver0:setRGB(1.000000, 0.480000, 0.000000)
		Elem.GlowOrangeOver0:setAlpha(0.000000)

		Func_3_0(glowOrangeOver0, {})
		local function Func_4_0(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		perkImage:completeAnimation()
		Elem.PerkImage:setAlpha(0.000000)

		Func_4_0(perkImage, {})
		local function Func_5_0(Element, Event)
			local function Func_5_1(Element, Event)
				local function Func_5_2(Element, Event)
					local function Func_5_3(Element, Event)
						local function Func_5_4(Element, Event)
							if not Event.interrupted then
								Element:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
							end
							Element:setLeftRight(true, false, 11.510000, 77.510000)
							Element:setTopBottom(true, false, -83.500000, 15.500000)
							Element:setAlpha(0.000000)
							if Event.interrupted then
								Elem.clipFinished(Element, Event)
							else
								Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
							end
						end

						if Event.interrupted then
							Func_5_4(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, 11.510000, 77.510000)
						Element:setTopBottom(true, false, -56.500000, 42.500000)
						Element:registerEventHandler("transition_complete_keyframe", Func_5_4)
					end

					if Event.interrupted then
						Func_5_3(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -9.490000, 56.510000)
					Element:setTopBottom(true, false, -48.000000, 51.000000)
					Element:registerEventHandler("transition_complete_keyframe", Func_5_3)
				end

				if Event.interrupted then
					Func_5_2(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -24.490000, 41.510000)
				Element:setTopBottom(true, false, -57.000000, 42.000000)
				Element:registerEventHandler("transition_complete_keyframe", Func_5_2)
			end

			if Event.interrupted then
				Func_5_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", Func_5_1)
		end

		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setLeftRight(true, false, -25.490000, 40.510000)
		Elem.ZmFxSpark2Ext00:setTopBottom(true, false, -82.500000, 16.500000)
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)

		Func_5_0(zmFxSpark2Ext00, {})
		local function Func_6_0(Element, Event)
			local function Func_6_1(Element, Event)
				local function Func_6_2(Element, Event)
					local function Func_6_3(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						Func_6_3(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(0.220000)
					Element:registerEventHandler("transition_complete_keyframe", Func_6_3)
				end

				if Event.interrupted then
					Func_6_2(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.000000)
				Element:registerEventHandler("transition_complete_keyframe", Func_6_2)
			end

			if Event.interrupted then
				Func_6_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.240000)
			Element:registerEventHandler("transition_complete_keyframe", Func_6_1)
		end

		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Func_6_0(glowOrangeOver1, {})
	end

	Elem.clipsPerState = 
	{
		DefaultState = 
		{ 
			DefaultClip = DSDefaultClip 
		}, 
		Enabled = 
		{
			DefaultClip = EnabledDefaultClip,
			Intro = EnabledIntro
		}
	}

	local function EnableCondition(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "status", 1.000000)
	end

	Elem:mergeStateConditions({{stateName = "Enabled", condition = EnableCondition}})

	local function statusUpdate(ModelRef)
		HudRef:updateElementState(Elem,
			{
				name = "model_validation",
				menu = HudRef,
				modelValue = Engine.GetModelValue(ModelRef),
				modelName = "status"
			}
		)
	end

	Elem:linkToElementModel(Elem, "status", true, statusUpdate)

	local function stateUpdate(arg0, arg2)
		if IsSelfModelValueTrue(arg0, InstanceRef, "newPerk") then
			PlayClip(Elem, "Intro", InstanceRef)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(Elem, "setState", stateUpdate)

	local function CloseEvent(SenderObj)
		SenderObj.ZmFxSpark2Ext000:close()
		SenderObj.ZmFxSpark2Ext00:close()
		SenderObj.PerkImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end