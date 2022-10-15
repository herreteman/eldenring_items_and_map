-- Main aux function: Check if player has an item
function has(item)
    return Tracker:ProviderCountForCode(item) == 1
end

-- Checks if a boss has been defeated (based on location)
function boss(locationName)
    -- If disabled in settings, always show locations past bosses
    if has("require_bosses_false") then
        return true
    end

    local location = Tracker:FindObjectForCode(locationName)
    if location then
        -- print(location.Name)
        -- print(location.AvailableChestCount)
        return location.AvailableChestCount == 0
    else
        -- print("Can't find location ", locationName)
        return false
    end
end


-- Returns if the player has enough great runes
function runes(n)
    runeNumber = 0;
    if has("godrick") then
        runeNumber = runeNumber + 1
    end
    if has("malenia") then
        runeNumber = runeNumber + 1
    end
    if has("mohg") then
        runeNumber = runeNumber + 1
    end
    if has("morgott") then
        runeNumber = runeNumber + 1
    end
    if has("radahn") then
        runeNumber = runeNumber + 1
    end
    if has("rykard") then
        runeNumber = runeNumber + 1
    end
    if has("unborn") then
        runeNumber = runeNumber + 1
    end
    
    return runeNumber >= n
end

-- Access Stormveil Castle
function stormveil()
    return boss("@Stormveil Gate/Margit, the Fell Omen")
end

-- Access Three Sisters
function ranni()
    return boss("@Caria Manor/Royal Knight Loretta")
end

-- Access late Raya Lucaria
function rennala()
    return boss("@Raya Lucaria Debate Parlor/Red Wolf of Radagon")
end

-- Access Rennala's chest
function rennala_chest()
    return has("key_discarded") and boss("@Raya Lucaria Debate Parlor/Red Wolf of Radagon")
end

-- Access Nokron
function nokron()
    return boss("@Wailing Dunes/Starscourge Radahn")
end

-- Access Siofra Aqueduct
function aqueduct()
    return boss("@Upper Nokron/Mimic Tear")
end

-- Access Deeproot
function deeproot()
    return boss("@Siofra Aqueduct/Valiant Gargoyles") or 
        (leyndell() and boss("@Subterranean Shunning-Grounds/Mohg, the Omen"))
end

-- Access Nokstella
function nokstella()
    if deeproot() then
        return true, AccessibilityLevel.Normal 
    elseif boss("@Caria Manor/Royal Knight Loretta") then   -- Ranni's quest, finger-slaying knife isn't guaranteed
        return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end

-- Access Moonlight Altar
function moonlight_altar()
    return has("darkmoon_ring") and nokstella() and boss("@Ainsel River end/Astel, Naturalborn of the Void")
end

-- Access Altus
function altus()
    if (has("dectus_left") and has("dectus_right")) or
        (has("glintstone_key") and boss("@Subterranean Inquisition Chamber/Abductor Virgin Duo")) or
        boss("@Ruin-Strewn Precipice/Magma Wyrm Makar") then
        return true
    else
        return false
    end
end

-- Access Volcano Manor entrance
function volcano_entrance()
    if (altus() and boss("@Ninth Mt. Gelmir Campsite/Full-Grown Fallingstar Beast")) or -- Through Gelmir
        (has("glintstone_key") and boss("@Temple of Eiglay/Godskin Noble")) then        -- Through hanging cages
        return true, AccessibilityLevel.Normal
    elseif altus() then     -- Getting invited through Ria's quest, not guaranteed
        return true, AccessibilityLevel.SequenceBreak
    else
        return false, AccessibilityLevel.None
    end
end

-- Access Volcano Manor middle part
function volcano_middle()
    return (volcano_entrance() and has("key_drawingroom")) or -- Through Raya Lucaria pit  
        has("glintstone_key") 
end

-- Access Volcano Manor back
function volcano_rykard()
    return (volcano_middle() and boss("@Temple of Eiglay/Godskin Noble"))
end

-- Access Leyndell
function leyndell()
    return runes(2) and (boss("@Capital Rampart entrance/Draconic Tree Sentinel") or 
    boss("@Prince of Death's Throne/Fia's Champions"))
end

-- Access Elden Throne
function throne()
    return leyndell() and boss("@Erdtree Sanctuary/Godfrey, First Elden Lord")
end

-- Access Melina's item after Morgott
function melina_leyndell()
    return throne() and boss("@Elden Throne/Morgott, the Omen King")
end

-- Access Forbidden Lands
function forbidden()
    return melina_leyndell()
end

-- Access Mountaintops of the Giants
function mountaintops()
    return forbidden() and has("rold")
end

-- Access Farum Azula
function azula()
    return mountaintops() and boss("@Forge of the Giants/Fire Giant")
end

-- Access Farum Azula after Dragon Temple
function late_azula()
    return azula() and boss("@Dragon Temple Altar/Godskin Duo")
end

-- Access Consecrated Snowfield
function snowfield()
    return forbidden() and has("haligtree_left") and has("haligtree_right")
end

-- Access Mohgwyn
function mohgwyn()
    return snowfield() or has("pureblood_medal")
end

-- Access Elphael
function elphael()
    return snowfield() and boss("@Haligtree Promenade/Loretta, Knight of the Haligtree")
end


-- Access ashen Leyndell
function ashen_leyndell()
    return late_azula() and boss("@Farum Azula Great Bridge/Maliketh, the Black Blade")
end

-- Access Hoarah Loux
function hoarah_loux()
    return boss("@Erdtree Sanctuary (Ashen)/Gideon Ofnir, the All-Knowing")
end

-- Access the Erdtree
function erdtree()
    return boss("@Elden Throne (Ashen)/Hoarah Loux, Warrior") and
        ((has("required_runes_7") and runes(7)) or
        (has("required_runes_2") and runes(2))) 
end