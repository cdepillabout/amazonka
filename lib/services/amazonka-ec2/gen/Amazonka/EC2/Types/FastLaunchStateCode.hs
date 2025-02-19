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
-- Module      : Amazonka.EC2.Types.FastLaunchStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FastLaunchStateCode
  ( FastLaunchStateCode
      ( ..,
        FastLaunchStateCode_Disabling,
        FastLaunchStateCode_Disabling_failed,
        FastLaunchStateCode_Enabled,
        FastLaunchStateCode_Enabled_failed,
        FastLaunchStateCode_Enabling,
        FastLaunchStateCode_Enabling_failed
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype FastLaunchStateCode = FastLaunchStateCode'
  { fromFastLaunchStateCode ::
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

pattern FastLaunchStateCode_Disabling :: FastLaunchStateCode
pattern FastLaunchStateCode_Disabling = FastLaunchStateCode' "disabling"

pattern FastLaunchStateCode_Disabling_failed :: FastLaunchStateCode
pattern FastLaunchStateCode_Disabling_failed = FastLaunchStateCode' "disabling-failed"

pattern FastLaunchStateCode_Enabled :: FastLaunchStateCode
pattern FastLaunchStateCode_Enabled = FastLaunchStateCode' "enabled"

pattern FastLaunchStateCode_Enabled_failed :: FastLaunchStateCode
pattern FastLaunchStateCode_Enabled_failed = FastLaunchStateCode' "enabled-failed"

pattern FastLaunchStateCode_Enabling :: FastLaunchStateCode
pattern FastLaunchStateCode_Enabling = FastLaunchStateCode' "enabling"

pattern FastLaunchStateCode_Enabling_failed :: FastLaunchStateCode
pattern FastLaunchStateCode_Enabling_failed = FastLaunchStateCode' "enabling-failed"

{-# COMPLETE
  FastLaunchStateCode_Disabling,
  FastLaunchStateCode_Disabling_failed,
  FastLaunchStateCode_Enabled,
  FastLaunchStateCode_Enabled_failed,
  FastLaunchStateCode_Enabling,
  FastLaunchStateCode_Enabling_failed,
  FastLaunchStateCode'
  #-}
