module View.Cal.Cal exposing (view)

import Data.Cal.TwentyOne.May.May
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
        [ View.Cal.Month.view Data.Cal.TwentyOne.May.May.month
        ]
