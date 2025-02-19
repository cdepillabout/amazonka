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
-- Module      : Amazonka.MGN.Types.PostLaunchActionExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.PostLaunchActionExecutionStatus
  ( PostLaunchActionExecutionStatus
      ( ..,
        PostLaunchActionExecutionStatus_FAILED,
        PostLaunchActionExecutionStatus_IN_PROGRESS,
        PostLaunchActionExecutionStatus_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PostLaunchActionExecutionStatus = PostLaunchActionExecutionStatus'
  { fromPostLaunchActionExecutionStatus ::
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

pattern PostLaunchActionExecutionStatus_FAILED :: PostLaunchActionExecutionStatus
pattern PostLaunchActionExecutionStatus_FAILED = PostLaunchActionExecutionStatus' "FAILED"

pattern PostLaunchActionExecutionStatus_IN_PROGRESS :: PostLaunchActionExecutionStatus
pattern PostLaunchActionExecutionStatus_IN_PROGRESS = PostLaunchActionExecutionStatus' "IN_PROGRESS"

pattern PostLaunchActionExecutionStatus_SUCCESS :: PostLaunchActionExecutionStatus
pattern PostLaunchActionExecutionStatus_SUCCESS = PostLaunchActionExecutionStatus' "SUCCESS"

{-# COMPLETE
  PostLaunchActionExecutionStatus_FAILED,
  PostLaunchActionExecutionStatus_IN_PROGRESS,
  PostLaunchActionExecutionStatus_SUCCESS,
  PostLaunchActionExecutionStatus'
  #-}
