module View.Cal.Day exposing (view)

import Data.Traverse.Day exposing (DayTraversal(..))
import Data.Traverse.Month
import Html exposing (Html)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)
import Model.Day as Day exposing (Day)
import Model.Month as Month exposing (Month)
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.State as State
import Model.Year as Year exposing (Year)
import Msg.Msg exposing (Msg(..))
import View.Cal.Moment
import View.Cal.Month
import View.Cal.Next
import View.Cal.Previous
import View.Hero


view : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
view tup month =
    View.Hero.view (body tup month)


body : ( Year, MonthOfYear, Day ) -> Month -> Html Msg
body ( year, moy, day ) month =
    let
        moments : Html Msg
        moments =
            case day.moments of
                [] ->
                    void ( year, moy, day ) month

                nel ->
                    Html.div
                        []
                        (header ( year, moy, day ) month :: List.map View.Cal.Moment.expanded nel)

        reset : Html Msg
        reset =
            Html.div
                [ onClick ResetViewport
                ]
                [ Html.span
                    [ class "icon has-text-link"
                    ]
                    [ Html.i
                        [ class "fas fa-arrow-up"
                        ]
                        []
                    ]
                ]
    in
    Html.div
        [ class "container"
        ]
        [ moments
        , reset
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
                        [ State.href (State.Cal year nextMoy)
                        ]
                        [ View.Cal.Next.view
                        ]

                Nothing ->
                    Html.div [] []

        PreviousMonth ->
            Html.div [] []

        Found nextDay ->
            Html.a
                [ State.href (State.Day year moy nextDay.ofMonth)
                ]
                [ View.Cal.Next.view
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
                        [ State.href (State.Cal year previousMoy)
                        ]
                        [ View.Cal.Previous.view
                        ]

                Nothing ->
                    Html.div [] []

        Found previousDay ->
            Html.a
                [ State.href (State.Day year moy previousDay.ofMonth)
                ]
                [ View.Cal.Previous.view
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
                [ style "display" "inline-block"
                , class "mx-3"
                ]
                [ Html.h2
                    [ class "subtitle is-6 has-text-centered"
                    ]
                    [ Html.text (Year.toString year ++ " " ++ MonthOfYear.toString moy ++ " " ++ Day.print day.ofMonth)
                    ]
                ]
    in
    Html.div
        [ class "has-text-centered"
        ]
        [ Html.div
            [ style "display" "inline-block"
            ]
            [ previous ( year, moy, day ) month
            ]
        , header_
        , Html.div
            [ style "display" "inline-block"
            ]
            [ next ( year, moy, day ) month
            ]
        ]
