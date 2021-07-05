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
                      , categories = [ Buildings, Views ]
                      }
                    , { url = "images/2021/05/01/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Views ]
                      }
                    , { url = "images/2021/05/01/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Views ]
                      }
                    , { url = "images/2021/05/01/04.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Views ]
                      }
                    , { url = "images/2021/05/01/05.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Views ]
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
                    , { url = "images/2021/05/03/08.jpeg"
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
                , moments =
                    [ { url = "images/2021/05/13/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/13/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/05.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/13/06.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    , { url = "images/2021/05/13/07.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/08.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/08.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/10.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/11.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/12.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/13/13.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 14
                , moments =
                    [ { url = "images/2021/05/14/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Shadows ]
                      }
                    , { url = "images/2021/05/14/02.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/14/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    , { url = "images/2021/05/14/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/14/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/14/06.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/14/07.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/14/08.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 15
                , moments =
                    [ { url = "images/2021/05/15/01.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    ]
                }
        }
    , fourth =
        { sunday =
            Just
                { ofMonth = 16
                , moments =
                    [ { url = "images/2021/05/16/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/16/02.jpeg"
                      , caption = Nothing
                      , categories = [ Views ]
                      }
                    , { url = "images/2021/05/16/03.jpeg"
                      , caption = Nothing
                      , categories = [ Views ]
                      }
                    , { url = "images/2021/05/16/04.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/16/05.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Buildings ]
                      }
                    ]
                }
        , monday =
            Just
                { ofMonth = 17
                , moments =
                    [ { url = "images/2021/05/17/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Eats ]
                      }
                    ]
                }
        , tuesday =
            Just
                { ofMonth = 18
                , moments =
                    [ { url = "images/2021/05/18/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Design ]
                      }
                    , { url = "images/2021/05/18/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Family ]
                      }
                    ]
                }
        , wednesday =
            Just
                { ofMonth = 19
                , moments =
                    [ { url = "images/2021/05/19/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/19/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/19/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/19/04.jpeg"
                      , caption = Nothing
                      , categories = [ Views ]
                      }
                    , { url = "images/2021/05/19/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/19/06.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/19/07.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/19/08.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/19/09.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Design ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 20
                , moments =
                    [ { url = "images/2021/05/20/01.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    , { url = "images/2021/05/20/02.jpeg"
                      , caption = Nothing
                      , categories = [ Family, Music ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 21
                , moments =
                    [ { url = "images/2021/05/21/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/21/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/21/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Eats, Family ]
                      }
                    , { url = "images/2021/05/21/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Design ]
                      }
                    , { url = "images/2021/05/21/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/21/06.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    , { url = "images/2021/05/21/07.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Cars ]
                      }
                    , { url = "images/2021/05/21/08.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/21/09.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/21/10.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Views ]
                      }
                    , { url = "images/2021/05/21/11.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 22
                , moments =
                    [ { url = "images/2021/05/22/01.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/22/02.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/05.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/06.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/07.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/22/08.jpeg"
                      , caption = Nothing
                      , categories = [ Design, Eats ]
                      }
                    , { url = "images/2021/05/22/09.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
                }
        }
    , fifth =
        { sunday =
            Just
                { ofMonth = 23
                , moments =
                    [ { url = "images/2021/05/23/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/23/02.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
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
                , moments =
                    [ { url = "images/2021/05/26/01.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    , { url = "images/2021/05/26/02.jpeg"
                      , caption = Nothing
                      , categories = [ Family ]
                      }
                    ]
                }
        , thursday =
            Just
                { ofMonth = 27
                , moments =
                    [ { url = "images/2021/05/27/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Buildings ]
                      }
                    , { url = "images/2021/05/27/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    ]
                }
        , friday =
            Just
                { ofMonth = 28
                , moments =
                    [ { url = "images/2021/05/28/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/28/02.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings ]
                      }
                    , { url = "images/2021/05/28/03.jpeg"
                      , caption = Nothing
                      , categories = [ Buildings, Shadows ]
                      }
                    , { url = "images/2021/05/28/04.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Eats ]
                      }
                    ]
                }
        , saturday =
            Just
                { ofMonth = 29
                , moments =
                    [ { url = "images/2021/05/29/01.jpeg"
                      , caption = Nothing
                      , categories = [ Eats, Shadows ]
                      }
                    , { url = "images/2021/05/29/02.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    , { url = "images/2021/05/29/03.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/29/04.jpeg"
                      , caption = Nothing
                      , categories = [ Eats ]
                      }
                    , { url = "images/2021/05/29/05.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows, Buildings ]
                      }
                    , { url = "images/2021/05/29/06.jpeg"
                      , caption = Nothing
                      , categories = [ Cars ]
                      }
                    ]
                }
        }
    , sixth =
        { sunday =
            Just
                { ofMonth = 30
                , moments =
                    [ { url = "images/2021/05/30/01.jpeg"
                      , caption = Nothing
                      , categories = [ Design, Shadows ]
                      }
                    , { url = "images/2021/05/30/02.jpeg"
                      , caption = Nothing
                      , categories = [ Shadows ]
                      }
                    ]
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
