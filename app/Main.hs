module Main (main) where

import           Lib

main :: IO ()
main = someFunc



data PhoneSpecification = PhoneSpecification
    { model          :: String
    , weight         :: Int
    , publishingYear :: Int
    , ram            :: Double }

type SharpnessLevel = Int
type Length = Int
type LeftoverInk = Int

data WritingInstrument
    = Pencil SharpnessLevel Length
    | Pen LeftoverInk
    | Brush
    | HammerAndChisel SharpnessLevel
