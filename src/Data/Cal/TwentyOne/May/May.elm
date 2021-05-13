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
                    [ { url = "images/2021/05/01/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/01/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/01/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/01/04.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/01/05.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/01/06.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
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
                , moments =
                    [ { url = "images/2021/05/03/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Books ]
                      }
                    , { url = "images/2021/05/03/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/03/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Books ]
                      }
                    , { url = "images/2021/05/03/04.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/03/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/03/06.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/03/07.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/03/08.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/03/09.jpeg"
                      , caption = Nothing
                      , categories = [ Books ]
                      }
                    , { url = "images/2021/05/03/10.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Eats ]
                      }
                    , { url = "images/2021/05/03/11.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Eats ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 4
                , moments =
                    [ { url = "images/2021/05/04/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Cars ]
                      }
                    , { url = "images/2021/05/04/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Eats ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 5
                , moments =
                    [ { url = "images/2021/05/05/01.jpeg"
                      , caption = Nothing
                      , categories = [ Desks, Shadows ]
                      }
                    , { url = "images/2021/05/05/02.jpeg"
                      , caption = Nothing
                      , categories = [ Desks, Shadows ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 6
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 7
                , moments =
                    [ { url = "images/2021/05/07/01.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Music ]
                      }
                    , { url = "images/2021/05/07/02.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Music ]
                      }
                    , { url = "images/2021/05/07/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Books ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 8
                , moments =
                    [ { url = "images/2021/05/08/01.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/08/02.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
                }
        }
    , third =
        { sunday =
            Just
                { ofMonth = 9
                , moments =
                    [ { url = "images/2021/05/09/01.jpeg"
                      , caption = Nothing
                      , categories = [ Cars, Buildings ]
                      }
                    ]
                }
        , monday =
            Just
                { ofMonth = 10
                , moments =
                    [ { url = "images/2021/05/10/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/10/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/10/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/10/04.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/10/05.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/10/06.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Buildings ]
                      }
                    , { url = "images/2021/05/10/07.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 11
                , moments =
                    [ { url = "images/2021/05/11/01.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/11/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/11/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 12
                , moments =
                    [ { url = "images/2021/05/12/01.jpeg"
                      , caption = Nothing
                      , categories = [ Books ]
                      }
                    , { url = "images/2021/05/12/02.jpeg"
                      , caption = Nothing
                      , categories = [ Cars, Shadows ]
                      }
                    , { url = "images/2021/05/12/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/12/04.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
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
