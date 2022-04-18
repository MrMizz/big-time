module View.Resume.Resume exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Hero

view : Html Msg
view =
    View.Hero.view body

body : Html Msg
body =
    Html.div
        [ class "container is-family-secondary has-border-2 pop"
        ]
        [ Html.div
            [ class "pl-2"
            ]
            [ Html.text
                """Work Experience
                """
            ]
        ]
