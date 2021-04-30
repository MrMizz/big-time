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
            [ Html.h1
                [ class "title is-4"
                ]
                [ Html.text "contact"
                ]
            , body
            ]
        ]

body: Html Msg
body =
    Html.nav
        [ class "is-size-6"
        ]
        [ Html.div
            []
            [ Html.a
                [ class "icon"
                , href "mailto:bigtimetapin@gmail.com"
                , target "_blank"
                ]
                [ Html.i
                    [ class "far fa-envelope has-text-info"
                    ]
                    [ Html.text "email"
                    ]
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
                    [ class "far fa-at has-text-info"
                    ]
                    [ Html.text "insta"
                    ]
                ]
            ]
        ]
