module View.About.About exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, style, target)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    let
        style1 html =
            Html.div
                [ style "margin-bottom" "150px"
                ]
                [ html
                ]

        one =
            style1 (Html.text "hi there")

        two =
            style1 (Html.text "welcome to the.tap.in")

        three =
            style1
                (Html.p
                    []
                    [ Html.a
                        [ href "https://github.com/MrMizz"
                        , target "_blank"
                        ]
                        [ Html.text "alex's"
                        ]
                    , Html.text " personal website"
                    ]
                )

        four =
            style1 (Html.text "currently a photo blog in calendar format")
    in
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "has-text-centered"
            ]
            [ one
            , two
            , three
            , four
            ]
        ]
