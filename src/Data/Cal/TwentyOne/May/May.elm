module Data.Cal.TwentyOne.May.May exposing (month)

import Model.Category exposing (Category(..))
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
            Nothing
        , wednesday =
            Nothing
        , thursday =
            Nothing
        , friday =
            Nothing
        , saturday =
            Just
                { ofMonth = 1
                , moments =
                    [ { url = "images/IMG_2992.jpg"
                      , description = ""
                      , categories = [ Food ]
                      }
                    ]
                }
        }
    , second =
        { sunday =
            Just
                { ofMonth = 2
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 3
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 4
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 5
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 6
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 7
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 8
                , moments = []
                }
        }
    , third =
        { sunday =
            Just
                { ofMonth = 9
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 10
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 11
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 12
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 13
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 14
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 15
                , moments = []
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 16
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 17
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 18
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 19
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 20
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 21
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 22
                , moments = []
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 23
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 24
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 25
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 26
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 27
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 28
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 29
                , moments = []
                }
        }
    , sixth =
        { sunday =
            Just
                { ofMonth = 30
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 31
                , moments = []
                }
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
