{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudFront.Types.HttpVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFront.Types.HttpVersion
  ( HttpVersion
      ( ..,
        HttpVersion_Http1_1,
        HttpVersion_Http2,
        HttpVersion_Http2and3,
        HttpVersion_Http3
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype HttpVersion = HttpVersion'
  { fromHttpVersion ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern HttpVersion_Http1_1 :: HttpVersion
pattern HttpVersion_Http1_1 = HttpVersion' "http1.1"

pattern HttpVersion_Http2 :: HttpVersion
pattern HttpVersion_Http2 = HttpVersion' "http2"

pattern HttpVersion_Http2and3 :: HttpVersion
pattern HttpVersion_Http2and3 = HttpVersion' "http2and3"

pattern HttpVersion_Http3 :: HttpVersion
pattern HttpVersion_Http3 = HttpVersion' "http3"

{-# COMPLETE
  HttpVersion_Http1_1,
  HttpVersion_Http2,
  HttpVersion_Http2and3,
  HttpVersion_Http3,
  HttpVersion'
  #-}
