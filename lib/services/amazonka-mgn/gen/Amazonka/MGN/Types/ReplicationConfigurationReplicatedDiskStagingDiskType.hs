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
-- Module      : Amazonka.MGN.Types.ReplicationConfigurationReplicatedDiskStagingDiskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.ReplicationConfigurationReplicatedDiskStagingDiskType
  ( ReplicationConfigurationReplicatedDiskStagingDiskType
      ( ..,
        ReplicationConfigurationReplicatedDiskStagingDiskType_AUTO,
        ReplicationConfigurationReplicatedDiskStagingDiskType_GP2,
        ReplicationConfigurationReplicatedDiskStagingDiskType_GP3,
        ReplicationConfigurationReplicatedDiskStagingDiskType_IO1,
        ReplicationConfigurationReplicatedDiskStagingDiskType_IO2,
        ReplicationConfigurationReplicatedDiskStagingDiskType_SC1,
        ReplicationConfigurationReplicatedDiskStagingDiskType_ST1,
        ReplicationConfigurationReplicatedDiskStagingDiskType_STANDARD
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ReplicationConfigurationReplicatedDiskStagingDiskType = ReplicationConfigurationReplicatedDiskStagingDiskType'
  { fromReplicationConfigurationReplicatedDiskStagingDiskType ::
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

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_AUTO :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_AUTO = ReplicationConfigurationReplicatedDiskStagingDiskType' "AUTO"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_GP2 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_GP2 = ReplicationConfigurationReplicatedDiskStagingDiskType' "GP2"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_GP3 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_GP3 = ReplicationConfigurationReplicatedDiskStagingDiskType' "GP3"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_IO1 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_IO1 = ReplicationConfigurationReplicatedDiskStagingDiskType' "IO1"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_IO2 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_IO2 = ReplicationConfigurationReplicatedDiskStagingDiskType' "IO2"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_SC1 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_SC1 = ReplicationConfigurationReplicatedDiskStagingDiskType' "SC1"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_ST1 :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_ST1 = ReplicationConfigurationReplicatedDiskStagingDiskType' "ST1"

pattern ReplicationConfigurationReplicatedDiskStagingDiskType_STANDARD :: ReplicationConfigurationReplicatedDiskStagingDiskType
pattern ReplicationConfigurationReplicatedDiskStagingDiskType_STANDARD = ReplicationConfigurationReplicatedDiskStagingDiskType' "STANDARD"

{-# COMPLETE
  ReplicationConfigurationReplicatedDiskStagingDiskType_AUTO,
  ReplicationConfigurationReplicatedDiskStagingDiskType_GP2,
  ReplicationConfigurationReplicatedDiskStagingDiskType_GP3,
  ReplicationConfigurationReplicatedDiskStagingDiskType_IO1,
  ReplicationConfigurationReplicatedDiskStagingDiskType_IO2,
  ReplicationConfigurationReplicatedDiskStagingDiskType_SC1,
  ReplicationConfigurationReplicatedDiskStagingDiskType_ST1,
  ReplicationConfigurationReplicatedDiskStagingDiskType_STANDARD,
  ReplicationConfigurationReplicatedDiskStagingDiskType'
  #-}
