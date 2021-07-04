module View.Cal.DayOfMonth exposing (view)

import Html exposing (Attribute, Html)
import Html.Attributes exposing (class)
import Model.Day exposing (Day)
import Model.DayOfWeek as DayOfWeek exposing (DayOfWeek)
import Model.MonthOfYear exposing (MonthOfYear)
import Model.State as State exposing (State(..))
import Model.Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Moment


view : ( Year, MonthOfYear ) -> ( Maybe Day, DayOfWeek ) -> Html Msg
view ( year, moy ) ( maybeDay, dayOfWeek ) =
    case maybeDay of
        Just d ->
            let
                day =
                    Html.div
                        [ class "day-cell is-family-secondary"
                        ]
                        [ Html.text (String.fromInt d.ofMonth ++ " " ++ DayOfWeek.toString dayOfWeek)
                        ]
            in
            case d.moments of
                head :: _ ->
                    Html.a
                        [ class "pop column has-border-2 mx-1 my-1"
                        , State.href (State.Day year moy d.ofMonth)
                        ]
                        [ day
                        , View.Cal.Moment.view head
                        ]

                _ ->
                    Html.div
                        [ class "pop column has-border-2 mx-1 my-1"
                        ]
                        [ day
                        ]

        Nothing ->
            Html.div
                [ class "column mx-1 my-1"
                ]
                []
