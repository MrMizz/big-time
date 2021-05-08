module View.Cal.Week exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.DayOfWeek exposing (DayOfWeek(..))
import Model.Week exposing (Week)
import Msg.Msg exposing (Msg)
import View.Cal.DayOfMonth


view : Week -> Html Msg
view week =
    Html.div
        [ class "columns is-centered is-mobile"
        ]
        [ View.Cal.DayOfMonth.view ( week.sunday, Sunday )
        , View.Cal.DayOfMonth.view ( week.monday, Monday )
        , View.Cal.DayOfMonth.view ( week.tuesday, Tuesday )
        , View.Cal.DayOfMonth.view ( week.wednesday, Wednesday )
        , View.Cal.DayOfMonth.view ( week.thursday, Thursday )
        , View.Cal.DayOfMonth.view ( week.friday, Friday )
        , View.Cal.DayOfMonth.view ( week.saturday, Saturday )
        ]
