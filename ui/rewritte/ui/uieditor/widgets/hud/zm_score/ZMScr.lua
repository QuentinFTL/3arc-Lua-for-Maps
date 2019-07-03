require("ui.uieditor.widgets.HUD.ZM_Score.ZMScr_ListingLg")
require("ui.uieditor.widgets.HUD.ZM_Score.ZMScr_ListingSm")
require("ui.uieditor.widgets.HUD.ZM_Score.ZMScr_PlusPointsContainer")


local function getPlayList(InstanceRef)
    return Engine.CreateModel(Engine.GetModelForController(InstanceRef), "PlayerList")
end

CoD.ZMScr = InheritFrom(LUI.UIElement)

local function PlusScorePoint(Elem, Score, InstanceRef, HudRef, isSmallWidget, scrEmitterInfo)
	if Score == 0.000000 or Score < -10000.000000 or 10000.000000 < Score then
		return
	end
	local plus_point_container = CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
    plus_point_container.scoreEmitterInfo = scrEmitterInfo
    Score = Score * (-1)
	if 0.000000 < Score then
		plus_point_container.ZMScrPlusPoints.Label1:setText(("+" .. Score))
		plus_point_container.ZMScrPlusPoints.Label2:setText(("+" .. Score))
		plus_point_container.ZMScrPlusPoints:playClip("DefaultClip")
	else
		plus_point_container.ZMScrPlusPoints.Label1:setText(Score)
		plus_point_container.ZMScrPlusPoints.Label2:setText(Score)
		plus_point_container.ZMScrPlusPoints:playClip("NegativeScore")
	end
	plus_point_container:setLeftRight(Elem:getLocalLeftRight())
	plus_point_container:setTopBottom(Elem:getLocalTopBottom())
	if isSmallWidget ~= true then
		plus_point_container:setScale(0.750000)
	end

	Elem.lastAnim = 1.000000 + Elem.lastAnim
	plus_point_container:setState("DefaultState")
	if not plus_point_container:hasClip(("Anim" .. Elem.lastAnim)) then
		Elem.lastAnim = 1.000000
	end
	local function ClosePlusPoint(Element, InstanceRef)
		Element:close()
		CoD.perController[Element.scoreEmitterInfo.controller].scoreEmitterCount[Element.scoreEmitterInfo.index][Element.scoreEmitterInfo.type] = 1.000000 - CoD.perController[Element.scoreEmitterInfo.controller].scoreEmitterCount[Element.scoreEmitterInfo.index][Element.scoreEmitterInfo.type]
	end

	plus_point_container:registerEventHandler("clip_over", ClosePlusPoint)
	Elem:getParent():addElement(plus_point_container)
	plus_point_container:playClip(("Anim" .. Elem.lastAnim))
end

local function CreateScoreIcons(Elem, InstanceRef)
	local PlayersListModel = DataSources.ZMPlayerList.getModel(InstanceRef)
	for index=0.000000, 3.000000, 1.000000 do
		local PlayerModel = Engine.CreateModel(PlayersListModel, index)
		local InventoryIcon = Engine.CreateModel(PlayerModel, "zombieInventoryIcon")
		Engine.SetModelValue(InventoryIcon, "blacktransparent")
		local WearIcon = Engine.CreateModel(PlayerModel, "zombieWearableIcon")
		Engine.SetModelValue(WearIcon, "blacktransparent")
	end
end

local function PointsChange(Elem, InstanceRef, HudRef)
	local table0 = {
	    damage = 10.000000,
	    death_normal = 50.000000,
	    death_torso = 60.000000,
	    death_neck = 70.000000,
	    death_head = 100.000000,
        death_melee = 130.000000
    }

    CoD.perController[InstanceRef].scoreEmitterCount = {}
	local returnval1 = 1.000000 - 4.000000
	for index=0.000000, 3.000000, 1.000000 do
		Elem[("ZMScrPlusPoints" .. index)]:setAlpha(0.000000)
		Elem[("ZMScrPlusPoints" .. index)].lastAnim = 0.000000

		CoD.perController[InstanceRef].scoreEmitterCount[index] = {}
		CoD.perController[InstanceRef].scoreEmitterCount[index].delayed = 0.000000
		CoD.perController[InstanceRef].scoreEmitterCount[index].instant = 0.000000
		local clientNumModel = Engine.GetModel(Engine.GetModelForController(InstanceRef), ("PlayerList." .. index .. ".clientNum"))
		if clientNumModel then
			local clientNumValue = Engine.GetModelValue(clientNumModel)
		end
		if clientNumValue ~= nil then
			local clientModel = Engine.GetModel(Engine.GetModelForController(InstanceRef), ("PlayerList.client" .. clientNumValue))
            if clientModel ~= nil then
                for index1, value in pairs(table0) do

                    local function updatePlusScoreDelayed(Element, Event)
                        local unk0 = (0.000000 >= index)
                        PlusScorePoint(Element, Event.score, InstanceRef, HudRef, unk0, {controller = InstanceRef, index = index, type = "delayed"})
                        -- 1 = Elem ?
                    end

                    Elem[("ZMScrPlusPoints" .. index)]:registerEventHandler("delayed_score", updatePlusScoreDelayed)

                    local function updatePlusScore(ModelRef)
                        local ModelValue = Engine.GetModelValue(ModelRef)
                        local Score = ModelValue
                        if ModelValue ~= nil then
                            local isDoublePActive = Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.doublePointsActive")
                            if isDoublePActive ~= nil then
                                local DoublePointVal = Engine.GetModelValue(isDoublePActive)
                                if DoublePointVal == 1.000000 then
                                    local Score = 2.000000 * value
                                end
                            end
                            if Elem[("ZMScrPlusPoints" .. index)].accountedForScore ~= nil then
                                local returnval5 = Score + Elem[("ZMScrPlusPoints" .. index)].accountedForScore
                                Elem[("ZMScrPlusPoints" .. index)].accountedForScore = returnval5
                            end
                            if CoD.perController[InstanceRef].scoreEmitterCount[index].delayed < 128.000000 then
                                local returnval6 = 1.000000 + CoD.perController[InstanceRef].scoreEmitterCount[index].delayed
                                CoD.perController[InstanceRef].scoreEmitterCount[index].delayed = returnval6
                                local returnval7 = Engine.GetModelValue(ModelRef)
                                local returnval8 = 3.000000 % returnval7
                                local returnval9 = 16.000000 * returnval8
                                Elem:addElement(LUI.UITimer.new(returnval9, { name = "delayed_score", score = Score }, true, Elem[("ZMScrPlusPoints" .. index)]))
                            end
                        end
                    end
    
                    local scoreModel = Engine.CreateModel(clientModel, ("score_cf_" .. index1))
                    Elem[("ZMScrPlusPoints" .. index)]:subscribeToModel(scoreModel, updatePlusScore)
                end
            end
        else
            Elem[("ZMScrPlusPoints" .. index)].accountedForScore = Engine.GetModelValue(Engine.GetModel(Engine.GetModelForController(InstanceRef), ("PlayerList." .. index .. ".playerScore")))
            
            local function updateUnkPlayerScore(arg0)
            	local ModelValue = Engine.GetModelValue(arg0)
        	    if Elem[("ZMScrPlusPoints" .. index)].accountedForScore == nil then
            		Elem[("ZMScrPlusPoints" .. index)].accountedForScore = ModelValue
            	end
            	if ModelValue ~= Elem[("ZMScrPlusPoints" .. index)].accountedForScore then
            		if CoD.perController[InstanceRef].scoreEmitterCount[index].instant < 64.000000 then
        		    	local returnval1 = 1.000000 + CoD.perController[InstanceRef].scoreEmitterCount[index].instant
        	    		CoD.perController[InstanceRef].scoreEmitterCount[index].instant = returnval1
            			local returnval2 = Elem[("ZMScrPlusPoints" .. index)].accountedForScore - ModelValue
            			local returnval3 = (0.000000 >= index)
            			PlusScorePoint(Elem[("ZMScrPlusPoints" .. index)], returnval2, InstanceRef, HudRef, returnval3, {controller = InstanceRef, index = index, type = "instant"})
            		end
        		    Elem[("ZMScrPlusPoints" .. index)].accountedForScore = ModelValue
        	    end
            end

            Elem[("ZMScrPlusPoints" .. index)]:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), ("PlayerList." .. index .. ".playerScore")), updateUnkPlayerScore)
        end
    end
end

function CoD.ZMScr.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if CreateScoreIcons then
		CreateScoreIcons(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZMScr)
	Elem.id = "ZMScr"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 134.000000)
	Elem:setTopBottom(true, false, 0.000000, 128.000000)
	Elem:makeFocusable()
	Elem.onlyChildrenFocusable = true
    Elem.anyChildUsesUpdateState = true
    
	local listingUser = LUI.UIList.new(HudRef, InstanceRef, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	listingUser:makeFocusable()
	listingUser:setLeftRight(true, false, 0.000000, 134.000000)
	listingUser:setTopBottom(true, false, 70.000000, 128.000000)
	listingUser:setWidgetType(CoD.ZMScr_ListingLg)
	listingUser:setDataSource("PlayerListZM")

	local function SeeCondition(arg0, arg2, arg3)
        return true
	end

    listingUser:mergeStateConditions({{stateName = "Visible", condition = SeeCondition}})
    
	local function PlayerScrShwn(ModelRef)
        HudRef:updateElementState(listingUser,{ name = "model_validation", menu = HudRef, 
        modelValue = Engine.GetModelValue(ModelRef), 
        modelName = "playerScoreShown" })
	end

    listingUser:linkToElementModel(listingUser, "playerScoreShown", true, PlayerScrShwn)
    
	Elem:addElement(listingUser)
    Elem.ListingUser = listingUser
    
	local listing2 = CoD.ZMScr_ListingSm.new(HudRef, InstanceRef)
	listing2:setLeftRight(true, false, 16.280000, 101.280000)
	listing2:setTopBottom(true, false, 52.120000, 87.120000)
	local function listing2Link(arg0)
		listing2:setModel(arg0, InstanceRef)
	end

    listing2:subscribeToGlobalModel(InstanceRef, "ZMPlayerList", "1", listing2Link)
    
	Elem:addElement(listing2)
    Elem.Listing2 = listing2
    
	local listing3 = CoD.ZMScr_ListingSm.new(HudRef, InstanceRef)
	listing3:setLeftRight(true, false, 16.280000, 101.280000)
	listing3:setTopBottom(true, false, 26.120000, 61.120000)
	local function listing3Link(arg0)
		listing3:setModel(arg0, InstanceRef)
	end

    listing3:subscribeToGlobalModel(InstanceRef, "ZMPlayerList", "2", listing3Link)
    
	Elem:addElement(listing3)
    Elem.Listing3 = listing3
    
	local listing4 = CoD.ZMScr_ListingSm.new(HudRef, InstanceRef)
	listing4:setLeftRight(true, false, 16.280000, 101.280000)
	listing4:setTopBottom(true, false, 0.000000, 35.000000)
	local function listing4Link(arg0)
		listing4:setModel(arg0, InstanceRef)
	end

    listing4:subscribeToGlobalModel(InstanceRef, "ZMPlayerList", "3", listing4Link)
    
	Elem:addElement(listing4)
    Elem.Listing4 = listing4
    
	local zmScrPlusPoints0 = CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
	zmScrPlusPoints0:setLeftRight(true, false, 87.000000, 172.000000)
	zmScrPlusPoints0:setTopBottom(true, false, 62.250000, 128.000000)
	Elem:addElement(zmScrPlusPoints0)
    Elem.ZMScrPlusPoints0 = zmScrPlusPoints0
    
	local zmScrPlusPoints1 = CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
	zmScrPlusPoints1:setLeftRight(true, false, 87.000000, 172.000000)
	zmScrPlusPoints1:setTopBottom(true, false, 33.250000, 99.000000)
	zmScrPlusPoints1:setScale(0.750000)
	Elem:addElement(zmScrPlusPoints1)
    Elem.ZMScrPlusPoints1 = zmScrPlusPoints1
    
	local zmScrPlusPoints2 = CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
	zmScrPlusPoints2:setLeftRight(true, false, 87.000000, 172.000000)
	zmScrPlusPoints2:setTopBottom(true, false, 7.750000, 73.500000)
	zmScrPlusPoints2:setScale(0.750000)
	Elem:addElement(zmScrPlusPoints2)
    Elem.ZMScrPlusPoints2 = zmScrPlusPoints2
    
	local zmScrPlusPoints3 = CoD.ZMScr_PlusPointsContainer.new(HudRef, InstanceRef)
	zmScrPlusPoints3:setLeftRight(true, false, 87.000000, 172.000000)
	zmScrPlusPoints3:setTopBottom(true, false, -18.380000, 47.380000)
	zmScrPlusPoints3:setScale(0.750000)
	Elem:addElement(zmScrPlusPoints3)
    Elem.ZMScrPlusPoints3 = zmScrPlusPoints3

	local function DSDefaultClip()
		Elem:setupElementClipCounter(4.000000)
		listingUser:completeAnimation()
		Elem.ListingUser:setAlpha(0.000000)
		Elem.clipFinished(listingUser, {})
		listing2:completeAnimation()
		Elem.Listing2:setAlpha(0.000000)
		Elem.clipFinished(listing2, {})
		listing3:completeAnimation()
		Elem.Listing3:setAlpha(0.000000)
		Elem.clipFinished(listing3, {})
		listing4:completeAnimation()
		Elem.Listing4:setAlpha(0.000000)
		Elem.clipFinished(listing4, {})
	end

	local function DefaultStateHudStart()
		Elem:setupElementClipCounter(4.000000)
		local function ListingUser_DefaultStateHudStart_1(Element, Event)
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

		listingUser:completeAnimation()
		Elem.ListingUser:setAlpha(0.000000)

        ListingUser_DefaultStateHudStart_1(listingUser, {})
        
		local function Listing2_DefaultStateHudStart_1(Element, Event)
			local function Listing2_DefaultStateHudStart_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Listing2_DefaultStateHudStart_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Listing2_DefaultStateHudStart_2)
		end

		listing2:completeAnimation()
		Elem.Listing2:setAlpha(0.000000)

        Listing2_DefaultStateHudStart_1(listing2, {})
        
		local function Listing3_DefaultStateHudStart_1(Element, Event)
			local function Listing3_DefaultStateHudStart_2(Element, Event)
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

			if Event.interrupted then
				Listing3_DefaultStateHudStart_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Listing3_DefaultStateHudStart_2)
		end

		listing3:completeAnimation()
        Elem.Listing3:setAlpha(0.000000)
        
        Listing3_DefaultStateHudStart_1(listing3, {})
        
		local function Listing4_DefaultStateHudStart_1(Element, Event)
			local function Listing4_DefaultStateHudStart_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Listing4_DefaultStateHudStart_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Bounce)
			Element:registerEventHandler("transition_complete_keyframe", Listing4_DefaultStateHudStart_2)
		end

		listing4:completeAnimation()
		Elem.Listing4:setAlpha(0.000000)

        Listing4_DefaultStateHudStart_1(listing4, {})
        
	end

	local function HudStartDefaultClip()
		Elem:setupElementClipCounter(4.000000)
		listingUser:completeAnimation()
		Elem.ListingUser:setAlpha(1.000000)
		Elem.clipFinished(listingUser, {})
		listing2:completeAnimation()
		Elem.Listing2:setAlpha(1.000000)
		Elem.clipFinished(listing2, {})
		listing3:completeAnimation()
		Elem.Listing3:setAlpha(1.000000)
		Elem.clipFinished(listing3, {})
		listing4:completeAnimation()
		Elem.Listing4:setAlpha(1.000000)
		Elem.clipFinished(listing4, {})
	end


    local function HudStartDefaultState()
		Elem:setupElementClipCounter(4.000000)
		local function ListingUserHudStartDefaultState_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		listingUser:completeAnimation()
		Elem.ListingUser:setAlpha(1.000000)
	
        ListingUserHudStartDefaultState_1(listingUser, {})
        
		local function Listing2HudStartDefaultState_1(Element, Event)
			local function Listing2HudStartDefaultState_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Listing2HudStartDefaultState_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Listing2HudStartDefaultState_2)
		end

		listing2:completeAnimation()
		Elem.Listing2:setAlpha(1.000000)

        Listing2HudStartDefaultState_1(listing2, {})
        
		local function Listing3HudStartDefaultState_1(Element, Event)
			local function Listing3HudStartDefaultState_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Listing3HudStartDefaultState_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Listing3HudStartDefaultState_2)
		end

		listing3:completeAnimation()
		Elem.Listing3:setAlpha(1.000000)

        Listing3HudStartDefaultState_1(listing3, {})
        
		local function Listing4HudStartDefaultState_1(Element, Event)
			local function Listing4HudStartDefaultState_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Listing4HudStartDefaultState_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Listing4HudStartDefaultState_2)
		end

		listing4:completeAnimation()
		Elem.Listing4:setAlpha(1.000000)
		Listing4HudStartDefaultState_1(listing4, {})
	end


	Elem.clipsPerState = {
        DefaultState = 
        { 
            DefaultClip = DSDefaultClip, 
            HudStart = DefaultStateHudStart 
        },
        HudStart = {
            DefaultClip = HudStartDefaultClip,
            DefaultState = HudStartDefaultState
        }
    }

    listingUser.id = "ListingUser"
    
	local function procEvnt(Element, Event)
		if Element.m_focusable then
			if Element.ListingUser:processEvent(Event) then
				return true
			end
		end
		return LUI.UIElement.gainFocus(Element, Event)
	end

    Elem:registerEventHandler("gain_focus", procEvnt)
    
	local function CloseEvent(SenderObj)
		SenderObj.ListingUser:close()
		SenderObj.Listing2:close()
		SenderObj.Listing3:close()
		SenderObj.Listing4:close()
		SenderObj.ZMScrPlusPoints0:close()
		SenderObj.ZMScrPlusPoints1:close()
		SenderObj.ZMScrPlusPoints2:close()
		SenderObj.ZMScrPlusPoints3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PointsChange then
		PointsChange(Elem, InstanceRef, HudRef)
	end
	return Elem
end

DataSources.ZMPlayerList = {getModel = getPlayList}
