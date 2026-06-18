# Mod-Challenge-Modes v0.1.0

This module adds a suite of custom challenge modes to the server.

## Contents
* **Server Logic:** Complete module source code for handling challenge mode triggers and logic.
* **Visuals & DBCs:** Custom icons and database entries for challenge mode selection.

## How to Play
Challenges can be activated per-character by interacting with the **Shrine of Challenge** located near the graveyard of each starting area.

* **Requirements:** Challenges can only be enabled on characters at level 1 (or level 55 for Death Knights).
* **Stacking:** Multiple challenges can be activated on a single character as long as they do not conflict (e.g., Hardcore and Semi-Hardcore).
* **Configuration:** Please ensure `EnablePlayerSettings` is set to `1` in your `worldserver.conf` file, as this module uses Player Settings to store enabled challenges.

### Available Modes (Config Order)
1. **Hardcore:** Players who die are permanently ghosts and can never be revived.
2. **Semi-Hardcore:** Players who die lose all worn equipment and carried gold.
3. **Self Crafted:** Players can only wear equipment that they have crafted.
4. **Item Quality Level:** Players can only wear equipment that is of Normal or Poor quality.
5. **Slow XP Gain:** XP rates reduced to 0.5x.
6. **Very Slow XP Gain:** XP rates reduced to 0.25x.
7. **Quest XP Only:** XP can only be earned from quests.
8. **Iron Man Mode:** Enforces the full Iron Man ruleset.

## Required Assets
To see the custom icons and visuals, you **must** download the `patch-V.mpq` file from the **Releases** tab of this repository and place it in your WoW client's `Data` folder.

## How to Install

### 1. Add the Module to your Server
Open your terminal or command prompt, navigate to your AzerothCore directory, and clone this module into the `modules` folder:

```bash
# Navigate to your AzerothCore modules directory
cd ~/azerothcore-wotlk/modules/

# Clone this repository
git clone [https://github.com/copperpocket/mod-challenge-modes.git](https://github.com/copperpocket/mod-challenge-modes.git)
