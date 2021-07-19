module View.Playlists.Playlists exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, height, src, style)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    let
        embed : String -> Html Msg
        embed url =
            Html.div
                [ class "column is-6"
                ]
                [ Html.iframe
                    [ src url
                    , style "width" "100%"
                    , height 380
                    , style "frameBorder" "0"
                    , style "allowtransparency" "true"
                    , style "allow" "encrypted-media"
                    ]
                    []
                ]

        one : Html Msg
        one =
            embed "https://open.spotify.com/embed/playlist/754yiFuN0kJCIfPAvbOnMU?theme=0"

        two : Html Msg
        two =
            embed "https://open.spotify.com/embed/playlist/38OnMQrMkmJbkUS9Z8xdJq"

        three : Html Msg
        three =
            embed "https://open.spotify.com/embed/playlist/006vvJAdRvQsHq0PHQSGHK"

        html =
            Html.div
                [ class "columns is-multiline"
                ]
                [ one
                , two
                , three
                ]
    in
    Html.div
        [ class "container has-text-centered"
        ]
        [ html
        ]
