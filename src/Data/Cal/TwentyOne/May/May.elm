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
                , moment =
                    Just
                        { url = "images/IMG_2992.jpg"
                        , description = ""
                        , categories = [ Food ]
                        }
                }
        }
    , second =
        { sunday =
            Just
                { ofMonth = 2
                , moment = Nothing
                }
        , monday =
            Just
                { ofMonth = 3
                , moment = Nothing
                }
        , tuesday =
            Just
                { ofMonth = 4
                , moment = Nothing
                }
        , wednesday =
            Just
                { ofMonth = 5
                , moment = Nothing
                }
        , thursday =
            Just
                { ofMonth = 6
                , moment = Nothing
                }
        , friday =
            Just
                { ofMonth = 7
                , moment = Nothing
                }
        , saturday =
            Just
                { ofMonth = 8
                , moment = Nothing
                }
        }
    , third =
        { sunday =
            Just
                { ofMonth = 9
                , moment = Nothing
                }
        , monday =
            Just
                { ofMonth = 10
                , moment = Nothing
                }
        , tuesday =
            Just
                { ofMonth = 11
                , moment = Nothing
                }
        , wednesday =
            Just
                { ofMonth = 12
                , moment = Nothing
                }
        , thursday =
            Just
                { ofMonth = 13
                , moment = Nothing
                }
        , friday =
            Just
                { ofMonth = 14
                , moment = Nothing
                }
        , saturday =
            Just
                { ofMonth = 15
                , moment = Nothing
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 16
                , moment = Nothing
                }
        , monday =
            Just
                { ofMonth = 17
                , moment = Nothing
                }
        , tuesday =
            Just
                { ofMonth = 18
                , moment = Nothing
                }
        , wednesday =
            Just
                { ofMonth = 19
                , moment = Nothing
                }
        , thursday =
            Just
                { ofMonth = 20
                , moment = Nothing
                }
        , friday =
            Just
                { ofMonth = 21
                , moment = Nothing
                }
        , saturday =
            Just
                { ofMonth = 22
                , moment = Nothing
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 23
                , moment = Nothing
                }
        , monday =
            Just
                { ofMonth = 24
                , moment = Nothing
                }
        , tuesday =
            Just
                { ofMonth = 25
                , moment = Nothing
                }
        , wednesday =
            Just
                { ofMonth = 26
                , moment = Nothing
                }
        , thursday =
            Just
                { ofMonth = 27
                , moment = Nothing
                }
        , friday =
            Just
                { ofMonth = 28
                , moment = Nothing
                }
        , saturday =
            Just
                { ofMonth = 29
                , moment = Nothing
                }
        }
    , sixth =
        { sunday =
            Just
                { ofMonth = 30
                , moment = Nothing
                }
        , monday =
            Just
                { ofMonth = 31
                , moment = Nothing
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
