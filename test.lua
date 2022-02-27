local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local Decks = {
    [1] = '1a', [2] = '1b', [3] = '1c', [4] = '1d',
    [5] = '2a', [6] = '2b', [7] = '2c', [8] = '2d',
    [9] = '3a', [10] = '3b', [11] = '3c', [12] = '3d',
    [13] = '4a', [14] = '4b', [15] = '4c', [16] = '4d',
    [17] = '5a', [18] = '5b', [19] = '5c', [20] = '5d',
    [21] = '6a', [22] = '6b', [23] = '6c', [24] = '6d',
    [25] = '7a', [26] = '7b', [27] = '7c', [28] = '7d',
    [29] = '8a', [30] = '8b', [31] = '8c', [32] = '8d',
    [33] = '9a', [34] = '9b', [35] = '9c', [36] = '9d',
    [37] = '10a', [38] = '10b', [39] = '10c', [40] = '10d',
    [41] = '11a', [42] = '11b', [43] = '11c', [44] = '11d',
    [45] = '12a', [46] = '12b', [47] = '12c', [48] = '12d',
    [49] = '13a', [50] = '13b', [51] = '13c', [52] = '13d',

}
local Compare_Cards = {
    [1] = '1', [2] = '1', [3] = '1', [4] = '1',
    [5] = '2', [6] = '2', [7] = '2', [8] = '2',
    [9] = '3', [10] = '3', [11] = '3', [12] = '3',
    [13] = '4', [14] = '4', [15] = '4', [16] = '4',
    [17] = '5', [18] = '5', [19] = '5', [20] = '5',
    [21] = '6', [22] = '6', [23] = '6', [24] = '6',
    [25] = '7', [26] = '7', [27] = '7', [28] = '7',
    [29] = '8', [30] = '8', [31] = '8', [32] = '8',
    [33] = '9', [34] = '9', [35] = '9', [36] = '9',
    [37] = '10', [38] = '10', [39] = '10', [40] = '10',
    [41] = '11', [42] = '11', [43] = '11', [44] = '11',
    [45] = '12', [46] = '12', [47] = '12', [48] = '12',
    [49] = '13', [50] = '13', [51] = '13', [52] = '13',

}

function getcard(Decks, Compare_Cards)
    local blue_card = nil
    local red_card = nil
    local win = nil
    local score = nil
    blue_card = math.random(52)
    red_card = math.random(1,52)
    if red_card == blue_card then
        red_card = math.random(52)
    end

    -- ไม่แยกดอกเพื่อดูผล
    if Compare_Cards[blue_card] > Compare_Cards[red_card] then
        win = 'blue'

    elseif Compare_Cards[blue_card] < Compare_Cards[red_card] then
        win = 'red'
        
    elseif Compare_Cards[blue_card] == Compare_Cards[red_card] then
        win = 'tie'

    end

    --- แยกดอก เพื่อใช้ในการ visualize
    visual_blue = Decks[blue_card]
    visual_red = Decks[red_card]
    print(visual_blue, visual_red, win)

    print(blue_card, red_card, win)
    return blue_card, red_card, win
end

--print(getcard(Decks, Compare_Cards))

game = getcard(Decks, Compare_Cards)

--game2 = getcard(Decks, Compare_Cards)

