--import Control.Monad
--import Data.Ref
--import Data.IORef
import Numeric.Natural
import Data.Ratio
import Data.Bits
import Data.Word (Word8)
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
-}
fallfact :: Integral  -> Integral -> Integral
fallfact _ 0 = 0
fallfact x n =
  if n<=1 then 1 else x*fallfact(x,n-1)
main = print(fallfact(4,2))