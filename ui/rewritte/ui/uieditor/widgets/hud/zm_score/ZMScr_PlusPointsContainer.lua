require("ui.uieditor.widgets.HUD.ZM_Score.ZMScr_PlusPoints")

CoD.ZMScr_PlusPointsContainer = InheritFrom(LUI.UIElement)

function CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMScr_PlusPointsContainer)
	Elem.id = "ZMScr_PlusPointsContainer"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 85.000000)
	Elem:setTopBottom(true, false, 0.000000, 66.000000)
    Elem.anyChildUsesUpdateState = true
    
	local zmScrPlusPoints = CoD.ZMScr_PlusPoints.new(HudRef, InstanceRef)
	zmScrPlusPoints:setLeftRight(true, false, 68.910000, 153.910000)
	zmScrPlusPoints:setTopBottom(true, false, 46.880000, 112.630000)
	zmScrPlusPoints.Label2:setText(Engine.Localize("+50"))
	zmScrPlusPoints.Label1:setText(Engine.Localize("+50"))
	Elem:addElement(zmScrPlusPoints)
    Elem.ZMScrPlusPoints = zmScrPlusPoints
    
	local function DSDefaultClip()
		Elem:setupElementClipCounter(0.000000)
	end

	local function DSAnim1()
		Elem:setupElementClipCounter(1.000000)
		local function Anim1_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 97.500000, 182.500000)
			Element:setTopBottom(true, false, -57.190000, 8.560000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
        end
        
		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		Anim1_2(zmScrPlusPoints, {})
	end

	local function DSAnim2()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim2_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 97.970000, 182.970000)
			Element:setTopBottom(true, false, -15.350000, 50.400000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		DSAnim2_2(zmScrPlusPoints, {})
	end

	local function DSAnim3()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim3_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 77.810000, 162.810000)
			Element:setTopBottom(true, false, 44.650000, 110.400000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		DSAnim3_2(zmScrPlusPoints, {})
	end

	local function DSAnim4()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim4_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 83.440000, 168.440000)
			Element:setTopBottom(true, false, -15.350000, 50.400000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
		Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)

        DSAnim4_2(zmScrPlusPoints, {})
	end

	local function DSAnim5()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim5_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 55.780000, 140.780000)
			Element:setTopBottom(true, false, -43.480000, 22.270000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
		Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)

        DSAnim5_2(zmScrPlusPoints, {})
	end

	local function DSAnim6()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim6_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 82.500000, 167.500000)
			Element:setTopBottom(true, false, 30.940000, 96.690000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		DSAnim6_2(zmScrPlusPoints, {})
	end

	local function DSAnim7()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim7_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 84.380000, 169.380000)
			Element:setTopBottom(true, false, -38.440000, 27.310000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		DSAnim7_2(zmScrPlusPoints, {})
	end

	local function DSAnim8()
		Elem:setupElementClipCounter(1.000000)
		local function DSAnim8_2(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setLeftRight(true, false, 68.910000, 153.910000)
			Element:setTopBottom(true, false, 46.880000, 112.630000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		zmScrPlusPoints:completeAnimation()
		Elem.ZMScrPlusPoints:setLeftRight(true, false, 0.000000, 85.000000)
        Elem.ZMScrPlusPoints:setTopBottom(true, false, 0.000000, 65.750000)
        
		DSAnim8_2(zmScrPlusPoints, {})
	end

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = DSDefaultClip,
            Anim1 = DSAnim1,
            Anim2 = DSAnim2,
            Anim3 = DSAnim3,
            Anim4 = DSAnim4,
            Anim5 = DSAnim5,
            Anim6 = DSAnim6,
            Anim7 = DSAnim7,
            Anim8 = DSAnim8
        }
    }
	local function CloseEvent(SenderObj)
		SenderObj.ZMScrPlusPoints:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

