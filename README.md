###**BATTLESHIPS**

Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.

After each player has placed their ships on their own board they take turns to shoot on the opponents board. In each round, each player takes a turn to announce a target square in the opponent's grid which is to be shot at. The opponent announces whether or not the square is occupied by a ship, and if it is a hit they mark this on their own primary grid. The attacking player notes the hit or miss on their own tracking grid, in order to build up a picture of the opponent's fleet.

When all of one player's ships have been hit the game finishes and the player who has ships remaining is the winner.


#####Makers Academy Week 2 Project 
         Huy Le & Jack Rubio


**Class Responsibility Collaborations**
***************************************

##class User

| RESPONSIBILITIES       | COLLABORATORS  |
|------------------------|----------------|
| take turns to fire     |                |
| place ships            | Ship, Grid     |
|                        |                |

##class Grid

| RESPONSIBILITIES       | COLLABORATORS  |
|------------------------|----------------|
| create two grids       | Cell, ship     |

##class Ship

| RESPONSIBILITIES       | COLLABORATORS  |
|------------------------|----------------|
| knows when hit         | Cell           |
| knows location         | Grid           |
| knows when sunk        | Grid           |
| knows its size         |                |

##class Cell

| RESPONSIBILITIES       | COLLABORATORS  |
|------------------------|----------------|
| knows if contains ship | Ship           |
| shots (hit/miss)       | User/Grid/Ship |
| Allow ship placement   | User/Grid/Ship |

##class GameEngine

| RESPONSIBILITIES       | COLLABORATORS  |
|------------------------|----------------|
| knows when ship hit    | Ship           |
| create players         | User           |
| knows when shot miss   | Grid           |
| starts game            |                |
| ends game              |                |
| aware of ship count    |                |

