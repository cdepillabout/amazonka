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
-- Module      : Amazonka.Proton.Types.RepositorySyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Types.RepositorySyncStatus
  ( RepositorySyncStatus
      ( ..,
        RepositorySyncStatus_FAILED,
        RepositorySyncStatus_INITIATED,
        RepositorySyncStatus_IN_PROGRESS,
        RepositorySyncStatus_QUEUED,
        RepositorySyncStatus_SUCCEEDED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype RepositorySyncStatus = RepositorySyncStatus'
  { fromRepositorySyncStatus ::
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

pattern RepositorySyncStatus_FAILED :: RepositorySyncStatus
pattern RepositorySyncStatus_FAILED = RepositorySyncStatus' "FAILED"

pattern RepositorySyncStatus_INITIATED :: RepositorySyncStatus
pattern RepositorySyncStatus_INITIATED = RepositorySyncStatus' "INITIATED"

pattern RepositorySyncStatus_IN_PROGRESS :: RepositorySyncStatus
pattern RepositorySyncStatus_IN_PROGRESS = RepositorySyncStatus' "IN_PROGRESS"

pattern RepositorySyncStatus_QUEUED :: RepositorySyncStatus
pattern RepositorySyncStatus_QUEUED = RepositorySyncStatus' "QUEUED"

pattern RepositorySyncStatus_SUCCEEDED :: RepositorySyncStatus
pattern RepositorySyncStatus_SUCCEEDED = RepositorySyncStatus' "SUCCEEDED"

{-# COMPLETE
  RepositorySyncStatus_FAILED,
  RepositorySyncStatus_INITIATED,
  RepositorySyncStatus_IN_PROGRESS,
  RepositorySyncStatus_QUEUED,
  RepositorySyncStatus_SUCCEEDED,
  RepositorySyncStatus'
  #-}
