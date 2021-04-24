module Model.Day exposing (Day)

import Model.Moment exposing (Moment)

type alias Day =
    { moments : List Moment
    }
