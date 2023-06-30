local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent",function(self,event,...)
    menuTextures = {MainMenuBarTexture0,MainMenuBarTexture1,MainMenuBarTexture2,MainMenuBarTexture3,MainMenuBarPageNumber,MainMenuMaxLevelBar3,MainMenuMaxLevelBar2,MainMenuMaxLevelBar1,MainMenuMaxLevelBar0,MainMenuBarLeftEndCap,MainMenuBarRightEndCap,ActionBarUpButton,ActionBarDownButton,MainMenuBarBackpackButton,CharacterBag0Slot,CharacterBag1Slot,CharacterBag2Slot,CharacterBag3Slot,MainMenuBarArtFrame.LeftEndCap,MainMenuBarArtFrame.RightEndCap,MainMenuBarArtFrameBackground,MicroButtonAndBagsBar,MainMenuBarArtFrame.PageNumber}
    anchorClear = {ActionButton1,CharacterMicroButton,MainMenuBarBackpackButton,ActionBarUpButton,ActionBarDownButton,MultiBarBottomRightButton1,MultiBarBottomLeftButton1,MainMenuBar,StanceBarFrame,KeyRingButton,ShapeshiftBarFrame,PetActionButton1,PetActionButton2,PetActionButton3,PetActionButton4,PetActionButton5,PetActionButton6,PetActionButton7,PetActionButton8,PetActionButton9,PetActionButton10}
    retailFixAnchorClear = {MultiBarBottomRightButton7,MultiBarBottomRightButton8,MultiBarBottomRightButton9,MultiBarBottomRightButton10,MultiBarBottomRightButton11,MultiBarBottomRightButton12}
    stances = {StanceButton1,StanceButton2,StanceButton3,StanceButton4,StanceButton5}
    petActionBars = {PetActionButton2,PetActionButton3,PetActionButton4,PetActionButton5,PetActionButton6,PetActionButton7,PetActionButton8,PetActionButton9,PetActionButton10}
    for k,v in pairs(menuTextures)do 
        if v~=nil then
            v:Hide()
        end
    end
    for k,v in pairs(anchorClear)do
        v:ClearAllPoints()
    end
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        for k,v in pairs(retailFixAnchorClear)do
            v:ClearAllPoints()
        end
    end
    PetActionButton1:SetPoint("RIGHT",MultiBarLeftButton1,"LEFT",-5,2)
    for k,v in pairs(petActionBars)do
        DEFAULT_CHAT_FRAME:AddMessage((-35*tonumber(k)))
            v:SetPoint("TOP",PetActionButton1,"BOTTOM",0,(-35*tonumber(k-1)-5))
    end
    --everything is anchored to ActionButton1, ActionButton1 is anchored to the MainMenuBar which is anchored to the bottom of the screen
    ActionButton1:SetPoint("BOTTOM",MainMenuBar,"TOP",-231,45)
    CharacterMicroButton:SetPoint("LEFT",MultiBarBottomRightButton12,"RIGHT",25,7)
    MainMenuBarBackpackButton:SetPoint("BOTTOM",HelpMicroButton,"TOP",-7,-15)
    MultiBarBottomRightButton1:SetPoint("TOP",ActionButton1,"BOTTOM",0,-5)
    MultiBarBottomLeftButton1:SetPoint("BOTTOM",ActionButton1,"TOP",0,5)
    MainMenuBar:SetPoint("CENTER",ParentUI,"BOTTOM",0,-13)
    if KeyRingButton ~= nil then
        KeyRingButton:SetScale(0.88)
        KeyRingButton:SetWidth(25)
        KeyRingButton:SetPoint("RIGHT",CharacterMicroButton,"LEFT",1,-12)
    end
    if StanceBarFrame ~= nil then
        StanceBarFrame:SetPoint("RIGHT",ActionButton12,"RIGHT",150,0)
        for k,v in pairs(stances)do 
            if v~=nil then
                v:SetAlpha(0)
            end
        end
    end
    if ShapeshiftBarFrame ~= nil then
        ShapeshiftBarFrame:SetPoint("LEFT",ParentUI,"LEFT",1123,0)
    end
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        MultiBarBottomRightButton7:SetPoint("LEFT",MultiBarBottomRightButton6,"RIGHT",6,0)
        MultiBarBottomRightButton8:SetPoint("LEFT",MultiBarBottomRightButton7,"RIGHT",6,0)
        MultiBarBottomRightButton9:SetPoint("LEFT",MultiBarBottomRightButton8,"RIGHT",6,0)
        MultiBarBottomRightButton10:SetPoint("LEFT",MultiBarBottomRightButton9,"RIGHT",6,0)
        MultiBarBottomRightButton11:SetPoint("LEFT",MultiBarBottomRightButton10,"RIGHT",6,0)
        MultiBarBottomRightButton12:SetPoint("LEFT",MultiBarBottomRightButton11,"RIGHT",6,0)
    end
end)
