module View.Cal.Day exposing (view)

import Html exposing (Attribute, Html)
import Html.Attributes exposing (class, style)
import Model.Day exposing (Day)
import Model.DayOfWeek as DayOfWeek exposing (DayOfWeek)
import Msg.Msg exposing (Msg)
import View.Cal.Moment


view : ( Maybe Day, DayOfWeek ) -> Html Msg
view ( maybeDay, dayOfWeek ) =
    let
        day =
            case maybeDay of
                Just d ->
                    Html.div
                        [ style "font-size" "0.60em"
                        ]
                        [ Html.text (String.fromInt d.ofMonth ++ " " ++ DayOfWeek.toString dayOfWeek)
                        ]

                Nothing ->
                    Html.div [] []

        moment =
            case maybeDay of
                Just d ->
                    case d.moments of
                        head :: _ ->
                            View.Cal.Moment.view head
                        _ ->
                            Html.div [] []

                Nothing ->
                    Html.div [] []
    in
    Html.a
        [ class "column has-border-2 mx-1 my-1"
        ]
        [ day
        , moment
        ]
