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
-- Module      : Amazonka.AutoScaling.Types.WarmPoolState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AutoScaling.Types.WarmPoolState
  ( WarmPoolState
      ( ..,
        WarmPoolState_Hibernated,
        WarmPoolState_Running,
        WarmPoolState_Stopped
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype WarmPoolState = WarmPoolState'
  { fromWarmPoolState ::
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

pattern WarmPoolState_Hibernated :: WarmPoolState
pattern WarmPoolState_Hibernated = WarmPoolState' "Hibernated"

pattern WarmPoolState_Running :: WarmPoolState
pattern WarmPoolState_Running = WarmPoolState' "Running"

pattern WarmPoolState_Stopped :: WarmPoolState
pattern WarmPoolState_Stopped = WarmPoolState' "Stopped"

{-# COMPLETE
  WarmPoolState_Hibernated,
  WarmPoolState_Running,
  WarmPoolState_Stopped,
  WarmPoolState'
  #-}
