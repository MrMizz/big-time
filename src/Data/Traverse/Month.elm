module Data.Traverse.Month exposing (month, next, previous)

import Data.Cal.TwentyOne.June.June
import Data.Cal.TwentyOne.May.May
import Model.Month exposing (Month)
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear(..))
import Model.Year as Year exposing (Year(..))


month : ( Year, MonthOfYear ) -> Maybe Month
month ( year, moy ) =
    case year of
        TwentyOne ->
            case moy of
                May ->
                    Just Data.Cal.TwentyOne.May.May.month

                Jun ->
                    Just Data.Cal.TwentyOne.June.June.month

                _ ->
                    Nothing

        TwentyTwo ->
            Nothing


next : ( Year, MonthOfYear ) -> Maybe ( Year, MonthOfYear )
next ( year, moy ) =
    case moy of
        Dec ->
            case Year.next year of
                Just nextYear ->
                    case month ( nextYear, Jan ) of
                        Just _ ->
                            Just ( nextYear, Jan )

                        Nothing ->
                            Nothing

                Nothing ->
                    Nothing

        _ ->
            let
                nextMoy : MonthOfYear
                nextMoy =
                    MonthOfYear.next moy
            in
            case month ( year, nextMoy ) of
                Just _ ->
                    Just ( year, nextMoy )

                Nothing ->
                    Nothing


previous : ( Year, MonthOfYear ) -> Maybe ( Year, MonthOfYear )
previous ( year, moy ) =
    case moy of
        Jan ->
            case Year.previous year of
                Just previousYear ->
                    case month ( previousYear, Dec ) of
                        Just _ ->
                            Just ( previousYear, Dec )

                        Nothing ->
                            Nothing

                Nothing ->
                    Nothing

        _ ->
            let
                previousMoy : MonthOfYear
                previousMoy =
                    MonthOfYear.previous moy
            in
            case month ( year, previousMoy ) of
                Just _ ->
                    Just ( year, previousMoy )

                Nothing ->
                    Nothing
