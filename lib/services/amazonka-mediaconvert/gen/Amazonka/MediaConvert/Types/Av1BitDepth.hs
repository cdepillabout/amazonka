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
-- Module      : Amazonka.MediaConvert.Types.Av1BitDepth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.Av1BitDepth
  ( Av1BitDepth
      ( ..,
        Av1BitDepth_BIT_10,
        Av1BitDepth_BIT_8
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Specify the Bit depth (Av1BitDepth). You can choose 8-bit (BIT_8) or
-- 10-bit (BIT_10).
newtype Av1BitDepth = Av1BitDepth'
  { fromAv1BitDepth ::
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

pattern Av1BitDepth_BIT_10 :: Av1BitDepth
pattern Av1BitDepth_BIT_10 = Av1BitDepth' "BIT_10"

pattern Av1BitDepth_BIT_8 :: Av1BitDepth
pattern Av1BitDepth_BIT_8 = Av1BitDepth' "BIT_8"

{-# COMPLETE
  Av1BitDepth_BIT_10,
  Av1BitDepth_BIT_8,
  Av1BitDepth'
  #-}
