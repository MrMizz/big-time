module View.Cal.Cal exposing (view, void)

import Data.Traverse.Month
import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Month as Month exposing (Month)
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.State as State
import Model.Year as Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Month
import View.Cal.Next
import View.Cal.Previous
import View.Hero


view : ( Year, MonthOfYear, Month ) -> Html Msg
view ( year, moy, month ) =
    View.Hero.view (body ( year, moy, month ))


void : ( Year, MonthOfYear ) -> Html Msg
void ( year, moy ) =
    let
        void_ =
            Html.div
                [ class "container"
                ]
                [ header ( year, moy )
                , Html.div
                    [ class "void-img"
                    ]
                    [ View.Cal.Month.view ( year, moy ) Month.empty
                    ]
                ]
    in
    View.Hero.view void_


body : ( Year, MonthOfYear, Month ) -> Html Msg
body ( year, moy, month ) =
    Html.div
        [ class "container"
        ]
        [ Html.div
            []
            [ header ( year, moy )
            , View.Cal.Month.view ( year, moy ) month
            ]
        ]


header : ( Year, MonthOfYear ) -> Html Msg
header ( year, moy ) =
    let
        header_ =
            Html.div
                [ class "level-item"
                ]
                [ Html.h2
                    [ class "subtitle is-6 has-text-centered"
                    ]
                    [ Html.text (Year.toString year ++ " " ++ MonthOfYear.toString moy)
                    ]
                ]
    in
    Html.nav
        [ class "level"
        ]
        [ previous ( year, moy )
        , header_
        , next ( year, moy )
        ]


previous : ( Year, MonthOfYear ) -> Html Msg
previous ( year, moy ) =
    case Data.Traverse.Month.previous ( year, moy ) of
        Just ( y, m ) ->
            Html.div
                [ class "level-item"
                ]
                [ Html.a
                    [ State.href (State.Cal y m)
                    ]
                    [ View.Cal.Previous.view
                    ]
                ]

        Nothing ->
            Html.div [] []


next : ( Year, MonthOfYear ) -> Html Msg
next ( year, moy ) =
    case Data.Traverse.Month.next ( year, moy ) of
        Just ( y, m ) ->
            Html.div
                [ class "level-item"
                ]
                [ Html.a
                    [ State.href (State.Cal y m)
                    ]
                    [ View.Cal.Next.view
                    ]
                ]

        Nothing ->
            Html.div [] []
