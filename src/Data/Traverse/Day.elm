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

        maybeLastDay : Maybe Day
        maybeLastDay =
            List.head (List.reverse daysInMonth)

        find_ =
            case List.filter (\day -> day.ofMonth == int) daysInMonth of
                [] ->
                    Empty

                head :: _ ->
                    case head.moments of
                        [] ->
                            find ( month, step direction int ) direction

                        _ ->
                            Found head
    in
    case direction of
        Up ->
            case maybeLastDay of
                Just lastDay ->
                    case lastDay.ofMonth == (int - 1) of
                        True ->
                            NextMonth

                        False ->
                            find_

                Nothing ->
                    Empty

        Down ->
            case int == 0 of
                True ->
                    PreviousMonth

                False ->
                    find_


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
