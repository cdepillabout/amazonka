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
-- Module      : Amazonka.Lightsail.Types.AccountLevelBpaSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.AccountLevelBpaSyncStatus
  ( AccountLevelBpaSyncStatus
      ( ..,
        AccountLevelBpaSyncStatus_Defaulted,
        AccountLevelBpaSyncStatus_Failed,
        AccountLevelBpaSyncStatus_InSync,
        AccountLevelBpaSyncStatus_NeverSynced
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AccountLevelBpaSyncStatus = AccountLevelBpaSyncStatus'
  { fromAccountLevelBpaSyncStatus ::
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

pattern AccountLevelBpaSyncStatus_Defaulted :: AccountLevelBpaSyncStatus
pattern AccountLevelBpaSyncStatus_Defaulted = AccountLevelBpaSyncStatus' "Defaulted"

pattern AccountLevelBpaSyncStatus_Failed :: AccountLevelBpaSyncStatus
pattern AccountLevelBpaSyncStatus_Failed = AccountLevelBpaSyncStatus' "Failed"

pattern AccountLevelBpaSyncStatus_InSync :: AccountLevelBpaSyncStatus
pattern AccountLevelBpaSyncStatus_InSync = AccountLevelBpaSyncStatus' "InSync"

pattern AccountLevelBpaSyncStatus_NeverSynced :: AccountLevelBpaSyncStatus
pattern AccountLevelBpaSyncStatus_NeverSynced = AccountLevelBpaSyncStatus' "NeverSynced"

{-# COMPLETE
  AccountLevelBpaSyncStatus_Defaulted,
  AccountLevelBpaSyncStatus_Failed,
  AccountLevelBpaSyncStatus_InSync,
  AccountLevelBpaSyncStatus_NeverSynced,
  AccountLevelBpaSyncStatus'
  #-}
