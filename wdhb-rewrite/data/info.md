# Namespaces

- `minecraft`: Used for tick and load
- `wdhb`: The engine so to speak, contains weapon abilities and core mechanics
- `wdhb_snd`/`wdhb_duel`/`wdhb_ffa`: Anything that has to do specifically with those gamemodes (specific world locations)

# Folders (wdhb)

- `actions`: Both used automatically (if working as intended) or as a debug tool to force certain actions



# Scoreboard System Tradeoffs

System data can be tracked on the scoreboard in one of two ways: System as an objective or System as a player.

## System as an objective

Pros
- One objective for all system-related stuff
- Easily debug all variables on the sidebar

Cons
- You will create a bunch of fake scoreboard players
	- But then again, with enough players, the players list will be cluttered anyway
	- Plus, you can namespace fake players, such as `cqLobby`
- Very unintuitive checks, e.g. `execute if score lobby system matches 1`

## System as a player

Pros
- One fake player for all system-related stuff

Cons
- Need to create a bunch of objectives; unlike fake players, you must manually declare objectives, and if they're not defined, your system will break



# The Core

Combat is centered around different classes with their own abilities. To activate a class, simply set your `class` objective.

# Conventions/Maintenance

- Scoreboard player of `systemSnd` for example.
- Do not reset, set to 0 instead. That way you know what's being used.

# Special Objectives

Unless otherwise listed, it's a `dummy`.
- `command`: Triggers

# Special Tags

camelCase is for automated tags, non-camelCase is manual tags.
- `admin`: Can use negative command integers for administrative commands



# Rogue

Class focused on mobility, sacrificing health and defense, basically a glass cannon.
- RClick: Dash -> Wind Sweep -> Sky Strike -> Sky Strike 2
- Offhand & Drop: Leave a marker behind to teleport back to
- Sneak: Smoke bomb, sneak extra fast for a short bit

# Mage

Class focused on a wide variety of ranged options.
- Sneak: Regenerate Mana
- Offhand: Cast Burst Spell
- RClick: Cast Continuous Spell
- Drop: Switch Mode

# Paladin

Class focused on crowd control and debuffs, with a defensive flair.
- : Temporarily grants a massive buff to offense and defense, perfect for battles.
- : Intimidate (slows nearby enemies) -> Bone Breaker (stuns and disarms marked enemies)
- : Slam - Jumps into the air and then explodes
- Sneak: Initiates no knockback shielded state, explodes once released

# Ranger

Class focused on healing and bows/crossbows.
- : Draws an arrow with a random effect (poison, blindness)
- : Dash
- : Places a healing area
- Passive: Focused shot every 3 shots
