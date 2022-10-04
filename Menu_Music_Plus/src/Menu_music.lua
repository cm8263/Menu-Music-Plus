--[[
MIT License
Copyright (c) 2022 Christopher M.
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]

local kSeasonTracks = {}
kSeasonTracks[1] = {"mus_101_clementineSuite", "mus_101_everettsPrescriptions", "mus_101_familyTies", "mus_101_fathersAndSons", "mus_101_hershelsFarm", "mus_101_lightsOut", "mus_101_terrorMysterious", "mus_101_twistOfFate", "mus_102_bitterRevenge", "mus_102_division", "mus_102_skeletonsInTheCloset", "mus_102_stJohnsDairy", "mus_103_aTraitorWithin", "mus_103_longRoadAhead", "mus_103_motherAndSon", "mus_103_railsAndWretches", "mus_103_safetyInspections", "mus_103_theBanditsRaid", "mus_103_trainingClementine", "mus_104_darkRooms", "mus_104_insideCrawford", "mus_104_refractions", "mus_104_riverStreetAboveAndBelow", "mus_105_mansionSiege", "mus_105_noTimeLeft", "mus_105_passages", "mus_105_saveYourself", "mus_105_theGauntlet", "mus_105_theManOnTheRadio", "mus_105_whatAView", "mus_106_boyd", "mus_106_escapeInTheCar", "mus_106_flashlights", "mus_106_foggyNight", "mus_106_goFish", "mus_106_hidingInTheCorn", "mus_106_keysAndAGun", "mus_106_prisonBus", "mus_106_roshambo", "mus_106_stephaniesCrimes"}
kSeasonTracks[2] = {"mus_201_allThatRemains", "mus_201_beginningAgain", "mus_201_boundForGlory", "mus_201_findingFood", "mus_201_myNameIsClementine", "mus_201_scavengingSurvival", "mus_201_solitude", "mus_201_theValleyOfTheShadow", "mus_201_truckStop", "mus_201_wandering", "mus_202_carver", "mus_202_moonstarLodge", "mus_202_sarahsSong", "mus_202_snoopingStranger", "mus_202_standoff", "mus_203_carversCompound", "mus_203_carversCruelty", "mus_203_escapePlans", "mus_203_kennysRage", "mus_204_stayOrGo", "mus_205_autoRepair", "mus_205_clemAwake", "mus_205_departure", "mus_205_fireside", "mus_205_freezing", "mus_205_jane", "mus_205_janeWorries", "mus_205_snowbound", "mus_205_theEndOfItAll", "mus_205_wellington"}
kSeasonTracks[3] = {"mus_305_grimRanger", "mus_301_aNewFrontier", "mus_301_aNewFrontierOpeningTitles", "mus_301_brothersClash", "mus_301_familyTies", "mus_301_garcias", "mus_301_javi", "mus_301_stillNotBitten", "mus_301_whispersFromThePast", "mus_302_javiInPrescott", "mus_302_kate", "mus_302_kateDeclines", "mus_302_tiesThatBindOpeningTitles", "mus_303_aboveTheLawOpeningTitles", "mus_303_clemWeighsIn", "mus_303_davidsPlan", "mus_303_davidTheFather", "mus_303_vancomycin", "mus_304_davidsDilemma", "mus_304_joansFrontier", "mus_304_lingardOpensUp", "mus_304_revengeOrTheDeal", "mus_305_benediction", "mus_305_beyondTheFrontier", "mus_305_brotherFatherHusbandSon", "mus_305_brotherlyLove", "mus_305_confessions", "mus_305_dominoes", "mus_305_kateSaysGoodbye", "mus_305_katesRegrets", "mus_305_kateStaysBehind"}
kSeasonTracks[4] = {"mus_404_safeAndSound", "mus_404_scanninForCheeks", "mus_401_alvinJunior", "mus_401_dinnerAndAGame", "mus_401_doneRunning", "mus_401_ericsons", "mus_401_marlon", "mus_401_missionAccomplished", "mus_401_plansChange", "mus_401_violet", "mus_402_aj", "mus_402_inThePines", "mus_402_lillyReturns", "mus_402_louis", "mus_402_mcCarrollRanch", "mus_402_theRaiders", "mus_403_clementineAndLee", "mus_403_james", "mus_403_lillysLessons", "mus_403_lovingLouis", "mus_403_lovingViolet", "mus_403_minerva", "mus_403_minervasLullaby", "mus_403_poorPilgrimOfSorrow", "mus_403_shoreline", "mus_403_theChimes", "mus_403_theParableOfTheTwins", "mus_404_angryAJ", "mus_404_endOfTheLine", "mus_404_home", "mus_404_onceBitten", "mus_404_thankYou", "mus_404_minnie"}
kSeasonTracks["M"] = {"mus_101m_chesapeake", "mus_101m_innerDemons", "mus_101m_lowerDecks", "mus_101m_michonne", "mus_101m_michonneBootMenu", "mus_101m_michonneMainMenu", "mus_101m_norma", "mus_101m_randall", "mus_102m_handToHand", "mus_102m_intruders", "mus_102m_paige", "mus_102m_prisonBreak", "mus_103m_alexsMusicBox", "mus_103m_michonneGoodbye", "mus_103m_negotiations", "mus_103m_sam", "mus_103m_theFuneral", "mus_103m_throughTheFlames", "mus_103m_walkersAtTheGate"}
local mController, mCurrentTrack, mThreadNowPlaying = nil, nil, nil
local UnloadTrack = function()
  -- function num : 0_0 , upvalues : mCurrentTrack, _ENV
  if not mCurrentTrack or not rawget(_G, "SoundUnload") then
    return 
  end
  SoundUnload(FileSetExtension(mCurrentTrack, "ogg"))
end

-- Menu Music Plus Variables
local autoplayEnabled = true
local togglingAutoplay = false
local nextTrackSeason = nil
local nextTrackName = nil
local nextTrackIndex = nil
local timeTilNextSong = 0

local NowPlaying = function()
  -- function num : 0_1 , upvalues : _ENV, mCurrentTrack, mController, UnloadTrack, mThreadNowPlaying
  local time = 0
  local totalTime = 0
  local uiInterrupted = false
  local bTrackStarted = false
  local nowPlayingUi = AgentFind("ui_menuMain_nowPlaying")
  local textFormat = "^glyphScale:0.75^%s\n^^%s\n^glyphScale:0.6^%s / %s\n^glyphScale:0.45^Menu Music Plus"

  Menu_Music_Plus_Get_Text = function()
    return (string.format)(textFormat, Dialog_GetText("ui_music", "header_nowPlaying"), Dialog_GetText("ui_music", mCurrentTrack), Menu_Music_Plus_Seconds_To_Run_Time(time), Menu_Music_Plus_Seconds_To_Run_Time(totalTime))
  end

  while mController and ControllerIsPlaying(mController) do
    WaitForNextFrame()
    time = SoundGetRawTime(mController)
    if not bTrackStarted and time > 0 then
      bTrackStarted = true
      totalTime = ControllerGetLength(mController)

      Menu_Main_SetNowPlaying(Menu_Music_Plus_Get_Text())
    end

    if bTrackStarted and time == 0 then
      break
    end

    time = math.ceil(time)

    if time > 0 and time < totalTime then
      if togglingAutoplay then
        if not uiInterrupted then uiInterrupted = true end
      else
        if uiInterrupted then
          Menu_Main_SetNowPlaying(Menu_Music_Plus_Get_Text())

          uiInterrupted = false
        else
          AgentSetProperty(nowPlayingUi, kText, Menu_Music_Plus_Get_Text())
        end

        Sleep(1)
      end
    end
  end

  Menu_Main_EnableAmbient(true)
  UnloadTrack()
  mController = nil
  mCurrentTrack = nil
  mThreadNowPlaying = nil

  if autoplayEnabled and nextTrackName then
    timeTilNextSong = 5

    while timeTilNextSong > 0 and autoplayEnabled do
      AgentSetProperty(nowPlayingUi, kText, (string.format)("^glyphScale:0.75^%s\n^^%s\n^glyphScale:0.6^Playing in %s\n^glyphScale:0.45^Menu Music Plus", "Up Next:", Dialog_GetText("ui_music", nextTrackName), timeTilNextSong))
      timeTilNextSong = timeTilNextSong - 1

      Sleep(1)
    end

    if timeTilNextSong > -1 and autoplayEnabled then Menu_Music_Play(nextTrackSeason, nextTrackName, nextTrackIndex) end
  end

  Menu_Main_SetNowPlaying()
end

Menu_Music = function()
  -- function num : 0_2 , upvalues : _ENV
  local menu = Menu_Create(ListMenu, "ui_menuMusic")
  menu.align = "left"
  menu.Show = function(self, direction)
    -- function num : 0_2_0 , upvalues : _ENV
    if direction and direction > 0 then
      Menu_Main_SetIdle("env_clementineHouse400_musicPlayer")
      ChorePlayAndWait("env_clementineHouse400_mainMenuToMusicPlayer")
      ChorePlay("ui_alphaGradient_show")
    end
    ;
    (Menu.Show)(self)
  end

  menu.Hide = function(self, direction)
    -- function num : 0_2_1 , upvalues : _ENV
    (Menu.Hide)(self)
    if direction and direction < 0 then
      ChorePlay("ui_alphaGradient_hide")
      ChorePlayAndWait("env_clementineHouse400_musicPlayerToMainMenu")
    end
  end

  menu.Populate = function(self)
    -- function num : 0_2_2 , upvalues : _ENV, menu
    Menu_Add(Header, nil, "Menu Music Plus")
    Menu_Add(ListButtonLite, "season1", "label_season1", "Menu_MusicSeason( 1 )")
    Menu_Add(ListButtonLite, "season2", "label_season2", "Menu_MusicSeason( 2 )")
    Menu_Add(ListButtonLite, "seasonM", "label_seasonM", "Menu_MusicSeason( \"M\" )")
    Menu_Add(ListButtonLite, "season3", "label_season3", "Menu_MusicSeason( 3 )")
    Menu_Add(ListButtonLite, "season4", "label_season4", "Menu_MusicSeason( 4 )")
    Menu_Add(ListButtonLite, "menuMusicPlusSpacer", "")
    Menu_Add(ListButtonLite, "menuMusicPlusToggleAutoplay", "Toggle Autoplay", "Menu_Music_Plus_Toggle_Autoplay()")
    local legendWidget = Menu_Add(Legend)
    legendWidget.Place = function(self)
      -- function num : 0_2_2_0 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

    Legend_Add("faceButtonDown", "legend_select")
    Legend_Add("faceButtonRight", "legend_previousMenu", "Menu_Pop()")
    local legendButton = Menu_Add(LegendButtonBack, nil, "Menu_Pop()", "legendButton_back")
    legendButton.Place = function(self)
      -- function num : 0_2_2_1 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

  end

  Menu_Push(menu)
end

Menu_MusicSeason = function(season)
  -- function num : 0_3 , upvalues : _ENV, kSeasonTracks
  local menu = Menu_Create(JumpScrollList, "ui_menuMusicSeason" .. season)
  menu.align = "left"
  menu.capacity = 10
  menu.showArrows = true
  menu.season = season
  menu.Populate = function(self)
    -- function num : 0_3_0 , upvalues : _ENV, kSeasonTracks, season, menu
    Menu_Add(Header, nil, "header_musicSeason" .. self.season)
    for i, track in ipairs(kSeasonTracks[season]) do
      local text = Dialog_GetText("ui_music", track)
      if text == "" then
        text = track
      end
      Menu_Add(ListButtonLite, (string.format)("season%s_track%02d", self.season, i), text, (string.format)("Menu_Music_Play( \"%s\", \"%s\", \"%s\" )", season, track, i))
    end
    local legendWidget = Menu_Add(Legend)
    legendWidget.Place = function(self)
      -- function num : 0_3_0_0 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

    Legend_Add("faceButtonDown", "legend_select")
    Legend_Add("faceButtonRight", "legend_previousMenu", "Menu_Pop()")
    local legendButton = Menu_Add(LegendButtonBack, nil, "Menu_Pop()", "legendButton_back")
    legendButton.Place = function(self)
      -- function num : 0_3_0_1 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

  end

  Menu_Push(menu)
end

Menu_Music_Play = function(trackSeason, trackName, trackIndex)
  -- function num : 0_4 , upvalues : _ENV, mController, mThreadNowPlaying, UnloadTrack, mCurrentTrack, NowPlaying
  WidgetInputHandler_EnableInput(false)

  Menu_Music_Plus_Cancel_Next_Song()
  
  if mController and ControllerIsPlaying(mController) then
    ThreadKill(mThreadNowPlaying)
    mThreadNowPlaying = nil
    ControllerFadeOut(mController, 1)
    Menu_Main_SetNowPlaying()
    while ControllerIsPlaying(mController) do
      WaitForNextFrame()
    end
    UnloadTrack()
    if mCurrentTrack == trackName then
      Menu_Main_EnableAmbient(true)
      mController = nil
      mCurrentTrack = nil
      WidgetInputHandler_EnableInput(true)
      return 
    end
  end
  mController = SoundPlay(FileSetExtension(trackName, "ogg"))
  if mController then
    ControllerDisableTimeSync(mController, true)
    ControllerSetMusic(mController, true)
    Menu_Main_EnableAmbient(false)
    mCurrentTrack = trackName
    mThreadNowPlaying = ThreadStart(NowPlaying)
    nextTrackSeason = tonumber(trackSeason)
    nextTrackIndex = tonumber(trackIndex) + 1
    nextTrackName = kSeasonTracks[nextTrackSeason][nextTrackIndex]
    WaitForNextFrame()
  end
  WidgetInputHandler_EnableInput(true)
end

Menu_Music_FadeOut = function(fadeTime)
  -- function num : 0_5 , upvalues : mController, _ENV, mThreadNowPlaying, mCurrentTrack
  if mController and ControllerIsPlaying(mController) then
    ThreadKill(mThreadNowPlaying)
    mThreadNowPlaying = nil
    if not fadeTime then
      fadeTime = 1
    end
    ControllerFadeOut(mController, fadeTime)
    Menu_Main_SetNowPlaying()
  end
  mController = nil
  mCurrentTrack = nil
end

Menu_Music_Pause = function(bPause)
  -- function num : 0_6 , upvalues : mController, _ENV
  if mController and ControllerIsPlaying(mController) then
    if bPause then
      ControllerFadeTo(mController, 1, 0, true)
    else
      ControllerPlay(mController)
      ControllerFadeTo(mController, 1, 1)
    end
  end
end

-- Menu Music Plus Functions
Menu_Music_Plus_Seconds_To_Run_Time = function(seconds)
  seconds = math.floor(seconds)
  
  local mins = math.floor(seconds / 60)
  local secs = seconds % 60

  if secs < 10 then secs = "0" .. secs end

  return mins .. ":" .. secs
end

Menu_Music_Plus_Toggle_Autoplay = function()
  if togglingAutoplay then return end

  Menu_Music_Plus_Cancel_Next_Song()

  togglingAutoplay = true
  autoplayEnabled = not autoplayEnabled
  
  Menu_Main_SetNowPlaying((string.format)("Autoplay %s\n^glyphScale:0.45^Menu Music Plus", autoplayEnabled and "Enabled" or "Disabled"))

  Sleep(2)

  if not mController and not ControllerIsPlaying(mController) then Menu_Main_SetNowPlaying() end

  togglingAutoplay = false
end

Menu_Music_Plus_Cancel_Next_Song = function()
  if timeTilNextSong > 0 then timeTilNextSong = -2 end
end