module View.Cal.Month exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Month exposing (Month)
import Msg.Msg exposing (Msg)
import View.Cal.Week


view : Month -> Html Msg
view month =
    Html.div
        []
        [ header month
        , View.Cal.Week.view month.first
        , View.Cal.Week.view month.second
        , View.Cal.Week.view month.third
        , View.Cal.Week.view month.fourth
        , View.Cal.Week.view month.fifth
        , View.Cal.Week.view month.sixth
        ]

header: Month -> Html Msg
header month =
    Html.h1
        [ class "title is-4"
        ]
        [ Html.text month.name
        ]
