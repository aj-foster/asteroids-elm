module Geometry.Vector exposing
    ( Vector, Point, zero
    , length, lengthSquared, angle
    , normalize, negate
    , scale, add, sub
    , dot, cross, distance, distanceSquared
    , direction, reflect, interpolate
    )

{-|

@docs Vector, Point, zero
@docs length, lengthSquared, angle
@docs normalize, negate
@docs scale, add, sub
@docs dot, cross, distance, distanceSquared
@docs direction, reflect, interpolate

-}


type alias Vector =
    ( Float, Float )


type alias Point =
    Vector


zero : Vector
zero =
    ( 0, 0 )


length : Vector -> Float
length =
    lengthSquared >> sqrt


lengthSquared : Vector -> Float
lengthSquared ( x, y ) =
    x ^ 2 + y ^ 2


angle : Vector -> Float
angle ( x, y ) =
    atan2 y x


normalize : Vector -> Vector
normalize (( x, y ) as vec) =
    let
        len =
            length vec
    in
    if len == 0 then
        zero

    else
        ( x / len
        , y / len
        )


negate : Vector -> Vector
negate ( x, y ) =
    ( Basics.negate x
    , Basics.negate y
    )


scale : Float -> Vector -> Vector
scale s ( x, y ) =
    ( s * x
    , s * y
    )


add : Vector -> Vector -> Vector
add ( x, y ) ( u, v ) =
    ( x + u
    , y + v
    )


sub : Vector -> Vector -> Vector
sub ( x, y ) ( u, v ) =
    ( x - u
    , y - v
    )


dot : Vector -> Vector -> Float
dot ( x, y ) ( u, v ) =
    x * u + y * v


cross : Vector -> Vector -> Float
cross ( x, y ) ( u, v ) =
    x * v - y * u


distance : Point -> Point -> Float
distance a b =
    distanceSquared a b |> sqrt


distanceSquared : Point -> Point -> Float
distanceSquared ( x, y ) ( u, v ) =
    (u - x) ^ 2 + (v - y) ^ 2


direction : Point -> Point -> Vector
direction a b =
    sub b a |> normalize


reflect : Vector -> Vector -> Vector
reflect normal vector =
    sub vector (normal |> scale (2 * dot normal vector))


interpolate : Float -> Vector -> Vector -> Vector
interpolate t a b =
    add
        (a |> scale (1 - t))
        (b |> scale t)
