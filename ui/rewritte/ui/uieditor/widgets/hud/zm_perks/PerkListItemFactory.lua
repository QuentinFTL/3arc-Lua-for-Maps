CoD.PerkListItemFactory = InheritFrom(LUI.UIElement)

function CoD.PerkListItemFactory.new(HudRef, arg1)
    local Elem = LUI.UIElement.new()
    
	if PreLoadFunc then
		PreLoadFunc(Elem, arg1)
    end
    
	Elem:setUseStencil(false)
	Elem:setClass(CoD.PerkListItemFactory)
	Elem.id = "PerkListItemFactory"
    Elem.soundSet = "default"
    
	Elem:setLeftRight(true, false, 0.000000, 36.000000)
    Elem:setTopBottom(true, false, 0.000000, 36.000000)
	
	Elem:setXRot(180)

	local glowOblueOver = LUI.UIImage.new()
	glowOblueOver:setLeftRight(true, false, -7.510000, 43.510000)
	glowOblueOver:setTopBottom(true, false, -36.850000, 69.850000)
	glowOblueOver:setRGB(0.000000, 0.610000, 1.000000)
	glowOblueOver:setZRot(90.000000)
	glowOblueOver:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOblueOver:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(glowOblueOver)
    Elem.GlowOblueOver = glowOblueOver
    
	local glowOblueOver0 = LUI.UIImage.new()
	glowOblueOver0:setLeftRight(true, false, 11.490000, 24.510000)
	glowOblueOver0:setTopBottom(true, false, -36.850000, 69.850000)
	glowOblueOver0:setRGB(0.000000, 0.980000, 1.000000)
	glowOblueOver0:setAlpha(0.620000)
	glowOblueOver0:setZRot(90.000000)
	glowOblueOver0:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOblueOver0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(glowOblueOver0)
    Elem.GlowBlueOver0 = glowOblueOver0
    
	local perkImage = LUI.UIImage.new()
	perkImage:setLeftRight(true, false, 0.000000, 36.000000)
    perkImage:setTopBottom(false, true, -36.000000, 0.000000)
    
	local function SetPerkImage(ModelRef)
		local perk_key_value = Engine.GetModelValue(ModelRef)
		if perk_key_value then
			perkImage:setImage(RegisterImage(perk_key_value))
		end
	end

    perkImage:linkToElementModel(Elem, "image", true, SetPerkImage)
    
	Elem:addElement(perkImage)
    Elem.PerkImage = perkImage
    
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
    
	local lightning = LUI.UIImage.new()
	lightning:setLeftRight(true, false, -57.500000, 93.500000)
    lightning:setTopBottom(true, false, -81.000000, 63.000000)
    
	lightning:setAlpha(0.000000)
	lightning:setImage(RegisterImage("uie_t7_zm_derriese_hud_notification_anim"))
	lightning:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	lightning:setShaderVector(0.000000, 28.000000, 0.000000, 0.000000, 0.000000)
    lightning:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
    
	Elem:addElement(lightning)
    Elem.Lightning = lightning

	local function DSDefaultClip()
		Elem:setupElementClipCounter(5.000000)
		glowOblueOver:completeAnimation()
		Elem.GlowOblueOver:setAlpha(0.000000)
		Elem.clipFinished(glowOblueOver, {})
		glowOblueOver0:completeAnimation()
		Elem.GlowBlueOver0:setAlpha(0.000000)
		Elem.clipFinished(glowOblueOver0, {})
		perkImage:completeAnimation()
		Elem.PerkImage:setAlpha(0.000000)
		Elem.clipFinished(perkImage, {})
		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver1, {})
		lightning:completeAnimation()
		Elem.Lightning:setAlpha(0.000000)
		Elem.clipFinished(lightning, {})
	end

	local function EnabledDefaultClip()
		Elem:setupElementClipCounter(5.000000)
		glowOblueOver:completeAnimation()
		Elem.GlowOblueOver:setAlpha(0.000000)
		Elem.clipFinished(glowOblueOver, {})
		glowOblueOver0:completeAnimation()
		Elem.GlowBlueOver0:setAlpha(0.000000)
		Elem.clipFinished(glowOblueOver0, {})
		perkImage:completeAnimation()
		Elem.PerkImage:setAlpha(1.000000)
		Elem.clipFinished(perkImage, {})
		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver1, {})
		lightning:completeAnimation()
		Elem.Lightning:setAlpha(0.000000)
		Elem.clipFinished(lightning, {})
	end

	local function EnabledIntro()
		Elem:setupElementClipCounter(5.000000)
		local function Func_1_EnabledIntro_0(Element, Event)
			local function Func_1_EnabledIntro_1(Element, Event)
				local function Func_1_EnabledIntro_2(Element, Event)
					local function Func_1_EnabledIntro_3(Element, Event)
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
						Func_1_EnabledIntro_3(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(1.000000)
					Element:registerEventHandler("transition_complete_keyframe", Func_1_EnabledIntro_3)
				end

				if Event.interrupted then
					Func_1_EnabledIntro_2(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.340000)
				Element:registerEventHandler("transition_complete_keyframe", Func_1_EnabledIntro_2)
			end

			if Event.interrupted then
				Func_1_EnabledIntro_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", Func_1_EnabledIntro_1)
		end

		glowOblueOver:completeAnimation()
		Elem.GlowOblueOver:setAlpha(0.000000)

        Func_1_EnabledIntro_0(glowOblueOver, {})
        
		local function Func_2_EnabledIntro_0(Element, Event)
			local function Func_2_EnabledIntro_1(Element, Event)
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
				Func_2_EnabledIntro_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.540000)
			Element:registerEventHandler("transition_complete_keyframe", Func_2_EnabledIntro_1)
		end

		glowOblueOver0:completeAnimation()
		Elem.GlowBlueOver0:setLeftRight(true, false, 11.490000, 24.510000)
		Elem.GlowBlueOver0:setTopBottom(true, false, -36.850000, 69.850000)
		Elem.GlowBlueOver0:setRGB(1.000000, 0.480000, 0.000000)
		Elem.GlowBlueOver0:setAlpha(0.000000)
	
        Func_2_EnabledIntro_0(glowOblueOver0, {})
        
		local function Func_3_EnabledIntro_0(Element, Event)
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
	
        Func_3_EnabledIntro_0(perkImage, {})
        
		local function Func_4_EnabledIntro_0(Element, Event)
			local function Func_4_EnabledIntro_1(Element, Event)
				local function Func_4_EnabledIntro_2(Element, Event)
					local function Func_4_EnabledIntro_3(Element, Event)
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
						Func_4_EnabledIntro_3(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(0.220000)
					Element:registerEventHandler("transition_complete_keyframe", Func_4_EnabledIntro_3)
				end

				if Event.interrupted then
					Func_4_EnabledIntro_2(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.000000)
				Element:registerEventHandler("transition_complete_keyframe", Func_4_EnabledIntro_2)
			end

			if Event.interrupted then
				Func_4_EnabledIntro_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.240000)
			Element:registerEventHandler("transition_complete_keyframe", Func_4_EnabledIntro_1)
		end

		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)

        Func_4_EnabledIntro_0(glowOrangeOver1, {})
        
		local function Func_5_EnabledIntro_0(Element, Event)
			local function Func_5_EnabledIntro_1(Element, Event)
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
				Func_5_EnabledIntro_1(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", Func_5_EnabledIntro_1)
		end

		lightning:completeAnimation()
		Elem.Lightning:setAlpha(0.000000)
		Func_5_EnabledIntro_0(lightning, {})
	end

	local function PausedDefaultClip()
		Elem:setupElementClipCounter(5.000000)
		glowOblueOver:completeAnimation()
		Elem.GlowOblueOver:setAlpha(0.000000)
		Elem.clipFinished(glowOblueOver, {})
		glowOblueOver0:completeAnimation()
		Elem.GlowBlueOver0:setAlpha(0.000000)
        Elem.clipFinished(glowOblueOver0, {})
        
		local function EndPausedDefaultClip(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(1.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

        perkImage:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
        
		perkImage:setAlpha(0.000000)
		perkImage:registerEventHandler("transition_complete_keyframe", EndPausedDefaultClip)
		glowOrangeOver1:completeAnimation()
		Elem.GlowOrangeOver1:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver1, {})
		lightning:completeAnimation()
		Elem.Lightning:setAlpha(0.000000)
		Elem.clipFinished(lightning, {})
	end

	Elem.clipsPerState = {
        DefaultState = {
            DSDefaultClip = DSDefaultClip
        },
        Enabled = { 
            DefaultClip = EnabledDefaultClip,
            Intro = EnabledIntro
        },
        Paused = {
            DefaultClip = __FUNC_29AD_ 
        }
    }

	local function EnableCondition(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "status", 1.000000)
	end

	local function PauseCondition(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "status", 2.000000)
	end

    Elem:mergeStateConditions({{stateName = "Enabled", condition = EnableCondition}, {stateName = "Paused", condition = PauseCondition}})
    
	local function updatePerkStatus(ModelRef)
        HudRef:updateElementState(Elem, 
            {
                name = "model_validation",
                menu = HudRef,
                modelValue = Engine.GetModelValue(ModelRef),
                modelName = "status"
            }
        )
	end

    Elem:linkToElementModel(Elem, "status", true, updatePerkStatus)
    
	local function setPerkState(arg0, arg2)
		if IsSelfModelValueTrue(arg0, InstanceRef, "newPerk") then
			PlayClip(Elem, "Intro", InstanceRef)
			SetSelfModelValue(Elem, arg0, InstanceRef, "newPerk", false)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(Elem, "setState", setPerkState)
	local function CloseEvent(SenderObj)
		SenderObj.PerkImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

