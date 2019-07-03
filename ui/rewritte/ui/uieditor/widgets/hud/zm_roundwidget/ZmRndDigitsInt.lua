require("ui.rewritte.ui.uieditor.widgets.HUD.ZM_RoundWidget.ZmRndDigitWidget")

CoD.ZmRndDigitsInt = InheritFrom(LUI.UIElement)

function CoD.ZmRndDigitsInt.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmRndDigitsInt)
	Elem.id = "ZmRndDigitsInt"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 106.000000)
	Elem:setTopBottom(true, false, 0.000000, 80.000000)
    Elem.anyChildUsesUpdateState = true
    
	local zmRndDigitWidget = CoD.ZmRndDigitWidget.new(HudRef, InstanceRef)
	zmRndDigitWidget:setLeftRight(true, false, 3.000000, 59.000000)
	zmRndDigitWidget:setTopBottom(true, false, 0.000000, 80.000000)

    zmRndDigitWidget:linkToElementModel(Elem, nil, false, 
        function(Model)
            zmRndDigitWidget:setModel(Model, InstanceRef)
        end
    )

    zmRndDigitWidget:linkToElementModel(Elem, "roundsPlayed", true, 
        function(ModelRef)
            PlayClipOnElement(Elem, {elementName = "ZmRndDigitWidget", clipName = "DefaultClip"}, InstanceRef)
        end
    )

    zmRndDigitWidget:mergeStateConditions(
        {
            {
                stateName = "One",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 1.000000)
                    end
            },
            {
                stateName = "Two",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 2.000000)
                    end
            },
            {
                stateName = "Three",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 3.000000)
                    end
            },
            {
                stateName = "Four",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 4.000000)
                    end
            },
            {
                stateName = "Five",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 5.000000)
                    end
            },
            {
                stateName = "Six",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 6.000000)
                    end
            },
            {
                stateName = "Seven",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 7.000000)
                    end
            },
            {
                stateName = "Eight",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 8.000000)
                    end
            },
            {
                stateName = "Nine",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 9.000000)
                    end
            },
            {
                stateName = "Zero",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundTensDigitEqualTo(unk2, InstanceRef, 0.000000)
                    end
            }
        }
    )
    
	zmRndDigitWidget:linkToElementModel(zmRndDigitWidget, "roundsPlayed", true, 
        function(ModelRef)
		    local modelState = {
		        name = "model_validation",
    		    menu = HudRef,
	    	    modelValue = Engine.GetModelValue(ModelRef),
                modelName = "roundsPlayed"
            }
		    HudRef:updateElementState(zmRndDigitWidget, modelState)
        end
    )

	Elem:addElement(zmRndDigitWidget)
    Elem.ZmRndDigitWidget = zmRndDigitWidget
    
	local zmRndDigitWidget0 = CoD.ZmRndDigitWidget.new(HudRef, InstanceRef)
	zmRndDigitWidget0:setLeftRight(true, false, 46.000000, 102.000000)
	zmRndDigitWidget0:setTopBottom(true, false, 0.000000, 80.000000)

    zmRndDigitWidget0:linkToElementModel(Elem, nil, false, 
        function(Model)
            zmRndDigitWidget0:setModel(Model, InstanceRef)
        end
    )

	zmRndDigitWidget0:mergeStateConditions(
        {
            {
                stateName = "One",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 1.000000)
                    end
            },
            {
                stateName = "Two",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 2.000000)
                    end
            },
            {
                stateName = "Three",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 3.000000)
                    end
            },
            {
                stateName = "Four",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 4.000000)
                    end
            },
            {
                stateName = "Five",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 5.000000)
                    end
            },
            {
                stateName = "Six",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 6.000000)
                    end
            },
            {
                stateName = "Seven",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 7.000000)
                    end
            },
            {
                stateName = "Eight",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 8.000000)
                    end
            },
            {
                stateName = "Nine",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 9.000000)
                    end
            },
            {
                stateName = "Zero",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundOnesDigitEqualTo(unk2, InstanceRef, 0.000000)
                    end
            }
        }
    )

	zmRndDigitWidget0:linkToElementModel(zmRndDigitWidget0, "roundsPlayed", true, 
        function(ModelRef)
	    	local modelState = {
	    	    name = "model_validation",
	    	    menu = HudRef,
	    	    modelValue = Engine.GetModelValue(ModelRef),
                modelName = "roundsPlayed"
            }
	    	HudRef:updateElementState(zmRndDigitWidget0, modelState)
        end
    )

	Elem:addElement(zmRndDigitWidget0)
    Elem.ZmRndDigitWidget0 = zmRndDigitWidget0
    
	local zmRndDigitWidget1 = CoD.ZmRndDigitWidget.new(HudRef, InstanceRef)
	zmRndDigitWidget1:setLeftRight(true, false, -40.000000, 16.000000)
	zmRndDigitWidget1:setTopBottom(true, false, 0.000000, 80.000000)

    zmRndDigitWidget1:linkToElementModel(Elem, nil, false, 
        function(Model)
            zmRndDigitWidget1:setModel(Model, InstanceRef)
        end
    )

	zmRndDigitWidget1:linkToElementModel(Elem, "roundsPlayed", true, 
        function(ModelRef)
            PlayClipOnElement(Elem, {elementName = "ZmRndDigitWidget1", clipName = "DefaultClip"}, InstanceRef)
        end
    )

	zmRndDigitWidget1:mergeStateConditions(
        {
            {
                stateName = "One",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 1.000000)
                    end
            },
            {
                stateName = "Two",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 2.000000)
                    end
            },
            {
                stateName = "Three",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 3.000000)
                    end
            },
            {
                stateName = "Four",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 4.000000)
                    end
            },
            {
                stateName = "Five",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 5.000000)
                    end
            },
            {
                stateName = "Six",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 6.000000)
                    end
            },
            {
                stateName = "Seven",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 7.000000)
                    end
            },
            {
                stateName = "Eight",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 8.000000)
                    end
            },
            {
                stateName = "Nine",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 9.000000)
                    end
            },
            {
                stateName = "Zero",
                condition =
                    function(unk1, unk2, unk3)
                        return IsZombieRoundHundredsDigitEqualTo(unk2, InstanceRef, 0.000000)
                    end
            }
        }
    )

    zmRndDigitWidget1:linkToElementModel(zmRndDigitWidget1, "roundsPlayed", true, 
        function(ModelRef)
	    	local modelState = {
	    	    name = "model_validation",
	    	    menu = HudRef,
	    	    modelValue = Engine.GetModelValue(ModelRef),
                modelName = "roundsPlayed"
            }
	    	HudRef:updateElementState(zmRndDigitWidget1, modelState)
        end
    )
    
	Elem:addElement(zmRndDigitWidget1)
    Elem.ZmRndDigitWidget1 = zmRndDigitWidget1

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(3.000000)
                zmRndDigitWidget:completeAnimation()
                Elem.ZmRndDigitWidget:setLeftRight(true, false, 3.000000, 59.000000)
                Elem.ZmRndDigitWidget:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget:setAlpha(0.000000)
                Elem.clipFinished(zmRndDigitWidget, {})

                zmRndDigitWidget0:completeAnimation()
                Elem.ZmRndDigitWidget0:setLeftRight(true, false, 46.000000, 102.000000)
                Elem.ZmRndDigitWidget0:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget0:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget0, {})

                zmRndDigitWidget1:completeAnimation()
                Elem.ZmRndDigitWidget1:setLeftRight(true, false, -40.000000, 16.000000)
                Elem.ZmRndDigitWidget1:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget1:setAlpha(0.000000)
                Elem.clipFinished(zmRndDigitWidget1, {})
            end
        },
        Triple = 
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(3.000000)
                zmRndDigitWidget:completeAnimation()
                Elem.ZmRndDigitWidget:setLeftRight(true, false, 43.000000, 99.000000)
                Elem.ZmRndDigitWidget:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget, {})

                zmRndDigitWidget0:completeAnimation()
                Elem.ZmRndDigitWidget0:setLeftRight(true, false, 86.000000, 142.000000)
                Elem.ZmRndDigitWidget0:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget0:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget0, {})

                zmRndDigitWidget1:completeAnimation()
                Elem.ZmRndDigitWidget1:setLeftRight(true, false, 0.000000, 56.000000)
                Elem.ZmRndDigitWidget1:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget1:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget1, {})
            end
        },
        Double = 
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(3.000000)
                zmRndDigitWidget:completeAnimation()
                Elem.ZmRndDigitWidget:setLeftRight(true, false, 3.000000, 59.000000)
                Elem.ZmRndDigitWidget:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget, {})

                zmRndDigitWidget0:completeAnimation()
                Elem.ZmRndDigitWidget0:setLeftRight(true, false, 46.000000, 102.000000)
                Elem.ZmRndDigitWidget0:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget0:setAlpha(1.000000)
                Elem.clipFinished(zmRndDigitWidget0, {})

                zmRndDigitWidget1:completeAnimation()
                Elem.ZmRndDigitWidget1:setLeftRight(true, false, -40.000000, 16.000000)
                Elem.ZmRndDigitWidget1:setTopBottom(true, false, 0.000000, 80.000000)
                Elem.ZmRndDigitWidget1:setAlpha(0.000000)
                Elem.clipFinished(zmRndDigitWidget1, {})
            end
        }
    }

	local function CloseEvent(SenderObj)
		SenderObj.ZmRndDigitWidget:close()
		SenderObj.ZmRndDigitWidget0:close()
		SenderObj.ZmRndDigitWidget1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

