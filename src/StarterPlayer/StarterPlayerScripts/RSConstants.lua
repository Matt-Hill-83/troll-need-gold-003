local module = {

    isDev = false,
    -- isDev = true,

    singleScene = true,
    -- singleScene = false,

    gameConfig = {
        transparency = true,
        -- transparency = false,

        showScenes = true
        -- showScenes = false
        ---
    },

    entered = {value = false},
    walkSpeed = 30,
    questWallHeight = 4,
    sceneHeight = 50
}

module.dialogColors = {
    Color3.fromRGB(253, 158, 240), Color3.fromRGB(225, 253, 158),
    Color3.fromRGB(253, 228, 158), Color3.fromRGB(158, 253, 179),
    Color3.fromRGB(158, 215, 253)
}
module.gemColors = {
    Color3.fromRGB(255, 0, 0), ---------
    Color3.fromRGB(255, 174, 0), ---------
    Color3.fromRGB(255, 255, 0), ---------
    Color3.fromRGB(63, 255, 0), ---------
    Color3.fromRGB(21, 0, 255), ---------
    Color3.fromRGB(157, 0, 255) ---------
}

module.colors = {blue = Color3.fromRGB(158, 215, 253)}

module.tagsNames = {BaseWallTransparent = "BaseWallTransparent"}

local islandLength = 36
local bridgeBaseLength = 63
local bridgeOverlap = 2
local bridgeLength = bridgeBaseLength - 2 * bridgeOverlap

module.islandLength = islandLength
module.bridgeLength = bridgeLength
module.totalIslandLength = islandLength + bridgeLength

module.buttonLabels = {PrevPage = "Prev Page", NextPage = "Next Page"}

-- 
-- 
local raven = {
    displayName = "Raven",
    decalId = '5897424121',
    backgroundColorIdx = 1
}

local britta = {
    displayName = "Britta",
    decalId = '5897433108',
    backgroundColorIdx = 2
}

local mitzy02 = {
    displayName = "Mitzy Meow",
    decalId = '5976876671',
    backgroundColorIdx = 2
}

local vulcan = {
    displayName = "Vulcan",
    decalId = '5999464799',
    backgroundColorIdx = 1
}

module.characters = {

    raven05 = raven,
    raven04 = raven,
    raven001 = raven,
    raven002 = raven,
    raven003 = raven,
    raven004 = raven,

    raven = raven,
    britta = britta,
    britta01 = britta,
    britta04 = britta,

    rat = {displayName = "Rat", decalId = '6152126688', backgroundColorIdx = 1},
    katBody = {
        displayName = "Kat",
        decalId = '6107346290',
        backgroundColorIdx = 2
    },
    katCringing = {
        displayName = "Kat",
        decalId = '6107344629',
        backgroundColorIdx = 2
    },
    katDismayed = {
        displayName = "Kat",
        decalId = '6107344149',
        backgroundColorIdx = 2
    },
    katFunny = {
        displayName = "Kat",
        decalId = '6107344301',
        backgroundColorIdx = 2
    },
    katHappy = {
        displayName = "Kat",
        decalId = '6107344864',
        backgroundColorIdx = 2
    },
    katHurt = {
        displayName = "Kat",
        decalId = '6107344515',
        backgroundColorIdx = 2
    },
    katLoud = {
        displayName = "Kat",
        decalId = '6107345138',
        backgroundColorIdx = 2
    },
    katMad = {
        displayName = "Kat",
        decalId = '6107344045',
        backgroundColorIdx = 2
    },
    katNormal = {
        displayName = "Kat",
        decalId = '6107344810',
        backgroundColorIdx = 2
    },
    katOptimistic = {
        displayName = "Kat",
        decalId = '6107344576',
        backgroundColorIdx = 2
    },
    katSad = {
        displayName = "Kat",
        decalId = '6107344919',
        backgroundColorIdx = 2
    },
    katScared = {
        displayName = "Kat",
        decalId = '6107344234',
        backgroundColorIdx = 2
    },
    katSilly = {
        displayName = "Kat",
        decalId = '6107344689',
        backgroundColorIdx = 2
    },
    katSinister = {
        displayName = "Kat",
        decalId = '6107344453',
        backgroundColorIdx = 2
    },
    katSmiling = {
        displayName = "Kat",
        decalId = '6107344370',
        backgroundColorIdx = 2
    },
    katSurprised = {
        displayName = "Kat",
        decalId = '6107344753',
        backgroundColorIdx = 2
    },
    katUnsure = {
        displayName = "Kat",
        decalId = '6107343928',
        backgroundColorIdx = 2
    },
    katWinking = {
        displayName = "Kat",
        decalId = '6107344098',
        backgroundColorIdx = 2
    },
    -- 
    -- 
    -- 
    lizBold = {
        displayName = "Liz",
        decalId = '6107345791',
        backgroundColorIdx = 1
    },
    lizCringing = {
        displayName = "Liz",
        decalId = '6107346106',
        backgroundColorIdx = 1
    },
    lizDismayed = {
        displayName = "Liz",
        decalId = '6107346232',
        backgroundColorIdx = 1
    },
    lizFunny = {
        displayName = "Liz",
        decalId = '6107345390',
        backgroundColorIdx = 1
    },
    lizHappy = {
        displayName = "Liz",
        decalId = '6107345687',
        backgroundColorIdx = 1
    },
    lizHurt = {
        displayName = "Liz",
        decalId = '6107345736',
        backgroundColorIdx = 1
    },
    lizLoud = {
        displayName = "Liz",
        decalId = '6107343990',
        backgroundColorIdx = 1
    },
    lizMad = {
        displayName = "Liz",
        decalId = '6107346171',
        backgroundColorIdx = 1
    },
    lizNormal = {
        displayName = "Liz",
        decalId = '6107345949',
        backgroundColorIdx = 1
    },
    lizOptimistic = {
        displayName = "Liz",
        decalId = '6107345048',
        backgroundColorIdx = 1
    },
    lizSad = {
        displayName = "Liz",
        decalId = '6107345487',
        backgroundColorIdx = 1
    },
    lizScared = {
        displayName = "Liz",
        decalId = '6107345622',
        backgroundColorIdx = 1
    },
    lizSilly = {
        displayName = "Liz",
        decalId = '6107345862',
        backgroundColorIdx = 1
    },
    lizSinister = {
        displayName = "Liz",
        decalId = '6107345559',
        backgroundColorIdx = 1
    },
    lizSmiling = {
        displayName = "Liz",
        decalId = '6107345242',
        backgroundColorIdx = 1
    },
    lizSurprised = {
        displayName = "Liz",
        decalId = '6107346038',
        backgroundColorIdx = 1
    },
    lizUnsure = {
        displayName = "Liz",
        decalId = '6107344981',
        backgroundColorIdx = 1
    },
    lizWinking = {
        displayName = "Liz",
        decalId = '6107345314',
        backgroundColorIdx = 1
    },

    oliveRori01cu = {
        displayName = "Fire Star",
        decalId = '5991273160',
        backgroundColorIdx = 1
    },
    lucy07 = {
        displayName = "lucinda",
        decalId = '6073755292',
        backgroundColorIdx = 1
    },
    lucy07small = {
        displayName = "lucinda",
        decalId = '6073755292',
        backgroundColorIdx = 1
    },
    well01 = {
        displayName = "Well01",
        decalId = '6073681880',
        backgroundColorIdx = 1
    },

    saki = {
        displayName = "Saki",
        decalId = '6073681717',
        backgroundColorIdx = 1
    },
    barn = {
        displayName = "Barn",
        decalId = '5991343849',
        backgroundColorIdx = 1
    },
    drip = {
        displayName = "Drip",
        decalId = '5991342417',
        backgroundColorIdx = 1
    },
    cub = {displayName = "Cub", decalId = '6073679553', backgroundColorIdx = 1},
    barkPhone01 = {
        displayName = "BarkPhone01",
        decalId = '6073682731',
        backgroundColorIdx = 1
    },
    scramper01 = {
        displayName = "Brandon",
        decalId = '6073681552',
        backgroundColorIdx = 1
    },

    slicerDicer01 = {
        displayName = "Slicer Dicer",
        decalId = '6073681398',
        backgroundColorIdx = 1
    },
    drake = {
        displayName = "Drake",
        decalId = '5991267736',
        backgroundColorIdx = 1
    },
    hopps01 = {
        displayName = "Hops",
        decalId = '5977953968',
        backgroundColorIdx = 1
    },

    goose01 = {
        displayName = "Goose",
        decalId = '5991275787',
        backgroundColorIdx = 1
    },
    angus01 = {
        displayName = "Angus",
        decalId = '5991277363',
        backgroundColorIdx = 1
    },
    bug = {displayName = "Bug", decalId = '5898504138', backgroundColorIdx = 1},

    queenGoose01 = {
        displayName = "Queen Goose",
        decalId = '5991275787',
        backgroundColorIdx = 1
    },
    tree = {
        displayName = "Tree",
        decalId = '6108772241',
        backgroundColorIdx = 1
    },

    smallGoose01 = {
        displayName = "Small Goose",
        decalId = '5991272287',
        backgroundColorIdx = 1
    },
    sillyGoose01 = {
        displayName = "Silly Goose",
        decalId = '5977953221',
        backgroundColorIdx = 1
    },
    magenta01 = {
        displayName = "Magenta",
        decalId = '6108778279',
        backgroundColorIdx = 1
    },
    littleGoose = {
        displayName = "Little Goose",
        decalId = '5991275498',
        backgroundColorIdx = 1
    },
    babyTroll01 = {
        displayName = "Baby Troll",
        decalId = '6073033076',
        backgroundColorIdx = 1
    },
    babyTroll02 = {
        displayName = "Baby Troll",
        decalId = '6073033076',
        backgroundColorIdx = 1
    },
    will01 = {
        displayName = "Baby Troll",
        decalId = '6073033076',
        backgroundColorIdx = 1
    },

    fancyDudeFromFrance01 = {
        displayName = "fancyDudeFromFrance01",
        decalId = '5991276655',
        backgroundColorIdx = 1
    },
    goat01 = {
        displayName = "Goat",
        decalId = '6063417478',
        backgroundColorIdx = 1
    },
    robby01 = {
        displayName = "Robby",
        decalId = '5991273473',
        backgroundColorIdx = 1
    },
    vesper01 = {
        displayName = "Robby",
        decalId = '5991273473',
        backgroundColorIdx = 1
    },
    snurtch01 = {
        displayName = "Robby",
        decalId = '5991273473',
        backgroundColorIdx = 1
    },
    waterfall = {
        displayName = "Waterfall",
        decalId = '5991339525',
        backgroundColorIdx = 1
    },
    cave = {
        displayName = "Cave",
        decalId = '5991342911',
        backgroundColorIdx = 1
    },
    hill = {
        displayName = "Hill",
        decalId = '5991342052',
        backgroundColorIdx = 1
    },
    lake = {
        displayName = "Lake",
        decalId = '5991341377',
        backgroundColorIdx = 1
    },
    log = {displayName = "Log", decalId = '5991341326', backgroundColorIdx = 1},
    pond = {
        displayName = "Pond",
        decalId = '5991340703',
        backgroundColorIdx = 1
    },
    pool = {
        displayName = "Pool",
        decalId = '5991340615',
        backgroundColorIdx = 1
    },
    swamp = {
        displayName = "Swamp",
        decalId = '5991343667',
        backgroundColorIdx = 1
    },
    bees = {
        displayName = "Bees",
        decalId = '5991343806',
        backgroundColorIdx = 1
    },
    cap = {displayName = "Cap", decalId = '5991343197', backgroundColorIdx = 1},
    castle = {
        displayName = "Castle",
        decalId = '5991343060',
        backgroundColorIdx = 1
    },
    chick01 = {
        displayName = "Chick",
        decalId = '6060376973',
        backgroundColorIdx = 1
    },
    coop = {
        displayName = "Coop",
        decalId = '5991342867',
        backgroundColorIdx = 1
    },
    cow01 = {
        displayName = "Cow",
        decalId = '6060376567',
        backgroundColorIdx = 1
    },
    girl09 = {
        displayName = "Girl",
        decalId = '5991275978',
        backgroundColorIdx = 1
    },
    lucky = {
        displayName = "Lucky",
        decalId = '5977954909',
        backgroundColorIdx = 3
    },
    lucky01 = {
        displayName = "Lucky",
        decalId = '5977954909',
        backgroundColorIdx = 3
    },
    looney01cu = {
        displayName = "Lucky",
        decalId = '5977954909',
        backgroundColorIdx = 3
    },
    looney01 = {
        displayName = "Lucky",
        decalId = '5977954909',
        backgroundColorIdx = 3
    },
    mat = {displayName = "Mat", decalId = '5991341059', backgroundColorIdx = 1},
    mop = {displayName = "Mop", decalId = '5991340991', backgroundColorIdx = 1},
    pan = {displayName = "Pan", decalId = '5991340855', backgroundColorIdx = 1},
    slide = {
        displayName = "Slide",
        decalId = '5991340411',
        backgroundColorIdx = 1
    },
    swing = {
        displayName = "Swing",
        decalId = '5991340158',
        backgroundColorIdx = 1
    },

    stump = {
        displayName = "Stump",
        decalId = '5991340320',
        backgroundColorIdx = 1
    },
    bog = {displayName = "Bog", decalId = '5991343667', backgroundColorIdx = 1},
    home = {
        displayName = "Home",
        decalId = '5991341898',
        backgroundColorIdx = 1
    },
    bee = {displayName = "Bee", decalId = '5999465084', backgroundColorIdx = 1},
    elf = {displayName = "Elf", decalId = '5991266909', backgroundColorIdx = 4},
    bun = {displayName = "Bun", decalId = '5991343501', backgroundColorIdx = 1},
    dog01 = {
        displayName = "Dog",
        decalId = '5999464941',
        backgroundColorIdx = 1
    },
    dennisTheMenace = {
        displayName = "Dennis the Menace",
        decalId = '5999464873',
        backgroundColorIdx = 1
    },
    katieKooper01 = {
        displayName = "Katie Kooper",
        decalId = '5991267836',
        backgroundColorIdx = 1
    },
    troll01 = {
        displayName = "Troll01",
        decalId = '5999464489',
        backgroundColorIdx = 1
    },
    troll02 = {
        displayName = "Troll02",
        decalId = '5999464489',
        backgroundColorIdx = 3
    },
    rori = {
        displayName = "Rori",
        decalId = '5991267444',
        backgroundColorIdx = 4
    },
    vulcan = vulcan,
    vulcan01 = vulcan,

    luke01 = {
        displayName = "Luke",
        decalId = '5998961085',
        backgroundColorIdx = 2
    },
    hudson01 = {
        displayName = "Hudson",
        decalId = '5998961874',
        backgroundColorIdx = 4
    },
    trollKing01 = {
        displayName = "Troll King",
        decalId = '5897428591',
        backgroundColorIdx = 3
    },
    trollKing = {
        displayName = "Troll King",
        decalId = '5897428591',
        backgroundColorIdx = 3
    },
    goblinKing02 = {
        displayName = "Troll King",
        decalId = '5897428591',
        backgroundColorIdx = 3
    },
    goblinKing01 = {
        displayName = "Troll King",
        decalId = '5897428591',
        backgroundColorIdx = 3
    },
    freckle = {
        displayName = "Freckle",
        decalId = '5897430768',
        backgroundColorIdx = 3
    },
    freckle01 = {
        displayName = "Freckle",
        decalId = '5897430768',
        backgroundColorIdx = 3
    },
    missyMeow01 = {
        displayName = "Missy Meow",
        decalId = '5898504226',
        backgroundColorIdx = 1
    },
    mitzyMeow01 = mitzy02,
    mitzy02 = mitzy02,
    kat = {displayName = "Kat", decalId = '5977951764', backgroundColorIdx = 3},
    liz2 = {displayName = "Liz", decalId = '5981806423', backgroundColorIdx = 2}
}

module.wordConfigs = {
    BAT = {soundId = "6145991240", imageId = "xxx"},
    BOG = {soundId = "6149925692", imageId = "xxx"},
    BEE = {soundId = "6149925692", imageId = module.characters.bee.decalId},
    CAT = {
        soundId = "6145990934",
        imageId = module.characters.mitzyMeow01.decalId
    },
    DOG = {soundId = "6145990934", imageId = module.characters.angus01.decalId},
    HAT = {soundId = "6145991587", imageId = "xxx"},
    MAT = {soundId = "6145991865", imageId = "xxx"},
    PAT = {soundId = "6145992548", imageId = "xxx"},
    RAT = {soundId = "6145992816", imageId = "xxx"},
    SAT = {soundId = "6145993194", imageId = "xxx"},
    MOM = {soundId = "6199537750", imageId = "xxx"},
    YES = {soundId = "6199538408", imageId = "xxx"}
}

return module
