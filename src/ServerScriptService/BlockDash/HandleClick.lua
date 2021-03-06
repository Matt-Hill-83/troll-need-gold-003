local CS = game:GetService("CollectionService")
local Sss = game:GetService("ServerScriptService")
local RS = game:GetService("ReplicatedStorage")

local Utils = require(Sss.Source.Utils.U001GeneralUtils)
local Utils3 = require(Sss.Source.Utils.U003PartsUtils)
local Constants = require(Sss.Source.Constants.Constants)
local LetterFallUtils = require(Sss.Source.LetterFall.LetterFallUtils)
local Leaderboard = require(Sss.Source.AddRemoteObjects.Leaderboard)

local clickBlockEvent = RS:WaitForChild("ClickBlockRE")

local module = {processing = false, initComplete = false}

function isDesiredLetter(availLetters, clickedLetter)
    local textLabel = Utils.getFirstDescendantByName(clickedLetter, "BlockChar")
                          .Text
    local char = LetterFallUtils.getCharFromLetterBlock(clickedLetter)
    return availLetters[char]
end

function isDeadLetter(clickedLetter)
    local tag = LetterFallUtils.tagNames.DeadLetter
    return CS:HasTag(clickedLetter, tag)
end

function findFirstMatchingLetterBlock(foundChar, miniGameState)
    local matchingLetter = nil

    for wordIndex, word in ipairs(miniGameState.renderedWords) do
        local letter = word.letters[miniGameState.currentLetterIndex]
        if foundChar == letter.char then
            miniGameState.activeWord = word
            matchingLetter = letter.instance
            break
        end
    end
    return matchingLetter
end

function handleBrick(clickedLetter, miniGameState, player)
    if module.processing == true then return end
    module.processing = true

    local letterFallFolder = miniGameState.letterFallFolder
    local runTimeLetterFolder = miniGameState.runTimeLetterFolder

    if not module.initComplete then
        module.initComplete = true
        -- 
    end

    local isChild = clickedLetter:IsDescendantOf(letterFallFolder)

    if not isChild then
        module.processing = false
        return
    end

    if isDeadLetter(clickedLetter) then
        module.processing = false
        return
    end

    local isFound = CS:HasTag(clickedLetter, LetterFallUtils.tagNames.Found)
    if isFound then
        module.processing = false
        return
    end

    local activeWord = miniGameState.activeWord
    local currentLetterIndex = miniGameState.currentLetterIndex
    local words = miniGameState.words

    local foundChar = LetterFallUtils.getCharFromLetterBlock(clickedLetter)

    local targetLetterBlock = nill
    local availWords = {}

    if activeWord then
        availWords = {activeWord.wordChars}
        local nextLetterInWord = activeWord.letters[currentLetterIndex]

        -- I'm not sure why I get this condition
        if not nextLetterInWord then
            module.processing = false
            return
        end
        local nextCharInWord = nextLetterInWord.char
        local found = foundChar == nextCharInWord
        if found then
            targetLetterBlock = activeWord.letters[currentLetterIndex].instance
        end
    else
        availWords = words
        local availLetters = LetterFallUtils.getAvailLettersDict(
                                 {
                words = words,
                currentLetterIndex = currentLetterIndex
            })

        if isDesiredLetter(availLetters, clickedLetter) then
            targetLetterBlock = findFirstMatchingLetterBlock(foundChar,
                                                             miniGameState)
        end
    end

    if targetLetterBlock then
        CS:AddTag(clickedLetter, LetterFallUtils.tagNames.Found)
        CS:RemoveTag(clickedLetter, LetterFallUtils.tagNames.RackLetter)

        local letterBlockCFrame = clickedLetter.CFrame

        local tween = Utils3.tween({
            part = clickedLetter,
            endPosition = targetLetterBlock.Position,
            time = 0.4,
            anchor = true
        })

        -- hide the letter in rack where this letter is going
        -- Utils.hideItemAndChildren({item = targetLetterBlock, hide = true})

        local clickedChar =
            LetterFallUtils.getCharFromLetterBlock(clickedLetter)

        if clickedChar then
            table.insert(miniGameState.foundLetters,
                         LetterFallUtils.getCharFromLetterBlock(clickedLetter))
        end

        local currentWord = table.concat(miniGameState.foundLetters, "")
        local wordComplete = table.find(words, currentWord)

        miniGameState.currentLetterIndex = miniGameState.currentLetterIndex + 1

        if (wordComplete) then
            local currentWord2 = Constants.wordConfigs[currentWord]
            if currentWord2 then
                local soundId = currentWord2['soundId']
                if (soundId) then
                    local sound = Instance.new("Sound", workspace)
                    sound.SoundId = "rbxassetid://" .. soundId
                    sound.EmitterSize = 5
                    sound.Looped = false
                    if not sound.IsPlaying then sound:Play() end
                end
            end

            local gem = Utils.getFirstDescendantByName(letterFallFolder,
                                                       "GemTemplate")
            local newGem = gem:Clone()
            newGem.Parent = letterFallFolder
            newGem.Handle.CFrame = letterBlockCFrame + Vector3.new(0, 30, 0)
            newGem.Handle.Anchored = false
            print('newGem' .. ' - start');
            print(newGem);

            table.insert(miniGameState.foundWords, currentWord)
            miniGameState.foundLetters = {}
            miniGameState.currentLetterIndex = 1
            miniGameState.activeWord = nil

            local wins = player.leaderstats.Wins
            wins.Value = wins.Value + 1
            Leaderboard.updateLB()
        end

        LetterFallUtils.styleLetterBlocksBD({miniGameState = miniGameState})

        clickedLetter.CFrame = targetLetterBlock.CFrame
    end
    module.processing = false
end

module.initClickHandler = initClickHandler
module.handleBrick = handleBrick
return module
