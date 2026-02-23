import Data.Ratio (Ratio)
import Control.Monad
import Data.Ref
import Data.IORef
--import Data.Ratio
import Data.Bits
import Data.Char
import Text.Parsec
import Text.Parsec.String
import Text.Parsec.Char
import Text.Parsec.Expr

data P = IMPLY P P
  |NIMPLY P P
  |OR P P
  |NOR P P
  |XOR P P
  |XNOR P P
  |AND P P
  |NAND P P
  |NOT P
p :: Parser Integer
p = do
    n <- many1 digit
    return (read n)



--import Data.Word (Word8)
{-qsort :: IOUArray Int Int -> Int -> Int -> IO () -- Thank you Dan Burton https://stackoverflow.com/questions/7717691/why-is-the-minimalist-example-haskell-quicksort-not-a-true-quicksort
qsort a lo hi = do
  (h,l,p,t) <- liftM4 (,,,) z z z z

  when (lo < hi) $ do
    l .= lo
    h .= hi
    p .=. (a!hi)

    doWhile (get l .< get h) $ do
      while ((get l .< get h) .&& ((a.!l) .<= get p)) $ do
        modifyIORef l succ
      while ((get h .> get l) .&& ((a.!h) .>= get p)) $ do
        modifyIORef h pred
      b <- get l .< get h
      when b $ do
        t .=. (a.!l)
        lVal <- get l
        hVal <- get h
        writeArray a lVal =<< a!hVal
        writeArray a hVal =<< get t

    lVal <- get l
    writeArray a hi =<< a!lVal
    writeArray a lVal =<< get p

    hi' <- fmap pred (get l)
    qsort a lo hi'
    lo' <- fmap succ (get l)
    qsort a lo' hi --my code

fallfact :: (Integral x, Integral n) => x -> n -> Integer --Falling factorial
fallfact _ 1 = 1
fallfact x n =
  if n<0 then 1 else toInteger(x)*(fallfact x (n-1))
kmap :: ()
-}
main = print(p)