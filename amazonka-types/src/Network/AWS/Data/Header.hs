{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}

-- Module      : Network.AWS.Data.Header
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.Data.Header where

import Network.HTTP.Types

hHost :: HeaderName
hHost = "Host"

hAMZToken :: HeaderName
hAMZToken = "X-AMZ-Security-Token"

hMetaPrefix :: HeaderName
hMetaPrefix = "X-AMZ-"

class ToHeaders a where
    toHeaders :: a -> [Header]
--    toHeaders = const []

-- class ToHeader a where
--     toHeader :: ByteString -> a -> (HeaderName, Maybe ByteString)

-- instance ToHeader ByteString where
--     toHeader k = (CI.mk k,) . Just

-- instance ToByteString a => ToHeader a where
--     toHeader k = (CI.mk k,) . Just . ByteString.encodeUtf8 . toBS

-- instance ToHeader a => ToHeader (Maybe a) where
--     toHeader k (Just x) = toHeader k x
--     toHeader k Nothing  = (CI.mk k, Nothing)

-- (=:) :: ToHeader a => ByteString -> a -> (HeaderName, Maybe ByteString)
-- (=:) = toHeader

-- hdr :: (Applicative f, FromByteString a)
--     => HeaderName
--     -> HashMap HeaderName ByteString
--     -> f (Maybe a)
-- hdr k = pure
--     . join
--     . fmap (hush . fromBS . ByteString.decodeUtf8)
--     . Map.lookup k

-- hdrs :: Applicative f
--      => ByteString
--      -> HashMap HeaderName ByteString
--      -> f (HashMap ByteString ByteString)
-- hdrs pre hs = pure $
--     Map.fromList [f (CI.original k, v) | (k, v) <- Map.toList hs, p k]
--   where
--     f = join (***) ByteString.decodeUtf8
--     p = BS.isPrefixOf pre . CI.foldedCase
