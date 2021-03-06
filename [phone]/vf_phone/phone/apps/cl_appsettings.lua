AppSettings = {
    AppName = GetLabelText("CELL_16"),
    AppIcon = 24,
    OverrideBack = true
}

local function SetTheme(theme)
    Phone.Theme = theme
    SetResourceKvpInt("vf_phone_theme", theme)
end

local function SetWallpaper(wallpaper)
    Phone.Wallpaper = wallpaper
    SetResourceKvpInt("vf_phone_wallpaper", wallpaper)
end

local settings = {
    {
        SettingName = GetLabelText("CELL_720"),
        SettingIcon = 23,
        Items = {
            {
                ItemName = GetLabelText("CELL_820"),
                OnSelect = function()
                    SetTheme(1)
                end
            },
            {
                ItemName = GetLabelText("CELL_821"),
                OnSelect = function()
                    SetTheme(2)
                end
            },
            {
                ItemName = GetLabelText("CELL_822"),
                OnSelect = function()
                    SetTheme(3)
                end
            },
            {
                ItemName = GetLabelText("CELL_823"),
                OnSelect = function()
                    SetTheme(4)
                end
            },
            {
                ItemName = GetLabelText("CELL_824"),
                OnSelect = function()
                    SetTheme(5)
                end
            },
            {
                ItemName = GetLabelText("CELL_825"),
                OnSelect = function()
                    SetTheme(6)
                end
            },
            {
                ItemName = GetLabelText("CELL_826"),
                OnSelect = function()
                    SetTheme(7)
                end
            }
        }
    },
    {
        SettingName = GetLabelText("CELL_740"),
        SettingIcon = 25,
        Items = {
            {
                ItemName = GetLabelText("CELL_844"),
                OnSelect = function()
                    SetWallpaper(4)
                end
            },        
            {
                ItemName = GetLabelText("CELL_845"),
                OnSelect = function()
                    SetWallpaper(5)
                end
            },
            {
                ItemName = GetLabelText("CELL_846"),
                OnSelect = function()
                    SetWallpaper(6)
                end
            },
            {
                ItemName = GetLabelText("CELL_847"),
                OnSelect = function()
                    SetWallpaper(7)
                end
            },
            {
                ItemName = GetLabelText("CELL_848"),
                OnSelect = function()
                    SetWallpaper(8)
                end
            },
            {
                ItemName = GetLabelText("CELL_849"),
                OnSelect = function()
                    SetWallpaper(9)
                end
            },
            {
                ItemName = GetLabelText("CELL_850"),
                OnSelect = function()
                    SetWallpaper(10)
                end
            },
            {
                ItemName = GetLabelText("CELL_851"),
                OnSelect = function()
                    SetWallpaper(11)
                end
            }
        }
    },
    {
        SettingName = GetLabelText("CELL_801"),
        SettingIcon = 26,
        Items = {
            {
                ItemName = GetLabelText("CELL_830"),
                OnSelect = function()
                    if not Phone.SleepMode then
                        TriggerEvent("vf_utils:queueHelpText", "This will signal other apps to not send any notifications to you. You might miss out on crucial messages.", 10)
                    end
                    Phone.SleepMode = true
                end
            },
            {
                ItemName = GetLabelText("CELL_831"),
                ItemIcon = 1,
                OnSelect = function()
                    Phone.SleepMode = false
                end
            }
        }
    }
}
local selectedItem
local currentSubSettingMenu

function AppSettings.Init()
    selectedItem = 0
    currentSubSettingMenu = nil
end

function AppSettings.Tick()
    PushScaleformMovieFunction(Phone.Scaleform, "SET_DATA_SLOT_EMPTY")
    PushScaleformMovieFunctionParameterInt(13)
    PopScaleformMovieFunctionVoid()

    if currentSubSettingMenu then
        for i, item in ipairs(currentSubSettingMenu.Items) do
            PushScaleformMovieFunction(Phone.Scaleform, "SET_DATA_SLOT")
            PushScaleformMovieFunctionParameterInt(13)
            PushScaleformMovieFunctionParameterInt(i - 1)
            if item.ItemIcon then
                PushScaleformMovieFunctionParameterInt(item.ItemIcon)
            else
                PushScaleformMovieFunctionParameterInt(10)
            end
            PushScaleformMovieFunctionParameterString(item.ItemName)
            PopScaleformMovieFunctionVoid()
        end
    else
        for i, setting in ipairs(settings) do
            PushScaleformMovieFunction(Phone.Scaleform, "SET_DATA_SLOT")
            PushScaleformMovieFunctionParameterInt(13)
            PushScaleformMovieFunctionParameterInt(i - 1)
            if setting.SettingIcon then
                PushScaleformMovieFunctionParameterInt(setting.SettingIcon)
            else
                PushScaleformMovieFunctionParameterInt()
            end
            PushScaleformMovieFunctionParameterString(setting.SettingName)
            PopScaleformMovieFunctionVoid()
        end
    end

    PushScaleformMovieFunction(Phone.Scaleform, "DISPLAY_VIEW")
    PushScaleformMovieFunctionParameterInt(13)
    PushScaleformMovieFunctionParameterInt(selectedItem)

    local navigated = true
    if IsControlJustPressed(0, 300) then
        if selectedItem > 0 then
            selectedItem = selectedItem - 1
        else
            if currentSubSettingMenu then
                selectedItem = #currentSubSettingMenu.Items - 1
            else
                selectedItem = #settings - 1
            end
        end
    elseif IsControlJustPressed(0, 299) then
        if (not currentSubSettingMenu and selectedItem < #settings - 1) or (currentSubSettingMenu and selectedItem < #currentSubSettingMenu.Items - 1) then
            selectedItem = selectedItem + 1
        else
            selectedItem = 0
        end
    elseif IsControlJustPressed(0, 255) then
        if currentSubSettingMenu and currentSubSettingMenu.Items[selectedItem + 1].OnSelect then
            currentSubSettingMenu.Items[selectedItem + 1].OnSelect()
        elseif settings[selectedItem + 1] then
            currentSubSettingMenu = settings[selectedItem + 1]
            selectedItem = 0
        end
    elseif IsControlJustPressed(0, 202) then
        if currentSubSettingMenu then
            currentSubSettingMenu = nil
            selectedItem = 0
        else
            navigated = false -- don't play duplicate sound
            Apps.Kill()
        end
    else
        navigated = false
    end
    if navigated then
        PlaySoundFrontend(-1, "Menu_Navigate", "Phone_SoundSet_Default")
    end
end
