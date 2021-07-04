module Data.Traverse.Month exposing (month)

import Data.Cal.TwentyOne.June.June
import Data.Cal.TwentyOne.May.May
import Model.Month exposing (Month)
import Model.MonthOfYear exposing (MonthOfYear(..))
import Model.Year exposing (Year(..))


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
