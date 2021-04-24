module Model.Moment exposing (Moment)

import Model.Category exposing (Category)

type alias Moment =
    { url: String
    , description: String
    , categories: List Category
    }
