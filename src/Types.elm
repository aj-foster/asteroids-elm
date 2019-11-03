module Types exposing (..)

import Geometry.Polygon exposing (Polygon)
import Geometry.Vector exposing (Point, Vector)


type alias Time =
    Float


type alias Radians =
    Float


type alias Polyline =
    List Point


type alias Boundaried a =
    { a
        | radius : Float
        , polygon : Polygon
    }


type alias Positioned a =
    { a
        | position : Point
        , rotation : Radians
    }


type alias Moving a =
    { a
        | velocity : Vector
        , angularVelocity : Radians
    }


type alias Expiring a =
    { a
        | timeRemaining : Time
    }
