local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent",function(self,event,...)
    menuTextures = {MainMenuBarTexture0,MainMenuBarTexture1,MainMenuBarTexture2,MainMenuBarTexture3,MainMenuBarPageNumber,MainMenuMaxLevelBar3,MainMenuMaxLevelBar2,MainMenuMaxLevelBar1,MainMenuMaxLevelBar0,MainMenuBarLeftEndCap,MainMenuBarRightEndCap,ActionBarUpButton,ActionBarDownButton,MainMenuBarBackpackButton,CharacterBag0Slot,CharacterBag1Slot,CharacterBag2Slot,CharacterBag3Slot}
    anchorClear = {ActionButton1,CharacterMicroButton,MainMenuBarBackpackButton,ActionBarUpButton,ActionBarDownButton,MultiBarBottomRightButton1,MultiBarBottomLeftButton1,MainMenuBar,StanceBarFrame,KeyRingButton}
    for k,v in pairs(menuTextures)do 
        v:Hide()
    end
    for k,v in pairs(anchorClear)do
        v:ClearAllPoints()
    end
    --everything is anchored to ActionButton1, ActionButton1 is anchored to the MainMenuBar which is anchored to the bottom of the screen
    ActionButton1:SetPoint("BOTTOM",MainMenuBar,"TOP",-248,50)
    CharacterMicroButton:SetPoint("LEFT",MultiBarBottomRightButton12,"RIGHT",25,7)
    MainMenuBarBackpackButton:SetPoint("BOTTOM",HelpMicroButton,"TOP",-7,-15)
    MultiBarBottomRightButton1:SetPoint("TOP",ActionButton1,"BOTTOM",0,-10)
    MultiBarBottomLeftButton1:SetPoint("BOTTOM",ActionButton1,"TOP",0,10)
    MainMenuBar:SetPoint("CENTER",ParentUI,"BOTTOM",0,-13)
    KeyRingButton:SetScale(0.88)
    KeyRingButton:SetWidth(25)

    KeyRingButton:SetPoint("RIGHT",CharacterMicroButton,"LEFT",1,-12)
    StanceBarFrame:SetPoint("LEFT",ParentUI,"LEFT",-1000,0)
end)