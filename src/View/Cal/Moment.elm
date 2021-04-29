module View.Cal.Moment exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src)
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
