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
-- Module      : Amazonka.FinSpaceData.Types.DataViewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FinSpaceData.Types.DataViewStatus
  ( DataViewStatus
      ( ..,
        DataViewStatus_CANCELLED,
        DataViewStatus_FAILED,
        DataViewStatus_FAILED_CLEANUP_FAILED,
        DataViewStatus_PENDING,
        DataViewStatus_RUNNING,
        DataViewStatus_STARTING,
        DataViewStatus_SUCCESS,
        DataViewStatus_TIMEOUT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Status of a DataView
newtype DataViewStatus = DataViewStatus'
  { fromDataViewStatus ::
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

pattern DataViewStatus_CANCELLED :: DataViewStatus
pattern DataViewStatus_CANCELLED = DataViewStatus' "CANCELLED"

pattern DataViewStatus_FAILED :: DataViewStatus
pattern DataViewStatus_FAILED = DataViewStatus' "FAILED"

pattern DataViewStatus_FAILED_CLEANUP_FAILED :: DataViewStatus
pattern DataViewStatus_FAILED_CLEANUP_FAILED = DataViewStatus' "FAILED_CLEANUP_FAILED"

pattern DataViewStatus_PENDING :: DataViewStatus
pattern DataViewStatus_PENDING = DataViewStatus' "PENDING"

pattern DataViewStatus_RUNNING :: DataViewStatus
pattern DataViewStatus_RUNNING = DataViewStatus' "RUNNING"

pattern DataViewStatus_STARTING :: DataViewStatus
pattern DataViewStatus_STARTING = DataViewStatus' "STARTING"

pattern DataViewStatus_SUCCESS :: DataViewStatus
pattern DataViewStatus_SUCCESS = DataViewStatus' "SUCCESS"

pattern DataViewStatus_TIMEOUT :: DataViewStatus
pattern DataViewStatus_TIMEOUT = DataViewStatus' "TIMEOUT"

{-# COMPLETE
  DataViewStatus_CANCELLED,
  DataViewStatus_FAILED,
  DataViewStatus_FAILED_CLEANUP_FAILED,
  DataViewStatus_PENDING,
  DataViewStatus_RUNNING,
  DataViewStatus_STARTING,
  DataViewStatus_SUCCESS,
  DataViewStatus_TIMEOUT,
  DataViewStatus'
  #-}
