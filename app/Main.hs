module Main (main) where

import           Lib

main :: IO ()
main = do
    someFunc
    listPhoneSpecs
    printWritingInstrument examplePencil



data PhoneSpecification = PhoneSpecification
    { model          :: String
    , weight         :: Int
    , publishingYear :: Int
    , ram            :: Double }
    deriving Show

type SharpnessLevel = Int
type LeftoverLength = Int
type LeftoverInk = Int

data WritingInstrument
    = Pencil SharpnessLevel LeftoverLength
    | Pen LeftoverInk
    | Brush
    | HammerAndChisel SharpnessLevel

listPhoneSpecs :: IO ()
listPhoneSpecs =
    let phone = PhoneSpecification "IPhone 27" 1234 2029 3
    in do
        print phone


printWritingInstrument :: WritingInstrument -> IO ()
printWritingInstrument (Pencil sharpnessLevel leftoverLength) = putStrLn ("Pencil: Sharpness: " <> show sharpnessLevel <> " with length " <> show leftoverLength)
printWritingInstrument (Pen leftoverInk) = putStrLn ("Pen: leftover ink: " <> show leftoverInk)
printWritingInstrument Brush = putStrLn "Brush"
printWritingInstrument (HammerAndChisel sharpnessLevel) = putStrLn ("Pencil: Sharpness: " <> show sharpnessLevel)


examplePencil :: WritingInstrument
examplePencil = Pencil 100 2
