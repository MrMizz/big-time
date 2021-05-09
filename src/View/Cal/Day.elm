module View.Cal.Day exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Day as Day exposing (Day)
import Model.Month as Month
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.Year as Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Moment
import View.Cal.Month
import View.Hero


view : ( Year, MonthOfYear, Day ) -> Html Msg
view tup =
    View.Hero.view (body tup)


body : ( Year, MonthOfYear, Day ) -> Html Msg
body ( year, moy, day ) =
    let
        moment =
            case day.moments of
                [] ->
                    void ( year, moy, day )

                nel ->
                    Html.div
                        []
                        (header ( year, moy, day ) :: List.map View.Cal.Moment.expanded nel)
    in
    Html.div
        [ class "container"
        ]
        [ moment
        ]


void : ( Year, MonthOfYear, Day ) -> Html Msg
void ( year, moy, day ) =
    Html.div
        []
        [ header ( year, moy, day )
        , Html.div
            [ class "void-img"
            ]
            [ View.Cal.Month.view ( year, moy ) Month.empty
            ]
        ]


header : ( Year, MonthOfYear, Day ) -> Html Msg
header ( year, moy, day ) =
    Html.h2
        [ class "subtitle is-6 has-text-centered"
        ]
        [ Html.text (Year.toString year ++ " " ++ MonthOfYear.toString moy ++ " " ++ Day.print day.ofMonth)
        ]
