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


update : Message -> Robot -> Robot
update message robot =
    case message of
        Step ->
            step robot

        Turn direction ->
            case direction of
                Clockwise ->
                    clockwise robot

                AntiClockwise ->
                    antiClockwise robot


step : Robot -> Robot
step robot =
    { robot | position = towards robot.heading robot.position }


towards : Heading -> Point -> Point
towards heading ({ x, y } as point) =
    case heading of
        North ->
            { point | y = y + 1 }

        West ->
            { point | x = x - 1 }

        South ->
            { point | y = y - 1 }

        East ->
            { point | x = x + 1 }


clockwise : Robot -> Robot
clockwise robot =
    { robot | heading = left robot.heading }


left : Heading -> Heading
left heading =
    case heading of
        North ->
            West

        West ->
            South

        South ->
            East

        East ->
            North


antiClockwise : Robot -> Robot
antiClockwise robot =
    { robot | heading = right robot.heading }


right : Heading -> Heading
right heading =
    case heading of
        North ->
            East

        West ->
            North

        South ->
            West

        East ->
            South
