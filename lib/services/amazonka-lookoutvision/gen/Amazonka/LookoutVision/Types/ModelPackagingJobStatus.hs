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
-- Module      : Amazonka.LookoutVision.Types.ModelPackagingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutVision.Types.ModelPackagingJobStatus
  ( ModelPackagingJobStatus
      ( ..,
        ModelPackagingJobStatus_CREATED,
        ModelPackagingJobStatus_FAILED,
        ModelPackagingJobStatus_RUNNING,
        ModelPackagingJobStatus_SUCCEEDED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ModelPackagingJobStatus = ModelPackagingJobStatus'
  { fromModelPackagingJobStatus ::
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

pattern ModelPackagingJobStatus_CREATED :: ModelPackagingJobStatus
pattern ModelPackagingJobStatus_CREATED = ModelPackagingJobStatus' "CREATED"

pattern ModelPackagingJobStatus_FAILED :: ModelPackagingJobStatus
pattern ModelPackagingJobStatus_FAILED = ModelPackagingJobStatus' "FAILED"

pattern ModelPackagingJobStatus_RUNNING :: ModelPackagingJobStatus
pattern ModelPackagingJobStatus_RUNNING = ModelPackagingJobStatus' "RUNNING"

pattern ModelPackagingJobStatus_SUCCEEDED :: ModelPackagingJobStatus
pattern ModelPackagingJobStatus_SUCCEEDED = ModelPackagingJobStatus' "SUCCEEDED"

{-# COMPLETE
  ModelPackagingJobStatus_CREATED,
  ModelPackagingJobStatus_FAILED,
  ModelPackagingJobStatus_RUNNING,
  ModelPackagingJobStatus_SUCCEEDED,
  ModelPackagingJobStatus'
  #-}
