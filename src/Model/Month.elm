module Model.Month exposing (Month)

import Model.Day exposing (Day)

type alias Month =
    { n: Int
    , days: List Day
    }
