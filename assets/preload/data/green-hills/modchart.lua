function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
    setActorY(450, 'boyfriend')
    setActorY(520, 'dad')
end

local defaultHudX = 0
local defaultHudY = 0

local defaultWindowX = 0
local defaultWindowY = 0

local lastStep = 0


function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    
end

function beatHit (beat)

end

function stepHit (step)

    if curStep == 233 then -- steven
        changeDadCharacter('steven', 150, 520)
    end

    if curStep == 319 then -- finn
        changeBoyfriendCharacter('mom', 1120, 480)   
    end

    if curStep == 383 then -- glitch teu
        changeDadCharacter('glitch-teu', 150, 520)
    end

    if curStep == 446 then -- old teu
        changeBoyfriendCharacter('teu-old-demon', 1120, 480)   
    end

    if curStep == 510 then -- mickey
        changeDadCharacter('happymouse', 150, 520)
    end

    if curStep == 573 then -- oswald
        changeBoyfriendCharacter('oswald-happy', 1120, 480)   
    end

    if curStep == 636 then -- bambi
        changeDadCharacter('bambi', 150, 520)
    end

    if curStep == 669 then -- 69, nice (dave)
        changeBoyfriendCharacter('dave', 1120, 480)   
    end

    if curStep == 702 then -- opheebop
        changeDadCharacter('opheebop', 150, 520)
    end

    if curStep == 733 then -- bob
        changeBoyfriendCharacter('bob', 1120, 480)   
    end

    if curStep == 749 then -- bob gets pissed at ron
        changeBoyfriendCharacter('angrybob', 1120, 480)   
    end

    if curStep == 749 then -- ron
        changeDadCharacter('ron', 1120, 480)   
    end

    if curStep == 812 then -- tray or train?
        changeDadCharacter('shaggy', 1120, 480)   
    end

    if curStep == 828 then -- lucas
        changeDadCharacter('lucas', 150, 520)
    end

    if curStep == 828 then -- daniel
        changeBoyfriendCharacter('daniel', 1120, 480)   
    end

    if curStep == 828 then -- fly
        changeDadCharacter('fly', 150, 520)
    end

    if curStep == 828 then -- mathias
        changeBoyfriendCharacter('mathias', 1120, 480)   
    end

end

function playerTwoTurn()
    if curStep >= 0 then
        setDefaultCamZoom(0.6)
    end
end

function dadNoteHit()
    if curStep >= 256 and curStep < 384 then
        shakeCam(0.005, 0.1)
    end
end

function playerOneTurn()

    if curStep >= 0 then
        setDefaultCamZoom(0.7)
    end
    
end