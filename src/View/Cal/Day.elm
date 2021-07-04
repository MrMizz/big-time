module View.Cal.Day exposing (view)

import Data.Traverse.Day exposing (DayTraversal(..))
import Data.Traverse.Month
import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Day as Day exposing (Day)
import Model.Month as Month exposing (Month)
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.State as State
import Model.Year as Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Moment
import View.Cal.Month
import View.Hero


view : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
view tup month =
    View.Hero.view (body tup month)


body : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
body ( year, moy, day ) month =
    let
        moment : Html Msg
        moment =
            case day.moments of
                [] ->
                    void ( year, moy, day ) month

                nel ->
                    Html.div
                        []
                        (header ( year, moy, day ) month :: List.map View.Cal.Moment.expanded nel)
    in
    Html.div
        [ class "container"
        ]
        [ moment
        ]


next : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
next ( year, moy, day ) month =
    let
        dayTraversal =
            Data.Traverse.Day.next month day.ofMonth
    in
    case dayTraversal of
        NextMonth ->
            let
                nextMoy : MonthOfYear
                nextMoy =
                    MonthOfYear.next moy
            in
            case Data.Traverse.Month.month ( year, nextMoy ) of
                Just _ ->
                    Html.a
                        [ class "button"
                        , State.href (State.Cal year nextMoy)
                        ]
                        []

                Nothing ->
                    Html.div [] []

        PreviousMonth ->
            Html.div [] []

        Found nextDay ->
            Html.a
                [ class "button"
                , State.href (State.Day year moy nextDay.ofMonth)
                ]
                [ Html.text "next"
                ]

        Empty ->
            Html.div [] []


previous : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
previous ( year, moy, day ) month =
    let
        dayTraversal : DayTraversal
        dayTraversal =
            Data.Traverse.Day.previous month day.ofMonth
    in
    case dayTraversal of
        NextMonth ->
            Html.div [] []

        PreviousMonth ->
            let
                previousMoy : MonthOfYear
                previousMoy =
                    MonthOfYear.previous moy
            in
            case Data.Traverse.Month.month ( year, previousMoy ) of
                Just _ ->
                    Html.a
                        [ class "button"
                        , State.href (State.Cal year previousMoy)
                        ]
                        []

                Nothing ->
                    Html.div [] []

        Found previousDay ->
            Html.a
                [ class "button"
                , State.href (State.Day year moy previousDay.ofMonth)
                ]
                [ Html.text "previous"
                ]

        Empty ->
            Html.div [] []


void : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
void ( year, moy, day ) month =
    Html.div
        []
        [ header ( year, moy, day ) month
        , Html.div
            [ class "void-img"
            ]
            [ View.Cal.Month.view ( year, moy ) Month.empty
            ]
        ]


header : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
header ( year, moy, day ) month =
    let
        header_ =
            Html.div
                [ class "level-item"
                ]
                [ Html.h2
                    [ class "subtitle is-6 has-text-centered"
                    ]
                    [ Html.text (Year.toString year ++ " " ++ MonthOfYear.toString moy ++ " " ++ Day.print day.ofMonth)
                    ]
                ]
    in
    Html.nav
        [ class "level"
        ]
        [ Html.div
            [ class "level-item"
            ]
            [ previous ( year, moy, day ) month
            ]
        , header_
        , Html.div
            [ class "level-item"
            ]
            [ next ( year, moy, day ) month
            ]
        ]
