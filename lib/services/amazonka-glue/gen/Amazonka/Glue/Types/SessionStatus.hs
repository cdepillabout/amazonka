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
-- Module      : Amazonka.Glue.Types.SessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.SessionStatus
  ( SessionStatus
      ( ..,
        SessionStatus_FAILED,
        SessionStatus_PROVISIONING,
        SessionStatus_READY,
        SessionStatus_STOPPED,
        SessionStatus_STOPPING,
        SessionStatus_TIMEOUT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SessionStatus = SessionStatus'
  { fromSessionStatus ::
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

pattern SessionStatus_FAILED :: SessionStatus
pattern SessionStatus_FAILED = SessionStatus' "FAILED"

pattern SessionStatus_PROVISIONING :: SessionStatus
pattern SessionStatus_PROVISIONING = SessionStatus' "PROVISIONING"

pattern SessionStatus_READY :: SessionStatus
pattern SessionStatus_READY = SessionStatus' "READY"

pattern SessionStatus_STOPPED :: SessionStatus
pattern SessionStatus_STOPPED = SessionStatus' "STOPPED"

pattern SessionStatus_STOPPING :: SessionStatus
pattern SessionStatus_STOPPING = SessionStatus' "STOPPING"

pattern SessionStatus_TIMEOUT :: SessionStatus
pattern SessionStatus_TIMEOUT = SessionStatus' "TIMEOUT"

{-# COMPLETE
  SessionStatus_FAILED,
  SessionStatus_PROVISIONING,
  SessionStatus_READY,
  SessionStatus_STOPPED,
  SessionStatus_STOPPING,
  SessionStatus_TIMEOUT,
  SessionStatus'
  #-}
