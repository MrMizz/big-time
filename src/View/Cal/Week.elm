module View.Cal.Week exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.DayOfWeek exposing (DayOfWeek(..))
import Model.Week exposing (Week)
import Msg.Msg exposing (Msg)
import View.Cal.Day


view : Week -> Html Msg
view week =
    Html.div
        [ class "columns is-centered is-mobile"
        ]
        [ View.Cal.Day.view ( week.sunday, Sunday )
        , View.Cal.Day.view ( week.monday, Monday )
        , View.Cal.Day.view ( week.tuesday, Tuesday )
        , View.Cal.Day.view ( week.wednesday, Wednesday )
        , View.Cal.Day.view ( week.thursday, Thursday )
        , View.Cal.Day.view ( week.friday, Friday )
        , View.Cal.Day.view ( week.saturday, Saturday )
        ]
