module View.Cal.Cal exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Cal.Month
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ View.Cal.Month.view
        ]
