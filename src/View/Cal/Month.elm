module View.Cal.Month exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)

view: Html Msg
view =
    body

body : Html Msg
body =
    Html.div
        []
        [ week
        , week
        , week
        , week
        ]

week: Html Msg
week =
    Html.div
        [ class "columns is-centered is-mobile"
        ]
        [ day
        , day
        , day
        , day
        , day
        , day
        , day
        ]

day: Html Msg
day =
    Html.div
        [ class "column"
        ]
        [ Html.div
            [ class "has-text-centered has-border-2 my-6"
            ]
            [ Html.text "Day"
            ]
        ]
