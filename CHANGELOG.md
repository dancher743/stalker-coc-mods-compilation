# Changelog

All notable changes to this project will be documented in this file.

## [1.5.0] - Unreleased

### Improvements
* Restored lore-friendly NPC's backpack textures
* Added lore-friendly NPC's portrets (1 portret from Customization Pack Adaptation [1.4.22])
* Reworked cat and zombie icons of mutant's loot window

### Optimization
* Optimized amount of update callbacks

### Framework
* Added `surge_on_ended` and `psi_storm_on_ended` callbacks into `axr_main.script`

## [1.4.5] - 2024-08-18

### Improvements
* Reworked callbacks in `jg_hud_timer.script`

### Fixes
* Fixed overlapping enemy health bar by Guide job's HUD Timer
* Removed extra ids nilling in code of setup bounty hunt target
* Fixed companion behaviours during hostage task (code from CoC 1.5 R6)
* Fixed empty items in Companions List HUD
* Fixed character name selection in Faction Select menu

### Optimization
* Replaced `squad_on_update` with `squad_on_slicing_update` callback in `axr_companions.script`
* Removed extra string allocations if debug mode is disabled in `sound_ambient.script`
* Added `list_actor_squad_by_se_obj()` into `UICompanionList:CustomUpdate()` to reduce allocations
* Removed extra allocations of `alife()` using `get_alife()` function
* Optimized update loop in `UICompanionList:CustomUpdate()` function
* Added missing usages of `STR_EMPTY` and vector consts

### Framework
* Added `list_actor_squad_by_se_obj()` function into `axr_companions.script`
* Added `get_alife()` function with cached `alife()` allocation into `_g.script`
* Added `STR_NIL` const into `_g.script`

## [1.4.4] - 2024-08-12

### Features
* More foggy weather during Survival mode
* Reworked next surge/psi storm dialog
* HUD Timer for Guide job
* Rebuilded weather script from scratch!
* Added functor of move all to box/ruck into an ammo item

### Improvements
* Balanced distance and power of psysucker's aura
* Removed gunsmith and outfit toolkits from trade
* Increased drop chance of gunsmith and outfit toolkits from corpses
* Added gunsmith and outfit toolkits into `bandit_loadout`
* Changed `repair_max_condition` of gunsmith and outfit toolkits
* Corrected text of toolkits tips
* Increased `repair_part_bonus` for outfit toolkit
* Corrected text of `yan_stalker_sakharov_next_surge_or_psi_storm_0` string
* Decreased  `play_prob` of `rnd_flies` ambient
* Replaced mine on sound with SoC variant
* Separated squads of Survival mode from EOC mode
* Changed text of `ui_st_zone_entrance` string
* Corrected text of peaceful way dialogs for bounty hunt task
* Handled peaceful way of bounty hunt task during Guide job
* Changed API of `ui_addon_companion_quick_menu.script` and added copyright
* Added cancel phase and seven discard phase into peaceful way dialog of bounty hunt task
* Added increasing reputation for peaceful way of bounty hunt task
* Corrected psysucker's spawn
* Added skip message for psi-storm

### Fixes
* Fixed `medkit` cost in `bandit_loadout`
* Fixed overreparing of toolkits
* Added discovery as a state into disguise system to fix relation bug
* Fixed rate of `main_update()` of disguise system
* Transferred Guide job timers on realtime manager to prevent overflow of  `game.time()`
* Fixed hours rounding in code of next surge/psi storm dialog
* Fixed wrong text of `ui_mm_show_guide_job_on_map` string in rus localization
* Added missing `companion_is_hostage` flag into `xr_effects.setup_companion_task` function
* Replaced `is_bounty_hunt_target` and `vanish_bounty_hunt_target` functions with squad check
* Added surge/psi storm skip if time forwarded
* Included  `bar_arena_fight` info in the condition for starting the surge/psi-storm

### Optimization
* Automated sleep code of disguise system
* Added cleaning of `axr_task_manager.bounties_by_id` table after task completion
* Optimized hint string allocation in `coc_treasure_manager.on_game_load` function
* Cached `system_ini()` allocations (part 2)

### Framework
* Added `hud_timer_ui` - UI-wrapper for HUD Timer
* Added `xr_help.script` as list of the solutions to help in the development
* Added `inc_rank` function into `xr_statistic.script`

## [1.4.3] - 2024-07-21

### Features
* Added psy aura for psysucker
* Added rad aura for black chimera

### Improvements
* Moved low health and high rad effectors under health effectors option
* Improved radiation reaction sounds
* Refactored `sound_ambient.script` after adding `play_once` flag and `play_prob` float

### Fixes
* Fixed distant storms
* Fixed missing bounty hunt task's target and leave zone actions
* Fixed timer in `WeatherManager:update` function
* Fixed spontaneous weather changing after save load
* Fixed update timer in `pseudodog_psy_attack_old.script`

### Optimization
* Optimized RAM in `actor_health_effectors.script`
* Cached psy attack effector name in `pseudodog_psy_attack_old.script`

### Framework
* Added `SkipFrame` function into `_g.script` to call functions on next frame
* Added `play_prob` float for sound channels to play them with a certain probability

## [1.4.2] - 2024-07-10

### Features
* A few campfire idle sounds from OLR 3.0
* Added mapspot for looking for a guide NPC
* Added map spot and time left dialog for Guide job
* Added bonus reward for time for Guide job
* Added peaceful way dialog for bounty hunt task
* Choose start population of stalkers/monsters
* Simplified lottery for Merc's patches
* Added flies into environment's sounds
* Added ability to move all patches from/to inventory/box
* Reworked companion's health bar
* Added sometimes weather occurrence option
* Reworked the clearing of a dropped items
* Added "Online switch distance" option
* Reworked weather changing
* Reworked companion invulnerability timer due to an numeric overflow of built-in timer
* Reworked time skip of Fast travel
* Added "Zone Entrance" as a start location
* No more NPC vs boxes (original idea - [NPC Don't Attack Boxes](https://www.moddb.com/mods/stalker-anomaly/addons/npc-dont-attack-boxes))

### Mods
* Removed Animated detectors (selectively) (Alex_91zA)

### Improvements
* Excluded patrol and wait behaviours of companions from fast travel
* Improved `gc.script` code
* Refactored code of squad game relations
* Added `relation` into guider and companion map spots
* Corrected locale strings of Guide job
* Corrected crosshair length
* Replaced patch slot UI with slot-based approach
* Corrected order of phrases in Guide dialog
* Corrected `st_addon_companion_quick_menu_ignoreCombatButHelpMe` string in rus locale
* Balanced penalty of Guider job
* Changed keys for mutant's loot window: `LShift` to take all, `USE` or `QUIT` to close
* Balanced time of PDA off feature
* Improved bar guard's logic
* Corrected probabilities of `atmosfear_stormy` in `dynamic_weather_graphs.ltx`
* Added "The reward for the task" string into stash's description
* Refactored code of `npc_death_sound.script`
* Returned messages of received mutant's loot for OK button of UI mutant loot window
* Renamed flag `can_update` to `is_sleeping` in `disguise.script`
* Replaced `IsEocMode() or IsSurvivalMode()` statement with `IsSurvivalOrEocMode()` call
* Reworked `release_item_manager.script` code
* Extended values of "Online exclusion radius" option
* Included weather graph into weather calculation
* Added build exoskeleton mesh to neutral stalkers from Legend Returns 0.9.2
* Balanced reward of Guider job
* Balanced coocked mutant food
* Force enabled `black.ppe` effector in `msg_box_ui`
* Balanced start money in new game loadouts
* Removed obsolete `div_distance_for_surv_mode` string from `sound_ambient.script`
* Corrected generation of default values for weather periods

### Fixes
* Fixed picking `zombied` target in DRX's bounty hunt tasks in Survival mode
* Added disabling companion list slot into init function
* Fixed companion removing when rescue hostage task has completed
* Fixed map spots of companion squads 
* Added pack of fixes into `jg_guider.script`
* Fixed lottery for Merc's patches
* Removed non-existent sections from `medkits` and `bandages` in `xr_eat_medkit.ltx`
* Fixed portrait and health bar positions on Companions List HUD
* Moved `ResetTimeEvent()` call to the beginning of `tick()` callback
* Moved `ui_mm_companions_hud` string from `st_ui_companions.xml` to `ui_st_mm.xml` file
* Fixed changing of weather periods
* Fixed rain ambient (pt.3)
* Fixed `is_companion(obj)` function in `axr_companions.script`
* Added missing `local` modifer in `anybody_see()` function in `disguise_helper.script`
* Fixed squad map spot of non commander companion
* Added fix for changing of weather periods
* Fixed weather changing on level changing
* Fixed possible non-alive object checks in `disguise.script`

### Optimization
* Optimized the target finding code of bounty hunt tasks
* Optimized work of `UICompanionList:Update()` function
* Optimized code of squad game relations
* Optimized work of `slot_hud:CustomUpdate()` function
* Optimized code of `pda_off.script`
* Optimized RAM and CPU usage in `ui_enemy_health.script`
* Optimized utils functions from Anomaly 1.5.1.2 in `_g.script`
* Changed `switch_distance` to 150 in `alife.ltx`
* Optimized RAM usage in `npc_death_sound.script`
* Removed timer from `release_item_manager.script`
* Turned `mm_options` strings to `MM_OPTIONS` constant in `_g.script`
* Optimized RAM usage of update timer in `sound_ambient.script`
* Changed `STAY_TIME` in `release_body_manager.script` from 50h to 24h
* Optimized CPU usage of "Auto garbage collection" and "Companions HUD" options
* Cached `system_ini()` allocations (from Anomaly 1.5.1.2)
* Removed extra sky textures of clear weather of "All AtmosFear 3 cycles for CoC" mod

### Framework
* Added `stalker_squads` table into `sim_board.script`
* Moved crit hit mark to the own `ui_actor_crit_hit_mark` texture
* Added `spot_descr` into `sim_squad_scripted.script`
* Added `get_nearest_game_vertex(target_position, target_level)` function into `utils.script`
* Added `dummy_object` into `system.ltx`
* Added `get_g_timer_left_time()` function into `jg_timers.script`
* Added `remove_task_squad(actor,npc,p)` function into `xr_effects.script`
* Added `DeadBodySearchClosed` callback into `axr_main.script`
* Added `IsSurvivalOrEocMode()` function into `_g.script`
* Added `release_item_by_parent(...)` function into `release_item_manager.script` to release item with NPC
* Added Real time manager - `realtime_manager.script`
* Added migration API - `get_migration_flag` and `set_migration_flag` funcs into `utils.script`
* Added `get_sim_dist_to` function into `utils.script` to find distance between two server objects
* Added `play_once` flag for sound channels to play them once

## [1.4.1] - 2024-05-06

### Features
* Added "The Final Checkpoint" into Fast Travel (Generators location)
* Real encoded stash description
* Added [Psy dog from build 1935](https://github.com/dancher743/stalker-coc-mods-compilation/pull/35)
* Restored campfire stories
* Balanced and a little reworked new game loadouts
* Added change language tutorial
* NPC can critically hit Actor. Also added "Crit hit from NPC" option to disable this feature
* Added "Crit hit from player" option
* Added "Show wound effects" and "Crit hit cam effect" options
* Campfire can slowly regenerate Actor's HP
* Reworked wind influence on campfire ignition
* Reworked stash's author text
* Reworked reward and penalty of Guider's job
* Included psysucker and psy controller into simulation

### Mods
* Psy dog from Build 1935 (Charsi, Ю Е Проскудин, Dancher)

### Improvements
* Balanced Survival mode's spawn tables
* Added `clear_guid` function into `jg_guider.script` to update a guider's job more often
* Refactored `leave_zone.script`
* Replaced radial sun texture with texture from Anomaly 1.5.1.2
* Simplified  `slow_save_count` if-nil statement
* Made `debug_only` param to `false` for `show_enemy_health` option
* Added sound for lootmoney tip from Anomaly 1.5.1.2
* Removed items messages when UI mutant loot window is enabled
* Added memory alloc optimization for cooking sound
* Revert sun removing from sections with `18-00-cloudy-light` sky texture
* Increased stash's tip time to 10 seconds
* Added sound for critical hit (with option)
* Refactored `actor_critical_hit.script`
* Added final save for Leave the Zone feature
* Corrected ghost zombie and civilian zombie names on the enemy health bar
* Optimized RAM allocations for `vector`s
* Optimized CPU and RAM usage in `disguise.script`
* Refactored function names in `disguise.script`
* Corrected `mil_smart_terrain_7_4` name in rus locale
* Replaced `backpack_ui` stash dialog window with `input_dialog_ui`
* Returned `utils.round` insted of `math.floor` for population factors
* Added title for fast travel map spot
* Added title for safe house map spot
* Corrected `prepare_follower` timer interval in `jg_guider.script`
* Corrected calls of GC

### Fixes
* Fixed texture color of the 1st, 2nd, 6th phases of the Moon
* Added missing `lod_trees_trees_kamysh1` texture from CoC 1.5 R6
* Added `ston_bricks4_bump` textures to fix fallback error appeared on Generators location
* Fixed UI mutant looting option
* Added `st_nothing_useful` message if mutant looting UI is disabled and loot is absent
* Сorrected text of price values
* Added `discovered_message` string into eng locale
* Added missing `sound_channels_dynamic` strings in `jupiter.ltx`, `pripyat.ltx` and `zaton.ltx`
* Added check on one guider's job per squad
* Corrected discoloring of white moon textures
* Fixed suspicion logic for dead stalkers in `disguise.script`
* Fixed `prepare_follower` timer interval in `jg_guider.script`
* Separated  `npc_in_squad` string of regular mode from EOC and Survival modes
* Added fixes for hostage companions

### Framework
* Added `on_game_first_load` callback into `axr_main.script`
* Added `pp_effector_manager.script`
* Reworked vector constants names, added `VEC_LEFT` and `VEC_BACK` constants
* Added `pick` and `pick_without` functions into `utils.script` to pick value from tables randomly
* Added `coords` command into `debug_cmd_list.script`
* Added `ui_generic_dialogs.xml` for generic dialogs
* Added `critical_hit_manager.script`
* Added `StartTimer` and `StopTimer` functions into `_g.script`
* Added `IsStalkerOnly` function into `_g.script`
* Added `STR_EMPTY` constant into `_g.script`
* Removed `sound_on_ambient_playing` callback from `axr_main.script`
* Added `strtransl` function into `_g.script`
* Added `actor_on_slicing_update` and `squad_on_slicing_update` callbacks into `axr_main.script`

## [1.4.0] - 2024-03-12

### Features

* Player can see a quest target's location
* Player can unload all weapons by pressing `K` button (by default)
* Player can put a custom spot on Map by pressing `J` button (by default)
* Player can leave the Zone. Try to find where the exit
* Player's hits can cause critical damage
* Big extension and fixing of the companions system
* New visual effect for low HP
* The player's PDA can shut down during a surge/psi storm. To fix that try a new feature - PDA Upgrades
* The player's PDA can show squads on map only after corresponding PDA upgrade
* No need to create a save manually (via Main menu). Try the Slow Saves feature: in the game, press the `F6` button (by default) and the save will be created automatically.
* Added [Installer](https://github.com/dancher743/stalker-coc-mods-compilation-installer) to help with installation of this compilation
* Big reworking of Survival mode to make it playable
* Sakharov can tell about when next surge and/or psi storm will be
* Added graphics presets from CoC 1.5 R6
* Added panoramas for clear weather
* Added ability generate name and nickname for a character separately from each other
* Restored moon phases 🌙
* Added "Unique NPC respawn" option for Extended population mode
* Reworked dynamic news messages
* Added radio music from Legend Returns 0.9.2
* Returned original Extended population mode options
* New companion died tips
* Reworked Companions List HUD
* Made bandits friends with Freedom faction like it was in S.T.A.L.K.E.R.: Shadow of Chernobyl
* Added ability to start dialog with Monolith's trader to join Monolith faction
* Added "move to point" item into Companions Quick Menu
* Reworked in-game time of level changing
* Added `0.1` value as a new population factor
* Added Campfire saving into Condition mode
* Added more informative stashes places
* Added campfire turning off during surges and psi storms
* Added patch slot on UI
* Added "Auto garbage collection" option

### Mods

* Target location for DrX Questlines (SpcDan)
* Unload All Weapons [1.4.22/1.5 R6] with adaptations (sLoPpYdOtBiGhOlE, Dancher)
* Rare Item Drops [CoC 1.4] (Fohom)
* SpecHUD – visual effect for low health with adaptations (Батька Ковцур, D_E_M_A_N, Dancher)
* PDA Off with reworking (FozeSt, Dancher)
* Slow saves (based on New saves by av661194) (Dancher)
* New voice for Fanatic [1.4.22/1.5b r6] (Kostov)
* AprilTaurus Fix for vanilla icons v3 (upgrade icons only) (AprilTaurus)
* Azazel Fixes: Keep Tasks and much more (RenanMsV, strelocc, sariskhan, Roll-and, Aruhito_0)
* Stalker Tweaks (SarisKhan)
* New crosshair (based on Dot crosshair by Kib) (Dancher)
* Grass from Advanced Vegetation mix 1.5r7 (Cromm Cruac, brainscorcher, gridgt, burguois, Anomaly and Dead Air creators)
* Put spot on Map (Dancher)
* Radio music from Legend Returns 0.9.2 (selectively) (Genies of the Zone Team)
* Leave the Zone (UI based on New saves by av661194) (Dancher)
* TRX: Global Weather (2.2) (Tronex)
* Critical Hit (Dancher)
* Animated detectors (selectively) (Alex_91zA)
* PDA Upgrades (Dancher)
* Next surge and/or psi storm dialog for Sakharov (Dancher)

### Improvements

* Balanced conserva drop chance in food configs
* Reworked clear weather
* Reworked lootmoney tip
* Corrected found stash tip
* Balanced costs of mutant parts (from CoC 1.5 R6)
* Included zombie mutant into simulation
* Added captions for bar guard pass
* Reworked crosshair
* Enabled panic and disabled infinite ammo
* Corrected text of Pripyat's start locations
* Added time to monolith prayers' logic
* Restored old algorithm of population, reworking usage of population factors to be more realistic
* Balanced `monolith_loadout` and removed `medkit` from `army_loadout`
* Corrected text of very low and very high options for Extended population mode
* Added title and changed color for custom stash
* Moved all custom keybinds from scripts into `axr_keybind.script`
* Returned original color for treasure spot
* Removed whisper ambient from Radar and Generators
* Added whisper ambient to Pripyat
* Added quote into Monolith's faction description
* Added combat mode for Actor for Extended population mode
* Reworked warfare control option usage
* Balanced disguise
* Reworked `npc_update_rate` in `disguise.script`
* Increased `discovery_distance` from 5m to 10m in `disguise.script`
* Added invulnerable icon on Companions List HUD
* Corrected text of `axr_phrase_actor_give_command` string
* Corrected UI of Companions Quick Menu
* Refactored update code of `disguise.script`
* Corrected text of gather items in loot corpses behavior
* Corrected points texts in Faction Select menu for RUS localization
* Added sleep bag and backpack into `new_game_loadouts.ltx`
* Added new smart covers (from CoC 1.5 R6)
* Made small refactoring in `loot_ui` class
* Added empty HUD message to hide previous nothing useful message
* Added Fanat and Wolf and `yan_smart_terrain_6_4` squads into `ignore` table of Extended population mode
* Refactored code placement of callbacks of Ironman mode
* Corrected HUD messages of Conditions mode
* Corrected Conditions mode items text on Faction Select menu
* Corrected text of `st_mm_ck_conditions_desc` for RUS localization
* Added new lines into Hardcore mode descriptions for ENG localization
* Added more ranks into `xr_eat_medkit.ltx`
* Reworked spending time on fast travel inside/outside levels
* Added color for zombied community
* Added nilling of singleton in `ui_pda_relations_tab.script`
* Changed default name on Faction Select menu
* Rebalanced outfit/helm conditions in `outfit_marauder.script`
* Removed extra code from `sim_brain.script`
* Made survival companions novices
* Rebalanced zombie
* Corrected `ui_mm_show_monsters_on_map` string
* Added mechanic spot for Kruglov
* Removed sun from sections with `18-00-cloudy-light` sky texture
* Added `zombied` into DrX's bounty hunt and assault tasks, but for Survival mode only
* Moved Debug Hud option under `DEV_DEBUG` var

### Fixes

* Added default bind for Companions Quick Menu
* Removed extra ":" symbol from hunt target talk message
* Restored lost `esc_fanat_greeting` and `esc_fanat_farewell` sections
* Fixed case when army characters left their smart terrains
* Fixed rain ambient and sounds
* Added `can_respawn` flag to stop native smart respawn when Extended population mode is enabled
* Integrated `actor_made_wish_for_peace` and `actor_made_wish_for_control` infos into `sim_squad.script`
* Fixed a large amount of monster phantoms
* Fixed black clouds during 09:00-16:00 time of clear weather
* Fixed usage of AXR's keybinds when `input_dialog_ui` is shown
* Included population factors into Extended population mode
* Taken into account disguise when quest giver died during DrX storyline tasks
* Added repairing from CoC 1.5 R6 to fix overreparing
* Added caption into suspicious tip
* Fixed wrong text of phrase in `dm_companion_leave` dialog
* Added missing reset of `companion_is_hostage` var in `axr_companions.script`
* Fixed `has_companion()` function in `axr_companions.script`
* Added workaround fix for `char_portrait` option to restore portraits on a different characters
* Set default value for `visited_message` option
* Added default value for `fast_travel` option if it's not found in `axr_config`
* Handled case when actor died but squad still following
* Changed some strings in RUS localization of Companions Quick Menu
* Added missing RUS localization into `ReportDeathByMutant` function
* Replaced script target with`axr_companions.companion_squads` check
* Fixed companions teleporting
* Enabled non-working `xr_eat_medkit.script`
* Restored Jupiter's bunker squads in `ignore` table for Extended population mode
* Fixed "CxIOFile::Open()" crash - changed wrong faction of Doctor's dog
* Removed extra `story_id`s from `esc_2_12_stalker_fanat_squad`
* Fixed white texture when random map selected
* Added `IsSurvivalMode` condition into angry stash owners reaction
* Removed `is_survival_mode_enabled` condition from `pri_monolith_smart_logic.ltx`
* Corrected `ls_tip_8` string in `ui_st_loadscreen.xml`
* Added guider job canceling if NPC become a companion
* Added not companion check into guider job assignment
* Added missing squads into `bar_visitors`smart for Extended population mode
* Added missing squads into `yan_smart_terrain_6_4` smart for Extended population mode
* Fixed loot case when mutant is decayed
* Fixed unused debug log in `configure_schemes` function of `xr_logic.script`
* Refactored debug message in `axr_companions.get_hours_with_companion` function
* Added `combat_ignore_cond` into `jup_b6_scientist_tech.ltx` logic
* Added missing monster squads spots descriptions
* Restored original algorithm of fill start position
* Excluded difficulty from `OnRandomize` function
* Added missing saving data of Ironman mode
* Excluded unreachable `bar_arena_inventory_box_2` box from stashes
* Fixed `CScriptGameObject : cannot check visibility of dead object!` error
* Added limitation into Survival mode's condition in `get_help_target_id` function (online squads only)
* Added Hermann stay in place fix from CoC 1.5 R6
* Added `force_hide` flag to hide a monsters doesn't have a target smart
* Fixed missing usage of `st_monster_names.xml`
* Fixed squads offline status after fast travel teleporting
* Fixed wrong `wpn_ak47` item name in  new game loadouts
* Added icon for bring item quest
* Handled no targets edge case in bounty hunt tasks

### Framework

* Added `ui_generic_dialogs.script` with generic input and confirm UI dialog windows
* Added `IsUndergroundLevel` function into `_g.script`
* Added `OnlineMonsters` table into `db.script`
* Added exclude stash mechanism - new section `ignore_boxes` in `coc_treasure_manager.ltx`
* Added API for working with options: `get_check_option` and `get_option` functions in `axr_main_options.script`
* Added `ui_axr_companions.script` to separate Companions List HUD's code from `axr_companions.script`
* Added `gc.script` to help with automatic garbage collection
* Added `force_hide` flag into `sim_squad_scripted.script`

## [1.3.1] - 2023-10-29

### Improvements
* Added default bind for Companions Quick Menu mod
* Added af3_all_cycles folder to separate sky textures of All AtmosFear 3 cycles for CoC mod

### Fixes
* Reworked usage of stalkers/monsters population factors in smarts

## [1.3.0] - 2023-10-12

### Features

* Neutral NPC from the same with player faction can be a companion
* Cooking a mutant parts on a campfire
* Rain and wind has influence on a campfire's burning duration and ignition
* Added dynamic relations factor list and bases defense options
* Can loot patches from a dead zombied stalkers
* Can loot outfit and/or helm from a dead stalker with low chance
* New character creation menu
* Can use disguise by using a patches
* Can buy Bar room and use it as safe-house
* New game modes: Agony, Timer and Extended population
* New sound ambient system from Anomaly 1.5.1.2
* New sound backgrounds on all levels
* Monster names are displayed on the health bar
* No description and encrypted strings as stash's descriptions
* Can create stash without adding a mapspot
* Added show monsters/stalkers on map options
* Skyboxes with panarams for clear weather
* Сhaning character's name during a game

### Mods

* Companions Quick Menu 1.1 [UPDATE August 8] [CoC 1.5 r4] (Debrovski)
* Cooking the mutants parts (Team Epic, Anomaly Developers, Dancher)
* Added matches sound for campfires ignition from NLC 7 (Сяк & Co)
* TRX: Fresh Start (1.4) with adaptations (Tronex, Dancher)
* Better New Game Loadouts for TRX-Fresh Start 1.4 + AO 3.1 | CoC 1.4.22 with reworking (mithriak, Dancher)
* Russificator for TRX: Fresh Start (1.4) with adaptations (GhostWarrior98, Dancher)
* Patches Infiltration Addon (SarisKhan, Dancher)
* Bar room as safe-house (Dancher)
* Outfit loot CoC 1 4 22 v2 with reworking (av661194, Dancher)
* CoC Extended Offline (EOC) Lite 1.7.6 + dynamic faction relations (xr_Sanya)
* Clear Sky's graphics presets from CoP and CS atmosphere for CoC v1.1 [CoC 1.4.22] (Sanctuary)
* Pre-Blowout Murder Addon [CoC 1.4.22] (Ethylia, adapted by Misery)
* Flashlight sound for vanilla CoC (Grelka)
* Classic SoC Flashlight for CoC with Dancher's changes (default white light) (Shovelled, Dancher)
* Clear weather from All AtmosFear 3 cycles for CoC (owdred)

### Improvements

* Added `option` for fast travel when actor is a guide
* Added PDA keybind group
* Added "Mod of the Year 2015" logo into main menu
* Added matches sound for campfire ignition
* Changed additional chance to reduce weapon's condition on 20% from 25 to 75
* Included zombied stalkers into weapon's condition calculation in `death_manager.script`
* Included zombied stalkers to rule "10% chance to set weapon's condition to 100%"
* Added additional description for patches from Anomaly 1.5.1.2
* Added new news about patches lottery into `st_dynamic_news.xml`
* Added smart reaction of angry stash owners in news
* Changed `default` values of `generic_death_news` and `stash_news` options from `false` to `true`
* Corrected text of `ui_mm_dynamic_relations_factor` string in RUS localization
* Added `25` value into `dynamic_relations_factor` gameplay option list
* Added tip when all guider's companions are killed
* Corrected `ui_st_jg_squad_killed` string
* Corrected Lor's models with `helm_m40`
* Corrected `zat_a2_stalker_mechanic_sell_gauss_ammo_4` string
* Corrected quicksave count options text in RUS localization
* Corrected `ui_mm_fast_travel` string
* Changed default value of `dynamic_relations_factor` option
* Corrected `ui_mm_dynamic_relations_factor` string in RUS localization
* Included `merc_patch` in the lottery
* Replaced stalker's exo outfit camo textures by SoC variant
* No description and encrypted strings as stash's decsriptions
* Corrected names of start locations in RUS localization

### Fixes

* Changed position of companions list HUD and artefacts slots icons to not overlap player status icons
* Fixed appearing of artefacts slots icons on HUD  when weapon's scope zooming
* Added missing localizations for special monsters from CoC 1.5b r6
* Added missing textures from CoC 1.5b r6
* Fixed invalid ogg-comment version/missing ogg-comment errors
* Fixed mixed up localization `st_red_smart_terrain_4_5_anomaly_spot_name` and `red_smart_terrain_6_3`
* Handled "unknown" community in dynamic news
* Fixed prevent fast travel if actor is guide
* Fixed dynamic relations for EOC when a squad was killed by another squad
* Added removal of NPC from companions if actor has become an enemy
* Fixed missed Duty's patches in patches lottery
* Excluded all faction patches from selling section of Merc's trader
* Fixed missing `25` value of `stalker_pop_factor` and `monster_pop_factor` in `smart_terrain.script`
* Fixed `outfit_portrait` option
* Added `ui_inGame2_Strelok` into `stalker_portraits`
* Fixed suddenly stop of `spot_discovered` sound
* Added hunt target talk message into hunt functions
* Fixed adding of `inv_backpack`'s mapspot
* Fixed `inv_backpack`'s hud messages
* Added `IsInvalidMap` function into ignore chance of angry stash owners
* Added `companion_is_hostage` var to exclude a companion hostage from companions list HUD
* Replaced base defense quests with quests from CoC 1.5
* Handled case when ways are absent in `jg_gps.script`
* Fixed wrong description of `drx_sl_quest_item_3` item

### Framework

* Added `on_game_unload` callback when Game started loading
* Added `reset` method into `sim_squad_scripted` class
* Added `companion_is_hostage` infoportion
* Added `flashlight.script` with additional function for flashlight
* Added a new function `get_parent_section(section)` in `utils.script` to know which `section` has `parent_section`
* Added a new `actor_on_awoke_after_sleeping` callback to catch actor's awaking after sleep
* Added a new function `get_parent_section(section)` in `utils.script` to handle case when need to know which `parent_section` has some `section`
* Extended `fast_travel.script` to be able to add fast travel's menu property to any map spot
* Added a new system from Anomaly 1.5.1.2 - `sound_ambient.script` to emulate sounds ambients
* Added a new function `get_curr_ambient()` into `WeatherManager`  to know which ambient is currently being used
* Added a new callback `sound_on_ambient_playing` into `axr_main.script` to catch playing ambient sound
* Added 3 new `inverse_lerp`, `contains` and `get_hours_elapsed` functions into `utils`
* Added `ui_generic_dialogs.script` with a first dialog window inside - `input_dialog_ui`

## [1.2.1] - 2022-12-24

#### Fixes
* Fixed wrong chance to show a reaction of angry stash owner in news
* Changed text of `ui_mm_visited_message` string  to make it more understandable for player in rus localization
* Fixed wrong usage of `ignore_torch_flag` when stalker in danger mode
* Corrected text of `st_val_q5_n_descr` and `st_agr_q6_n_descr` strings in `st_treasures.xml`

#### Improvements
* Added additional keys for [mutant's loot window](https://www.moddb.com/mods/call-of-chernobyl/addons/ui-mutant-looting-coc-1-4-22): `Q` for take all, `E` for close window

## [1.2.0] - 2022-12-10

#### Mods
* Added a few sounds from Original Sound Effects for Call of Chernobyl mod (Panzermann11)
* Added Level changers for CoC 1 4 22 mod (av661194)
* Added Zombie Headlamp ON 1.5r7 mod (jeredy_hothead)
* Added mod Rank-based weapon condition drops (1.4.22) (Wafel)
* Added Faction Uniform Patches Lottery mod from Anomaly 1.5.1.2 (Anomaly Developers, MLR team)
* Added mod DoctorX Dynamic Anomalies 2.1 (DoctorX)
* Added mod NPC's vision thru vegetation fix (EmSobac)
* Added gauss ammo exchange dialog from Mutantum v 2.2 mod (sunxshilo)

#### Fixes
* Fixed wrong icons position of slot artefacts
* Fixed long text of `ui_mm_visited_message` string in rus localization

#### Improvements
* Added 10% chance to set weapon's condition to 100%
* Added 20% chance to reduce weapon's condition on 20%
* Zombies turn off a torches with 50% of chances

## [1.1.1] - 2022-09-21

#### Fixes
* Added missing localization for helicopter on enemy healthbar
* Fixed extra dots in text of emission/psi-storm message
* Added "actor is alive" condition for showing of Companions List HUD

## [1.1.0] - 2022-07-29

#### Mods
* Lor's models v2.5 (Grelka)
* LootMoney Vanilla CoC 1.4.22/1.5R6 (tsěsarĭ, RenanMsV)
* S.W.T.C Call of Chernobyl - Advanced + FIX 1.1 (exDeMODER)
* UI mutant looting CoC 1.4.22 (av661194, Nik71rus)
* Full Simulation A-Life (Aktuarus)
* Companions can Sprint (Sanctuary/Revo Lucas)
* Companions List HUD from Anomaly 1.5.1.2 (Anomaly Developers)
* A few 1.5 small fixes for 1.4.22 (nb79)
* Fix emission and psy storm CoC 1.4.22 (av661194)
* Fix buggy guard in the Rookie Village (av661194)
* Return sounds of the death (av661194)
* Ignite or Extinguish Campfires [1.4.22] (Alundaio)
* Jobs guide [Update4.2][1.4.22] (SadBlackFox)
* Changes of Chernobyl (selectively) (Xynta2137)
* Sound Restoration 3.2 (Balathruin)
* DoctorX Questlines 1.25 [CoC 1.4.22] (DoctorX)
* DoctorX Dynamic Faction Relations 1.8 [1.4.22] (DoctorX)

## [1.0.0] - 2021-07-30

#### Mods
1. Original Item Models and Icons (Panzermann11)
2. Lor's models v2.5 (Grelka)
3. Displaying units like in Clear Sky, squads on the pda map v2 (av661194, turoff82)
4. Stashes from SOC and CS (av661194)
5. CoP HUD for CoC (PapaliPapali)
6. Fast Travel (Fanzanzza)
7. Dynamic News Revamp (4.3) (Tronex)
8. S.W.T.C Call of Chernobyl Advanced (exDeMODER)
9. PDA lag fix for 1.4.22 (Sanctuary)
10. Quest Items Remove v1.1 (zon3r)
11. Full Simulation A-Life (Aktuarus)
12. Voice Fixes 1.0.3 (SashaRed)
13. More Fast Travel Locations v15 (Yarmoshuk)
14. Informative Messages of Stashes (Dancher)
