{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MGN.GetReplicationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all ReplicationConfigurations, filtered by Source Server ID.
module Amazonka.MGN.GetReplicationConfiguration
  ( -- * Creating a Request
    GetReplicationConfiguration (..),
    newGetReplicationConfiguration,

    -- * Request Lenses
    getReplicationConfiguration_sourceServerID,

    -- * Destructuring the Response
    ReplicationConfiguration (..),
    newReplicationConfiguration,

    -- * Response Lenses
    replicationConfiguration_bandwidthThrottling,
    replicationConfiguration_name,
    replicationConfiguration_replicationServerInstanceType,
    replicationConfiguration_stagingAreaTags,
    replicationConfiguration_associateDefaultSecurityGroup,
    replicationConfiguration_defaultLargeStagingDiskType,
    replicationConfiguration_stagingAreaSubnetId,
    replicationConfiguration_createPublicIP,
    replicationConfiguration_dataPlaneRouting,
    replicationConfiguration_ebsEncryption,
    replicationConfiguration_replicatedDisks,
    replicationConfiguration_sourceServerID,
    replicationConfiguration_useDedicatedReplicationServer,
    replicationConfiguration_replicationServersSecurityGroupsIDs,
    replicationConfiguration_ebsEncryptionKeyArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetReplicationConfiguration' smart constructor.
data GetReplicationConfiguration = GetReplicationConfiguration'
  { -- | Request to get Replication Configuration by Source Server ID.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReplicationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'getReplicationConfiguration_sourceServerID' - Request to get Replication Configuration by Source Server ID.
newGetReplicationConfiguration ::
  -- | 'sourceServerID'
  Prelude.Text ->
  GetReplicationConfiguration
newGetReplicationConfiguration pSourceServerID_ =
  GetReplicationConfiguration'
    { sourceServerID =
        pSourceServerID_
    }

-- | Request to get Replication Configuration by Source Server ID.
getReplicationConfiguration_sourceServerID :: Lens.Lens' GetReplicationConfiguration Prelude.Text
getReplicationConfiguration_sourceServerID = Lens.lens (\GetReplicationConfiguration' {sourceServerID} -> sourceServerID) (\s@GetReplicationConfiguration' {} a -> s {sourceServerID = a} :: GetReplicationConfiguration)

instance Core.AWSRequest GetReplicationConfiguration where
  type
    AWSResponse GetReplicationConfiguration =
      ReplicationConfiguration
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetReplicationConfiguration where
  hashWithSalt _salt GetReplicationConfiguration' {..} =
    _salt `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData GetReplicationConfiguration where
  rnf GetReplicationConfiguration' {..} =
    Prelude.rnf sourceServerID

instance Core.ToHeaders GetReplicationConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetReplicationConfiguration where
  toJSON GetReplicationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath GetReplicationConfiguration where
  toPath = Prelude.const "/GetReplicationConfiguration"

instance Core.ToQuery GetReplicationConfiguration where
  toQuery = Prelude.const Prelude.mempty
