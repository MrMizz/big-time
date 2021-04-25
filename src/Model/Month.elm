module Model.Month exposing (Month)

import Model.Week exposing (Week)


type alias Month =
    { first : Week
    , second : Week
    , third : Week
    , fourth : Week
    , fifth : Week
    , sixth : Week
    }
