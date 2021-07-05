module Data.Cal.TwentyOne.July.July exposing (month)

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
            Just
                { ofMonth = 1
                , moments =
                    [ { url = "images/2021/07/01/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 2
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 3
                , moments = []
                }
        }
    , second =
        { sunday =
            Just
                { ofMonth = 4
                , moments =
                    [ { url = "images/2021/07/04/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Books ]
                      }
                    , { url = "images/2021/07/04/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , monday =
            Just
                { ofMonth = 5
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 6
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 7
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 8
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 9
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 10
                , moments = []
                }
        }
    , third =
        { sunday =
            Just
                { ofMonth = 11
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 12
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 13
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 14
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 15
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 16
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 17
                , moments = []
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 18
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 19
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 20
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 21
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 22
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 23
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 24
                , moments = []
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 25
                , moments = []
                }
        , monday =
            Just
                { ofMonth = 26
                , moments = []
                }
        , tuesday =
            Just
                { ofMonth = 27
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 28
                , moments = []
                }
        , thursday =
            Just
                { ofMonth = 29
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 30
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 31
                , moments = []
                }
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
