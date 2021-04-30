module View.Header exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


view : Html Msg
view =
    Html.nav
        [ class "level has-background-white-bis"
        ]
        [ Html.div
            [ class "level-left"
            ]
            [ Html.div
                [ class "level-item"
                ]
                [ Html.div
                    [ class "tabs is-boxed is-medium has-border-1"
                    ]
                    [ Html.ul
                        []
                        [ Html.li
                            []
                            [ Html.a
                                [ State.href About
                                ]
                                [ Html.text "about"
                                ]
                            ]
                        , Html.li
                            []
                            [ Html.a
                                [ State.href Cal
                                ]
                                [ Html.text "blog"
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
