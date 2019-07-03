require("ui.uieditor.widgets.HUD.ZM_Panels.ZmPanel_RndExt")
require("ui.rewritte.ui.uieditor.widgets.HUD.ZM_RoundWidget.ZmRndDigits")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Flsh1")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2Ext")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2")

CoD.ZmRnd = InheritFrom(LUI.UIElement)

function CoD.ZmRnd.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmRnd)
	Elem.id = "ZmRnd"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 224.000000)
	Elem:setTopBottom(true, false, 0.000000, 200.000000)
    Elem.anyChildUsesUpdateState = true
    
	local panel = CoD.ZmPanel_RndExt.new(HudRef, InstanceRef)
	panel:setLeftRight(true, false, 0.000000, 224.000000)
	panel:setTopBottom(true, false, 0.000000, 200.000000)
	panel:setRGB(0.610000, 0.610000, 0.610000)
	panel:setAlpha(0.000000)
	Elem:addElement(panel)
    Elem.Panel = panel
    
	local rndDigits = CoD.ZmRndDigits.new(HudRef, InstanceRef)
	rndDigits:setLeftRight(true, false, 44.000000, 150.000000)
	rndDigits:setTopBottom(true, false, 84.000000, 164.000000)
	local function DigitsLinkModel(Model)
		rndDigits:setModel(Model, InstanceRef)
	end

	rndDigits:linkToElementModel(Elem, nil, false, DigitsLinkModel)
	Elem:addElement(rndDigits)
    Elem.RndDigits = rndDigits
    
	local mrk1Def = LUI.UIImage.new()
	mrk1Def:setLeftRight(true, false, 40.000000, 72.000000)
	mrk1Def:setTopBottom(true, false, 84.000000, 172.000000)
	mrk1Def:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk1def"))
	Elem:addElement(mrk1Def)
    Elem.Mrk1Def = mrk1Def
    
	local mrk2Def = LUI.UIImage.new()
	mrk2Def:setLeftRight(true, false, 65.000000, 89.000000)
	mrk2Def:setTopBottom(true, false, 75.000000, 163.000000)
	mrk2Def:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk2def"))
	Elem:addElement(mrk2Def)
    Elem.Mrk2Def = mrk2Def
    
	local mrk3Def = LUI.UIImage.new()
	mrk3Def:setLeftRight(true, false, 85.000000, 109.000000)
	mrk3Def:setTopBottom(true, false, 80.000000, 168.000000)
	mrk3Def:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk3def"))
	Elem:addElement(mrk3Def)
    Elem.Mrk3Def = mrk3Def
    
	local mrk4Def = LUI.UIImage.new()
	mrk4Def:setLeftRight(true, false, 105.000000, 129.000000)
	mrk4Def:setTopBottom(true, false, 80.000000, 152.000000)
	mrk4Def:setAlpha(0.000000)
	mrk4Def:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk4def"))
	Elem:addElement(mrk4Def)
    Elem.Mrk4Def = mrk4Def
    
	local mrk5Def = LUI.UIImage.new()
	mrk5Def:setLeftRight(true, false, 40.000000, 136.000000)
	mrk5Def:setTopBottom(true, false, 88.000000, 160.000000)
	mrk5Def:setAlpha(0.000000)
	mrk5Def:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk5def"))
	Elem:addElement(mrk5Def)
    Elem.Mrk5Def = mrk5Def
    
	local mrk1Act = LUI.UIImage.new()
	mrk1Act:setLeftRight(true, false, 40.000000, 72.000000)
	mrk1Act:setTopBottom(true, false, 84.000000, 172.000000)
	mrk1Act:setAlpha(0.000000)
	mrk1Act:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk1act"))
	mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
	mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(mrk1Act)
    Elem.Mrk1Act = mrk1Act
    
	local mrk2Act = LUI.UIImage.new()
	mrk2Act:setLeftRight(true, false, 65.000000, 89.000000)
	mrk2Act:setTopBottom(true, false, 75.000000, 163.000000)
	mrk2Act:setAlpha(0.000000)
	mrk2Act:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk2act"))
	mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
	mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(mrk2Act)
    Elem.Mrk2Act = mrk2Act
    
	local mrk3Act = LUI.UIImage.new()
	mrk3Act:setLeftRight(true, false, 85.000000, 109.000000)
	mrk3Act:setTopBottom(true, false, 80.000000, 168.000000)
	mrk3Act:setAlpha(0.000000)
	mrk3Act:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk3act"))
	mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
	mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(mrk3Act)
    Elem.Mrk3Act = mrk3Act
    
	local mrk4Act = LUI.UIImage.new()
	mrk4Act:setLeftRight(true, false, 105.000000, 129.000000)
	mrk4Act:setTopBottom(true, false, 80.000000, 152.000000)
	mrk4Act:setAlpha(0.000000)
	mrk4Act:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk4act"))
	mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	mrk4Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(mrk4Act)
    Elem.Mrk4Act = mrk4Act
    
	local mrk5Act = LUI.UIImage.new()
	mrk5Act:setLeftRight(true, false, 40.000000, 136.000000)
	mrk5Act:setTopBottom(true, false, 88.000000, 160.000000)
	mrk5Act:setAlpha(0.000000)
	mrk5Act:setImage(RegisterImage("uie_t7_zm_hud_rnd_mrk5act"))
	mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
	mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
	mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(mrk5Act)
    Elem.Mrk5Act = mrk5Act
    
	local glowOrangeOver = LUI.UIImage.new()
	glowOrangeOver:setLeftRight(true, false, 43.000000, 152.000000)
	glowOrangeOver:setTopBottom(true, false, 104.500000, 137.500000)
	glowOrangeOver:setRGB(1.000000, 0.310000, 0.000000)
	glowOrangeOver:setAlpha(0.000000)
	glowOrangeOver:setZRot(-84.000000)
	glowOrangeOver:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	glowOrangeOver:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(glowOrangeOver)
    Elem.GlowOrangeOver = glowOrangeOver
    
	local zmFxFlsh10 = CoD.ZmFx_Flsh1.new(HudRef, InstanceRef)
	zmFxFlsh10:setLeftRight(true, false, -57.500000, 257.500000)
	zmFxFlsh10:setTopBottom(true, false, 0.000000, 216.000000)
	zmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
	zmFxFlsh10:setAlpha(0.000000)
	zmFxFlsh10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(zmFxFlsh10)
    Elem.ZmFxFlsh10 = zmFxFlsh10
    
	local zmFxSpark2Ext0 = CoD.ZmFx_Spark2Ext.new(HudRef, InstanceRef)
	zmFxSpark2Ext0:setLeftRight(true, false, 54.000000, 166.000000)
	zmFxSpark2Ext0:setTopBottom(true, false, 12.000000, 180.000000)
	zmFxSpark2Ext0:setAlpha(0.000000)
	zmFxSpark2Ext0:setZRot(9.000000)
	Elem:addElement(zmFxSpark2Ext0)
    Elem.ZmFxSpark2Ext0 = zmFxSpark2Ext0
    
	local zmFxSpark20 = CoD.ZmFx_Spark2.new(HudRef, InstanceRef)
	zmFxSpark20:setLeftRight(true, false, 32.000000, 162.000000)
	zmFxSpark20:setTopBottom(true, false, -33.000000, 183.000000)
	zmFxSpark20:setAlpha(0.000000)
	zmFxSpark20:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	zmFxSpark20.Image0:setShaderVector(1.000000, 0.000000, 1.370000, 0.000000, 0.000000)
	zmFxSpark20.Image00:setShaderVector(1.000000, 0.000000, -0.620000, 0.000000, 0.000000)
	Elem:addElement(zmFxSpark20)
    Elem.ZmFxSpark20 = zmFxSpark20
    
	local function DSDefaultClip()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(0.000000)
		Elem.clipFinished(mrk1Def, {})
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(0.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
		Elem.clipFinished(mrk5Def, {})
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(1.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk1Act, {})
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk2Act, {})
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk3Act, {})
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk4Act, {})
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk5Act, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 1.500000, 110.500000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 107.500000, 140.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-79.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setAlpha(0.000000)
		Elem.clipFinished(zmFxFlsh10, {})
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 5.000000, 117.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -40.000000, 128.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext0, {})
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function DefaultToRnd1()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		local function M1D_DefaultRnd1_1(Element, Event)
			local function M1D_DefaultRnd1_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M1D_DefaultRnd1_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M1D_DefaultRnd1_2)
		end

		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(0.000000)
        M1D_DefaultRnd1_1(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(0.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        Elem.clipFinished(mrk5Def, {})
        
		local function M1A_DefaultRnd1_1(Element, Event)
			local function M1A_DefaultRnd1_2(Element, Event)
				local function M1A_DefaultRnd1_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					M1A_DefaultRnd1_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1209.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", M1A_DefaultRnd1_3)
			end

			if Event.interrupted then
				M1A_DefaultRnd1_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 899.000000, false, true, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", M1A_DefaultRnd1_2)
		end

		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(1.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        M1A_DefaultRnd1_1(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})

		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})

		local function GOO_DefaultRnd1_1(Element, Event)
			local function GOO_DefaultRnd1_2(Element, Event)
				local function GOO_DefaultRnd1_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 1.500000, 110.500000)
					Element:setTopBottom(true, false, 107.500000, 140.500000)
					Element:setAlpha(0.000000)
					Element:setZRot(-79.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					GOO_DefaultRnd1_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 2230.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", GOO_DefaultRnd1_3)
			end

			if Event.interrupted then
				GOO_DefaultRnd1_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_DefaultRnd1_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 1.500000, 110.500000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 107.500000, 140.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-79.000000)
        GOO_DefaultRnd1_1(glowOrangeOver, {})
        
		local function ZFF10_DefaultRnd1_1(Element, Event)
			local function ZFF10_DefaultRnd1_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_DefaultRnd1_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_DefaultRnd1_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_DefaultRnd1_1(zmFxFlsh10, {})
        
		local function ZFS2E0_DefaultRnd1_1(Element, Event)
			local function ZFS2E0_DefaultRnd1_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setLeftRight(true, false, 17.000000, 129.000000)
				Element:setTopBottom(true, false, 19.000000, 187.000000)
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				ZFS2E0_DefaultRnd1_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, 17.000000, 129.000000)
			Element:setTopBottom(true, false, 19.000000, 187.000000)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_DefaultRnd1_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 5.000000, 117.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -40.000000, 128.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_DefaultRnd1_1(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd1Default()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
		Elem.clipFinished(mrk1Def, {})
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(0.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
		Elem.clipFinished(mrk5Def, {})
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk1Act, {})
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk2Act, {})
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk3Act, {})
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk4Act, {})
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk5Act, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 1.500000, 110.500000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 107.500000, 140.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-79.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setAlpha(0.000000)
		Elem.clipFinished(zmFxFlsh10, {})
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 17.000000, 129.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 19.000000, 187.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext0, {})
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd1ToRnd2()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        Elem.clipFinished(mrk1Def, {})
        
		local function M2D_Rnd1ToRnd2_1(Element, Event)
			local function M2D_Rnd1ToRnd2_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M2D_Rnd1ToRnd2_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M2D_Rnd1ToRnd2_2)
		end

		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(0.000000)
        M2D_Rnd1ToRnd2_1(mrk2Def, {})
        
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
        Elem.clipFinished(mrk3Def, {})
        
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
        Elem.clipFinished(mrk4Def, {})
        
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        Elem.clipFinished(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		local function M2A_Rnd1ToRnd2_1(Element, Event)
			local function M2A_Rnd1ToRnd2_2(Element, Event)
				local function M2A_Rnd1ToRnd2_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					M2A_Rnd1ToRnd2_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1429.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", M2A_Rnd1ToRnd2_3)
			end

			if Event.interrupted then
				M2A_Rnd1ToRnd2_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 680.000000, false, true, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", M2A_Rnd1ToRnd2_2)
		end

		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(1.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        M2A_Rnd1ToRnd2_1(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		local function GOO_Rnd1ToRnd2_1(Element, Event)
			local function GOO_Rnd1ToRnd2_2(Element, Event)
				local function GOO_Rnd1ToRnd2_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 23.000000, 132.000000)
					Element:setTopBottom(true, false, 99.500000, 132.500000)
					Element:setAlpha(0.000000)
					Element:setZRot(-82.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					GOO_Rnd1ToRnd2_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 2230.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd1ToRnd2_3)
			end

			if Event.interrupted then
				GOO_Rnd1ToRnd2_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd1ToRnd2_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 23.000000, 132.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 99.500000, 132.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-82.000000)
        GOO_Rnd1ToRnd2_1(glowOrangeOver, {})
        
		local function ZFF10_Rnd1ToRnd2_1(Element, Event)
			local function ZFF10_Rnd1ToRnd2_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_Rnd1ToRnd2_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_Rnd1ToRnd2_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_Rnd1ToRnd2_1(zmFxFlsh10, {})
        
		local function ZFS2E0_Rnd1ToRnd2_1(Element, Event)
			local function ZFS2E0_Rnd1ToRnd2_2(Element, Event)
				local function ZFS2E0_Rnd1ToRnd2_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 38.000000, 150.000000)
					Element:setTopBottom(true, false, 12.000000, 180.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E0_Rnd1ToRnd2_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 38.000000, 150.000000)
				Element:setTopBottom(true, false, 12.000000, 180.000000)
				Element:setAlpha(1.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd1ToRnd2_3)
			end

			if Event.interrupted then
				ZFS2E0_Rnd1ToRnd2_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, 29.790000, 141.790000)
			Element:setTopBottom(true, false, -44.530000, 123.470000)
			Element:setAlpha(0.450000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd1ToRnd2_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 29.000000, 141.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -50.000000, 118.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_Rnd1ToRnd2_1(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd2Default()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
		Elem.clipFinished(mrk1Def, {})
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
		Elem.clipFinished(mrk5Def, {})
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk1Act, {})
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk2Act, {})
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk3Act, {})
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk4Act, {})
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk5Act, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 23.000000, 132.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 99.500000, 132.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-82.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setAlpha(0.000000)
		Elem.clipFinished(zmFxFlsh10, {})
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 38.000000, 150.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 12.000000, 180.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext0, {})
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd2ToRnd3()
		Elem:setupElementClipCounter(15.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        Elem.clipFinished(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
        Elem.clipFinished(mrk2Def, {})
        
		local function M3D_Rnd2ToRnd3_1(Element, Event)
			local function M3D_Rnd2ToRnd3_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M3D_Rnd2ToRnd3_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M3D_Rnd2ToRnd3_2)
		end

		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
        M3D_Rnd2ToRnd3_1(mrk3Def, {})
        
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
        Elem.clipFinished(mrk4Def, {})
        
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        Elem.clipFinished(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		local function M3A_Rnd2ToRnd3_1(Element, Event)
			local function M3A_Rnd2ToRnd3_2(Element, Event)
				local function M3A_Rnd2ToRnd3_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					M3A_Rnd2ToRnd3_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", M3A_Rnd2ToRnd3_3)
			end

			if Event.interrupted then
				M3A_Rnd2ToRnd3_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 680.000000, false, true, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", M3A_Rnd2ToRnd3_2)
		end

		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(1.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        M3A_Rnd2ToRnd3_1(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		local function GOO_Rnd2ToRnd3_1(Element, Event)
			local function GOO_Rnd2ToRnd3_2(Element, Event)
				local function GOO_Rnd2ToRnd3_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 43.000000, 152.000000)
					Element:setTopBottom(true, false, 104.500000, 137.500000)
					Element:setAlpha(0.000000)
					Element:setZRot(-84.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					GOO_Rnd2ToRnd3_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 2230.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd2ToRnd3_3)
			end

			if Event.interrupted then
				GOO_Rnd2ToRnd3_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd2ToRnd3_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 43.000000, 152.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 104.500000, 137.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-84.000000)
        GOO_Rnd2ToRnd3_1(glowOrangeOver, {})
        
		local function ZFF10_Rnd2ToRnd3_1(Element, Event)
			local function ZFF10_Rnd2ToRnd3_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_Rnd2ToRnd3_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_Rnd2ToRnd3_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
		ZFF10_Rnd2ToRnd3_1(zmFxFlsh10, {})
		local function ZFS2E0_Rnd2ToRnd3_1(Element, Event)
			local function ZFS2E0_Rnd2ToRnd3_2(Element, Event)
				local function ZFS2E0_Rnd2ToRnd3_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 54.000000, 166.000000)
					Element:setTopBottom(true, false, 12.000000, 180.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E0_Rnd2ToRnd3_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 54.000000, 166.000000)
				Element:setTopBottom(true, false, 12.000000, 180.000000)
				Element:setAlpha(1.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd2ToRnd3_3)
			end

			if Event.interrupted then
				ZFS2E0_Rnd2ToRnd3_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, 49.440000, 161.440000)
			Element:setTopBottom(true, false, -43.620000, 124.380000)
			Element:setAlpha(0.450000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd2ToRnd3_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 49.000000, 161.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -49.000000, 119.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		ZFS2E0_Rnd2ToRnd3_1(zmFxSpark2Ext0, {})
	end

	local function Rnd3Default()
		Elem:setupElementClipCounter(15.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
		Elem.clipFinished(mrk1Def, {})
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
		Elem.clipFinished(mrk5Def, {})
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk1Act, {})
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk2Act, {})
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk3Act, {})
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk4Act, {})
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk5Act, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 43.000000, 152.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 104.500000, 137.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-84.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setAlpha(0.000000)
		Elem.clipFinished(zmFxFlsh10, {})
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 54.000000, 166.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 12.000000, 180.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext0, {})
	end

	local function Rnd3ToRnd4()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        Elem.clipFinished(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
        Elem.clipFinished(mrk2Def, {})
        
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
        Elem.clipFinished(mrk3Def, {})
        
		local function M4D_Rnd3ToRnd4_1(Element, Event)
			local function M4D_Rnd3ToRnd4_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M4D_Rnd3ToRnd4_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M4D_Rnd3ToRnd4_2)
		end

		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
        M4D_Rnd3ToRnd4_1(mrk4Def, {})
        
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        Elem.clipFinished(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		local function M4A_Rnd3ToRnd4_1(Element, Event)
			local function M4A_Rnd3ToRnd4_2(Element, Event)
				local function M4A_Rnd3ToRnd4_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					M4A_Rnd3ToRnd4_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", M4A_Rnd3ToRnd4_3)
			end

			if Event.interrupted then
				M4A_Rnd3ToRnd4_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", M4A_Rnd3ToRnd4_2)
		end

		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(1.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        M4A_Rnd3ToRnd4_1(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		local function GOO_Rnd3ToRnd4_1(Element, Event)
			local function GOO_Rnd3ToRnd4_2(Element, Event)
				local function GOO_Rnd3ToRnd4_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 76.000000, 160.000000)
					Element:setTopBottom(true, false, 95.000000, 128.000000)
					Element:setAlpha(0.000000)
					Element:setZRot(-93.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					GOO_Rnd3ToRnd4_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 2230.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd3ToRnd4_3)
			end

			if Event.interrupted then
				GOO_Rnd3ToRnd4_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd3ToRnd4_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 76.000000, 160.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 95.000000, 128.000000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-93.000000)
        GOO_Rnd3ToRnd4_1(glowOrangeOver, {})
        
		local function ZFF10_Rnd3ToRnd4_1(Element, Event)
			local function ZFF10_Rnd3ToRnd4_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_Rnd3ToRnd4_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_Rnd3ToRnd4_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_Rnd3ToRnd4_1(zmFxFlsh10, {})
        
		local function ZFS2E0_Rnd3ToRnd4_1(Element, Event)
			local function ZFS2E0_Rnd3ToRnd4_2(Element, Event)
				local function ZFS2E0_Rnd3ToRnd4_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 71.500000, 183.500000)
					Element:setTopBottom(true, false, -4.000000, 164.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E0_Rnd3ToRnd4_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 71.500000, 183.500000)
				Element:setTopBottom(true, false, -4.000000, 164.000000)
				Element:setAlpha(1.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd3ToRnd4_3)
			end

			if Event.interrupted then
				ZFS2E0_Rnd3ToRnd4_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, 73.780000, 185.780000)
			Element:setTopBottom(true, false, -45.030000, 122.970000)
			Element:setAlpha(0.450000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd3ToRnd4_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 74.000000, 186.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -49.000000, 119.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_Rnd3ToRnd4_1(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd4Default()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
		Elem.clipFinished(panel, {})
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
		Elem.clipFinished(rndDigits, {})
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
		Elem.clipFinished(mrk1Def, {})
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
		Elem.clipFinished(mrk2Def, {})
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
		Elem.clipFinished(mrk3Def, {})
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(1.000000)
		Elem.clipFinished(mrk4Def, {})
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
		Elem.clipFinished(mrk5Def, {})
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk1Act, {})
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk2Act, {})
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk3Act, {})
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk4Act, {})
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.350000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.clipFinished(mrk5Act, {})
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 76.000000, 160.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 95.000000, 128.000000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-93.000000)
		Elem.clipFinished(glowOrangeOver, {})
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(0.000000)
		Elem.clipFinished(zmFxFlsh10, {})
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 71.500000, 183.500000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -4.000000, 164.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext0, {})
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd4ToRnd5()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        Elem.clipFinished(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
        Elem.clipFinished(mrk2Def, {})

		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
        Elem.clipFinished(mrk3Def, {})
        
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(1.000000)
        Elem.clipFinished(mrk4Def, {})
        
		local function M5D_Rnd4ToRnd5_1(Element, Event)
			local function M5D_Rnd4ToRnd5_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M5D_Rnd4ToRnd5_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M5D_Rnd4ToRnd5_2)
		end

		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        M5D_Rnd4ToRnd5_1(mrk5Def, {})

		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		local function M5A_Rnd4ToRnd5_1(Element, Event)
			local function M5A_Rnd4ToRnd5_2(Element, Event)
				local function M5A_Rnd4ToRnd5_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.150000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.220000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					M5A_Rnd4ToRnd5_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", M5A_Rnd4ToRnd5_3)
			end

			if Event.interrupted then
				M5A_Rnd4ToRnd5_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			Element:setShaderVector(0.000000, 1.150000, 0.000000, 0.000000, 0.000000)
			Element:setShaderVector(1.000000, 0.220000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", M5A_Rnd4ToRnd5_2)
		end

		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(1.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.110000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        M5A_Rnd4ToRnd5_1(mrk5Act, {})
        
		local function GOO_Rnd4ToRnd5_1(Element, Event)
			local function GOO_Rnd4ToRnd5_2(Element, Event)
				local function GOO_Rnd4ToRnd5_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 20.000000, 158.000000)
					Element:setTopBottom(true, false, 107.250000, 140.250000)
					Element:setAlpha(0.000000)
					Element:setZRot(-214.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					GOO_Rnd4ToRnd5_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 2230.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd4ToRnd5_3)
			end

			if Event.interrupted then
				GOO_Rnd4ToRnd5_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd4ToRnd5_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 20.000000, 158.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 107.250000, 140.250000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-214.000000)
        GOO_Rnd4ToRnd5_1(glowOrangeOver, {})
        
		local function ZFF10_Rnd4ToRnd5_1(Element, Event)
			local function ZFF10_Rnd4ToRnd5_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_Rnd4ToRnd5_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_Rnd4ToRnd5_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_Rnd4ToRnd5_1(zmFxFlsh10, {})
        
		local function ZFS2E0_Rnd4ToRnd5_1(Element, Event)
			local function ZFS2E0_Rnd4ToRnd5_2(Element, Event)
				local function ZFS2E0_Rnd4ToRnd5_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 85.000000, 197.000000)
					Element:setTopBottom(true, false, 8.000000, 176.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E0_Rnd4ToRnd5_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 85.000000, 197.000000)
				Element:setTopBottom(true, false, 8.000000, 176.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd4ToRnd5_3)
			end

			if Event.interrupted then
				ZFS2E0_Rnd4ToRnd5_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -0.710000, 111.290000)
			Element:setTopBottom(true, false, -41.240000, 126.760000)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd4ToRnd5_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -9.000000, 103.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -46.000000, 122.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_Rnd4ToRnd5_1(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd5Default()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        Elem.clipFinished(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
        Elem.clipFinished(mrk2Def, {})
        
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
        Elem.clipFinished(mrk3Def, {})
        
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(1.000000)
        Elem.clipFinished(mrk4Def, {})
        
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(1.000000)
        Elem.clipFinished(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, -0.130000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.110000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 20.000000, 158.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 107.250000, 140.250000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(-214.000000)
        Elem.clipFinished(glowOrangeOver, {})
        
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(0.000000)
        Elem.clipFinished(zmFxFlsh10, {})
        
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 85.000000, 197.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 8.000000, 176.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        Elem.clipFinished(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
	end

	local function Rnd5ToHigherRounds()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		local function Digits_Rnd5ToHigherRounds_1(Element, Event)
			local function Digits_Rnd5ToHigherRounds_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Digits_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Digits_Rnd5ToHigherRounds_2)
		end

		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(0.000000)
        Digits_Rnd5ToHigherRounds_1(rndDigits, {})
        
		local function M1D_Rnd5ToHigherRounds_1(Element, Event)
			if not Event.interrupted then
				Element:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			Element:setAlpha(0.000000)
			if Event.interrupted then
				Elem.clipFinished(Element, Event)
			else
				Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
			end
		end

		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(1.000000)
        M1D_Rnd5ToHigherRounds_1(mrk1Def, {})
        
		local function M2D_Rnd5ToHigherRounds_1(Element, Event)
			local function M2D_Rnd5ToHigherRounds_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M2D_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M2D_Rnd5ToHigherRounds_2)
		end

		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(1.000000)
        M2D_Rnd5ToHigherRounds_1(mrk2Def, {})
        
		local function M3D_Rnd5ToHigherRounds_1(Element, Event)
			local function M3D_Rnd5ToHigherRounds_2(Element, Event)
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

			if Event.interrupted then
				M3D_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M3D_Rnd5ToHigherRounds_2)
		end

		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(1.000000)
        M3D_Rnd5ToHigherRounds_1(mrk3Def, {})
        
		local function M4D_Rnd5ToHigherRounds_1(Element, Event)
			local function M4D_Rnd5ToHigherRounds_2(Element, Event)
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

			if Event.interrupted then
				M4D_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M4D_Rnd5ToHigherRounds_2)
		end

		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(1.000000)
        M4D_Rnd5ToHigherRounds_1(mrk4Def, {})
        
		local function M5D_Rnd5ToHigherRounds_1(Element, Event)
			local function M5D_Rnd5ToHigherRounds_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				M5D_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", M5D_Rnd5ToHigherRounds_2)
		end

		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(1.000000)
        M5D_Rnd5ToHigherRounds_1(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.220000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		local function GOO_Rnd5ToHigherRounds_1(Element, Event)
			local function GOO_Rnd5ToHigherRounds_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setLeftRight(true, false, 25.000000, 163.000000)
				Element:setTopBottom(true, false, 58.500000, 179.500000)
				Element:setAlpha(0.000000)
				Element:setZRot(0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				GOO_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Bounce)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", GOO_Rnd5ToHigherRounds_2)
		end

		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 25.000000, 163.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 58.500000, 179.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(0.000000)
        GOO_Rnd5ToHigherRounds_1(glowOrangeOver, {})
        
		local function ZFF10_Rnd5ToHigherRounds_1(Element, Event)
			local function ZFF10_Rnd5ToHigherRounds_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
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
				ZFF10_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			Element:setRGB(0.900000, 0.730000, 0.680000)
			Element:registerEventHandler("transition_complete_keyframe", ZFF10_Rnd5ToHigherRounds_2)
		end

		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(1.000000)
        ZFF10_Rnd5ToHigherRounds_1(zmFxFlsh10, {})
        
		local function ZFS2E0_Rnd5ToHigherRounds_1(Element, Event)
			local function ZFS2E0_Rnd5ToHigherRounds_2(Element, Event)
				local function ZFS2E0_Rnd5ToHigherRounds_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, 77.000000, 189.000000)
					Element:setTopBottom(true, false, 9.000000, 177.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E0_Rnd5ToHigherRounds_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 77.000000, 189.000000)
				Element:setTopBottom(true, false, 9.000000, 177.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd5ToHigherRounds_3)
			end

			if Event.interrupted then
				ZFS2E0_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, 11.350000, 123.350000)
			Element:setTopBottom(true, false, 8.090000, 176.090000)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_Rnd5ToHigherRounds_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 5.000000, 117.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 8.000000, 176.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_Rnd5ToHigherRounds_1(zmFxSpark2Ext0, {})
        
		local function ZFS20_Rnd5ToHigherRounds_1(Element, Event)
			local function ZFS20_Rnd5ToHigherRounds_2(Element, Event)
				local function ZFS20_Rnd5ToHigherRounds_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS20_Rnd5ToHigherRounds_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", ZFS20_Rnd5ToHigherRounds_3)
			end

			if Event.interrupted then
				ZFS20_Rnd5ToHigherRounds_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS20_Rnd5ToHigherRounds_2)
		end

		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		ZFS20_Rnd5ToHigherRounds_1(zmFxSpark20, {})
	end

	local function DigitsDefault()
		Elem:setupElementClipCounter(16.000000)
		panel:completeAnimation()
		Elem.Panel:setAlpha(0.000000)
        Elem.clipFinished(panel, {})
        
		rndDigits:completeAnimation()
		Elem.RndDigits:setAlpha(1.000000)
        Elem.clipFinished(rndDigits, {})
        
		mrk1Def:completeAnimation()
		Elem.Mrk1Def:setAlpha(0.000000)
        Elem.clipFinished(mrk1Def, {})
        
		mrk2Def:completeAnimation()
		Elem.Mrk2Def:setAlpha(0.000000)
        Elem.clipFinished(mrk2Def, {})
        
		mrk3Def:completeAnimation()
		Elem.Mrk3Def:setAlpha(0.000000)
        Elem.clipFinished(mrk3Def, {})
        
		mrk4Def:completeAnimation()
		Elem.Mrk4Def:setAlpha(0.000000)
        Elem.clipFinished(mrk4Def, {})
        
		mrk5Def:completeAnimation()
		Elem.Mrk5Def:setAlpha(0.000000)
        Elem.clipFinished(mrk5Def, {})
        
		mrk1Act:completeAnimation()
		Elem.Mrk1Act:setAlpha(0.000000)
		Elem.Mrk1Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk1Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(2.000000, 1.250000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk1Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk1Act, {})
        
		mrk2Act:completeAnimation()
		Elem.Mrk2Act:setAlpha(0.000000)
		Elem.Mrk2Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk2Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk2Act:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk2Act, {})
        
		mrk3Act:completeAnimation()
		Elem.Mrk3Act:setAlpha(0.000000)
		Elem.Mrk3Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk3Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(2.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk3Act:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk3Act, {})
        
		mrk4Act:completeAnimation()
		Elem.Mrk4Act:setAlpha(0.000000)
		Elem.Mrk4Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk4Act:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(2.000000, 1.120000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk4Act:setShaderVector(3.000000, 0.350000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk4Act, {})
        
		mrk5Act:completeAnimation()
		Elem.Mrk5Act:setAlpha(0.000000)
		Elem.Mrk5Act:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.Mrk5Act:setShaderVector(0.000000, 1.150000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(1.000000, 0.220000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.Mrk5Act:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
        Elem.clipFinished(mrk5Act, {})
        
		glowOrangeOver:completeAnimation()
		Elem.GlowOrangeOver:setLeftRight(true, false, 25.000000, 163.000000)
		Elem.GlowOrangeOver:setTopBottom(true, false, 58.500000, 179.500000)
		Elem.GlowOrangeOver:setAlpha(0.000000)
		Elem.GlowOrangeOver:setZRot(0.000000)
        Elem.clipFinished(glowOrangeOver, {})
        
		zmFxFlsh10:completeAnimation()
		Elem.ZmFxFlsh10:setRGB(0.000000, 0.000000, 0.000000)
		Elem.ZmFxFlsh10:setAlpha(0.000000)
        Elem.clipFinished(zmFxFlsh10, {})
        
		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, 77.000000, 189.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, 9.000000, 177.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        Elem.clipFinished(zmFxSpark2Ext0, {})
        
		zmFxSpark20:completeAnimation()
		Elem.ZmFxSpark20:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark20, {})
    end

    Elem.clipsPerState = 
    {
        DefaultState = {
            DefaultClip = DSDefaultClip,
            Rnd1 = DefaultToRnd1
        },
        Rnd1 = {
            DefaultClip = Rnd1Default,
            Rnd2 = Rnd1ToRnd2
        },
        Rnd2 = {
            DefaultClip = Rnd2Default,
            Rnd3 = Rnd2ToRnd3
        },
        Rnd3 = {
            DefaultClip = Rnd3Default,
            Rnd4 = Rnd3ToRnd4
        },
        Rnd4 = {
            DefaultClip = Rnd4Default,
            Rnd5 = Rnd4ToRnd5
        },
        Rnd5 = {
            DefaultClip = Rnd5Default,
            Digits = Rnd5ToHigherRounds
        },
        Digits = {
            DefaultClip = DigitsDefault
        }
    }

    
	local function Rnd1Conditions(unk0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "roundsPlayed", 1.000000 + Engine.GetGametypeSetting("startRound"))
	end


	local function Rnd2Conditions(unk0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "roundsPlayed", 2.000000 + Engine.GetGametypeSetting("startRound"))
	end

	local function Rnd3Conditions(unk0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "roundsPlayed", 3.000000 + Engine.GetGametypeSetting("startRound"))
	end

	local function Rnd4Conditions(unk0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "roundsPlayed", 4.000000 + Engine.GetGametypeSetting("startRound"))
	end

	local function Rnd5Conditions(unk0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, InstanceRef, "roundsPlayed", 5.000000 + Engine.GetGametypeSetting("startRound"))
	end

	local function DigitsConditions(unk0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, InstanceRef, "roundsPlayed", 6.000000 + Engine.GetGametypeSetting("startRound"))
	end

    Elem:mergeStateConditions(
        {
            {
                stateName = "Rnd1",
                condition = Rnd1Conditions
            },
            {
                stateName = "Rnd2",
                condition = Rnd2Conditions
            },
            {
                stateName = "Rnd3",
                condition = Rnd3Conditions
            },
            {
                stateName = "Rnd4",
                condition = Rnd4Conditions
            },
            {
                stateName = "Rnd5",
                condition = Rnd5Conditions
            },
            {
                stateName = "Digits",
                condition = DigitsConditions
            },
        }
    )
    
	local function ElemRoundsPlayedUpdate(ModelRef)
		HudRef:updateElementState(Elem, {name = "model_validation", menu = HudRef,
            modelValue = Engine.GetModelValue(ModelRef),
            modelName = "roundsPlayed"
        })
	end

    Elem:linkToElementModel(Elem, "roundsPlayed", true, ElemRoundsPlayedUpdate)
    
	local function CloseEvent(SenderObj)
		SenderObj.Panel:close()
		SenderObj.RndDigits:close()
		SenderObj.ZmFxFlsh10:close()
		SenderObj.ZmFxSpark2Ext0:close()
		SenderObj.ZmFxSpark20:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

