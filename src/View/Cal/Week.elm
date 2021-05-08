module View.Cal.Week exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.DayOfWeek exposing (DayOfWeek(..))
import Model.MonthOfYear exposing (MonthOfYear)
import Model.Week exposing (Week)
import Model.Year exposing (Year)
import Msg.Msg exposing (Msg)
import View.Cal.DayOfMonth


view : (Year, MonthOfYear) -> Week -> Html Msg
view tup week =
    Html.div
        [ class "columns is-centered is-mobile"
        ]
        [ View.Cal.DayOfMonth.view tup ( week.sunday, Sunday )
        , View.Cal.DayOfMonth.view tup ( week.monday, Monday )
        , View.Cal.DayOfMonth.view tup ( week.tuesday, Tuesday )
        , View.Cal.DayOfMonth.view tup ( week.wednesday, Wednesday )
        , View.Cal.DayOfMonth.view tup ( week.thursday, Thursday )
        , View.Cal.DayOfMonth.view tup ( week.friday, Friday )
        , View.Cal.DayOfMonth.view tup ( week.saturday, Saturday )
        ]
