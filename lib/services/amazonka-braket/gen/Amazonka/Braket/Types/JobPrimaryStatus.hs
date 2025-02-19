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
-- Module      : Amazonka.Braket.Types.JobPrimaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Braket.Types.JobPrimaryStatus
  ( JobPrimaryStatus
      ( ..,
        JobPrimaryStatus_CANCELLED,
        JobPrimaryStatus_CANCELLING,
        JobPrimaryStatus_COMPLETED,
        JobPrimaryStatus_FAILED,
        JobPrimaryStatus_QUEUED,
        JobPrimaryStatus_RUNNING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype JobPrimaryStatus = JobPrimaryStatus'
  { fromJobPrimaryStatus ::
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

pattern JobPrimaryStatus_CANCELLED :: JobPrimaryStatus
pattern JobPrimaryStatus_CANCELLED = JobPrimaryStatus' "CANCELLED"

pattern JobPrimaryStatus_CANCELLING :: JobPrimaryStatus
pattern JobPrimaryStatus_CANCELLING = JobPrimaryStatus' "CANCELLING"

pattern JobPrimaryStatus_COMPLETED :: JobPrimaryStatus
pattern JobPrimaryStatus_COMPLETED = JobPrimaryStatus' "COMPLETED"

pattern JobPrimaryStatus_FAILED :: JobPrimaryStatus
pattern JobPrimaryStatus_FAILED = JobPrimaryStatus' "FAILED"

pattern JobPrimaryStatus_QUEUED :: JobPrimaryStatus
pattern JobPrimaryStatus_QUEUED = JobPrimaryStatus' "QUEUED"

pattern JobPrimaryStatus_RUNNING :: JobPrimaryStatus
pattern JobPrimaryStatus_RUNNING = JobPrimaryStatus' "RUNNING"

{-# COMPLETE
  JobPrimaryStatus_CANCELLED,
  JobPrimaryStatus_CANCELLING,
  JobPrimaryStatus_COMPLETED,
  JobPrimaryStatus_FAILED,
  JobPrimaryStatus_QUEUED,
  JobPrimaryStatus_RUNNING,
  JobPrimaryStatus'
  #-}
