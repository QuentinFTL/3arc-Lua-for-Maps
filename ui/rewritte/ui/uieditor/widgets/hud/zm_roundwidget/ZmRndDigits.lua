require("ui.rewritte.ui.uieditor.widgets.HUD.ZM_RoundWidget.ZmRndDigitsInt")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Flsh1")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2")

CoD.ZmRndDigits = InheritFrom(LUI.UIElement)

function CoD.ZmRndDigits.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmRndDigits)
	Elem.id = "ZmRndDigits"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 106.000000)
	Elem:setTopBottom(true, false, 0.000000, 80.000000)
    Elem.anyChildUsesUpdateState = true
    
	local digitsInt = CoD.ZmRndDigitsInt.new(HudRef, InstanceRef)
	digitsInt:setLeftRight(true, false, 0.000000, 106.000000)
	digitsInt:setTopBottom(true, false, 0.000000, 80.000000)
	digitsInt:setZRot(-10.000000)
	local function digitsIntLinkModel(Model)
		digitsInt:setModel(Model, InstanceRef)
	end

	digitsInt:linkToElementModel(Elem, nil, false, digitsIntLinkModel)

	local function TripleCondition(unk1, unk2, unk3)
		return IsSelfModelValueGreaterThanOrEqualTo(unk2, InstanceRef, "roundsPlayed", 100.000000 + Engine.GetGametypeSetting("startRound"))
	end

	local function DoubleCondition(unk1, unk2, unk3)
		return IsSelfModelValueGreaterThanOrEqualTo(unk2, InstanceRef, "roundsPlayed", 10.000000 + Engine.GetGametypeSetting("startRound"))
	end

    digitsInt:mergeStateConditions(
        {
            {
                stateName = "Triple",
                condition = TripleCondition
            },
            {
                stateName = "Double",
                condition = DoubleCondition
            }
        }
    )
    
	local function digitsIntRoundsPlayed(ModelRef)
		local modelState = {
		    name = "model_validation",
		    menu = HudRef,
		    modelValue = Engine.GetModelValue(ModelRef),
            modelName = "roundsPlayed"
        }
		HudRef:updateElementState(digitsInt, modelState)
	end

    digitsInt:linkToElementModel(digitsInt, "roundsPlayed", true, digitsIntRoundsPlayed)
    
	Elem:addElement(digitsInt)
    Elem.DigitsInt = digitsInt
    
	local digitsOverlay = CoD.ZmRndDigitsInt.new(HudRef, InstanceRef)
	digitsOverlay:setLeftRight(true, false, 0.000000, 106.000000)
	digitsOverlay:setTopBottom(true, false, 0.000000, 80.000000)
	digitsOverlay:setAlpha(0.000000)
	digitsOverlay:setZRot(-19.000000)
	digitsOverlay:setZoom(52.000000)
	digitsOverlay:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(digitsOverlay)
    Elem.DigitsOverlay = digitsOverlay
    
	local glowOrangeOver = LUI.UIImage.new()
	glowOrangeOver:setLeftRight(true, false, -16.000000, 122.000000)
	glowOrangeOver:setTopBottom(true, false, -24.500000, 96.500000)
	glowOrangeOver:setRGB(1.000000, 0.310000, 0.000000)
	glowOrangeOver:setAlpha(0.000000)
	glowOrangeOver:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOrangeOver:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(glowOrangeOver)
    Elem.GlowOrangeOver = glowOrangeOver
    
	local zmFxFlsh10 = CoD.ZmFx_Flsh1.new(HudRef, InstanceRef)
	zmFxFlsh10:setLeftRight(true, false, -67.500000, 173.500000)
	zmFxFlsh10:setTopBottom(true, false, -27.500000, 107.500000)
	zmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
	zmFxFlsh10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(zmFxFlsh10)
    Elem.ZmFxFlsh10 = zmFxFlsh10
    
	local zmFxSpark20 = CoD.ZmFx_Spark2.new(HudRef, InstanceRef)
	zmFxSpark20:setLeftRight(true, false, -12.000000, 118.000000)
	zmFxSpark20:setTopBottom(true, false, -102.000000, 114.000000)
	zmFxSpark20:setRGB(0.650000, 0.000000, 0.000000)
	zmFxSpark20:setAlpha(0.000000)
	zmFxSpark20:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	zmFxSpark20.Image0:setShaderVector(1.000000, 0.000000, 1.370000, 0.000000, 0.000000)
	zmFxSpark20.Image00:setShaderVector(1.000000, 0.000000, -0.620000, 0.000000, 0.000000)
	Elem:addElement(zmFxSpark20)
	Elem.ZmFxSpark20 = zmFxSpark20

	local function DefaultAnimation()
		Elem:setupElementClipCounter(5.000000)
		digitsInt:completeAnimation()
		Elem.DigitsInt:setAlpha(1.000000)
		Elem.DigitsInt:setZRot(-10.000000)
		Elem.DigitsInt:setZoom(0.000000)
        Elem.clipFinished(digitsInt, {})
        
		digitsOverlay:completeAnimation()
		Elem.DigitsOverlay:setAlpha(0.000000)
		Elem.DigitsOverlay:setZRot(-19.000000)
        Elem.clipFinished(digitsOverlay, {})
        
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        Elem.clipFinished(zmFxFlsh10, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setLeftRight(true, false, -12.000000, 118.000000)
		Elem.ZmFxSpark20:setTopBottom(true, false, -102.000000, 114.000000)
		Elem.ZmFxSpark20:setRGB(0.650000, 0.000000, 0.000000)
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function UpdateAnimation()
		Elem:setupElementClipCounter(5.000000)
		digitsInt:completeAnimation()
		Elem.DigitsInt:setAlpha(1.000000)
		Elem.DigitsInt:setZRot(-10.000000)
		Elem.DigitsInt:setZoom(25.000000)
        Elem.clipFinished(digitsInt, {})
        
		local function digitsOverlay_UpdateAnimation_1(Element, Event)
			local function digitsOverlay_UpdateAnimation_2(Element, Event)
				local function digitsOverlay_UpdateAnimation_3(Element, Event)
					local function digitsOverlay_UpdateAnimation_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						Element:setZRot(-19.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						digitsOverlay_UpdateAnimation_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(0.130000)
					Element:setZRot(-2.000000)
					Element:registerEventHandler("transition_complete_keyframe", digitsOverlay_UpdateAnimation_4)
				end

				if Event.interrupted then
					digitsOverlay_UpdateAnimation_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 290.000000, false, true, CoD.TweenType.Bounce)
				Element:setAlpha(0.360000)
				Element:setZRot(-17.000000)
				Element:registerEventHandler("transition_complete_keyframe", digitsOverlay_UpdateAnimation_3)
			end

			if Event.interrupted then
				digitsOverlay_UpdateAnimation_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:setZRot(-7.580000)
			Element:registerEventHandler("transition_complete_keyframe", digitsOverlay_UpdateAnimation_2)
		end

		digitsOverlay:completeAnimation()
		Elem.DigitsOverlay:setAlpha(0.000000)
		Elem.DigitsOverlay:setZRot(5.000000)
        digitsOverlay_UpdateAnimation_1(digitsOverlay, {})
        
		local function GOO_UpdateAnimation_1(Element, Event)
			local function GOO_UpdateAnimation_2(Element, Event)
				local function GOO_UpdateAnimation_3(Element, Event)
					local function GOO_UpdateAnimation_4(Element, Event)
						local function GOO_UpdateAnimation_5(Element, Event)
							local function GOO_UpdateAnimation_6(Element, Event)
								local function GOO_UpdateAnimation_7(Element, Event)
									if not Event.interrupted then
										Element:beginAnimation("keyframe", 840.000000, false, false, CoD.TweenType.Bounce)
									end
									Element:setAlpha(0.000000)
									if Event.interrupted then
										Elem.clipFinished(Element, Event)
									else
										Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
									end
								end

								if Event.interrupted then
									GOO_UpdateAnimation_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								Element:setAlpha(0.350000)
								Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_7)
							end

							if Event.interrupted then
								GOO_UpdateAnimation_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							Element:setAlpha(0.210000)
							Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_6)
						end

						if Event.interrupted then
							GOO_UpdateAnimation_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						Element:setAlpha(0.360000)
						Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_5)
					end

					if Event.interrupted then
						GOO_UpdateAnimation_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					Element:setAlpha(0.390000)
					Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_4)
				end

				if Event.interrupted then
					GOO_UpdateAnimation_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.010000)
				Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_3)
			end

			if Event.interrupted then
				GOO_UpdateAnimation_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", GOO_UpdateAnimation_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setAlpha(0.400000)
        GOO_UpdateAnimation_1(glowOrangeOver, {})
        
		local function ZFF10_UpdateAnimation_1(Element, Event)
			local function ZFF10_UpdateAnimation_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setRGB(0.000000, 0.000000, 0.000000)
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				ZFF10_UpdateAnimation_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_UpdateAnimation_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.900000, 0.730000, 0.680000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_UpdateAnimation_1(zmFxFlsh10, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
    end
    
    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = DefaultAnimation,
            Update = UpdateAnimation
        }
    }
    
	local function UpdateRounds(ModelRef)
		PlayClip(Elem, "Update", InstanceRef)
	end

	Elem:subscribeToGlobalModel(InstanceRef, "PerController", "gameScore.roundsPlayed", UpdateRounds)
	local function CloseEvent(SenderObj)
		SenderObj.DigitsInt:close()
		SenderObj.DigitsOverlay:close()
		SenderObj.ZmFxFlsh10:close()
		SenderObj.ZmFxSpark20:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

