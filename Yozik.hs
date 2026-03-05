{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE TypeFamilies #-}
--self-note use -fobject-determinism -fsimplifier-phases=127 -fregs-iterative
{-
import Control.Monad
import Control.Monad.ST
import Data.Bits
-}
import Data.Word
{-
import Data.IORef
import Data.Ref
-}
import Data.List.Split



priority :: String -> Word8
priority "¬" = 0
priority "'" = 0 -- ~ but suffix, the previous will be converted to that anyway by the shunter.
priority "" = 1
priority "|" = 1
priority "D" = 2 -- XOR in Polish notation, technically with the initial infixing misuse of notation but who cares.
priority "+" = 3
priority "-" = 3
priority "->" = 4
priority "<-" = 4
priority "x>" = 4 --nonimplication and then its converse
priority "<x" = 4
priority "==" = 5 --Equality or XNOR, unlike with other things and negated counterparts, they don't have the same precedence
main = (print (split (onSublist "||") "a&b||c"))