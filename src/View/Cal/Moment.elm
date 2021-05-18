module View.Cal.Moment exposing (expanded, view)

import Html exposing (Html)
import Html.Attributes exposing (class, src)
import Model.Category as Category exposing (Category)
import Model.Moment exposing (Moment)
import Msg.Msg exposing (Msg)


view : Moment -> Html Msg
view moment =
    Html.div
        []
        [ Html.figure
            [ class "image"
            ]
            [ Html.img
                [ src moment.url
                ]
                []
            ]
        ]


expanded : Moment -> Html Msg
expanded moment =
    Html.div
        []
        [ Html.figure
            [ class "image"
            ]
            [ categories moment.categories
            , Html.img
                [ src moment.url
                ]
                []
            ]
        ]


categories : List Category -> Html Msg
categories arg =
    let
        category : Category -> Html Msg
        category c =
            Html.span
                [ class "tag is-light"
                ]
                [ Html.text (Category.toString c)
                ]
    in
    Html.div
        [ class "tags are-large categories"
        ]
        (List.map category arg)
