module View.Cal.Next exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)


view : Html msg
view =
    Html.span
        [ class "icon"
        ]
        [ Html.i
            [ class "fas fa-arrow-right"
            ]
            []
        ]
