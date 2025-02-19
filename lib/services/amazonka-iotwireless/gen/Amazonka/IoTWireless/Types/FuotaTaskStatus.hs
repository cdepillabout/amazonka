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
-- Module      : Amazonka.IoTWireless.Types.FuotaTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.FuotaTaskStatus
  ( FuotaTaskStatus
      ( ..,
        FuotaTaskStatus_Delete_Waiting,
        FuotaTaskStatus_FuotaDone,
        FuotaTaskStatus_FuotaSession_Waiting,
        FuotaTaskStatus_In_FuotaSession,
        FuotaTaskStatus_Pending
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The status of a FUOTA task.
newtype FuotaTaskStatus = FuotaTaskStatus'
  { fromFuotaTaskStatus ::
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

pattern FuotaTaskStatus_Delete_Waiting :: FuotaTaskStatus
pattern FuotaTaskStatus_Delete_Waiting = FuotaTaskStatus' "Delete_Waiting"

pattern FuotaTaskStatus_FuotaDone :: FuotaTaskStatus
pattern FuotaTaskStatus_FuotaDone = FuotaTaskStatus' "FuotaDone"

pattern FuotaTaskStatus_FuotaSession_Waiting :: FuotaTaskStatus
pattern FuotaTaskStatus_FuotaSession_Waiting = FuotaTaskStatus' "FuotaSession_Waiting"

pattern FuotaTaskStatus_In_FuotaSession :: FuotaTaskStatus
pattern FuotaTaskStatus_In_FuotaSession = FuotaTaskStatus' "In_FuotaSession"

pattern FuotaTaskStatus_Pending :: FuotaTaskStatus
pattern FuotaTaskStatus_Pending = FuotaTaskStatus' "Pending"

{-# COMPLETE
  FuotaTaskStatus_Delete_Waiting,
  FuotaTaskStatus_FuotaDone,
  FuotaTaskStatus_FuotaSession_Waiting,
  FuotaTaskStatus_In_FuotaSession,
  FuotaTaskStatus_Pending,
  FuotaTaskStatus'
  #-}
