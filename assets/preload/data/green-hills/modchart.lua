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
        changeDadCharacter('steven', 100, 100)
    end

    if curStep == 319 then -- finn
        changeBoyfriendCharacter('mom', 770, 450)   
    end

    if curStep == 383 then -- glitch teu
        changeDadCharacter('glitch-teu', 100, 100)
    end

    if curStep == 446 then -- old teu
        changeBoyfriendCharacter('teu-old-demon', 770, 450)   
    end

    if curStep == 510 then -- mickey
        changeDadCharacter('happymouse', 100, 100)
    end

    if curStep == 573 then -- oswald
        changeBoyfriendCharacter('oswald-happy', 770, 450)   
    end

    if curStep == 636 then -- bambi
        changeDadCharacter('bambi', 100, 100)
    end

    if curStep == 669 then -- 69, nice (dave)
        changeBoyfriendCharacter('dave', 770, 450)   
    end

    if curStep == 702 then -- opheebop
        changeDadCharacter('opheebop', 100, 100)
    end

    if curStep == 733 then -- bob
        changeBoyfriendCharacter('bob', 770, 450)   
    end

    if curStep == 749 then -- bob gets pissed at ron
        changeBoyfriendCharacter('angrybob', 770, 450)   
    end

    if curStep == 749 then -- ron
        changeDadCharacter('ron', 770, 450)   
    end

    if curStep == 812 then -- tray or train?
        changeDadCharacter('shaggy', 770, 450)   
    end

    if curStep == 828 then -- lucas
        changeDadCharacter('lucas', 100, 100)
    end

    if curStep == 828 then -- daniel
        changeBoyfriendCharacter('daniel', 770, 450)   
    end

    if curStep == 828 then -- fly
        changeDadCharacter('fly', 100, 100)
    end

    if curStep == 828 then -- mathias
        changeBoyfriendCharacter('mathias', 770, 450)   
    end

    if curStep == 1018 then -- TGT Sonic
        changeDadCharacter('sonic', 100, 100)
    end

    if curStep == 1083 then -- TGT Tails
        changeBoyfriendCharacter('tails', 770, 450)   
    end

    if curStep == 1146 then -- Expurtesco man
        changeDadCharacter('TescoExpurgation', 100, 100)
    end

    if curStep == 1162 then -- Expurtesco woman
        changeBoyfriendCharacter('TescoExpurgation', 770, 450)   
    end

    if curStep == 1210 then -- Sans nutdealer
        changeDadCharacter('sans', 100, 100)
    end

    if curStep == 1210 then -- penumbra
        changeBoyfriendCharacter('penumbra', 770, 450)   
    end

    if curStep == 1210 then -- The awesome musician himself (but dead version)
        changeDadCharacter('JadynPibby', 100, 100)
    end

    if curStep == 1210 then -- lowercase swordcube
        changeBoyfriendCharacter('Sword', 770, 450)   
    end

    if curStep == 1400 then -- barkey
        changeDadCharacter('barkey', 100, 100)
    end

    if curStep == 1400 then -- borky
        changeBoyfriendCharacter('borky', 770, 450)   
    end

    if curStep == 1400 then -- barkey
        changeDadCharacter('barkey', 100, 100)
    end

    if curStep == 1400 then -- borky
        changeBoyfriendCharacter('borky', 770, 450)   
    end

    if curStep == 1532 then -- gemamugen
        changeDadCharacter('gemamugen', 100, 100)
    end

    if curStep == 1660 then -- miner
        changeBoyfriendCharacter('mineirinho', 770, 450)   
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