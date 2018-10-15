module Robot exposing (..)

-- Model


type alias Robot =
    { position : Point
    , heading : Heading
    }


type alias Point =
    { x : Int
    , y : Int
    }


type Heading
    = North
    | West
    | South
    | East



-- Update


type Message
    = Step
    | Turn Direction


type Direction
    = Clockwise
    | AntiClockwise
