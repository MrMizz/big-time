module Model.Month exposing (Month, empty, fromInt)

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


fromInt: Month -> Int -> Maybe Day
fromInt month int =
    let
        f: Day -> Bool
        f day =
            day.ofMonth == int

        l : List Day
        l =
            (List.filter f (Week.toList month.first))
                ++ (List.filter f (Week.toList month.second))
                ++ (List.filter f (Week.toList month.third))
                ++ (List.filter f (Week.toList month.fourth))
                ++ (List.filter f (Week.toList month.fifth))
                ++ (List.filter f (Week.toList month.sixth))
    in
    case l of
        head :: _ ->
            Just head
        [] ->
            Nothing
