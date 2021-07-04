module Data.Cal.TwentyOne.June.June exposing (month)

import Model.Month exposing (Month)
import Model.Week


month : Month
month =
    { first =
        { sunday =
            Nothing
        , monday =
            Nothing
        , tuesday =
            Just
                { ofMonth = 1
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 2
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 3
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 4
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 5
                , moments = []
                }
        }
    , second =
        { sunday =
            Just
                { ofMonth = 6
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 7
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 8
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 9
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 10
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 11
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 12
                , moments = []
                }
        }
    , third =
        { sunday =
            Just
                { ofMonth = 13
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 14
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 15
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 16
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 17
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 18
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 19
                , moments = []
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 20
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 21
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 22
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 23
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 24
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 25
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 26
                , moments = []
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 27
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 28
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 29
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 30
                , moments = []
                }
        , thursday =
            Nothing
        , friday =
            Nothing
        , saturday =
            Nothing
        }
    , sixth =
        { sunday =
            Nothing
        , monday =
            Nothing
        , tuesday =
            Nothing
        , wednesday =
            Nothing
        , thursday =
            Nothing
        , friday =
            Nothing
        , saturday =
            Nothing
        }
    }
