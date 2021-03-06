module Font.Astraea exposing (pathData)

import Dict exposing (Dict)
import Font exposing (Font)
import PathData exposing (Command(..), PathData)


pathData : Font PathData
pathData =
    { width = 32
    , height = 48
    , replacement = [ M 16 10, L 30 24, L 16 38, L 2 24, L 16 10 ]
    , characters =
        [ ( '0', [ M 16 0, C 8 0 2 7 2 15, L 2 33, C 2 41 8 48 16 48, C 24 48 30 41 30 33, L 30 15, C 30 7 24 0 16 0 ] )
        , ( '1', [ M 9 7, L 21 0, L 21 48 ] )
        , ( '2', [ M 5 8, C 6 4 10 0 16 0, C 24 0 28 6 28 12, C 28 18 25 21 18 30, L 4 48, L 30 48 ] )
        , ( '3', [ M 5 0, L 27 0, L 11 19, C 13 18 13 18 16 18, C 24 18 30 25 30 33, C 30 41 24 48 16 48, C 10 48 5 44 3 38 ] )
        , ( '4', [ M 30 34, L 2 34, L 24 0, L 24 48 ] )
        , ( '5', [ M 27 0, L 7 0, L 4 22, C 10 18 10 18 16 18, C 24 18 30 25 30 33, C 30 41 24 48 16 48, C 10 48 5 44 3 38 ] )
        , ( '6', [ M 20 0, L 5 24, C 3 27 2 30 2 33, C 2 41 8 48 16 48, C 24 48 30 41 30 33, C 30 25 24 18 16 18, C 11 18 8 20 5 24 ] )
        , ( '7', [ M 3 0, L 29 0, L 11 48 ] )
        , ( '8', [ M 16 0, C 10 0 6 5 6 10, C 6 15 10 20 16 20, C 23 20 30 26 30 34, C 30 42 23 48 16 48, C 9 48 2 42 2 34, C 2 26 9 20 16 20, C 22 20 26 15 26 10, C 26 5 22 0 16 0 ] )
        , ( '9', [ M 12 48, L 27 24, C 29 21 30 18 30 15, C 30 7 24 0 16 0, C 8 0 2 7 2 15, C 2 23 8 30 16 30, C 21 30 24 28 27 24 ] )
        , ( 'A', [ M 0 48, L 16 0, L 32 48, M 6 30, L 26 30 ] )
        , ( 'B', [ M 3 0, L 16 0, C 22 0 28 4 28 11, C 28 18 22 22 16 22, C 24 22 30 27 30 35, C 30 43 24 48 16 48, L 3 48, L 3 0, M 3 22, L 16 22 ] )
        , ( 'C', [ M 30 8, C 27 3 23 0 18 0, C 9 0 2 9 2 24, C 2 39 9 48 18 48, C 23 48 27 45 30 40 ] )
        , ( 'D', [ M 3 0, L 3 48, L 14 48, C 23 48 30 39 30 24, C 30 9 23 0 14 0, L 3 0 ] )
        , ( 'E', [ M 29 0, L 3 0, L 3 48, L 29 48, M 3 24, L 27 24 ] )
        , ( 'F', [ M 29 0, L 3 0, L 3 48, M 3 24, L 27 24 ] )
        , ( 'G', [ M 30 8, C 27 3 23 0 18 0, C 9 0 2 9 2 24, C 2 39 9 48 18 48, C 23 48 27 45 30 40, L 30 26, L 16 26 ] )
        , ( 'H', [ M 2 0, L 2 48, M 30 0, L 30 48, M 2 24, L 30 24 ] )
        , ( 'I', [ M 7 0, L 25 0, M 16 0, L 16 48, M 7 48, L 25 48 ] )
        , ( 'J', [ M 26 0, L 26 34, C 26 42 21 48 14 48, C 9 48 5 45 3 40 ] )
        , ( 'K', [ M 2 0, L 2 48, M 30 0, L 4 24, L 30 48, M 2 24, L 4 24 ] )
        , ( 'L', [ M 3 0, L 3 48, L 29 48 ] )
        , ( 'M', [ M 0 48, L 0 0, L 16 30, L 32 0, L 32 48 ] )
        , ( 'N', [ M 2 48, L 2 0, L 30 48, L 30 0 ] )
        , ( 'O', [ M 32 24, C 32 9 25 0 16 0, C 7 0 0 9 0 24, C 0 39 7 48 16 48, C 25 48 32 39 32 24 ] )
        , ( 'P', [ M 3 48, L 3 0, L 14 0, C 22 0 28 5 28 13, C 28 21 22 26 14 26, L 3 26 ] )
        , ( 'Q', [ M 32 24, C 32 9 25 0 16 0, C 7 0 0 9 0 24, C 0 39 7 48 16 48, C 25 48 32 39 32 24, M 18 34, L 32 48 ] )
        , ( 'R', [ M 3 48, L 3 0, L 14 0, C 22 0 28 5 28 13, C 28 21 22 26 14 26, L 3 26, M 14 26, L 30 48 ] )
        , ( 'S', [ M 26 5, C 24 2 20 0 16 0, C 10 0 5 4 5 10, C 5 16 10 19 16 22, C 24 26 29 29 29 36, C 29 43 23 48 16 48, C 10 48 5 45 3 40 ] )
        , ( 'T', [ M 2 0, L 30 0, M 16 0, L 16 48 ] )
        , ( 'U', [ M 2 0, L 2 33, C 2 41 8 48 16 48, C 24 48 30 41 30 33, L 30 0 ] )
        , ( 'V', [ M 0 0, L 16 48, L 32 0 ] )
        , ( 'W', [ M 0 0, L 4 48, L 16 18, L 28 48, L 32 0 ] )
        , ( 'X', [ M 2 0, L 30 48, M 30 0, L 2 48 ] )
        , ( 'Y', [ M 2 0, L 16 24, L 30 0, M 16 24, L 16 48 ] )
        , ( 'Z', [ M 2 0, L 30 0, L 2 48, L 30 48 ] )
        ]
            |> Dict.fromList
    }
