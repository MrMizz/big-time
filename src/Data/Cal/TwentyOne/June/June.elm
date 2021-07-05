module Data.Cal.TwentyOne.June.June exposing (month)

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
            Just
                { ofMonth = 1
                , moments = []
                }
        , wednesday =
            Just
                { ofMonth = 2
                , moments =
                    [ { url = "images/2021/06/02/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 3
                , moments = []
                }
        , friday =
            Just
                { ofMonth = 4
                , moments =
                    [ { url = "images/2021/06/04/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Design ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 5
                , moments =
                    [ { url = "images/2021/06/05/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/05/02.jpeg"
                      , caption = Nothing
                      , categories = [ Music ]
                      }
                    ]
                }
        }
    , second =
        { sunday =
            Just
                { ofMonth = 6
                , moments =
                    [ { url = "images/2021/06/06/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/06/06/02.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    , { url = "images/2021/06/06/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Buildings ]
                      }
                    ]
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
                , moments =
                    [ { url = "images/2021/06/09/01.jpeg"
                      , caption = Nothing
                      , categories = [ Design, Shadows ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 10
                , moments =
                    [ { url = "images/2021/06/10/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/10/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 11
                , moments =
                    [ { url = "images/2021/06/11/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Family ]
                      }
                    , { url = "images/2021/06/11/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 12
                , moments =
                    [ { url = "images/2021/06/12/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/12/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/12/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    , { url = "images/2021/06/12/04.jpeg"
                      , caption = Nothing
                      , categories = [ Music, Shadows ]
                      }
                    ]
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
                , moments =
                    [ { url = "images/2021/06/14/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 15
                , moments =
                    [ { url = "images/2021/06/15/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/15/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 16
                , moments =
                    [ { url = "images/2021/06/16/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/16/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    , { url = "images/2021/06/16/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/16/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 17
                , moments =
                    [ { url = "images/2021/06/17/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/17/02.jpeg"
                      , caption = Nothing
                      , categories = [ Family, Music ]
                      }
                    , { url = "images/2021/06/17/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    , { url = "images/2021/06/17/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 18
                , moments =
                    [ { url = "images/2021/06/18/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 19
                , moments =
                    [ { url = "images/2021/06/19/01.jpeg"
                      , caption = Nothing
                      , categories = [ Music ]
                      }
                    , { url = "images/2021/06/19/02.jpeg"
                      , caption = Nothing
                      , categories = [ Family, Music ]
                      }
                    , { url = "images/2021/06/19/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Music ]
                      }
                    , { url = "images/2021/06/19/04.jpg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    ]
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 20
                , moments =
                    [ { url = "images/2021/06/20/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    , { url = "images/2021/06/20/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/20/03.jpeg"
                      , caption = Nothing
                      , categories = [ Music ]
                      }
                    ]
                }
        , monday =
            Just
                { ofMonth = 21
                , moments =
                    [ { url = "images/2021/06/21/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/06/21/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 22
                , moments =
                    [ { url = "images/2021/06/22/01.jpeg"
                      , caption = Nothing
                      , categories = [ Music ]
                      }
                    , { url = "images/2021/06/22/02.jpeg"
                      , caption = Nothing
                      , categories = [ Music, Family ]
                      }
                    , { url = "images/2021/06/22/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 23
                , moments =
                    [ { url = "images/2021/06/23/01.jpeg"
                      , caption = Nothing
                      , categories = [ Music, Family ]
                      }
                    , { url = "images/2021/06/23/02.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Music ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 24
                , moments =
                    [ { url = "images/2021/06/24/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    , { url = "images/2021/06/24/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    , { url = "images/2021/06/24/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Buildings ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 25
                , moments = []
                }
        , saturday =
            Just
                { ofMonth = 26
                , moments =
                    [ { url = "images/2021/06/26/01.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    , { url = "images/2021/06/26/02.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/06/26/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/26/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/26/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Shadows ]
                      }
                    , { url = "images/2021/06/26/06.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    ]
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 27
                , moments =
                    [ { url = "images/2021/06/27/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/27/02.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    , { url = "images/2021/06/27/03.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    ]
                }
        , monday =
            Just
                { ofMonth = 28
                , moments =
                    [ { url = "images/2021/06/28/01.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    , { url = "images/2021/06/28/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/28/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 29
                , moments =
                    [ { url = "images/2021/06/29/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/29/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/29/03.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Eats ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 30
                , moments =
                    [ { url = "images/2021/06/30/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/06/30/02.jpeg"
                      , caption = Nothing
                      , categories = [ Views, Buildings ]
                      }
                    , { url = "images/2021/06/30/03.jpeg"
                      , caption = Nothing
                      , categories = [ Art, Design ]
                      }
                    ]
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
