module View.Cal.Month exposing (view)

import Html exposing (Html)
import Model.Month exposing (Month)
import Model.MonthOfYear exposing (MonthOfYear)
import Model.Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.Week


view : ( Year, MonthOfYear ) -> Month -> Html Msg
view tup month =
    Html.div
        []
        [ View.Cal.Week.view tup month.first
        , View.Cal.Week.view tup month.second
        , View.Cal.Week.view tup month.third
        , View.Cal.Week.view tup month.fourth
        , View.Cal.Week.view tup month.fifth
        , View.Cal.Week.view tup month.sixth
        ]
