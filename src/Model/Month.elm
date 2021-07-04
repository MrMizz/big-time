module Model.Month exposing (Month, empty, fromInt, toDays)

import Model.Day exposing (Day)
import Model.Week as Week exposing (Week)


type alias Month =
    { first : Week
    , second : Week
    , third : Week
    , fourth : Week
    , fifth : Week
    , sixth : Week
    }


empty : Month
empty =
    Month
        Week.empty
        Week.empty
        Week.empty
        Week.empty
        Week.empty
        Week.empty


fromInt : Month -> Int -> Maybe Day
fromInt month int =
    let
        f : Day -> Bool
        f day =
            day.ofMonth == int

        l : List Day
        l =
            List.filter f (toDays month)
    in
    case l of
        head :: _ ->
            Just head

        [] ->
            Nothing


toDays : Month -> List Day
toDays month =
    Week.toList month.first
        ++ Week.toList month.second
        ++ Week.toList month.third
        ++ Week.toList month.fourth
        ++ Week.toList month.fifth
        ++ Week.toList month.sixth
