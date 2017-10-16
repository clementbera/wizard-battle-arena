2 schedulers with specific roles to avoid the usage of too many blocks in the game.

Two main processes + events:

renderingProcess <Process> renders the arena on screen. At priority 30.

gameProcess <Process> move the position of the sprites every tick. At priority 35.

Development events At priority 40.

User event (key pressed) At priority 60.