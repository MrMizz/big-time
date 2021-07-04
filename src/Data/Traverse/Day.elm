module Data.Traverse.Day exposing (DayTraversal(..), next, previous)

import Model.Day exposing (Day)
import Model.Month as Month exposing (Month)


next : Month -> Int -> DayTraversal
next month int =
    find ( month, int + 1 ) Up


previous : Month -> Int -> DayTraversal
previous month int =
    find ( month, int - 1 ) Down


find : ( Month, Int ) -> Direction -> DayTraversal
find ( month, int ) direction =
    let
        daysInMonth : List Day
        daysInMonth =
            Month.toDays month
    in
    case List.filter (\day -> day.ofMonth == int) daysInMonth of
        [] ->
            Empty

        head :: _ ->
            case head.moments of
                [] ->
                    case direction of
                        Up ->
                            case List.head (List.reverse daysInMonth) of
                                Just lastDayOfMonth ->
                                    case lastDayOfMonth.ofMonth == int of
                                        True ->
                                            NextMonth

                                        False ->
                                            find ( month, step Up int ) Up

                                Nothing ->
                                    Empty

                        Down ->
                            case List.head daysInMonth of
                                Just firstDayOfMonth ->
                                    case firstDayOfMonth.ofMonth == int of
                                        True ->
                                            PreviousMonth

                                        False ->
                                            find ( month, step Down int ) Down

                                Nothing ->
                                    Empty

                _ ->
                    Found head


type Direction
    = Up
    | Down


step : Direction -> Int -> Int
step dir int =
    case dir of
        Up ->
            int + 1

        Down ->
            int - 1


type DayTraversal
    = NextMonth
    | PreviousMonth
    | Found Day
    | Empty
