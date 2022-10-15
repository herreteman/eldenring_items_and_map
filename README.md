# Elden Ring tracker pack for EmoTracker

I got tired of not having a real tracker for it, so I made one.

Elden Ring Item and Enemy Randomizer download: https://www.nexusmods.com/eldenring/mods/428

Keep in mind, there is little logic to this randomizer outside of key items locking locations. It won't assure you have a good enough build to take down bosses or advance, and the in-game hint system doesn't always reliably give you 100% required items. Therefore, use this as more of a checklist than anything.

Please read the FAQ for any inquires!


## Includes
* Items only layout
* Map layout with all important locations
* Pinnable locations
* Same adjustable settings for locations as the randomizer

## Planned updates
* Enemy randomizer "integration" by having capture items in boss locations.

## Known issues
* The settings tab in horizontal layouts may not be centered.

## Credits
* General in-game resources were obtained from https://github.com/EanNewton/Awesome-Elden-Ring-Resources, specifically Ashelian's item sprites.
* Map fragments were obtained from u/Exiolambo's high quality map: https://www.reddit.com/r/Eldenring/comments/tygn11/high_quality_elden_ring_map_all_grace_sites/


# FAQ

## Quick rundown on how to use EmoTracker and the pack

Open the "settings" tab to enable and disable locations, these are the same options as the randomizer itself so they should be self-explanatory. Tracker settings has 2 other toggles:
- **Hide locations behind bosses** makes it so you need to mark a boss as defeated on the map to show anything it blocks, i.e. Forbidden Lands and Mountaintops will not appear as reachable until you beat Morgott in Leyndell. By disabling it, only important items will lock these.
- **Opened Stormveil gate** is somewhat of a failsafe, if you don't ask Gostoc to open the Stormveil main gate you'll need the Rusty Key to access it instead. Use this to toggle between having that gate open or not.

You can navigate areas through the tabs map. In the maps, locations are shown as green squares, right where they are on the in-game map. Click and hold a location to see an info popup of its locations, or alternatively you can double click it to pin it in the **Pinned locations** tab. From either of those you can click individual items to clear them. Alternatively, you can right click to clear everything in that location.

If a location is yellow, it means you can reach it technically, but not in logic. This applies to little places in this pack, read further sections for clarification.

For streams, you can press F2 to get a popup of the item layout to use with OBS. This is set for a green chroma key, you can use overrides to have a custom color instead, for more info on that consult the EmoTracker Discord server.

You can also press F11 to show all locations, reachable or not, with red marking the unreachable ones. I wouldn't recommend it for this pack in particular though!

## How logic in the randomizer and the tracker works

There's very few item requirements in Elden Ring, but they're all categorized by the game as key items. All key items you see in the tracker are things that can unlock progress, but you also need to beat bosses to progress through the game. At the minimum, you need a way to reach Leyndell (either through Altus Plateau or Deeproot Depths), 2 runes to actually enter the city, the Rold Medallion, and beat all required story bosses to reach the Erdtree in Ashen Leyndell; if you set the randomizer to require all runes to enter the Erdtree, you'll also need those to finish.

Since the randomizer is meant to be played in current version, no major skips are accounted for. As far as I know there isn't any glitch that'd let you get things out of order, please inform me of anything of the sort so I can add those tricks as sequence breaks!

**ONLY IMPORTANT LOCATIONS ARE ACCOUNTED FOR ON THE MAP**. The randomizer currently doesn't allow key items to be in non-important locations, but if that ever changes I can't guarantee I'll make a tracker for all possible locations, because there are too many. Likewise, the current version makes it impossible to disable vanilla key items and major bosses as important locations, those won't be togglable as a result

Map regions will generally be separated in the same way the randomizer does it internally, so you can use the tracker at the same time as the hint system. There are a few exceptions for areas that either have 1 or 2 locations where the hint will be very obvious, so having a separate map would be innecessary (i.e. Divine Towers of Caelid/Liurnia are in the Liurnia and Dragonbarrow maps respectively).

This pack also can't know what bosses you get if you're using the enemy randomizer, so be mindful of that. Every boss will have their vanilla boss name, just to distinguish the location. You can use the notes feature to keep track of bosses in each location, but in the future I plan to use another feature of the tracker to have an easier way to mark those.

## Why isn't X item or location in the tracker?

There are a lot of faux key items related to NPC quests. You won't find them in the pack as they are never considered by the randomizer and won't have anything required, almost all of them are missable! 

This also includes Fortissax, while it's a remembrance boss it's also locked behind Fia's quest and is thus missable; the randomizer doesn't count it as an important location for this reason. Cursemark of Death is still considered a key item by the randomizer, but its only use is getting to this fight, so it's not a part of the items in the tracker either.

Also, there's one merchant in Weeping Peninsula who's not on the tracker's location list. I'm not sure why, but I haven't seen any important item there myself yet, if you ever have proof that it can have items please let me know!

## Why is this location yellow, AKA not fully accessible?

Usually this color is used for sequence breaks in logic, but as I stated earlier there aren't any of those accounted for currently. Instead, there's 2 cases of yellow locations:

- **Four Belfries** has a talisman location for each gateway, but since you can only get so many with Imbued Keys, they won't all be shown as accessible without all 3 Imbued Keys.
- You can access **Volcano Manor** from the front entrance by following Rya's questline. Since it's an NPC quest, it's never guaranteed, and it's never accounted for. But, if you can reach Altus and had the luck to find her pendant, you can bypass some stuff and get Tanith's item, or even more depending on other key items.

## Will you add autotracking?

I don't have plans for it, any other autotracking I know of in Emotracker uses LUA scripting with emulators and I'm not familiar with the logistics of making that work for a modern PC game.

## I found a problem in the tracker and/or have a suggestion to make it better!

I appreciate all feedback to get this as polished as possible, so please tell me everything you find or if you have any problems using it. 

For any doubts and problems about the tracker usage and customization options, the best way would be through the help channels in the EmoTracker Discord server, you can find it here: https://emotracker.net/community/. I'll be monitoring them as much as possible so feel free to ping me there!

For typos, problems with logic, general suggestions, or even if you want to contribute something of your own, you can contact me directly on Discord as well at Herreteman#5270. Any other way of contact is also fine, you cna find me on Twitch and Twitter with the same name.