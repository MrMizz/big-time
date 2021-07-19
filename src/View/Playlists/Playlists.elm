module View.Playlists.Playlists exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    let
        html =
            Html.div
                [ class "has-text-centered"
                ]
                [ Html.text "Playlists"
                ]
    in
    Html.div
        [ class "container"
        ]
        [ html
        ]
