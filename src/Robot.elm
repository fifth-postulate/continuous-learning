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

