module View.Cal.DayOfMonth exposing (view)

import Html exposing (Attribute, Html)
import Html.Attributes exposing (class)
import Model.Day exposing (Day)
import Model.DayOfWeek as DayOfWeek exposing (DayOfWeek)
import Msg.Msg exposing (Msg)
import View.Cal.Moment


view : ( Maybe Day, DayOfWeek ) -> Html Msg
view ( maybeDay, dayOfWeek ) =
    case maybeDay of
        Just d ->
            let
                day =
                    Html.div
                        [ class "day-cell"
                        ]
                        [ Html.text (String.fromInt d.ofMonth ++ " " ++ DayOfWeek.toString dayOfWeek)
                        ]

                moment =
                    case d.moments of
                        head :: _ ->
                            View.Cal.Moment.view head

                        _ ->
                            Html.div [] []
            in
            Html.a
                [ class "column has-border-2 mx-1 my-1"
                ]
                [ day
                , moment
                ]

        Nothing ->
            Html.div
                [ class "column mx-1 my-1"
                ]
                []
