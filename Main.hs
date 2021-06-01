{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

foreign import ccall "plus_ten" plusTen :: Int -> IO Int

main = do
  n <- plusTen 2
  print n
