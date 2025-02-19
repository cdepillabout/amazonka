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
-- Module      : Amazonka.SageMaker.Types.DeviceDeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DeviceDeploymentStatus
  ( DeviceDeploymentStatus
      ( ..,
        DeviceDeploymentStatus_DEPLOYED,
        DeviceDeploymentStatus_FAILED,
        DeviceDeploymentStatus_INPROGRESS,
        DeviceDeploymentStatus_READYTODEPLOY,
        DeviceDeploymentStatus_STOPPED,
        DeviceDeploymentStatus_STOPPING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DeviceDeploymentStatus = DeviceDeploymentStatus'
  { fromDeviceDeploymentStatus ::
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

pattern DeviceDeploymentStatus_DEPLOYED :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_DEPLOYED = DeviceDeploymentStatus' "DEPLOYED"

pattern DeviceDeploymentStatus_FAILED :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_FAILED = DeviceDeploymentStatus' "FAILED"

pattern DeviceDeploymentStatus_INPROGRESS :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_INPROGRESS = DeviceDeploymentStatus' "INPROGRESS"

pattern DeviceDeploymentStatus_READYTODEPLOY :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_READYTODEPLOY = DeviceDeploymentStatus' "READYTODEPLOY"

pattern DeviceDeploymentStatus_STOPPED :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_STOPPED = DeviceDeploymentStatus' "STOPPED"

pattern DeviceDeploymentStatus_STOPPING :: DeviceDeploymentStatus
pattern DeviceDeploymentStatus_STOPPING = DeviceDeploymentStatus' "STOPPING"

{-# COMPLETE
  DeviceDeploymentStatus_DEPLOYED,
  DeviceDeploymentStatus_FAILED,
  DeviceDeploymentStatus_INPROGRESS,
  DeviceDeploymentStatus_READYTODEPLOY,
  DeviceDeploymentStatus_STOPPED,
  DeviceDeploymentStatus_STOPPING,
  DeviceDeploymentStatus'
  #-}
