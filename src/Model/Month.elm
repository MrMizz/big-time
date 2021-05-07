module Model.Month exposing (Month, empty)

import Model.Week as Week exposing (Week)


type alias Month =
    { first : Week
    , second : Week
    , third : Week
    , fourth : Week
    , fifth : Week
    , sixth : Week
    }

empty: Month
empty =
    Month
        Week.empty
        Week.empty
        Week.empty
        Week.empty
        Week.empty
        Week.empty
