# AzerothCore Challenge Modes
Challenge Modes Module for AzerothCore

This module adds the following challenge modes:

- **Hardcore** - Players who die are permanently ghosts and can never be revived.
- **Semi-Hardcore** - Players who die lose all worn equipment and carried gold.
- **Self Crafted** - Players can only wear equipment that they have crafted.
- **Item Quality Level** - Players can only wear equipment that is of Normal or Poor quality.
- **Slow XP Gain** - Players receive 0.5x the normal amount of XP.
- **Very Slow XP Gain** - Players receive 0.25x the normal amount of XP.
- **Quest XP Only** - Players can receive XP only from quests.
- **Iron Man Mode** - Enforces the [Iron Man Ruleset](https://wowchallenges.com/challangeinfo/iron-man/)

Challenges can be activated per-character by interacting with the Shrine of Challenge added near the graveyard of each starting area.
Challenges can only be enabled on characters at level 1 (or level 55 for Death Knights).

Multiple challenges can be activated on a single character as long as they do not conflict, such as Hardcore and Semi-Hardcore.

Rewards for reaching level thresholds for each challenge can be added using the Config file, and can include:
- Items
- Titles
- Talent Points
- Increased XP Rate

Please note that this module uses Player Settings to store enabled challenges, so please ensure EnablePlayerSettings is set to 1 in your worldserver.conf.

## Required Assets
To see the custom icons and visuals, you must download the patch-V.mpq file from the Releases tab of this repository and place it in your WoW client's Data folder.

## How to Install

### 1. Add the Module to your Server
Open your terminal or command prompt, navigate to your AzerothCore directory, and clone this module into the modules folder:

    cd ~/azerothcore-wotlk/modules/
    git clone https://github.com/copperpocket/mod-challenge-modes.git

### 2. Compile the Server
Once the files are downloaded, you must re-compile your server so it recognizes the new module. Navigate to your build folder and run your build command:

    cd ~/azerothcore-wotlk/build/
    cmake ../ -DCMAKE_INSTALL_PREFIX=../env/dist/ -DCONF_DIR=../env/dist/etc/
    make -j$(nproc)
    make install

*(Note: If you are on Windows or use a different build method, perform the same steps you used to build your server initially.)*

### 3. Install the Client Patch
1. Go to the Releases section on the right side of this GitHub page and download patch-V.mpq.
2. Move this file into your WoW Client's Data directory.
   - Example path: /YourWoWFolder/Data/patch-V.mpq
   - Example for ChromieCraft users: /ChromieCraft_3.3.5a/Data/patch-V.mpq
3. Restart your game client to see the changes.
