module View.Cal.Cal exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Month as Month exposing (Month)
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.Year as Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Month
import View.Hero


view : ( Year, MonthOfYear ) -> Html Msg
view ( year, moy ) =
    View.Hero.view (body ( year, moy ))


body : ( Year, MonthOfYear ) -> Html Msg
body ( year, moy ) =
    let
        maybeMonth : Maybe Month
        maybeMonth =
            Year.data ( year, moy )

        view_ : Html Msg
        view_ =
            case maybeMonth of
                Just month ->
                    Html.div
                        []
                        [ header ( year, moy )
                        , View.Cal.Month.view month
                        ]

                Nothing ->
                    Html.div
                        []
                        [ header ( year, moy )
                        , Html.div
                            [ class "void-img"
                            ]
                            [ View.Cal.Month.view Month.empty
                            ]
                        ]
    in
    Html.div
        [ class "container"
        ]
        [ view_
        ]


header : ( Year, MonthOfYear ) -> Html Msg
header ( year, moy ) =
    Html.h2
        [ class "subtitle is-6 has-text-centered"
        ]
        [ Html.text (Year.toString year ++ " " ++ MonthOfYear.toString moy)
        ]
