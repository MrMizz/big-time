module Model.Moment exposing (Moment)

import Model.Category exposing (Category)


type alias Moment =
    { url : String
    , caption : Maybe String
    , categories : List Category
    }
