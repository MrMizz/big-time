module View.Cal.Month exposing (view)

import Html exposing (Html)
import Model.Month exposing (Month)
import Msg.Msg exposing (Msg)
import View.Cal.Week


view : Month -> Html Msg
view month =
    Html.div
        []
        [ View.Cal.Week.view month.first
        , View.Cal.Week.view month.second
        , View.Cal.Week.view month.third
        , View.Cal.Week.view month.fourth
        , View.Cal.Week.view month.fifth
        , View.Cal.Week.view month.sixth
        ]
