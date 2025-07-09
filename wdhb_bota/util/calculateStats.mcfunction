#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Barbarian Play Rate] ##
scoreboard players operation PH barbarianGames = Stats barbarianGames
scoreboard players operation PH barbarianGames *= 100 totalGames
scoreboard players operation PH barbarianGames /= Stats totalGames
scoreboard players operation PHdec barbarianGames = Stats barbarianGames
scoreboard players operation PHdec barbarianGames *= 10000 totalGames
scoreboard players operation PHdec barbarianGames /= Stats totalGames
scoreboard players operation PH2 barbarianGames = PH barbarianGames
scoreboard players operation PH2 barbarianGames *= 100 totalGames
scoreboard players operation PHdec barbarianGames -= PH2 barbarianGames

## [Barbarian Win Rate] ##
scoreboard players operation PH barbarianWins = Stats barbarianWins
scoreboard players operation PH barbarianWins *= 100 totalGames
scoreboard players operation PH barbarianWins /= Stats barbarianGames
scoreboard players operation PHdec barbarianWins = Stats barbarianWins
scoreboard players operation PHdec barbarianWins *= 10000 totalGames
scoreboard players operation PHdec barbarianWins /= Stats barbarianGames
scoreboard players operation PH2 barbarianWins = PH barbarianWins
scoreboard players operation PH2 barbarianWins *= 100 totalGames
scoreboard players operation PHdec barbarianWins -= PH2 barbarianWins

## [Hunter Play Rate] ##
scoreboard players operation PH hunterGames = Stats hunterGames
scoreboard players operation PH hunterGames *= 100 totalGames
scoreboard players operation PH hunterGames /= Stats totalGames
scoreboard players operation PHdec hunterGames = Stats hunterGames
scoreboard players operation PHdec hunterGames *= 10000 totalGames
scoreboard players operation PHdec hunterGames /= Stats totalGames
scoreboard players operation PH2 hunterGames = PH hunterGames
scoreboard players operation PH2 hunterGames *= 100 totalGames
scoreboard players operation PHdec hunterGames -= PH2 hunterGames

## [Hunter Win Rate] ##
scoreboard players operation PH hunterWins = Stats hunterWins
scoreboard players operation PH hunterWins *= 100 totalGames
scoreboard players operation PH hunterWins /= Stats hunterGames
scoreboard players operation PHdec hunterWins = Stats hunterWins
scoreboard players operation PHdec hunterWins *= 10000 totalGames
scoreboard players operation PHdec hunterWins /= Stats hunterGames
scoreboard players operation PH2 hunterWins = PH hunterWins
scoreboard players operation PH2 hunterWins *= 100 totalGames
scoreboard players operation PHdec hunterWins -= PH2 hunterWins

## [Warlock Play Rate] ##
scoreboard players operation PH warlockGames = Stats warlockGames
scoreboard players operation PH warlockGames *= 100 totalGames
scoreboard players operation PH warlockGames /= Stats totalGames
scoreboard players operation PHdec warlockGames = Stats warlockGames
scoreboard players operation PHdec warlockGames *= 10000 totalGames
scoreboard players operation PHdec warlockGames /= Stats totalGames
scoreboard players operation PH2 warlockGames = PH warlockGames
scoreboard players operation PH2 warlockGames *= 100 totalGames
scoreboard players operation PHdec warlockGames -= PH2 warlockGames

## [Warlock Win Rate] ##
scoreboard players operation PH warlockWins = Stats warlockWins
scoreboard players operation PH warlockWins *= 100 totalGames
scoreboard players operation PH warlockWins /= Stats warlockGames
scoreboard players operation PHdec warlockWins = Stats warlockWins
scoreboard players operation PHdec warlockWins *= 10000 totalGames
scoreboard players operation PHdec warlockWins /= Stats warlockGames
scoreboard players operation PH2 warlockWins = PH warlockWins
scoreboard players operation PH2 warlockWins *= 100 totalGames
scoreboard players operation PHdec warlockWins -= PH2 warlockWins

## [Rogue Play Rate] ##
scoreboard players operation PH rogueGames = Stats rogueGames
scoreboard players operation PH rogueGames *= 100 totalGames
scoreboard players operation PH rogueGames /= Stats totalGames
scoreboard players operation PHdec rogueGames = Stats rogueGames
scoreboard players operation PHdec rogueGames *= 10000 totalGames
scoreboard players operation PHdec rogueGames /= Stats totalGames
scoreboard players operation PH2 rogueGames = PH rogueGames
scoreboard players operation PH2 rogueGames *= 100 totalGames
scoreboard players operation PHdec rogueGames -= PH2 rogueGames

## [Rogue Win Rate] ##
scoreboard players operation PH rogueWins = Stats rogueWins
scoreboard players operation PH rogueWins *= 100 totalGames
scoreboard players operation PH rogueWins /= Stats rogueGames
scoreboard players operation PHdec rogueWins = Stats rogueWins
scoreboard players operation PHdec rogueWins *= 10000 totalGames
scoreboard players operation PHdec rogueWins /= Stats rogueGames
scoreboard players operation PH2 rogueWins = PH rogueWins
scoreboard players operation PH2 rogueWins *= 100 totalGames
scoreboard players operation PHdec rogueWins -= PH2 rogueWins