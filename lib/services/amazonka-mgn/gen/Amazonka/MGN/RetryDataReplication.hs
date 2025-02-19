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
-- Module      : Amazonka.MGN.RetryDataReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Causes the data replication initiation sequence to begin immediately
-- upon next Handshake for specified SourceServer IDs, regardless of when
-- the previous initiation started. This command will not work if the
-- SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.
module Amazonka.MGN.RetryDataReplication
  ( -- * Creating a Request
    RetryDataReplication (..),
    newRetryDataReplication,

    -- * Request Lenses
    retryDataReplication_sourceServerID,

    -- * Destructuring the Response
    SourceServer (..),
    newSourceServer,

    -- * Response Lenses
    sourceServer_tags,
    sourceServer_vcenterClientID,
    sourceServer_lifeCycle,
    sourceServer_replicationType,
    sourceServer_launchedInstance,
    sourceServer_arn,
    sourceServer_dataReplicationInfo,
    sourceServer_isArchived,
    sourceServer_sourceServerID,
    sourceServer_sourceProperties,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRetryDataReplication' smart constructor.
data RetryDataReplication = RetryDataReplication'
  { -- | Retry data replication for Source Server ID.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RetryDataReplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'retryDataReplication_sourceServerID' - Retry data replication for Source Server ID.
newRetryDataReplication ::
  -- | 'sourceServerID'
  Prelude.Text ->
  RetryDataReplication
newRetryDataReplication pSourceServerID_ =
  RetryDataReplication'
    { sourceServerID =
        pSourceServerID_
    }

-- | Retry data replication for Source Server ID.
retryDataReplication_sourceServerID :: Lens.Lens' RetryDataReplication Prelude.Text
retryDataReplication_sourceServerID = Lens.lens (\RetryDataReplication' {sourceServerID} -> sourceServerID) (\s@RetryDataReplication' {} a -> s {sourceServerID = a} :: RetryDataReplication)

instance Core.AWSRequest RetryDataReplication where
  type AWSResponse RetryDataReplication = SourceServer
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable RetryDataReplication where
  hashWithSalt _salt RetryDataReplication' {..} =
    _salt `Prelude.hashWithSalt` sourceServerID

instance Prelude.NFData RetryDataReplication where
  rnf RetryDataReplication' {..} =
    Prelude.rnf sourceServerID

instance Core.ToHeaders RetryDataReplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RetryDataReplication where
  toJSON RetryDataReplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath RetryDataReplication where
  toPath = Prelude.const "/RetryDataReplication"

instance Core.ToQuery RetryDataReplication where
  toQuery = Prelude.const Prelude.mempty
