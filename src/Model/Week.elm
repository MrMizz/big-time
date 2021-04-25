module Model.Week exposing (Week, empty)

import Model.Day exposing (Day)


type alias Week =
    { sunday : Maybe Day
    , monday : Maybe Day
    , tuesday : Maybe Day
    , wednesday : Maybe Day
    , thursday : Maybe Day
    , friday : Maybe Day
    , saturday : Maybe Day
    }


empty : Week
empty =
    Week
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing
