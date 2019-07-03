require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2Ext")

CoD.ZmRndDigitWidget = InheritFrom(LUI.UIElement)

function CoD.ZmRndDigitWidget.new(HudRef, InstanceRef)
	local Elem = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(Elem, InstanceRef)
	end
	Elem:setUseStencil(false)
	Elem:setClass(CoD.ZmRndDigitWidget)
	Elem.id = "ZmRndDigitWidget"
	Elem.soundSet = "HUD"
	Elem:setLeftRight(true, false, 0.000000, 56.000000)
    Elem:setTopBottom(true, false, 0.000000, 80.000000)
    
	local nine = LUI.UIImage.new()
	nine:setLeftRight(true, false, 0.000000, 56.000000)
	nine:setTopBottom(true, false, 0.000000, 80.000000)
	nine:setAlpha(0.000000)
	nine:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr9"))
	nine:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(nine)
    Elem.Nine = nine
    
	local nineLight = LUI.UIImage.new()
	nineLight:setLeftRight(true, false, 0.000000, 56.000000)
	nineLight:setTopBottom(true, false, 0.000000, 80.000000)
	nineLight:setAlpha(0.000000)
	nineLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr9_act"))
	nineLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	nineLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	nineLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	nineLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	nineLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(nineLight)
    Elem.NineLight = nineLight
    
	local nineGlow = LUI.UIImage.new()
	nineGlow:setLeftRight(true, false, 0.000000, 56.000000)
	nineGlow:setTopBottom(true, false, 0.000000, 80.000000)
	nineGlow:setRGB(1.000000, 0.310000, 0.000000)
	nineGlow:setAlpha(0.000000)
	nineGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr9_glow"))
	nineGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(nineGlow)
    Elem.NineGlow = nineGlow
    
	local eight = LUI.UIImage.new()
	eight:setLeftRight(true, false, 0.000000, 56.000000)
	eight:setTopBottom(true, false, 0.000000, 80.000000)
	eight:setAlpha(0.000000)
	eight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr8"))
	eight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(eight)
    Elem.Eight = eight
    
	local eightLight = LUI.UIImage.new()
	eightLight:setLeftRight(true, false, 0.000000, 56.000000)
	eightLight:setTopBottom(true, false, 0.000000, 80.000000)
	eightLight:setAlpha(0.000000)
	eightLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr8_act"))
	eightLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	eightLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	eightLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	eightLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	eightLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(eightLight)
    Elem.EightLight = eightLight
    
	local eightGlow = LUI.UIImage.new()
	eightGlow:setLeftRight(true, false, 0.000000, 56.000000)
	eightGlow:setTopBottom(true, false, 0.000000, 80.000000)
	eightGlow:setRGB(1.000000, 0.310000, 0.000000)
	eightGlow:setAlpha(0.000000)
	eightGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr8_glow"))
	eightGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(eightGlow)
    Elem.EightGlow = eightGlow
    
	local seven = LUI.UIImage.new()
	seven:setLeftRight(true, false, 0.000000, 56.000000)
	seven:setTopBottom(true, false, 0.000000, 80.000000)
	seven:setAlpha(0.000000)
	seven:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr7"))
	seven:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(seven)
    Elem.Seven = seven
    
	local sevenLight = LUI.UIImage.new()
	sevenLight:setLeftRight(true, false, 0.000000, 56.000000)
	sevenLight:setTopBottom(true, false, 0.000000, 80.000000)
	sevenLight:setAlpha(0.000000)
	sevenLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr7_act"))
	sevenLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	sevenLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	sevenLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	sevenLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	sevenLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(sevenLight)
    Elem.SevenLight = sevenLight
    
	local sevenGlow = LUI.UIImage.new()
	sevenGlow:setLeftRight(true, false, 0.000000, 56.000000)
	sevenGlow:setTopBottom(true, false, 0.000000, 80.000000)
	sevenGlow:setRGB(1.000000, 0.310000, 0.000000)
	sevenGlow:setAlpha(0.000000)
	sevenGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr7_glow"))
	sevenGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(sevenGlow)
    Elem.SevenGlow = sevenGlow
    
	local six = LUI.UIImage.new()
	six:setLeftRight(true, false, 0.000000, 56.000000)
	six:setTopBottom(true, false, 0.000000, 80.000000)
	six:setAlpha(0.000000)
	six:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr6"))
	Elem:addElement(six)
    Elem.Six = six
    
	local sixLight = LUI.UIImage.new()
	sixLight:setLeftRight(true, false, 0.000000, 56.000000)
	sixLight:setTopBottom(true, false, 0.000000, 80.000000)
	sixLight:setAlpha(0.000000)
	sixLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr6_act"))
	sixLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	sixLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	sixLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	sixLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	sixLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(sixLight)
    Elem.SixLight = sixLight
    
	local sixGlow = LUI.UIImage.new()
	sixGlow:setLeftRight(true, false, 0.000000, 56.000000)
	sixGlow:setTopBottom(true, false, 0.000000, 80.000000)
	sixGlow:setRGB(1.000000, 0.310000, 0.000000)
	sixGlow:setAlpha(0.000000)
	sixGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr6_glow"))
	sixGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(sixGlow)
    Elem.SixGlow = sixGlow
    
	local five = LUI.UIImage.new()
	five:setLeftRight(true, false, 0.000000, 56.000000)
	five:setTopBottom(true, false, 0.000000, 80.000000)
	five:setAlpha(0.000000)
	five:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr5"))
	five:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(five)
    Elem.Five = five
    
	local fiveLight = LUI.UIImage.new()
	fiveLight:setLeftRight(true, false, 0.000000, 56.000000)
	fiveLight:setTopBottom(true, false, 0.000000, 80.000000)
	fiveLight:setAlpha(0.000000)
	fiveLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr5_act"))
	fiveLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	fiveLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	fiveLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	fiveLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	fiveLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(fiveLight)
    Elem.FiveLight = fiveLight
    
	local fiveGlow = LUI.UIImage.new()
	fiveGlow:setLeftRight(true, false, 0.000000, 56.000000)
	fiveGlow:setTopBottom(true, false, 0.000000, 80.000000)
	fiveGlow:setRGB(1.000000, 0.310000, 0.000000)
	fiveGlow:setAlpha(0.000000)
	fiveGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr5_glow"))
	fiveGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(fiveGlow)
    Elem.FiveGlow = fiveGlow
    
	local four = LUI.UIImage.new()
	four:setLeftRight(true, false, 0.000000, 56.000000)
	four:setTopBottom(true, false, 0.000000, 80.000000)
	four:setAlpha(0.000000)
	four:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr4"))
	four:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(four)
    Elem.Four = four
    
	local fourLight = LUI.UIImage.new()
	fourLight:setLeftRight(true, false, 0.000000, 56.000000)
	fourLight:setTopBottom(true, false, 0.000000, 80.000000)
	fourLight:setAlpha(0.000000)
	fourLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr4_act"))
	fourLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	fourLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	fourLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	fourLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	fourLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(fourLight)
    Elem.FourLight = fourLight
    
	local fourGlow = LUI.UIImage.new()
	fourGlow:setLeftRight(true, false, 0.000000, 56.000000)
	fourGlow:setTopBottom(true, false, 0.000000, 80.000000)
	fourGlow:setRGB(1.000000, 0.310000, 0.000000)
	fourGlow:setAlpha(0.000000)
	fourGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr4_glow"))
	fourGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(fourGlow)
    Elem.FourGlow = fourGlow
    
	local three = LUI.UIImage.new()
	three:setLeftRight(true, false, 0.000000, 56.000000)
	three:setTopBottom(true, false, 0.000000, 80.000000)
	three:setAlpha(0.000000)
	three:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr3"))
	three:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(three)
    Elem.Three = three
    
	local threeLight = LUI.UIImage.new()
	threeLight:setLeftRight(true, false, 0.000000, 56.000000)
	threeLight:setTopBottom(true, false, 0.000000, 80.000000)
	threeLight:setAlpha(0.000000)
	threeLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr3_act"))
	threeLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	threeLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	threeLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	threeLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	threeLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(threeLight)
    Elem.ThreeLight = threeLight
    
	local threeGlow = LUI.UIImage.new()
	threeGlow:setLeftRight(true, false, 0.000000, 56.000000)
	threeGlow:setTopBottom(true, false, 0.000000, 80.000000)
	threeGlow:setRGB(1.000000, 0.310000, 0.000000)
	threeGlow:setAlpha(0.000000)
	threeGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr3_glow"))
	threeGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(threeGlow)
    Elem.ThreeGlow = threeGlow
    
	local two = LUI.UIImage.new()
	two:setLeftRight(true, false, 0.000000, 56.000000)
	two:setTopBottom(true, false, 0.000000, 80.000000)
	two:setAlpha(0.000000)
	two:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr2"))
	Elem:addElement(two)
    Elem.Two = two
    
	local twoLight = LUI.UIImage.new()
	twoLight:setLeftRight(true, false, 0.000000, 56.000000)
	twoLight:setTopBottom(true, false, 0.000000, 80.000000)
	twoLight:setAlpha(0.000000)
	twoLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr2_act"))
	twoLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	twoLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	twoLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	twoLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	twoLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(twoLight)
    Elem.TwoLight = twoLight
    
	local twoGlow = LUI.UIImage.new()
	twoGlow:setLeftRight(true, false, 0.000000, 56.000000)
	twoGlow:setTopBottom(true, false, 0.000000, 80.000000)
	twoGlow:setRGB(1.000000, 0.310000, 0.000000)
	twoGlow:setAlpha(0.000000)
	twoGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr2_glow"))
	twoGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(twoGlow)
    Elem.TwoGlow = twoGlow
    
	local one = LUI.UIImage.new()
	one:setLeftRight(true, false, 0.000000, 56.000000)
	one:setTopBottom(true, false, 0.000000, 80.000000)
	one:setAlpha(0.000000)
	one:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr1"))
	one:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(one)
    Elem.One = one
    
	local oneLight = LUI.UIImage.new()
	oneLight:setLeftRight(true, false, 0.000000, 56.000000)
	oneLight:setTopBottom(true, false, 0.000000, 80.000000)
	oneLight:setAlpha(0.000000)
	oneLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr1_act"))
	oneLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	oneLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	oneLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	oneLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	oneLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(oneLight)
    Elem.OneLight = oneLight
    
	local oneGlow = LUI.UIImage.new()
	oneGlow:setLeftRight(true, false, 0.000000, 56.000000)
	oneGlow:setTopBottom(true, false, 0.000000, 80.000000)
	oneGlow:setRGB(1.000000, 0.310000, 0.000000)
	oneGlow:setAlpha(0.000000)
	oneGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr1_glow"))
	oneGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(oneGlow)
    Elem.OneGlow = oneGlow
    
	local zero = LUI.UIImage.new()
	zero:setLeftRight(true, false, 0.000000, 56.000000)
	zero:setTopBottom(true, false, 0.000000, 80.000000)
	zero:setAlpha(0.000000)
	zero:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr0"))
	zero:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	Elem:addElement(zero)
    Elem.Zero = zero
    
	local zeroLight = LUI.UIImage.new()
	zeroLight:setLeftRight(true, false, 0.000000, 56.000000)
	zeroLight:setTopBottom(true, false, 0.000000, 80.000000)
	zeroLight:setAlpha(0.000000)
	zeroLight:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr0_act"))
	zeroLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	zeroLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	zeroLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	zeroLight:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	zeroLight:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Elem:addElement(zeroLight)
    Elem.ZeroLight = zeroLight
    
	local zeroGlow = LUI.UIImage.new()
	zeroGlow:setLeftRight(true, false, 0.000000, 56.000000)
	zeroGlow:setTopBottom(true, false, 0.000000, 80.000000)
	zeroGlow:setRGB(1.000000, 0.310000, 0.000000)
	zeroGlow:setAlpha(0.000000)
	zeroGlow:setImage(RegisterImage("uie_t7_zm_hud_rnd_nmbr0_glow"))
	zeroGlow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(zeroGlow)
    Elem.ZeroGlow = zeroGlow
    
	local zmFxSpark2Ext0 = CoD.ZmFx_Spark2Ext.new(HudRef, InstanceRef)
	zmFxSpark2Ext0:setLeftRight(true, false, -17.560000, 94.440000)
	zmFxSpark2Ext0:setTopBottom(true, false, -137.290000, 30.710000)
	zmFxSpark2Ext0:setAlpha(0.000000)
	zmFxSpark2Ext0:setZRot(9.000000)
	zmFxSpark2Ext0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(zmFxSpark2Ext0)
    Elem.ZmFxSpark2Ext0 = zmFxSpark2Ext0
    
	local zmFxSpark2Ext00 = CoD.ZmFx_Spark2Ext.new(HudRef, InstanceRef)
	zmFxSpark2Ext00:setLeftRight(true, false, -3.560000, 108.440000)
	zmFxSpark2Ext00:setTopBottom(true, false, -128.000000, 40.000000)
	zmFxSpark2Ext00:setAlpha(0.000000)
	zmFxSpark2Ext00:setZRot(9.000000)
	zmFxSpark2Ext00:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	Elem:addElement(zmFxSpark2Ext00)
    Elem.ZmFxSpark2Ext00 = zmFxSpark2Ext00
    
	local function OneDefault()
		Elem:setupElementClipCounter(31.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
        Elem.clipFinished(nine, {})
        
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
        Elem.clipFinished(nineLight, {})
        
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
        Elem.clipFinished(nineGlow, {})
        
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Elem.clipFinished(eight, {})
        
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
        Elem.clipFinished(eightLight, {})
        
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
        Elem.clipFinished(eightGlow, {})
        
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
        Elem.clipFinished(seven, {})
        
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
        Elem.clipFinished(sevenLight, {})
        
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
        Elem.clipFinished(sevenGlow, {})
        
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
        Elem.clipFinished(six, {})
        
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
        Elem.clipFinished(sixLight, {})
        
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
        Elem.clipFinished(sixGlow, {})
        
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
        Elem.clipFinished(five, {})
        
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
        Elem.clipFinished(fiveLight, {})
        
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
        Elem.clipFinished(fiveGlow, {})
        
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
        Elem.clipFinished(four, {})
        
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
        Elem.clipFinished(fourLight, {})
        
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
        Elem.clipFinished(fourGlow, {})
        
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
        Elem.clipFinished(three, {})
        
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
        Elem.clipFinished(threeLight, {})
        
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
        Elem.clipFinished(threeGlow, {})
        
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
        Elem.clipFinished(two, {})
        
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
        Elem.clipFinished(twoLight, {})
        
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
        Elem.clipFinished(twoGlow, {})
        
		local function One_OneDefault_1(Element, Event)
			local function One_OneDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1509.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				One_OneDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", One_OneDefault_2)
		end

		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
        One_OneDefault_1(one, {})
        
		local function OneLight_OneDefault_1(Element, Event)
			local function OneLight_OneDefault_2(Element, Event)
				local function OneLight_OneDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 2210.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.160000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					OneLight_OneDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.160000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", OneLight_OneDefault_3)
			end

			if Event.interrupted then
				OneLight_OneDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", OneLight_OneDefault_2)
		end

		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(1.000000)
		Elem.OneLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.OneLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.OneLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.OneLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.OneLight:setShaderVector(3.000000, 0.260000, 0.000000, 0.000000, 0.000000)
        OneLight_OneDefault_1(oneLight, {})
        
		local function OneGlow_OneDefault_1(Element, Event)
			local function OneGlow_OneDefault_2(Element, Event)
				local function OneGlow_OneDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					OneGlow_OneDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1509.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", OneGlow_OneDefault_3)
			end

			if Event.interrupted then
				OneGlow_OneDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", OneGlow_OneDefault_2)
		end

		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
        OneGlow_OneDefault_1(oneGlow, {})
        
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
        Elem.clipFinished(zero, {})
        
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
        Elem.clipFinished(zeroLight, {})
        
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
        Elem.clipFinished(zeroGlow, {})
        
		local function ZFS2E0_OneDefault_1(Element, Event)
			local function ZFS2E0_OneDefault_2(Element, Event)
				local function ZFS2E0_OneDefault_3(Element, Event)
					local function ZFS2E0_OneDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setLeftRight(true, false, -13.560000, 98.440000)
						Element:setTopBottom(true, false, -75.290000, 92.710000)
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						ZFS2E0_OneDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -13.560000, 98.440000)
					Element:setTopBottom(true, false, -75.290000, 92.710000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_OneDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_OneDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.800000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_OneDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_OneDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_OneDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -17.560000, 94.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -137.290000, 30.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		ZFS2E0_OneDefault_1(zmFxSpark2Ext0, {})
	end

	local function TwoDefault()
		Elem:setupElementClipCounter(29.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
        Elem.clipFinished(nine, {})
        
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
        Elem.clipFinished(nineLight, {})
        
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
        Elem.clipFinished(nineGlow, {})
        
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Elem.clipFinished(eight, {})
        
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
        Elem.clipFinished(eightLight, {})
        
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
        Elem.clipFinished(eightGlow, {})
        
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
        Elem.clipFinished(seven, {})
        
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
        Elem.clipFinished(sevenLight, {})
        
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
        Elem.clipFinished(sevenGlow, {})
        
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
        Elem.clipFinished(six, {})
        
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
        Elem.clipFinished(sixLight, {})
        
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
        Elem.clipFinished(sixGlow, {})
        
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
        Elem.clipFinished(five, {})
        
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
        Elem.clipFinished(fiveLight, {})
        
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
        Elem.clipFinished(fiveGlow, {})
        
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
        Elem.clipFinished(four, {})
        
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
        Elem.clipFinished(fourLight, {})
        
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
        Elem.clipFinished(fourGlow, {})
        
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
        Elem.clipFinished(three, {})
        
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
        Elem.clipFinished(threeLight, {})
        
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
        Elem.clipFinished(threeGlow, {})
        
		local function Two_TwoDefault_1(Element, Event)
			local function Two_TwoDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1519.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Two_TwoDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Two_TwoDefault_2)
		end

		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
        Two_TwoDefault_1(two, {})
        
		local function TwoLight__TwoDefault_1(Element, Event)
			local function TwoLight__TwoDefault_2(Element, Event)
				local function TwoLight__TwoDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.220000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					TwoLight__TwoDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.550000)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", TwoLight__TwoDefault_3)
			end

			if Event.interrupted then
				TwoLight__TwoDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", TwoLight__TwoDefault_2)
		end

		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		Elem.TwoLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.TwoLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.TwoLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.TwoLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.TwoLight:setShaderVector(3.000000, 0.220000, 0.000000, 0.000000, 0.000000)
        TwoLight__TwoDefault_1(twoLight, {})
        
		local function TwoGlow_TwoDefault_1(Element, Event)
			local function TwoGlow_TwoDefault_2(Element, Event)
				local function TwoGlow_TwoDefault_3(Element, Event)
					local function TwoGlow_TwoDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						TwoGlow_TwoDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 1379.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", TwoGlow_TwoDefault_4)
				end

				if Event.interrupted then
					TwoGlow_TwoDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(1.000000)
				Element:registerEventHandler("transition_complete_keyframe", TwoGlow_TwoDefault_3)
			end

			if Event.interrupted then
				TwoGlow_TwoDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", TwoGlow_TwoDefault_2)
		end

		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
        TwoGlow_TwoDefault_1(twoGlow, {})
        
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
        Elem.clipFinished(one, {})
        
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
        Elem.clipFinished(oneLight, {})
        
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
        Elem.clipFinished(oneGlow, {})
        
		local function ZFS2E0_TwoDefault_1(Element, Event)
			local function ZFS2E0_TwoDefault_2(Element, Event)
				local function ZFS2E0_TwoDefault_3(Element, Event)
					local function ZFS2E0_TwoDefault_4(Element, Event)
						local function ZFS2E0_TwoDefault_5(Element, Event)
							local function ZFS2E0_TwoDefault_6(Element, Event)
								local function ZFS2E0_TwoDefault_7(Element, Event)
									local function ZFS2E0_TwoDefault_8(Element, Event)
										local function ZFS2E0_TwoDefault_9(Element, Event)
											if not Event.interrupted then
												Element:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
											end
											Element:setLeftRight(true, false, -7.560000, 104.440000)
											Element:setTopBottom(true, false, -86.000000, 82.000000)
											Element:setAlpha(0.000000)
											if Event.interrupted then
												Elem.clipFinished(Element, Event)
											else
												Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
											end
										end

										if Event.interrupted then
											ZFS2E0_TwoDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
										Element:setLeftRight(true, false, -7.560000, 104.440000)
										Element:setTopBottom(true, false, -86.000000, 82.000000)
										Element:setAlpha(0.700000)
										Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_9)
									end

									if Event.interrupted then
										ZFS2E0_TwoDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -12.560000, 99.440000)
									Element:setTopBottom(true, false, -82.540000, 85.460000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_8)
								end

								if Event.interrupted then
									ZFS2E0_TwoDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -20.560000, 91.440000)
								Element:setTopBottom(true, false, -77.000000, 91.000000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_7)
							end

							if Event.interrupted then
								ZFS2E0_TwoDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -16.560000, 95.440000)
							Element:setTopBottom(true, false, -92.000000, 76.000000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_TwoDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -11.560000, 100.440000)
						Element:setTopBottom(true, false, -113.000000, 55.000000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_TwoDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -10.560000, 101.440000)
					Element:setTopBottom(true, false, -128.000000, 40.000000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_TwoDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -19.560000, 92.440000)
				Element:setTopBottom(true, false, -132.290000, 35.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_TwoDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_TwoDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -29.560000, 82.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -121.290000, 46.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_TwoDefault_1(zmFxSpark2Ext0, {})
        
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
	end

	local function ThreeDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
        Elem.clipFinished(nine, {})
        
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
        Elem.clipFinished(nineLight, {})
        
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
        Elem.clipFinished(nineGlow, {})
        
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Elem.clipFinished(eight, {})
        
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
        Elem.clipFinished(eightLight, {})
        
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
        Elem.clipFinished(eightGlow, {})
        
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
        Elem.clipFinished(seven, {})
        
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
        Elem.clipFinished(sevenLight, {})
        
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
        Elem.clipFinished(sevenGlow, {})
        
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
        Elem.clipFinished(six, {})
        
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
        Elem.clipFinished(sixLight, {})
        
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
        Elem.clipFinished(sixGlow, {})
        
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
        Elem.clipFinished(five, {})
        
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
        Elem.clipFinished(fiveLight, {})
        
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
        Elem.clipFinished(fiveGlow, {})
        
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
        Elem.clipFinished(four, {})
        
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
        Elem.clipFinished(fourLight, {})
        
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
        Elem.clipFinished(fourGlow, {})
        
		local function Three_ThreeDefault_1(Element, Event)
			local function Three_ThreeDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Three_ThreeDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Three_ThreeDefault_2)
		end

		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
        Three_ThreeDefault_1(three, {})
        
		local function ThreeLight_ThreeDefault_1(Element, Event)
			local function ThreeLight_ThreeDefault_2(Element, Event)
				local function ThreeLight_ThreeDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ThreeLight_ThreeDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", ThreeLight_ThreeDefault_3)
			end

			if Event.interrupted then
				ThreeLight_ThreeDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", ThreeLight_ThreeDefault_2)
		end

		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(1.000000)
		Elem.ThreeLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.ThreeLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.ThreeLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.ThreeLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.ThreeLight:setShaderVector(3.000000, 0.210000, 0.000000, 0.000000, 0.000000)
        ThreeLight_ThreeDefault_1(threeLight, {})
        
		local function ThreeGlow_ThreeDefault_1(Element, Event)
			local function ThreeGlow_ThreeDefault_2(Element, Event)
				local function ThreeGlow_ThreeDefault_3(Element, Event)
					local function ThreeGlow_ThreeDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						ThreeGlow_ThreeDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", ThreeGlow_ThreeDefault_4)
				end

				if Event.interrupted then
					ThreeGlow_ThreeDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(1.000000)
				Element:registerEventHandler("transition_complete_keyframe", ThreeGlow_ThreeDefault_3)
			end

			if Event.interrupted then
				ThreeGlow_ThreeDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", ThreeGlow_ThreeDefault_2)
		end

		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
        ThreeGlow_ThreeDefault_1(threeGlow, {})
        
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
        Elem.clipFinished(two, {})
        
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
        Elem.clipFinished(twoLight, {})
        
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
        Elem.clipFinished(twoGlow, {})
        
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
        Elem.clipFinished(one, {})
        
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
        Elem.clipFinished(oneLight, {})
        
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
        Elem.clipFinished(oneGlow, {})
        
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
        Elem.clipFinished(zero, {})
        
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
        Elem.clipFinished(zeroLight, {})
        
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
        Elem.clipFinished(zeroGlow, {})
        
		local function ZFX2E0_ThreeDefault_1(Element, Event)
			local function ZFX2E0_ThreeDefault_2(Element, Event)
				local function ZFX2E0_ThreeDefault_3(Element, Event)
					local function ZFX2E0_ThreeDefault_4(Element, Event)
						local function ZFX2E0_ThreeDefault_5(Element, Event)
							local function ZFX2E0_ThreeDefault_6(Element, Event)
								local function ZFX2E0_ThreeDefault_7(Element, Event)
									local function ZFX2E0_ThreeDefault_8(Element, Event)
										local function ZFX2E0_ThreeDefault_9(Element, Event)
											local function ZFX2E0_ThreeDefault_10(Element, Event)
												local function ZFX2E0_ThreeDefault_11(Element, Event)
													local function ZFX2E0_ThreeDefault_12(Element, Event)
														local function ZFX2E0_ThreeDefault_13(Element, Event)
															if not Event.interrupted then
																Element:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
															end
															Element:setLeftRight(true, false, -19.560000, 92.440000)
															Element:setTopBottom(true, false, -72.000000, 96.000000)
															Element:setAlpha(0.000000)
															if Event.interrupted then
																Elem.clipFinished(Element, Event)
															else
																Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
															end
														end

														if Event.interrupted then
															ZFX2E0_ThreeDefault_13(Element, Event)
															return
														end
														Element:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
														Element:setLeftRight(true, false, -18.730000, 93.270000)
														Element:setAlpha(0.000000)
														Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_13)
													end

													if Event.interrupted then
														ZFX2E0_ThreeDefault_12(Element, Event)
														return
													end
													Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
													Element:setLeftRight(true, false, -18.560000, 93.440000)
													Element:setTopBottom(true, false, -72.000000, 96.000000)
													Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_12)
												end

												if Event.interrupted then
													ZFX2E0_ThreeDefault_11(Element, Event)
													return
												end
												Element:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
												Element:setLeftRight(true, false, -2.560000, 109.440000)
												Element:setTopBottom(true, false, -86.000000, 82.000000)
												Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_11)
											end

											if Event.interrupted then
												ZFX2E0_ThreeDefault_10(Element, Event)
												return
											end
											Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
											Element:setLeftRight(true, false, -3.560000, 108.440000)
											Element:setTopBottom(true, false, -95.000000, 73.000000)
											Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_10)
										end

										if Event.interrupted then
											ZFX2E0_ThreeDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
										Element:setLeftRight(true, false, -16.000000, 96.000000)
										Element:setTopBottom(true, false, -103.000000, 65.000000)
										Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_9)
									end

									if Event.interrupted then
										ZFX2E0_ThreeDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -11.000000, 101.000000)
									Element:setTopBottom(true, false, -110.000000, 58.000000)
									Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_8)
								end

								if Event.interrupted then
									ZFX2E0_ThreeDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -5.000000, 107.000000)
								Element:setTopBottom(true, false, -120.000000, 48.000000)
								Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_7)
							end

							if Event.interrupted then
								ZFX2E0_ThreeDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -10.000000, 102.000000)
							Element:setTopBottom(true, false, -135.000000, 33.000000)
							Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_6)
						end

						if Event.interrupted then
							ZFX2E0_ThreeDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -19.000000, 93.000000)
						Element:setTopBottom(true, false, -137.000000, 31.000000)
						Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_5)
					end

					if Event.interrupted then
						ZFX2E0_ThreeDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -26.060000, 85.940000)
					Element:setTopBottom(true, false, -127.000000, 41.000000)
					Element:setAlpha(0.800000)
					Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_4)
				end

				if Event.interrupted then
					ZFX2E0_ThreeDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				Element:setAlpha(0.290000)
				Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_3)
			end

			if Event.interrupted then
				ZFX2E0_ThreeDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", ZFX2E0_ThreeDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -31.000000, 81.000000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -120.000000, 48.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFX2E0_ThreeDefault_1(zmFxSpark2Ext0, {})
        
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
    end

	local function FourDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
        Elem.clipFinished(nine, {})
        
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
        Elem.clipFinished(nineLight, {})
        
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)    
        Elem.clipFinished(nineGlow, {})
        
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Elem.clipFinished(eight, {})
        
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
        Elem.clipFinished(eightLight, {})
        
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
        Elem.clipFinished(eightGlow, {})
        
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
        Elem.clipFinished(seven, {})
        
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
        Elem.clipFinished(sevenLight, {})
        
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
        Elem.clipFinished(sevenGlow, {})
        
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
        Elem.clipFinished(six, {})
        
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
        Elem.clipFinished(sixLight, {})
        
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
        Elem.clipFinished(sixGlow, {})
        
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
        Elem.clipFinished(five, {})
        
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
        Elem.clipFinished(fiveLight, {})
        
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
        Elem.clipFinished(fiveGlow, {})
        
		local function Four_FourDefault_1(Element, Event)
			local function Four_FourDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1539.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Four_FourDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Four_FourDefault_2)
		end

		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
        Four_FourDefault_1(four, {})
        
		local function FourLight_FourDefault_1(Element, Event)
			local function FourLight_FourDefault_2(Element, Event)
				local function FourLight_FourDefault_3(Element, Event)
					local function FourLight_FourDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(3.000000, 0.220000, 0.000000, 0.000000, 0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						FourLight_FourDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", FourLight_FourDefault_4)
				end

				if Event.interrupted then
					FourLight_FourDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", FourLight_FourDefault_3)
			end

			if Event.interrupted then
				FourLight_FourDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", FourLight_FourDefault_2)
		end

		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(1.000000)
		Elem.FourLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.FourLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.FourLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.FourLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.FourLight:setShaderVector(3.000000, 0.220000, 0.000000, 0.000000, 0.000000)
		FourLight_FourDefault_1(fourLight, {})
        
		local function FourGlow_FourDefault_1(Element, Event)
			local function FourGlow_FourDefault_2(Element, Event)
				local function FourGlow_FourDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					FourGlow_FourDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1779.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", FourGlow_FourDefault_3)
			end

			if Event.interrupted then
				FourGlow_FourDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", FourGlow_FourDefault_2)
		end

		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
        FourGlow_FourDefault_1(fourGlow, {})
        
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
        Elem.clipFinished(three, {})
        
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
        Elem.clipFinished(threeLight, {})
        
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
        Elem.clipFinished(threeGlow, {})
        
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
        Elem.clipFinished(two, {})
        
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
        Elem.clipFinished(twoLight, {})
        
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
        Elem.clipFinished(twoGlow, {})
        
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
        Elem.clipFinished(one, {})
        
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
        Elem.clipFinished(oneLight, {})
        
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
        Elem.clipFinished(oneGlow, {})
        
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
        Elem.clipFinished(zero, {})
        
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
        Elem.clipFinished(zeroLight, {})
        
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
        Elem.clipFinished(zeroGlow, {})
        
		local function ZFS2E0_FourDefault_1(Element, Event)
			local function ZFS2E0_FourDefault_2(Element, Event)
				local function ZFS2E0_FourDefault_3(Element, Event)
					local function ZFS2E0_FourDefault_4(Element, Event)
						local function ZFS2E0_FourDefault_5(Element, Event)
							if not Event.interrupted then
								Element:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
							end
							Element:setLeftRight(true, false, -4.560000, 107.440000)
							Element:setTopBottom(true, false, -117.290000, 50.710000)
							Element:setAlpha(0.000000)
							if Event.interrupted then
								Elem.clipFinished(Element, Event)
							else
								Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
							end
						end

						if Event.interrupted then
							ZFS2E0_FourDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -4.560000, 107.440000)
						Element:setTopBottom(true, false, -117.290000, 50.710000)
						Element:setAlpha(0.430000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FourDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_FourDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -14.670000, 97.330000)
					Element:setTopBottom(true, false, -111.030000, 56.970000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FourDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_FourDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 429.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -25.560000, 86.440000)
				Element:setTopBottom(true, false, -104.290000, 63.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FourDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_FourDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -22.590000, 89.410000)
			Element:setTopBottom(true, false, -127.270000, 40.730000)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FourDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -21.560000, 90.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -135.290000, 32.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_FourDefault_1(zmFxSpark2Ext0, {})
        
		local function ZFS2E00_FourDefault_1(Element, Event)
			local function ZFS2E00_FourDefault_2(Element, Event)
				local function ZFS2E00_FourDefault_3(Element, Event)
					local function ZFS2E00_FourDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setLeftRight(true, false, -10.560000, 101.440000)
						Element:setTopBottom(true, false, -76.000000, 92.000000)
						Element:setAlpha(0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						ZFS2E00_FourDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_FourDefault_4)
				end

				if Event.interrupted then
					ZFS2E00_FourDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -10.560000, 101.440000)
				Element:setTopBottom(true, false, -76.000000, 92.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_FourDefault_3)
			end

			if Event.interrupted then
				ZFS2E00_FourDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -5.900000, 106.100000)
			Element:setTopBottom(true, false, -117.910000, 50.090000)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_FourDefault_2)
		end

		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setLeftRight(true, false, -4.560000, 107.440000)
		Elem.ZmFxSpark2Ext00:setTopBottom(true, false, -130.000000, 38.000000)
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
        ZFS2E00_FourDefault_1(zmFxSpark2Ext00, {})
	end

	local function FiveDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
        Elem.clipFinished(nine, {})
        
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
        Elem.clipFinished(nineLight, {})
        
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
        Elem.clipFinished(nineGlow, {})
        
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Elem.clipFinished(eight, {})
        
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
        Elem.clipFinished(eightLight, {})
        
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
        Elem.clipFinished(eightGlow, {})

		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
        Elem.clipFinished(seven, {})
        
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
        Elem.clipFinished(sevenLight, {})
        
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
        Elem.clipFinished(sevenGlow, {})
        
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
        Elem.clipFinished(six, {})
        
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
        Elem.clipFinished(sixLight, {})
        
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
        Elem.clipFinished(sixGlow, {})

		local function Five_FiveDefault_1(Element, Event)
			local function Five_FiveDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Five_FiveDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Five_FiveDefault_2)
		end

		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
        Five_FiveDefault_1(five, {})
        
		local function FiveLight_FiveDefault_1(Element, Event)
			local function FiveLight_FiveDefault_2(Element, Event)
				local function FiveLight_FiveDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					FiveLight_FiveDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", FiveLight_FiveDefault_3)
			end

			if Event.interrupted then
				FiveLight_FiveDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", FiveLight_FiveDefault_2)
		end

		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(1.000000)
		Elem.FiveLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.FiveLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.FiveLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.FiveLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.FiveLight:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
        FiveLight_FiveDefault_1(fiveLight, {})

		local function FiveGlow_FiveDefault_1(Element, Event)
			local function FiveGlow_FiveDefault_2(Element, Event)
				local function FiveGlow_FiveDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					FiveGlow_FiveDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1649.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", FiveGlow_FiveDefault_3)
			end

			if Event.interrupted then
				FiveGlow_FiveDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", FiveGlow_FiveDefault_2)
		end

		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
        FiveGlow_FiveDefault_1(fiveGlow, {})
        
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
        Elem.clipFinished(four, {})
        
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
        Elem.clipFinished(fourLight, {})
        
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
        Elem.clipFinished(fourGlow, {})
        
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
        Elem.clipFinished(three, {})
        
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
        Elem.clipFinished(threeLight, {})
        
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
        Elem.clipFinished(threeGlow, {})
        
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
        Elem.clipFinished(two, {})
        
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
        Elem.clipFinished(twoLight, {})
        
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
        Elem.clipFinished(twoGlow, {})
        
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
        Elem.clipFinished(one, {})
        
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
        Elem.clipFinished(oneLight, {})
        
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
        Elem.clipFinished(oneGlow, {})
        
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
        Elem.clipFinished(zero, {})
        
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
        Elem.clipFinished(zeroLight, {})
        
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
        Elem.clipFinished(zeroGlow, {})
        
		local function ZFS2E0_FiveDefault_1(Element, Event)
			local function ZFS2E0_FiveDefault_2(Element, Event)
				local function ZFS2E0_FiveDefault_3(Element, Event)
					local function ZFS2E0_FiveDefault_4(Element, Event)
						local function ZFS2E0_FiveDefault_5(Element, Event)
							local function ZFS2E0_FiveDefault_6(Element, Event)
								local function ZFS2E0_FiveDefault_7(Element, Event)
									local function ZFS2E0_FiveDefault_8(Element, Event)
										local function ZFS2E0_FiveDefault_9(Element, Event)
											local function ZFS2E0_FiveDefault_10(Element, Event)
												if not Event.interrupted then
													Element:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
												end
												Element:setLeftRight(true, false, -22.560000, 89.440000)
												Element:setTopBottom(true, false, -73.290000, 94.710000)
												Element:setAlpha(0.000000)
												if Event.interrupted then
													Elem.clipFinished(Element, Event)
												else
													Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
												end
											end

											if Event.interrupted then
												ZFS2E0_FiveDefault_10(Element, Event)
												return
											end
											Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
											Element:setLeftRight(true, false, -22.560000, 89.440000)
											Element:setTopBottom(true, false, -73.290000, 94.710000)
											Element:setAlpha(0.590000)
											Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_10)
										end

										if Event.interrupted then
											ZFS2E0_FiveDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
										Element:setLeftRight(true, false, -18.560000, 93.440000)
										Element:setTopBottom(true, false, -72.290000, 95.710000)
										Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_9)
									end

									if Event.interrupted then
										ZFS2E0_FiveDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -9.560000, 102.440000)
									Element:setTopBottom(true, false, -75.290000, 92.710000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_8)
								end

								if Event.interrupted then
									ZFS2E0_FiveDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -5.560000, 106.440000)
								Element:setTopBottom(true, false, -82.290000, 85.710000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_7)
							end

							if Event.interrupted then
								ZFS2E0_FiveDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -7.560000, 104.440000)
							Element:setTopBottom(true, false, -94.290000, 73.710000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_FiveDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -14.090000, 97.910000)
						Element:setTopBottom(true, false, -110.820000, 57.180000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_FiveDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -23.560000, 88.440000)
					Element:setTopBottom(true, false, -110.290000, 57.710000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_FiveDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -22.560000, 89.440000)
				Element:setTopBottom(true, false, -133.290000, 34.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_FiveDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -15.450000, 96.550000)
			Element:setTopBottom(true, false, -136.610000, 31.390000)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_FiveDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -7.560000, 104.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -140.290000, 27.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_FiveDefault_1(zmFxSpark2Ext0, {})
        
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
	end

	local function SixDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
		
		Elem.clipFinished(nine, {})
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
		
		Elem.clipFinished(nineLight, {})
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
		
		Elem.clipFinished(nineGlow, {})
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
		
		Elem.clipFinished(eight, {})
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
		
		Elem.clipFinished(eightLight, {})
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
		
		Elem.clipFinished(eightGlow, {})
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
		
		Elem.clipFinished(seven, {})
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
		
		Elem.clipFinished(sevenLight, {})
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sevenGlow, {})
		local function Six_SixDefault_1(Element, Event)
			local function Six_SixDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1549.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Six_SixDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1470.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Six_SixDefault_2)
		end

		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
		
		Six_SixDefault_1(six, {})
		local function SixLight_SixDefault_1(Element, Event)
			local function SixLight_SixDefault_2(Element, Event)
				local function SixLight_SixDefault_3(Element, Event)
					local function SixLight_SixDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						SixLight_SixDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", SixLight_SixDefault_4)
				end

				if Event.interrupted then
					SixLight_SixDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", SixLight_SixDefault_3)
			end

			if Event.interrupted then
				SixLight_SixDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", SixLight_SixDefault_2)
		end

		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(1.000000)
		Elem.SixLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.SixLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.SixLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.SixLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.SixLight:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		
		SixLight_SixDefault_1(sixLight, {})
		local function SixGlow_SixDefault_1(Element, Event)
			local function SixGlow_SixDefault_2(Element, Event)
				local function SixGlow_SixDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					SixGlow_SixDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1600.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", SixGlow_SixDefault_3)
			end

			if Event.interrupted then
				SixGlow_SixDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", SixGlow_SixDefault_2)
		end

		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
		
		SixGlow_SixDefault_1(sixGlow, {})
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
		
		Elem.clipFinished(five, {})
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
		
		Elem.clipFinished(fiveLight, {})
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fiveGlow, {})
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
		
		Elem.clipFinished(four, {})
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
		
		Elem.clipFinished(fourLight, {})
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fourGlow, {})
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
		
		Elem.clipFinished(three, {})
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
		
		Elem.clipFinished(threeLight, {})
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
		
		Elem.clipFinished(threeGlow, {})
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
		
		Elem.clipFinished(two, {})
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		
		Elem.clipFinished(twoLight, {})
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
		
		Elem.clipFinished(twoGlow, {})
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
		
		Elem.clipFinished(one, {})
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
		
		Elem.clipFinished(oneLight, {})
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
		
		Elem.clipFinished(oneGlow, {})
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
		
		Elem.clipFinished(zero, {})
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
		
		Elem.clipFinished(zeroLight, {})
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
        Elem.clipFinished(zeroGlow, {})
        
		local function ZFS2E0_SixDefault_1(Element, Event)
			local function ZFS2E0_SixDefault_2(Element, Event)
				local function ZFS2E0_SixDefault_3(Element, Event)
					local function ZFS2E0_SixDefault_4(Element, Event)
						local function ZFS2E0_SixDefault_5(Element, Event)
							local function ZFS2E0_SixDefault_6(Element, Event)
								local function ZFS2E0_SixDefault_7(Element, Event)
									local function ZFS2E0_SixDefault_8(Element, Event)
										local function ZFS2E0_SixDefault_9(Element, Event)
											local function ZFS2E0_SixDefault_10(Element, Event)
												if not Event.interrupted then
													Element:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
												end
												Element:setLeftRight(true, false, -21.560000, 90.440000)
												Element:setTopBottom(true, false, -96.290000, 71.710000)
												Element:setAlpha(0.000000)
												if Event.interrupted then
													Elem.clipFinished(Element, Event)
												else
													Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
												end
											end

											if Event.interrupted then
												ZFS2E0_SixDefault_10(Element, Event)
												return
											end
											Element:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
											Element:setLeftRight(true, false, -21.560000, 90.440000)
											Element:setTopBottom(true, false, -96.290000, 71.710000)
											Element:setAlpha(0.650000)
											Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_10)
										end

										if Event.interrupted then
											ZFS2E0_SixDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										Element:setLeftRight(true, false, -16.760000, 95.240000)
										Element:setTopBottom(true, false, -102.690000, 65.310000)
										Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_9)
									end

									if Event.interrupted then
										ZFS2E0_SixDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -15.560000, 96.440000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_8)
								end

								if Event.interrupted then
									ZFS2E0_SixDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -7.560000, 104.440000)
								Element:setTopBottom(true, false, -104.290000, 63.710000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_7)
							end

							if Event.interrupted then
								ZFS2E0_SixDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -14.210000, 97.790000)
							Element:setTopBottom(true, false, -78.460000, 89.540000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_SixDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -23.560000, 88.440000)
						Element:setTopBottom(true, false, -73.290000, 94.710000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_SixDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -25.520000, 86.480000)
					Element:setTopBottom(true, false, -94.650000, 73.350000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_SixDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -25.560000, 86.440000)
				Element:setTopBottom(true, false, -105.290000, 62.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_SixDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -14.000000, 98.000000)
			Element:setTopBottom(true, false, -127.050000, 40.950000)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SixDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -8.560000, 103.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -137.290000, 30.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_SixDefault_1(zmFxSpark2Ext0, {})
        
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		Elem.clipFinished(zmFxSpark2Ext00, {})
    end

	local function SevenDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
		
		Elem.clipFinished(nine, {})
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
		
		Elem.clipFinished(nineLight, {})
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
		
		Elem.clipFinished(nineGlow, {})
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
		
		Elem.clipFinished(eight, {})
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
		
		Elem.clipFinished(eightLight, {})
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
		
		Elem.clipFinished(eightGlow, {})
		local function Seven_SevenDefault_1(Element, Event)
			local function Seven_SevenDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1559.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Seven_SevenDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Seven_SevenDefault_2)
		end

		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
		
		Seven_SevenDefault_1(seven, {})
		local function SevenLight_SevenDefault_1(Element, Event)
			local function SevenLight_SevenDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 929.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(0.000000)
				Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
				Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				SevenLight_SevenDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1080.000000, false, false, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", SevenLight_SevenDefault_2)
		end

		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(1.000000)
		Elem.SevenLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.SevenLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.SevenLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.SevenLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.SevenLight:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		
		SevenLight_SevenDefault_1(sevenLight, {})
		local function SevenGlow_SevenDefault_1(Element, Event)
			local function SevenGlow_SevenDefault_2(Element, Event)
				local function SevenGlow_SevenDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					SevenGlow_SevenDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", SevenGlow_SevenDefault_3)
			end

			if Event.interrupted then
				SevenGlow_SevenDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", SevenGlow_SevenDefault_2)
		end

		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
		
		SevenGlow_SevenDefault_1(sevenGlow, {})
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
		
		Elem.clipFinished(six, {})
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
		
		Elem.clipFinished(sixLight, {})
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sixGlow, {})
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
		
		Elem.clipFinished(five, {})
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
		
		Elem.clipFinished(fiveLight, {})
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fiveGlow, {})
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
		
		Elem.clipFinished(four, {})
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
		
		Elem.clipFinished(fourLight, {})
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fourGlow, {})
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
		
		Elem.clipFinished(three, {})
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
		
		Elem.clipFinished(threeLight, {})
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
		
		Elem.clipFinished(threeGlow, {})
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
		
		Elem.clipFinished(two, {})
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		
		Elem.clipFinished(twoLight, {})
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
		
		Elem.clipFinished(twoGlow, {})
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
		
		Elem.clipFinished(one, {})
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
		
		Elem.clipFinished(oneLight, {})
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
		
		Elem.clipFinished(oneGlow, {})
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
		
		Elem.clipFinished(zero, {})
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
		
		Elem.clipFinished(zeroLight, {})
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
		
		Elem.clipFinished(zeroGlow, {})
		local function ZFS2E0_SevenDefault_1(Element, Event)
			local function ZFS2E0_SevenDefault_2(Element, Event)
				local function ZFS2E0_SevenDefault_3(Element, Event)
					local function ZFS2E0_SevenDefault_4(Element, Event)
						local function ZFS2E0_SevenDefault_5(Element, Event)
							local function ZFS2E0_SevenDefault_6(Element, Event)
								if not Event.interrupted then
									Element:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
								end
								Element:setLeftRight(true, false, -11.560000, 100.440000)
								Element:setTopBottom(true, false, -73.290000, 94.710000)
								Element:setAlpha(0.000000)
								if Event.interrupted then
									Elem.clipFinished(Element, Event)
								else
									Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
								end
							end

							if Event.interrupted then
								ZFS2E0_SevenDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SevenDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_SevenDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -11.560000, 100.440000)
						Element:setTopBottom(true, false, -73.290000, 94.710000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SevenDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_SevenDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SevenDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_SevenDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -7.560000, 104.440000)
				Element:setTopBottom(true, false, -132.290000, 35.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SevenDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_SevenDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_SevenDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -29.560000, 82.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -121.290000, 46.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		
		ZFS2E0_SevenDefault_1(zmFxSpark2Ext0, {})
		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		
		Elem.clipFinished(zmFxSpark2Ext00, {})
    end
    
	local function EightDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
		
		Elem.clipFinished(nine, {})
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
		
		Elem.clipFinished(nineLight, {})
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
		
		Elem.clipFinished(nineGlow, {})
		local function Eight_EightDefault_1(Element, Event)
			local function Eight_EightDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Eight_EightDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1470.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Eight_EightDefault_2)
		end

		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
        Eight_EightDefault_1(eight, {})
        
		local function EightLight_EightDefault_1(Element, Event)
			local function EightLight_EightDefault_2(Element, Event)
				local function EightLight_EightDefault_3(Element, Event)
					local function EightLight_EightDefault_4(Element, Event)
						if not Event.interrupted then
							Element:beginAnimation("keyframe", 549.000000, false, false, CoD.TweenType.Linear)
						end
						Element:setAlpha(0.000000)
						Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						Element:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
						if Event.interrupted then
							Elem.clipFinished(Element, Event)
						else
							Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
						end
					end

					if Event.interrupted then
						EightLight_EightDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					Element:registerEventHandler("transition_complete_keyframe", EightLight_EightDefault_4)
				end

				if Event.interrupted then
					EightLight_EightDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 999.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", EightLight_EightDefault_3)
			end

			if Event.interrupted then
				EightLight_EightDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", EightLight_EightDefault_2)
		end

		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(1.000000)
		Elem.EightLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.EightLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.EightLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.EightLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.EightLight:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
        EightLight_EightDefault_1(eightLight, {})
        
		local function EightGlow_EightDefault_1(Element, Event)
			local function EightGlow_EightDefault_2(Element, Event)
				local function EightGlow_EightDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					EightGlow_EightDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", EightGlow_EightDefault_3)
			end

			if Event.interrupted then
				EightGlow_EightDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", EightGlow_EightDefault_2)
		end

		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
		
		EightGlow_EightDefault_1(eightGlow, {})
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
		
		Elem.clipFinished(seven, {})
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
		
		Elem.clipFinished(sevenLight, {})
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sevenGlow, {})
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
		
		Elem.clipFinished(six, {})
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
		
		Elem.clipFinished(sixLight, {})
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sixGlow, {})
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
		
		Elem.clipFinished(five, {})
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
		
		Elem.clipFinished(fiveLight, {})
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fiveGlow, {})
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
		
		Elem.clipFinished(four, {})
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
		
		Elem.clipFinished(fourLight, {})
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fourGlow, {})
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
		
		Elem.clipFinished(three, {})
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
		
		Elem.clipFinished(threeLight, {})
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
		
		Elem.clipFinished(threeGlow, {})
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
		
		Elem.clipFinished(two, {})
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		
		Elem.clipFinished(twoLight, {})
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
		
		Elem.clipFinished(twoGlow, {})
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
		
		Elem.clipFinished(one, {})
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
		
		Elem.clipFinished(oneLight, {})
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
		
		Elem.clipFinished(oneGlow, {})
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
		
		Elem.clipFinished(zero, {})
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
		
		Elem.clipFinished(zeroLight, {})
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
		
		Elem.clipFinished(zeroGlow, {})
		local function ZFS2E0_EightDefault_1(Element, Event)
			local function ZFS2E0_EightDefault_2(Element, Event)
				local function ZFS2E0_EightDefault_3(Element, Event)
					local function ZFS2E0_EightDefault_4(Element, Event)
						local function ZFS2E0_EightDefault_5(Element, Event)
							local function ZFS2E0_EightDefault_6(Element, Event)
								local function ZFS2E0_EightDefault_7(Element, Event)
									local function ZFS2E0_EightDefault_8(Element, Event)
										local function ZFS2E0_EightDefault_9(Element, Event)
											if not Event.interrupted then
												Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
											end
											Element:setLeftRight(true, false, -15.560000, 96.440000)
											Element:setTopBottom(true, false, -76.000000, 92.000000)
											Element:setAlpha(0.000000)
											if Event.interrupted then
												Elem.clipFinished(Element, Event)
											else
												Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
											end
										end

										if Event.interrupted then
											ZFS2E0_EightDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_9)
									end

									if Event.interrupted then
										ZFS2E0_EightDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -15.560000, 96.440000)
									Element:setTopBottom(true, false, -76.000000, 92.000000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_8)
								end

								if Event.interrupted then
									ZFS2E0_EightDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								Element:setTopBottom(true, false, -88.000000, 80.000000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_7)
							end

							if Event.interrupted then
								ZFS2E0_EightDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -6.560000, 105.440000)
							Element:setTopBottom(true, false, -99.290000, 68.710000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_EightDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -17.560000, 94.440000)
						Element:setTopBottom(true, false, -107.290000, 60.710000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_EightDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -29.560000, 82.440000)
					Element:setTopBottom(true, false, -118.290000, 49.710000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_EightDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -24.560000, 87.440000)
				Element:setTopBottom(true, false, -130.290000, 37.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_EightDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_EightDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -19.560000, 92.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -137.290000, 30.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
        ZFS2E0_EightDefault_1(zmFxSpark2Ext0, {})
        
		local function ZFS2E00_EightDefault_1(Element, Event)
			local function ZFS2E00_EightDefault_2(Element, Event)
				local function ZFS2E00_EightDefault_3(Element, Event)
					local function ZFS2E00_EightDefault_4(Element, Event)
						local function ZFS2E00_EightDefault_5(Element, Event)
							local function ZFS2E00_EightDefault_6(Element, Event)
								local function ZFS2E00_EightDefault_7(Element, Event)
									local function ZFS2E00_EightDefault_8(Element, Event)
										local function ZFS2E00_EightDefault_9(Element, Event)
											if not Event.interrupted then
												Element:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
											end
											Element:setLeftRight(true, false, -17.000000, 95.000000)
											Element:setTopBottom(true, false, -76.000000, 92.000000)
											Element:setAlpha(0.000000)
											if Event.interrupted then
												Elem.clipFinished(Element, Event)
											else
												Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
											end
										end

										if Event.interrupted then
											ZFS2E00_EightDefault_9(Element, Event)
											return
										end
										Element:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_9)
									end

									if Event.interrupted then
										ZFS2E00_EightDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -17.000000, 95.000000)
									Element:setTopBottom(true, false, -76.000000, 92.000000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_8)
								end

								if Event.interrupted then
									ZFS2E00_EightDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -31.000000, 81.000000)
								Element:setTopBottom(true, false, -82.290000, 85.710000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_7)
							end

							if Event.interrupted then
								ZFS2E00_EightDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -28.000000, 84.000000)
							Element:setTopBottom(true, false, -94.290000, 73.710000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_6)
						end

						if Event.interrupted then
							ZFS2E00_EightDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -17.560000, 94.440000)
						Element:setTopBottom(true, false, -111.290000, 56.710000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_5)
					end

					if Event.interrupted then
						ZFS2E00_EightDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -3.560000, 108.440000)
					Element:setTopBottom(true, false, -118.290000, 49.710000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_4)
				end

				if Event.interrupted then
					ZFS2E00_EightDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -6.560000, 105.440000)
				Element:setTopBottom(true, false, -134.290000, 33.710000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_3)
			end

			if Event.interrupted then
				ZFS2E00_EightDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_EightDefault_2)
		end

		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setLeftRight(true, false, -19.560000, 92.440000)
		Elem.ZmFxSpark2Ext00:setTopBottom(true, false, -137.290000, 30.710000)
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		
		ZFS2E00_EightDefault_1(zmFxSpark2Ext00, {})
	end

    local function NineDefault()
		Elem:setupElementClipCounter(32.000000)
		local function Nine_NineDefault_1(Element, Event)
			local function Nine_NineDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1460.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Nine_NineDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1549.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Nine_NineDefault_2)
		end

		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
		
		Nine_NineDefault_1(nine, {})
		local function NineLight_NineDefault_1(Element, Event)
			local function NineLight_NineDefault_2(Element, Event)
				local function NineLight_NineDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					NineLight_NineDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", NineLight_NineDefault_3)
			end

			if Event.interrupted then
				NineLight_NineDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", NineLight_NineDefault_2)
		end

		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(1.000000)
		Elem.NineLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.NineLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.NineLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.NineLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.NineLight:setShaderVector(3.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		
		NineLight_NineDefault_1(nineLight, {})
		local function NineGlow_NineDefault_1(Element, Event)
			local function NineGlow_NineDefault_2(Element, Event)
				local function NineGlow_NineDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					NineGlow_NineDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1620.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", NineGlow_NineDefault_3)
			end

			if Event.interrupted then
				NineGlow_NineDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", NineGlow_NineDefault_2)
		end

		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
		
		NineGlow_NineDefault_1(nineGlow, {})
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
		
		Elem.clipFinished(eight, {})
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
		
		Elem.clipFinished(eightLight, {})
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
		
		Elem.clipFinished(eightGlow, {})
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
		
		Elem.clipFinished(seven, {})
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
		
		Elem.clipFinished(sevenLight, {})
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sevenGlow, {})
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
		
		Elem.clipFinished(six, {})
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
		
		Elem.clipFinished(sixLight, {})
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sixGlow, {})
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
		
		Elem.clipFinished(five, {})
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
		
		Elem.clipFinished(fiveLight, {})
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fiveGlow, {})
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
		
		Elem.clipFinished(four, {})
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
		
		Elem.clipFinished(fourLight, {})
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fourGlow, {})
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
		
		Elem.clipFinished(three, {})
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
		
		Elem.clipFinished(threeLight, {})
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
		
		Elem.clipFinished(threeGlow, {})
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
		
		Elem.clipFinished(two, {})
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		
		Elem.clipFinished(twoLight, {})
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
		
		Elem.clipFinished(twoGlow, {})
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
		
		Elem.clipFinished(one, {})
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
		
		Elem.clipFinished(oneLight, {})
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
		
		Elem.clipFinished(oneGlow, {})
		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
		
		Elem.clipFinished(zero, {})
		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(0.000000)
		
		Elem.clipFinished(zeroLight, {})
		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
		
		Elem.clipFinished(zeroGlow, {})
		local function ZFS2E0_NineDefault_1(Element, Event)
			local function ZFS2E0_NineDefault_2(Element, Event)
				local function ZFS2E0_NineDefault_3(Element, Event)
					local function ZFS2E0_NineDefault_4(Element, Event)
						local function ZFS2E0_NineDefault_5(Element, Event)
							local function ZFS2E0_NineDefault_6(Element, Event)
								if not Event.interrupted then
									Element:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
								end
								Element:setLeftRight(true, false, -8.560000, 103.440000)
								Element:setTopBottom(true, false, -120.900000, 47.100000)
								Element:setAlpha(0.000000)
								if Event.interrupted then
									Elem.clipFinished(Element, Event)
								else
									Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
								end
							end

							if Event.interrupted then
								ZFS2E0_NineDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_NineDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_NineDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -8.560000, 103.440000)
						Element:setTopBottom(true, false, -120.900000, 47.100000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_NineDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_NineDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -19.910000, 92.090000)
					Element:setTopBottom(true, false, -107.780000, 60.220000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_NineDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_NineDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -30.560000, 81.440000)
				Element:setTopBottom(true, false, -107.900000, 60.100000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_NineDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_NineDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			Element:setLeftRight(true, false, -22.560000, 89.440000)
			Element:setTopBottom(true, false, -130.000000, 38.000000)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_NineDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -4.560000, 107.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -135.000000, 33.000000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		
		ZFS2E0_NineDefault_1(zmFxSpark2Ext0, {})
		local function ZFS2E00_NineDefault_1(Element, Event)
			local function ZFS2E00_NineDefault_2(Element, Event)
				local function ZFS2E00_NineDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setLeftRight(true, false, -19.560000, 92.440000)
					Element:setTopBottom(true, false, -71.000000, 97.000000)
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZFS2E00_NineDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -19.560000, 92.440000)
				Element:setTopBottom(true, false, -71.000000, 97.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_NineDefault_3)
			end

			if Event.interrupted then
				ZFS2E00_NineDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_NineDefault_2)
		end

		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setLeftRight(true, false, 4.440000, 116.440000)
		Elem.ZmFxSpark2Ext00:setTopBottom(true, false, -135.000000, 33.000000)
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		
		ZFS2E00_NineDefault_1(zmFxSpark2Ext00, {})
	end
    --HERE DONE /\
	local function ZeroDefault()
		Elem:setupElementClipCounter(32.000000)
		nine:completeAnimation()
		Elem.Nine:setAlpha(0.000000)
		
		Elem.clipFinished(nine, {})
		nineLight:completeAnimation()
		Elem.NineLight:setAlpha(0.000000)
		
		Elem.clipFinished(nineLight, {})
		nineGlow:completeAnimation()
		Elem.NineGlow:setAlpha(0.000000)
		
		Elem.clipFinished(nineGlow, {})
		eight:completeAnimation()
		Elem.Eight:setAlpha(0.000000)
		
		Elem.clipFinished(eight, {})
		eightLight:completeAnimation()
		Elem.EightLight:setAlpha(0.000000)
		
		Elem.clipFinished(eightLight, {})
		eightGlow:completeAnimation()
		Elem.EightGlow:setAlpha(0.000000)
		
		Elem.clipFinished(eightGlow, {})
		seven:completeAnimation()
		Elem.Seven:setAlpha(0.000000)
		
		Elem.clipFinished(seven, {})
		sevenLight:completeAnimation()
		Elem.SevenLight:setAlpha(0.000000)
		
		Elem.clipFinished(sevenLight, {})
		sevenGlow:completeAnimation()
		Elem.SevenGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sevenGlow, {})
		six:completeAnimation()
		Elem.Six:setAlpha(0.000000)
		
		Elem.clipFinished(six, {})
		sixLight:completeAnimation()
		Elem.SixLight:setAlpha(0.000000)
		
		Elem.clipFinished(sixLight, {})
		sixGlow:completeAnimation()
		Elem.SixGlow:setAlpha(0.000000)
		
		Elem.clipFinished(sixGlow, {})
		five:completeAnimation()
		Elem.Five:setAlpha(0.000000)
		
		Elem.clipFinished(five, {})
		fiveLight:completeAnimation()
		Elem.FiveLight:setAlpha(0.000000)
		
		Elem.clipFinished(fiveLight, {})
		fiveGlow:completeAnimation()
		Elem.FiveGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fiveGlow, {})
		four:completeAnimation()
		Elem.Four:setAlpha(0.000000)
		
		Elem.clipFinished(four, {})
		fourLight:completeAnimation()
		Elem.FourLight:setAlpha(0.000000)
		
		Elem.clipFinished(fourLight, {})
		fourGlow:completeAnimation()
		Elem.FourGlow:setAlpha(0.000000)
		
		Elem.clipFinished(fourGlow, {})
		three:completeAnimation()
		Elem.Three:setAlpha(0.000000)
		
		Elem.clipFinished(three, {})
		threeLight:completeAnimation()
		Elem.ThreeLight:setAlpha(0.000000)
		
		Elem.clipFinished(threeLight, {})
		threeGlow:completeAnimation()
		Elem.ThreeGlow:setAlpha(0.000000)
		
		Elem.clipFinished(threeGlow, {})
		two:completeAnimation()
		Elem.Two:setAlpha(0.000000)
		
		Elem.clipFinished(two, {})
		twoLight:completeAnimation()
		Elem.TwoLight:setAlpha(0.000000)
		
		Elem.clipFinished(twoLight, {})
		twoGlow:completeAnimation()
		Elem.TwoGlow:setAlpha(0.000000)
		
		Elem.clipFinished(twoGlow, {})
		one:completeAnimation()
		Elem.One:setAlpha(0.000000)
		
		Elem.clipFinished(one, {})
		oneLight:completeAnimation()
		Elem.OneLight:setAlpha(0.000000)
		
		Elem.clipFinished(oneLight, {})
		oneGlow:completeAnimation()
		Elem.OneGlow:setAlpha(0.000000)
		
		Elem.clipFinished(oneGlow, {})
		local function Zero_ZeroDefault_1(Element, Event)
			local function Zero_ZeroDefault_2(Element, Event)
				if not Event.interrupted then
					Element:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
				end
				Element:setAlpha(1.000000)
				if Event.interrupted then
					Elem.clipFinished(Element, Event)
				else
					Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
				end
			end

			if Event.interrupted then
				Zero_ZeroDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
			Element:registerEventHandler("transition_complete_keyframe", Zero_ZeroDefault_2)
		end

		zero:completeAnimation()
		Elem.Zero:setAlpha(0.000000)
		
		Zero_ZeroDefault_1(zero, {})
		local function ZeroLight_ZeroDefault_1(Element, Event)
			local function ZeroLight_ZeroDefault_2(Element, Event)
				local function ZeroLight_ZeroDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					Element:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
					Element:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
					Element:setShaderVector(3.000000, 0.210000, -0.230000, 0.000000, 0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZeroLight_ZeroDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
				Element:setShaderVector(2.000000, 1.080000, 0.000000, 0.000000, 0.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZeroLight_ZeroDefault_3)
			end

			if Event.interrupted then
				ZeroLight_ZeroDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:setShaderVector(2.000000, 0.260000, 0.000000, 0.000000, 0.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZeroLight_ZeroDefault_2)
		end

		zeroLight:completeAnimation()
		Elem.ZeroLight:setAlpha(1.000000)
		Elem.ZeroLight:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		Elem.ZeroLight:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		Elem.ZeroLight:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.ZeroLight:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		Elem.ZeroLight:setShaderVector(3.000000, 0.210000, -0.230000, 0.000000, 0.000000)
		
		ZeroLight_ZeroDefault_1(zeroLight, {})
		local function ZeroGlow_ZeroDefault_1(Element, Event)
			local function ZeroGlow_ZeroDefault_2(Element, Event)
				local function ZeroGlow_ZeroDefault_3(Element, Event)
					if not Event.interrupted then
						Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					Element:setAlpha(0.000000)
					if Event.interrupted then
						Elem.clipFinished(Element, Event)
					else
						Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
					end
				end

				if Event.interrupted then
					ZeroGlow_ZeroDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
				Element:registerEventHandler("transition_complete_keyframe", ZeroGlow_ZeroDefault_3)
			end

			if Event.interrupted then
				ZeroGlow_ZeroDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(1.000000)
			Element:registerEventHandler("transition_complete_keyframe", ZeroGlow_ZeroDefault_2)
		end

		zeroGlow:completeAnimation()
		Elem.ZeroGlow:setAlpha(0.000000)
		
		ZeroGlow_ZeroDefault_1(zeroGlow, {})
		local function ZFS2E0_ZeroDefault_1(Element, Event)
			local function ZFS2E0_ZeroDefault_2(Element, Event)
				local function ZFS2E0_ZeroDefault_3(Element, Event)
					local function ZFS2E0_ZeroDefault_4(Element, Event)
						local function ZFS2E0_ZeroDefault_5(Element, Event)
							local function ZFS2E0_ZeroDefault_6(Element, Event)
								local function ZFS2E0_ZeroDefault_7(Element, Event)
									local function ZFS2E0_ZeroDefault_8(Element, Event)
										if not Event.interrupted then
											Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
										end
										Element:setLeftRight(true, false, -21.560000, 90.440000)
										Element:setTopBottom(true, false, -73.000000, 95.000000)
										Element:setAlpha(0.000000)
										if Event.interrupted then
											Elem.clipFinished(Element, Event)
										else
											Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
										end
									end

									if Event.interrupted then
										ZFS2E0_ZeroDefault_8(Element, Event)
										return
									end
									Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
									Element:setLeftRight(true, false, -21.560000, 90.440000)
									Element:setTopBottom(true, false, -73.000000, 95.000000)
									Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_8)
								end

								if Event.interrupted then
									ZFS2E0_ZeroDefault_7(Element, Event)
									return
								end
								Element:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								Element:setLeftRight(true, false, -28.000000, 84.000000)
								Element:setTopBottom(true, false, -79.830000, 88.170000)
								Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_7)
							end

							if Event.interrupted then
								ZFS2E0_ZeroDefault_6(Element, Event)
								return
							end
							Element:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							Element:setLeftRight(true, false, -34.560000, 77.440000)
							Element:setTopBottom(true, false, -88.000000, 80.000000)
							Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_6)
						end

						if Event.interrupted then
							ZFS2E0_ZeroDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -36.080000, 75.920000)
						Element:setTopBottom(true, false, -98.380000, 69.620000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_5)
					end

					if Event.interrupted then
						ZFS2E0_ZeroDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, -33.560000, 78.440000)
					Element:setTopBottom(true, false, -120.290000, 47.710000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_4)
				end

				if Event.interrupted then
					ZFS2E0_ZeroDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, -28.000000, 84.000000)
				Element:setTopBottom(true, false, -128.000000, 40.000000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_3)
			end

			if Event.interrupted then
				ZFS2E0_ZeroDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E0_ZeroDefault_2)
		end

		zmFxSpark2Ext0:completeAnimation()
		Elem.ZmFxSpark2Ext0:setLeftRight(true, false, -14.560000, 97.440000)
		Elem.ZmFxSpark2Ext0:setTopBottom(true, false, -137.290000, 30.710000)
		Elem.ZmFxSpark2Ext0:setAlpha(0.000000)
		
		ZFS2E0_ZeroDefault_1(zmFxSpark2Ext0, {})
		local function ZFS2E00_ZeroDefault_1(Element, Event)
			local function ZFS2E00_ZeroDefault_2(Element, Event)
				local function ZFS2E00_ZeroDefault_3(Element, Event)
					local function ZFS2E00_ZeroDefault_4(Element, Event)
						local function ZFS2E00_ZeroDefault_5(Element, Event)
							if not Event.interrupted then
								Element:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							end
							Element:setLeftRight(true, false, -10.000000, 102.000000)
							Element:setTopBottom(true, false, -74.010000, 94.010000)
							Element:setAlpha(0.000000)
							if Event.interrupted then
								Elem.clipFinished(Element, Event)
							else
								Element:registerEventHandler("transition_complete_keyframe", Elem.clipFinished)
							end
						end

						if Event.interrupted then
							ZFS2E00_ZeroDefault_5(Element, Event)
							return
						end
						Element:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
						Element:setLeftRight(true, false, -10.000000, 102.000000)
						Element:setTopBottom(true, false, -74.010000, 94.010000)
						Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_ZeroDefault_5)
					end

					if Event.interrupted then
						ZFS2E00_ZeroDefault_4(Element, Event)
						return
					end
					Element:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					Element:setLeftRight(true, false, 4.440000, 116.440000)
					Element:setTopBottom(true, false, -94.000000, 74.000000)
					Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_ZeroDefault_4)
				end

				if Event.interrupted then
					ZFS2E00_ZeroDefault_3(Element, Event)
					return
				end
				Element:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				Element:setLeftRight(true, false, 1.570000, 113.570000)
				Element:setTopBottom(true, false, -113.450000, 54.550000)
				Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_ZeroDefault_3)
			end

			if Event.interrupted then
				ZFS2E00_ZeroDefault_2(Element, Event)
				return
			end
			Element:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			Element:setAlpha(0.800000)
			Element:registerEventHandler("transition_complete_keyframe", ZFS2E00_ZeroDefault_2)
		end

		zmFxSpark2Ext00:completeAnimation()
		Elem.ZmFxSpark2Ext00:setLeftRight(true, false, -3.560000, 108.440000)
		Elem.ZmFxSpark2Ext00:setTopBottom(true, false, -128.000000, 40.000000)
		Elem.ZmFxSpark2Ext00:setAlpha(0.000000)
		
		ZFS2E00_ZeroDefault_1(zmFxSpark2Ext00, {})
	end

    Elem.clipsPerState = 
    {
        DefaultState =
        {
            DefaultClip = function()
                Elem:setupElementClipCounter(0.000000)
            end
        },
        One =
        {
            DefaultClip = OneDefault
        },
        Two =
        {
            DefaultClip = TwoDefault
        },
        Three =
        {
            DefaultClip = ThreeDefault
        },
        Four =
        {
            DefaultClip = FourDefault
        },
        Five =
        {
            DefaultClip = FiveDefault
        },
        Six =
        {
            DefaultClip = SixDefault
        },
        Seven =
        {
            DefaultClip = SevenDefault
        },
        Eight =
        {
            DefaultClip = EightDefault
        },
        Nine =
        {
            DefaultClip = NineDefault
        },
        Zero =
        {
            DefaultClip = ZeroDefault
        }
        
    }

	local function CloseEvent(SenderObj)
		SenderObj.ZmFxSpark2Ext0:close()
		SenderObj.ZmFxSpark2Ext00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(Elem, "close", CloseEvent)
	if PostLoadFunc then
		PostLoadFunc(Elem, InstanceRef, HudRef)
	end
	return Elem
end

