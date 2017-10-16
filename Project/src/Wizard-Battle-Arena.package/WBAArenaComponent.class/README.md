My subclasses are all the components in the arena while the game is playing. The arena is a two dimentional array of cells, each cell holding informaiton to be displayed.

shift <Point> distance to shift the sprite from cell top left corner while rendering
negatedShift <Point> shift negated. Stored because 30% of rendering time was spent negating the shift.