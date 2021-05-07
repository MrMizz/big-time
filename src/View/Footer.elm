module View.Footer exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Msg.Msg exposing (Msg)


view : Html Msg
view =
    Html.footer
        [ class "footer has-background-white-ter"
        ]
        [ Html.div
            [ class "content has-text-centered"
            ]
            [ Html.h3
                [ class "subtitle is-5"
                ]
                [ Html.text "contact"
                ]
            , body
            ]
        ]


body : Html Msg
body =
    Html.nav
        [ class "is-size-6 is-pulled-right"
        ]
        [ Html.div
            []
            [ Html.a
                [ class "icon"
                , href "mailto:bigtimetapin@gmail.com"
                , target "_blank"
                ]
                [ Html.i
                    [ class "far fa-envelope"
                    ]
                    []
                ]
            ]
        , Html.div
            [ class "mt-5"
            ]
            [ Html.a
                [ class "icon"
                , href "https://www.instagram.com/the.tap.in/"
                , target "_blank"
                ]
                [ Html.i
                    [ class "fab fa-instagram"
                    ]
                    []
                ]
            ]
        ]
