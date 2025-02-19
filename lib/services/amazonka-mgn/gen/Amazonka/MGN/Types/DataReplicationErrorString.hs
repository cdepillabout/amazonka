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
-- Module      : Amazonka.MGN.Types.DataReplicationErrorString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.DataReplicationErrorString
  ( DataReplicationErrorString
      ( ..,
        DataReplicationErrorString_AGENT_NOT_SEEN,
        DataReplicationErrorString_FAILED_TO_ATTACH_STAGING_DISKS,
        DataReplicationErrorString_FAILED_TO_AUTHENTICATE_WITH_SERVICE,
        DataReplicationErrorString_FAILED_TO_BOOT_REPLICATION_SERVER,
        DataReplicationErrorString_FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER,
        DataReplicationErrorString_FAILED_TO_CREATE_SECURITY_GROUP,
        DataReplicationErrorString_FAILED_TO_CREATE_STAGING_DISKS,
        DataReplicationErrorString_FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE,
        DataReplicationErrorString_FAILED_TO_LAUNCH_REPLICATION_SERVER,
        DataReplicationErrorString_FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT,
        DataReplicationErrorString_FAILED_TO_START_DATA_TRANSFER,
        DataReplicationErrorString_LAST_SNAPSHOT_JOB_FAILED,
        DataReplicationErrorString_NOT_CONVERGING,
        DataReplicationErrorString_SNAPSHOTS_FAILURE,
        DataReplicationErrorString_UNSTABLE_NETWORK,
        DataReplicationErrorString_UNSUPPORTED_VM_CONFIGURATION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DataReplicationErrorString = DataReplicationErrorString'
  { fromDataReplicationErrorString ::
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

pattern DataReplicationErrorString_AGENT_NOT_SEEN :: DataReplicationErrorString
pattern DataReplicationErrorString_AGENT_NOT_SEEN = DataReplicationErrorString' "AGENT_NOT_SEEN"

pattern DataReplicationErrorString_FAILED_TO_ATTACH_STAGING_DISKS :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_ATTACH_STAGING_DISKS = DataReplicationErrorString' "FAILED_TO_ATTACH_STAGING_DISKS"

pattern DataReplicationErrorString_FAILED_TO_AUTHENTICATE_WITH_SERVICE :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_AUTHENTICATE_WITH_SERVICE = DataReplicationErrorString' "FAILED_TO_AUTHENTICATE_WITH_SERVICE"

pattern DataReplicationErrorString_FAILED_TO_BOOT_REPLICATION_SERVER :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_BOOT_REPLICATION_SERVER = DataReplicationErrorString' "FAILED_TO_BOOT_REPLICATION_SERVER"

pattern DataReplicationErrorString_FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER = DataReplicationErrorString' "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"

pattern DataReplicationErrorString_FAILED_TO_CREATE_SECURITY_GROUP :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_CREATE_SECURITY_GROUP = DataReplicationErrorString' "FAILED_TO_CREATE_SECURITY_GROUP"

pattern DataReplicationErrorString_FAILED_TO_CREATE_STAGING_DISKS :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_CREATE_STAGING_DISKS = DataReplicationErrorString' "FAILED_TO_CREATE_STAGING_DISKS"

pattern DataReplicationErrorString_FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE = DataReplicationErrorString' "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"

pattern DataReplicationErrorString_FAILED_TO_LAUNCH_REPLICATION_SERVER :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_LAUNCH_REPLICATION_SERVER = DataReplicationErrorString' "FAILED_TO_LAUNCH_REPLICATION_SERVER"

pattern DataReplicationErrorString_FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT = DataReplicationErrorString' "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"

pattern DataReplicationErrorString_FAILED_TO_START_DATA_TRANSFER :: DataReplicationErrorString
pattern DataReplicationErrorString_FAILED_TO_START_DATA_TRANSFER = DataReplicationErrorString' "FAILED_TO_START_DATA_TRANSFER"

pattern DataReplicationErrorString_LAST_SNAPSHOT_JOB_FAILED :: DataReplicationErrorString
pattern DataReplicationErrorString_LAST_SNAPSHOT_JOB_FAILED = DataReplicationErrorString' "LAST_SNAPSHOT_JOB_FAILED"

pattern DataReplicationErrorString_NOT_CONVERGING :: DataReplicationErrorString
pattern DataReplicationErrorString_NOT_CONVERGING = DataReplicationErrorString' "NOT_CONVERGING"

pattern DataReplicationErrorString_SNAPSHOTS_FAILURE :: DataReplicationErrorString
pattern DataReplicationErrorString_SNAPSHOTS_FAILURE = DataReplicationErrorString' "SNAPSHOTS_FAILURE"

pattern DataReplicationErrorString_UNSTABLE_NETWORK :: DataReplicationErrorString
pattern DataReplicationErrorString_UNSTABLE_NETWORK = DataReplicationErrorString' "UNSTABLE_NETWORK"

pattern DataReplicationErrorString_UNSUPPORTED_VM_CONFIGURATION :: DataReplicationErrorString
pattern DataReplicationErrorString_UNSUPPORTED_VM_CONFIGURATION = DataReplicationErrorString' "UNSUPPORTED_VM_CONFIGURATION"

{-# COMPLETE
  DataReplicationErrorString_AGENT_NOT_SEEN,
  DataReplicationErrorString_FAILED_TO_ATTACH_STAGING_DISKS,
  DataReplicationErrorString_FAILED_TO_AUTHENTICATE_WITH_SERVICE,
  DataReplicationErrorString_FAILED_TO_BOOT_REPLICATION_SERVER,
  DataReplicationErrorString_FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER,
  DataReplicationErrorString_FAILED_TO_CREATE_SECURITY_GROUP,
  DataReplicationErrorString_FAILED_TO_CREATE_STAGING_DISKS,
  DataReplicationErrorString_FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE,
  DataReplicationErrorString_FAILED_TO_LAUNCH_REPLICATION_SERVER,
  DataReplicationErrorString_FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT,
  DataReplicationErrorString_FAILED_TO_START_DATA_TRANSFER,
  DataReplicationErrorString_LAST_SNAPSHOT_JOB_FAILED,
  DataReplicationErrorString_NOT_CONVERGING,
  DataReplicationErrorString_SNAPSHOTS_FAILURE,
  DataReplicationErrorString_UNSTABLE_NETWORK,
  DataReplicationErrorString_UNSUPPORTED_VM_CONFIGURATION,
  DataReplicationErrorString'
  #-}
