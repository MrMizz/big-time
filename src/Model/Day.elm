module Model.Day exposing (Day)

import Model.Moment exposing (Moment)


type alias Day =
    { ofMonth : Int
    , moments : List Moment
    }
