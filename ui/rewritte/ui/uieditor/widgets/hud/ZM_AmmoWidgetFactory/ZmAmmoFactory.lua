require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_PropFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_ClipInfoFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_EquipContainerFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmoFactory_AttachmentInfo")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_BBGumMeterWidget")

CoD.ZmAmmoFactory = InheritFrom(LUI.UIElement)

local function PreLoadCallback(Elem, InstanceRef)
	Engine.CreateModel(Engine.GetModelForController(InstanceRef), "currentWeapon.aatIcon")
end

local function PostLoadCallback(Elem, InstanceRef, HudRef)
	local aatIconModel = Engine.CreateModel(Engine.GetModelForController(InstanceRef), "currentWeapon.aatIcon")
	local aatIconModelValue = Engine.GetModelValue(aatIconModel)
	if not aatIconModelValue then
		Elem.AATIcon:setImage(RegisterImage("blacktransparent"))
	end
end

function CoD.ZmAmmoFactory.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadCallback then
		PreLoadCallback(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmAmmoFactory)
	Elem.id = "ZmAmmoFactory"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 430.000000)
	Elem:setTopBottom(true, false, 0.000000, 247.000000)
    Elem.anyChildUsesUpdateState = true
    
	local glowMultiply = LUI.UIImage.new()
	glowMultiply:setLeftRight(true, false, 54.000000, 515.000000)
	glowMultiply:setTopBottom(true, false, 52.250000, 215.750000)
	glowMultiply:setRGB(0.370000, 0.410000, 0.470000)
	glowMultiply:setAlpha(0.400000)
	glowMultiply:setZRot(-4.000000)
	glowMultiply:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowMultiply:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	Elem:addElement(glowMultiply)
    Elem.GlowMultiply = glowMultiply
    
	local AmmoProp0 = CoD.ZmAmmo_PropFactory.new(HudRef, InstanceRef)
	AmmoProp0:setLeftRight(true, false, 162.340000, 395.650000)
	AmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
	Elem:addElement(AmmoProp0)
    Elem.ZmAmmoProp0 = AmmoProp0
    
	local glowBlueOverlay = LUI.UIImage.new()
	glowBlueOverlay:setLeftRight(true, false, 167.430000, 338.420000)
	glowBlueOverlay:setTopBottom(true, false, 69.380000, 209.880000)
	glowBlueOverlay:setRGB(0.000000, 0.590000, 1.000000)
	glowBlueOverlay:setAlpha(0.230000)
	glowBlueOverlay:setZRot(-4.000000)
	glowBlueOverlay:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	Elem:addElement(glowBlueOverlay)
    Elem.GlowBlueOverlay = glowBlueOverlay
    
	local AmmoClipInfo0 = CoD.ZmAmmo_ClipInfoFactory.new(HudRef, InstanceRef)
	AmmoClipInfo0:setLeftRight(true, false, 162.340000, 297.340000)
	AmmoClipInfo0:setTopBottom(true, false, 117.500000, 174.500000)
	AmmoClipInfo0:setYRot(-30.000000)
	Elem:addElement(AmmoClipInfo0)
    Elem.ZmAmmoClipInfo0 = AmmoClipInfo0
    
	local AmmoEquipContainer0 = CoD.ZmAmmo_EquipContainerFactory.new(HudRef, InstanceRef)
	AmmoEquipContainer0:setLeftRight(true, false, 220.350000, 292.500000)
	AmmoEquipContainer0:setTopBottom(true, false, 94.780000, 146.000000)
	AmmoEquipContainer0:setYRot(-30.000000)

	AmmoEquipContainer0:mergeStateConditions(
        {
            {
                stateName = "OffsetLeft",
                condition = function( Unk1, Unk2, Unk3 )
                    return IsAnyMapName("zm_tomb", "zm_moon")
                end
            }
        }
    )
	Elem:addElement(AmmoEquipContainer0)
    Elem.ZmAmmoEquipContainer0 = AmmoEquipContainer0
    
	local AmmoAttachmentInfo0 = CoD.ZmAmmoFactory_AttachmentInfo.new(HudRef, InstanceRef)
	AmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
	AmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
	AmmoAttachmentInfo0:setYRot(-40.000000)
	Elem:addElement(AmmoAttachmentInfo0)
    Elem.ZmAmmoAttachmentInfo0 = AmmoAttachmentInfo0
    
	local glowNotif = LUI.UIImage.new()
	glowNotif:setLeftRight(true, false, 14.350000, 465.420000)
	glowNotif:setTopBottom(true, false, -22.120000, 238.120000)
	glowNotif:setRGB(0.000000, 0.250000, 1.000000)
	glowNotif:setAlpha(0.000000)
	glowNotif:setImage(RegisterImage("uie_t7_zm_hud_notif_glowfilm"))
	glowNotif:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(glowNotif)
    Elem.GlowNotif = glowNotif
    
	local Flash = LUI.UIImage.new()
	Flash:setLeftRight(true, false, 14.350000, 423.340000)
	Flash:setTopBottom(true, false, 103.250000, 176.000000)
	Flash:setRGB(0.050000, 0.000000, 0.620000)
	Flash:setAlpha(0.000000)
	Flash:setImage(RegisterImage("uie_t7_zm_hud_notif_txtstreak"))
	Flash:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(Flash)
    Elem.Flsh = Flash
    
	local AmmoBBGumMeterWidget = CoD.ZmAmmo_BBGumMeterWidget.new(HudRef, InstanceRef)
	AmmoBBGumMeterWidget:setLeftRight(true, false, 320.000000, 373.000000)
	AmmoBBGumMeterWidget:setTopBottom(true, false, 16.000000, 69.000000)
	AmmoBBGumMeterWidget:setScale(1.400000)
	Elem:addElement(AmmoBBGumMeterWidget)
    Elem.ZmAmmoBBGumMeterWidget = AmmoBBGumMeterWidget
    
	local ZmAATIcon = LUI.UIImage.new()
	ZmAATIcon:setLeftRight(true, false, 277.340000, 325.340000)
	ZmAATIcon:setTopBottom(true, false, 193.000000, 241.000000)
	ZmAATIcon:setYRot(-40.000000)
	ZmAATIcon:setScale(0.700000)

    ZmAATIcon:subscribeToGlobalModel(InstanceRef, "CurrentWeapon", "aatIcon", 
    function(ModelRef)
		local ModelValue = Engine.GetModelValue(ModelRef)
		if ModelValue then
			ZmAATIcon:setImage(RegisterImage(ModelValue))
		end
	end
    )
	Elem:addElement(ZmAATIcon)
	Elem.AATIcon = ZmAATIcon

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(10.000000)
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.000000)
                
                Elem.clipFinished(glowMultiply, {})
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(0.650000, 0.530000, 0.430000)
                Elem.ZmAmmoProp0:setAlpha(0.000000)
                
                Elem.clipFinished(AmmoProp0, {})
                glowBlueOverlay:completeAnimation()
                Elem.GlowBlueOverlay:setAlpha(0.000000)
                
                Elem.clipFinished(glowBlueOverlay, {})
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.TotalAmmo:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(0.000000)
                Elem.ZmAmmoClipInfo0.TotalAmmo:setAlpha(0.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(0.000000)
                
                Elem.clipFinished(AmmoClipInfo0, {})
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(0.000000)
                
                Elem.clipFinished(AmmoEquipContainer0, {})
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, 0.000000, 316.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 163.000000, 201.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(0.000000)
                
                Elem.clipFinished(AmmoAttachmentInfo0, {})
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                Elem.clipFinished(glowNotif, {})
                Flash:completeAnimation()
                Elem.Flsh:setAlpha(0.000000)
                
                Elem.clipFinished(Flash, {})
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(0.000000)
                
                Elem.clipFinished(AmmoBBGumMeterWidget, {})
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(0.000000)
                
                Elem.clipFinished(ZmAATIcon, {})
            end,
            HudStart = function()
                Elem:setupElementClipCounter(9.000000)
                local function glowAnim1(Element, Event)
                    local function glowAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(0.400000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        glowAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowAnim2)
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.000000)
                
                glowAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    local function AmmoProp0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 640.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, 164.690000, 398.000000)
                        Element:setTopBottom(true, false, 62.000000, 206.000000)
                        Element:setRGB(1.000000, 1.000000, 1.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoProp0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoProp0Anim2)
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 196.690000, 430.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 45.540000, 189.540000)
                Elem.ZmAmmoProp0:setRGB(0.280000, 0.160000, 0.050000)
                Elem.ZmAmmoProp0:setAlpha(0.000000)
                Elem.ZmAmmoProp0:setZoom(-46.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function AmmoClipInfo0Anim1(Element, Event)
                    local function AmmoClipInfo0Anim2(Element, Event)
                        local function AmmoClipInfo0Anim3(Element, Event)
                            local function AmmoClipInfo0Anim4(Element, Event)
                                if not Event.interrupted then
                                    Element:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                    Element.Clip:beginAnimation("subkeyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                    Element.TotalAmmo:beginAnimation("subkeyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                    Element.ClipDual:beginAnimation("subkeyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                end
                                Element.Clip:setAlpha(1.000000)
                                Element.TotalAmmo:setAlpha(1.000000)
                                Element.ClipDual:setAlpha(1.000000)
                                if Event.interrupted then
                                    Elem.clipFinished(Element, Event)
                                else
                                    Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                                end
                            end
        
                            if Event.interrupted then
                                AmmoClipInfo0Anim4(Element, Event)
                                return
                            end
                            Element:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
                            Element.TotalAmmo:beginAnimation("subkeyframe", 240.000000, false, false, CoD.TweenType.Bounce)
                            Element.TotalAmmo:setAlpha(1.000000)
                            Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim4)
                        end
        
                        if Event.interrupted then
                            AmmoClipInfo0Anim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                        Element.Clip:beginAnimation("subkeyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                        Element.Clip:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim3)
                    end
        
                    if Event.interrupted then
                        AmmoClipInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim2)
                end
        
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.TotalAmmo:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(0.000000)
                Elem.ZmAmmoClipInfo0.TotalAmmo:setAlpha(0.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(0.000000)
                
                AmmoClipInfo0Anim1(AmmoClipInfo0, {})
                local function AmmoEquipContainer0Anim1(Element, Event)
                    local function AmmoEquipContainer0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoEquipContainer0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1210.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoEquipContainer0Anim2)
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(0.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    local function AmmoAttachmentInfo0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, -40.000000, 276.000000)
                        Element:setTopBottom(true, false, 148.000000, 186.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoAttachmentInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1360.000000, false, false, CoD.TweenType.Linear)
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoAttachmentInfo0Anim2)
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, 40.000000, 356.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 153.000000, 191.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(0.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(-41.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function glowNotifAnim1(Element, Event)
                    local function glowNotifAnim2(Element, Event)
                        local function glowNotifAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Bounce)
                            end
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            glowNotifAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim3)
                    end
        
                    if Event.interrupted then
                        glowNotifAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim2)
                end
        
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                glowNotifAnim1(glowNotif, {})
                local function FlashAnim1(Element, Event)
                    local function FlashAnim2(Element, Event)
                        local function FlashAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
                            end
                            Element:setLeftRight(true, false, 14.350000, 423.340000)
                            Element:setTopBottom(true, false, 103.250000, 176.000000)
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            FlashAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
                        Element:setLeftRight(true, false, 14.350000, 423.340000)
                        Element:setTopBottom(true, false, 103.250000, 176.000000)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", FlashAnim3)
                    end
        
                    if Event.interrupted then
                        FlashAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 939.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", FlashAnim2)
                end
        
                Flash:completeAnimation()
                Elem.Flsh:setLeftRight(true, false, 223.010000, 287.000000)
                Elem.Flsh:setTopBottom(true, false, 108.000000, 171.500000)
                Elem.Flsh:setAlpha(0.000000)
                
                FlashAnim1(Flash, {})
                local function AmmoBBGumMeterWidgetAnim1(Element, Event)
                    local function AmmoBBGumMeterWidgetAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoBBGumMeterWidgetAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoBBGumMeterWidgetAnim2)
                end
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(0.000000)
                
                AmmoBBGumMeterWidgetAnim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    local function ZmAATIconAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        ZmAATIconAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1379.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", ZmAATIconAnim2)
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(0.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end,
            HudStart_NoReserve = function()
                Elem:setupElementClipCounter(9.000000)
                local function glowMultiplyAnim1(Element, Event)
                    local function glowMultiplyAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(0.400000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        glowMultiplyAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowMultiplyAnim2)
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.000000)
                
                glowMultiplyAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    local function AmmoProp0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 640.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, 164.690000, 398.000000)
                        Element:setTopBottom(true, false, 62.000000, 206.000000)
                        Element:setRGB(1.000000, 1.000000, 1.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoProp0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoProp0Anim2)
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 196.690000, 430.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 45.540000, 189.540000)
                Elem.ZmAmmoProp0:setRGB(0.280000, 0.160000, 0.050000)
                Elem.ZmAmmoProp0:setAlpha(0.000000)
                Elem.ZmAmmoProp0:setZoom(-46.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function AmmoClipInfo0Anim1(Element, Event)
                    local function AmmoClipInfo0Anim2(Element, Event)
                        local function AmmoClipInfo0Anim3(Element, Event)
                            local function AmmoClipInfo0Anim4(Element, Event)
                                if not Event.interrupted then
                                    Element:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                    Element.Clip:beginAnimation("subkeyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                    Element.ClipDual:beginAnimation("subkeyframe", 220.000000, false, false, CoD.TweenType.Bounce)
                                end
                                Element.Clip:setAlpha(1.000000)
                                Element.ClipDual:setAlpha(1.000000)
                                if Event.interrupted then
                                    Elem.clipFinished(Element, Event)
                                else
                                    Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                                end
                            end
        
                            if Event.interrupted then
                                AmmoClipInfo0Anim4(Element, Event)
                                return
                            end
                            Element:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
                            Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim4)
                        end
        
                        if Event.interrupted then
                            AmmoClipInfo0Anim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                        Element.Clip:beginAnimation("subkeyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                        Element.Clip:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim3)
                    end
        
                    if Event.interrupted then
                        AmmoClipInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim2)
                end
        
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(0.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(0.000000)
                
                AmmoClipInfo0Anim1(AmmoClipInfo0, {})
                local function AmmoEquipContainer0Anim1(Element, Event)
                    local function AmmoEquipContainer0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoEquipContainer0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1210.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoEquipContainer0Anim2)
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(0.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    local function AmmoAttachmentInfo0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, -40.000000, 276.000000)
                        Element:setTopBottom(true, false, 148.000000, 186.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoAttachmentInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1360.000000, false, false, CoD.TweenType.Linear)
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoAttachmentInfo0Anim2)
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, 40.000000, 356.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 153.000000, 191.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(0.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(-41.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function glowNotifAnim1(Element, Event)
                    local function glowNotifAnim2(Element, Event)
                        local function glowNotifAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Bounce)
                            end
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            glowNotifAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim3)
                    end
        
                    if Event.interrupted then
                        glowNotifAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim2)
                end
        
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                glowNotifAnim1(glowNotif, {})
                local function FlashAnim1(Element, Event)
                    local function FlashAnim2(Element, Event)
                        local function FlashAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
                            end
                            Element:setLeftRight(true, false, 14.350000, 423.340000)
                            Element:setTopBottom(true, false, 103.250000, 176.000000)
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            FlashAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
                        Element:setLeftRight(true, false, 14.350000, 423.340000)
                        Element:setTopBottom(true, false, 103.250000, 176.000000)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", FlashAnim3)
                    end
        
                    if Event.interrupted then
                        FlashAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 939.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", FlashAnim2)
                end
        
                Flash:completeAnimation()
                Elem.Flsh:setLeftRight(true, false, 223.010000, 287.000000)
                Elem.Flsh:setTopBottom(true, false, 108.000000, 171.500000)
                Elem.Flsh:setAlpha(0.000000)
                
                FlashAnim1(Flash, {})
                local function AmmoBBGumMeterWidgetAnim1(Element, Event)
                    local function AmmoBBGumMeterWidgetAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoBBGumMeterWidgetAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoBBGumMeterWidgetAnim2)
                end
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(0.000000)
                
                AmmoBBGumMeterWidgetAnim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    local function ZmAATIconAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        ZmAATIconAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1379.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", ZmAATIconAnim2)
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(0.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end,
            HudStart_NoAmmo = function()
                Elem:setupElementClipCounter(9.000000)
                local function glowMultiplyAnim1(Element, Event)
                    local function glowMultiplyAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(0.400000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        glowMultiplyAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowMultiplyAnim2)
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.000000)
                
                glowMultiplyAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    local function AmmoProp0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 640.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, 164.690000, 398.000000)
                        Element:setTopBottom(true, false, 62.000000, 206.000000)
                        Element:setRGB(1.000000, 1.000000, 1.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoProp0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoProp0Anim2)
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 196.690000, 430.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 45.540000, 189.540000)
                Elem.ZmAmmoProp0:setRGB(0.280000, 0.160000, 0.050000)
                Elem.ZmAmmoProp0:setAlpha(0.000000)
                Elem.ZmAmmoProp0:setZoom(-46.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function AmmoClipInfo0Anim(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                    end
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoClipInfo0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
                AmmoClipInfo0:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim)
                local function AmmoEquipContainer0Anim1(Element, Event)
                    local function AmmoEquipContainer0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoEquipContainer0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1210.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoEquipContainer0Anim2)
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(0.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    local function AmmoAttachmentInfo0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
                        end
                        Element:setLeftRight(true, false, -40.000000, 276.000000)
                        Element:setTopBottom(true, false, 148.000000, 186.000000)
                        Element:setAlpha(1.000000)
                        Element:setZoom(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoAttachmentInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1360.000000, false, false, CoD.TweenType.Linear)
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoAttachmentInfo0Anim2)
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, 40.000000, 356.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 153.000000, 191.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(0.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(-41.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function glowNotifAnim1(Element, Event)
                    local function glowNotifAnim2(Element, Event)
                        local function glowNotifAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Bounce)
                            end
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            glowNotifAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim3)
                    end
        
                    if Event.interrupted then
                        glowNotifAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", glowNotifAnim2)
                end
        
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                glowNotifAnim1(glowNotif, {})
                local function FlashAnim1(Element, Event)
                    local function FlashAnim2(Element, Event)
                        local function FlashAnim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
                            end
                            Element:setLeftRight(true, false, 14.350000, 423.340000)
                            Element:setTopBottom(true, false, 103.250000, 176.000000)
                            Element:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            FlashAnim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
                        Element:setLeftRight(true, false, 14.350000, 423.340000)
                        Element:setTopBottom(true, false, 103.250000, 176.000000)
                        Element:setAlpha(1.000000)
                        Element:registerEventHandler("transition_complete_keyframe", FlashAnim3)
                    end
        
                    if Event.interrupted then
                        FlashAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 939.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", FlashAnim2)
                end
        
                Flash:completeAnimation()
                Elem.Flsh:setLeftRight(true, false, 223.010000, 287.000000)
                Elem.Flsh:setTopBottom(true, false, 108.000000, 171.500000)
                Elem.Flsh:setAlpha(0.000000)
                
                FlashAnim1(Flash, {})
                local function AmmoBBGumMeterWidgetAnim1(Element, Event)
                    local function AmmoBBGumMeterWidgetAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoBBGumMeterWidgetAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoBBGumMeterWidgetAnim2)
                end
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(0.000000)
                
                AmmoBBGumMeterWidgetAnim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    local function ZmAATIconAnim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Bounce)
                        end
                        Element:setAlpha(1.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        ZmAATIconAnim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 1379.000000, false, false, CoD.TweenType.Linear)
                    Element:registerEventHandler("transition_complete_keyframe", ZmAATIconAnim2)
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(0.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end
        },
        HudStart_NoAmmo =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(8.000000)
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                Elem.clipFinished(glowMultiply, {})
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoProp0, {})
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoEquipContainer0, {})
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoAttachmentInfo0, {})
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                Elem.clipFinished(glowNotif, {})
                Flash:completeAnimation()
                Elem.Flsh:setAlpha(0.000000)
                
                Elem.clipFinished(Flash, {})
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoBBGumMeterWidget, {})
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                Elem.clipFinished(ZmAATIcon, {})
            end,
            DefaultState =function()
                Elem:setupElementClipCounter(8.000000)
                local function glowMultiplyAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                glowMultiplyAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 779.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 196.690000, 430.000000)
                    Element:setTopBottom(true, false, 45.540000, 189.540000)
                    Element:setRGB(0.280000, 0.160000, 0.050000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-46.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function glowBlueOverlayAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowBlueOverlay:completeAnimation()
                Elem.GlowBlueOverlay:setAlpha(0.230000)
                
                glowBlueOverlayAnim1(glowBlueOverlay, {})
                AmmoClipInfo0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                AmmoClipInfo0:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                local function AmmoEquipContainer0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-41.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function AmmoBBGumMeterWidgetAnim1(Element, Event)
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
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                AmmoBBGumMeterWidgetAnim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end
        },
        HudStart_NoReserve =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(9.000000)
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                Elem.clipFinished(glowMultiply, {})
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoProp0, {})
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.TotalAmmo:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.TotalAmmo:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoClipInfo0, {})
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoEquipContainer0, {})
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoAttachmentInfo0, {})
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                Elem.clipFinished(glowNotif, {})
                Flash:completeAnimation()
                Elem.Flsh:setAlpha(0.000000)
                
                Elem.clipFinished(Flash, {})
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoBBGumMeterWidget, {})
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                Elem.clipFinished(ZmAATIcon, {})
            end,
            DefaultState = function()
                Elem:setupElementClipCounter(8.000000)
                local function glowMultiplyAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                glowMultiplyAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 779.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 196.690000, 430.000000)
                    Element:setTopBottom(true, false, 45.540000, 189.540000)
                    Element:setRGB(0.280000, 0.160000, 0.050000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-46.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function glowBlueOverlayAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowBlueOverlay:completeAnimation()
                Elem.GlowBlueOverlay:setAlpha(0.230000)
                
                glowBlueOverlayAnim1(glowBlueOverlay, {})
                local function AmmoClipInfo0Anim1(Element, Event)
                    local function AmmoClipInfo0Anim2(Element, Event)
                        if not Event.interrupted then
                            Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                            Element.Clip:beginAnimation("subkeyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                            Element.ClipDual:beginAnimation("subkeyframe", 259.000000, false, false, CoD.TweenType.Bounce)
                        end
                        Element.Clip:setAlpha(0.000000)
                        Element.ClipDual:setAlpha(0.000000)
                        if Event.interrupted then
                            Elem.clipFinished(Element, Event)
                        else
                            Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                        end
                    end
        
                    if Event.interrupted then
                        AmmoClipInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.Clip:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.ClipDual:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.Clip:setAlpha(0.000000)
                    Element.ClipDual:setAlpha(0.580000)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim2)
                end
        
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(1.000000)
                
                AmmoClipInfo0Anim1(AmmoClipInfo0, {})
                local function AmmoEquipContainer0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-41.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
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
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end
        },
        HudStart = 
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(9.000000)
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                Elem.clipFinished(glowMultiply, {})
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoProp0, {})
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.TotalAmmo:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.TotalAmmo:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoClipInfo0, {})
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoEquipContainer0, {})
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                Elem.clipFinished(AmmoAttachmentInfo0, {})
                glowNotif:completeAnimation()
                Elem.GlowNotif:setAlpha(0.000000)
                
                Elem.clipFinished(glowNotif, {})
                Flash:completeAnimation()
                Elem.Flsh:setAlpha(0.000000)
                
                Elem.clipFinished(Flash, {})
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                Elem.clipFinished(AmmoBBGumMeterWidget, {})
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                Elem.clipFinished(ZmAATIcon, {})
            end,
            DefaultState = function()
                Elem:setupElementClipCounter(8.000000)
                local function glowMultiplyAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowMultiply:completeAnimation()
                Elem.GlowMultiply:setAlpha(0.400000)
                
                glowMultiplyAnim1(glowMultiply, {})
                local function AmmoProp0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 779.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 196.690000, 430.000000)
                    Element:setTopBottom(true, false, 45.540000, 189.540000)
                    Element:setRGB(0.280000, 0.160000, 0.050000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-46.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoProp0:completeAnimation()
                Elem.ZmAmmoProp0:setLeftRight(true, false, 164.690000, 398.000000)
                Elem.ZmAmmoProp0:setTopBottom(true, false, 62.000000, 206.000000)
                Elem.ZmAmmoProp0:setRGB(1.000000, 1.000000, 1.000000)
                Elem.ZmAmmoProp0:setAlpha(1.000000)
                Elem.ZmAmmoProp0:setZoom(0.000000)
                
                AmmoProp0Anim1(AmmoProp0, {})
                local function glowBlueOverlayAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                glowBlueOverlay:completeAnimation()
                Elem.GlowBlueOverlay:setAlpha(0.230000)
                
                glowBlueOverlayAnim1(glowBlueOverlay, {})
                local function AmmoClipInfo0Anim1(Element, Event)
                    local function AmmoClipInfo0Anim2(Element, Event)
                        local function AmmoClipInfo0Anim3(Element, Event)
                            if not Event.interrupted then
                                Element:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
                                Element.Clip:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Bounce)
                                Element.TotalAmmo:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Bounce)
                                Element.ClipDual:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Bounce)
                            end
                            Element.Clip:setAlpha(0.000000)
                            Element.TotalAmmo:setAlpha(0.000000)
                            Element.ClipDual:setAlpha(0.000000)
                            if Event.interrupted then
                                Elem.clipFinished(Element, Event)
                            else
                                Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                            end
                        end
        
                        if Event.interrupted then
                            AmmoClipInfo0Anim3(Element, Event)
                            return
                        end
                        Element:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Bounce)
                        Element.TotalAmmo:beginAnimation("subkeyframe", 120.000000, false, false, CoD.TweenType.Bounce)
                        Element.ClipDual:beginAnimation("subkeyframe", 120.000000, false, false, CoD.TweenType.Bounce)
                        Element.TotalAmmo:setAlpha(0.000000)
                        Element.ClipDual:setAlpha(0.280000)
                        Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim3)
                    end
        
                    if Event.interrupted then
                        AmmoClipInfo0Anim2(Element, Event)
                        return
                    end
                    Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.Clip:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.TotalAmmo:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.ClipDual:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
                    Element.Clip:setAlpha(0.000000)
                    Element.TotalAmmo:setAlpha(0.110000)
                    Element.ClipDual:setAlpha(0.580000)
                    Element:registerEventHandler("transition_complete_keyframe", AmmoClipInfo0Anim2)
                end
        
                AmmoClipInfo0:completeAnimation()
                AmmoClipInfo0.Clip:completeAnimation()
                AmmoClipInfo0.TotalAmmo:completeAnimation()
                AmmoClipInfo0.ClipDual:completeAnimation()
                Elem.ZmAmmoClipInfo0.Clip:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.TotalAmmo:setAlpha(1.000000)
                Elem.ZmAmmoClipInfo0.ClipDual:setAlpha(1.000000)
                
                AmmoClipInfo0Anim1(AmmoClipInfo0, {})
                local function AmmoEquipContainer0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoEquipContainer0:completeAnimation()
                Elem.ZmAmmoEquipContainer0:setAlpha(1.000000)
                
                AmmoEquipContainer0Anim1(AmmoEquipContainer0, {})
                local function AmmoAttachmentInfo0Anim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
                    end
                    Element:setLeftRight(true, false, 50.000000, 366.000000)
                    Element:setTopBottom(true, false, 138.000000, 176.000000)
                    Element:setAlpha(0.000000)
                    Element:setZoom(-41.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                AmmoAttachmentInfo0:completeAnimation()
                Elem.ZmAmmoAttachmentInfo0:setLeftRight(true, false, -40.000000, 276.000000)
                Elem.ZmAmmoAttachmentInfo0:setTopBottom(true, false, 148.000000, 186.000000)
                Elem.ZmAmmoAttachmentInfo0:setAlpha(1.000000)
                Elem.ZmAmmoAttachmentInfo0:setZoom(0.000000)
                
                AmmoAttachmentInfo0Anim1(AmmoAttachmentInfo0, {})
                local function AmmoBBGumMeterWidgetAnim1(Element, Event)
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
        
                AmmoBBGumMeterWidget:completeAnimation()
                Elem.ZmAmmoBBGumMeterWidget:setAlpha(1.000000)
                
                AmmoBBGumMeterWidgetAnim1(AmmoBBGumMeterWidget, {})
                local function ZmAATIconAnim1(Element, Event)
                    if not Event.interrupted then
                        Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
                    end
                    Element:setAlpha(0.000000)
                    if Event.interrupted then
                        Elem.clipFinished(Element, Event)
                    else
                        Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
                    end
                end
        
                ZmAATIcon:completeAnimation()
                Elem.AATIcon:setAlpha(1.000000)
                
                ZmAATIconAnim1(ZmAATIcon, {})
            end
        }
    }

	Elem:mergeStateConditions(
        {
            {
                stateName = "HudStart_NoAmmo",
                condition = function(Unk1, Unk2, Unk3)
                    return not WeaponUsesAmmo(InstanceRef)
                end
            },
            {
                stateName = "HudStart_NoReserve",
                condition = function(Unk1, Unk2, Unk3)
                    return ModelValueStartsWith(InstanceRef, "currentWeapon.viewmodelWeaponName", "elemental_bow")
                end
            },
            {
                stateName = "HudStart",
                condition = function(Unk1, Unk2, Unk3)
                    return true
                end
            }
        }
    )


    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "currentWeapon.weapon"), 
    function(ModelRef)
		local elemState = {
		    name = "model_validation",
	    	menu = HudRef,
    		modelValue = Engine.GetModelValue(ModelRef),
            modelName = "currentWeapon.weapon"
        }
		HudRef:updateElementState(Elem, elemState)
	end
    )


    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "currentWeapon.equippedWeaponReference"), 
    function(ModelRef)
		local elemState = {
		    name = "model_validation",
		    menu = HudRef,
		    modelValue = Engine.GetModelValue(ModelRef),
            modelName = "currentWeapon.equippedWeaponReference"
        }
		HudRef:updateElementState(Elem, elemState)
	end      
    )

    Elem:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "currentWeapon.viewmodelWeaponName"), 
    function(ModelRef)
        local elemState = {
		    name = "model_validation",
            menu = HudRef,
		    modelValue = Engine.GetModelValue(ModelRef),
            modelName = "currentWeapon.viewmodelWeaponName"
        }
		HudRef:updateElementState(Elem, elemState)
	end
    )
	local function CloseEvent(SenderObj)
		SenderObj.ZmAmmoProp0:close()
		SenderObj.ZmAmmoClipInfo0:close()
		SenderObj.ZmAmmoEquipContainer0:close()
		SenderObj.ZmAmmoAttachmentInfo0:close()
		SenderObj.ZmAmmoBBGumMeterWidget:close()
		SenderObj.AATIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadCallback then
		PostLoadCallback(Elem, InstanceRef, HudRef)
	end
	return Elem
end

