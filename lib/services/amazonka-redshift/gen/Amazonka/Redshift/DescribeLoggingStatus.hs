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
-- Module      : Amazonka.Redshift.DescribeLoggingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes whether information, such as queries and connection attempts,
-- is being logged for the specified Amazon Redshift cluster.
module Amazonka.Redshift.DescribeLoggingStatus
  ( -- * Creating a Request
    DescribeLoggingStatus (..),
    newDescribeLoggingStatus,

    -- * Request Lenses
    describeLoggingStatus_clusterIdentifier,

    -- * Destructuring the Response
    LoggingStatus (..),
    newLoggingStatus,

    -- * Response Lenses
    loggingStatus_lastSuccessfulDeliveryTime,
    loggingStatus_s3KeyPrefix,
    loggingStatus_lastFailureMessage,
    loggingStatus_loggingEnabled,
    loggingStatus_logExports,
    loggingStatus_bucketName,
    loggingStatus_lastFailureTime,
    loggingStatus_logDestinationType,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeLoggingStatus' smart constructor.
data DescribeLoggingStatus = DescribeLoggingStatus'
  { -- | The identifier of the cluster from which to get the logging status.
    --
    -- Example: @examplecluster@
    clusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoggingStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterIdentifier', 'describeLoggingStatus_clusterIdentifier' - The identifier of the cluster from which to get the logging status.
--
-- Example: @examplecluster@
newDescribeLoggingStatus ::
  -- | 'clusterIdentifier'
  Prelude.Text ->
  DescribeLoggingStatus
newDescribeLoggingStatus pClusterIdentifier_ =
  DescribeLoggingStatus'
    { clusterIdentifier =
        pClusterIdentifier_
    }

-- | The identifier of the cluster from which to get the logging status.
--
-- Example: @examplecluster@
describeLoggingStatus_clusterIdentifier :: Lens.Lens' DescribeLoggingStatus Prelude.Text
describeLoggingStatus_clusterIdentifier = Lens.lens (\DescribeLoggingStatus' {clusterIdentifier} -> clusterIdentifier) (\s@DescribeLoggingStatus' {} a -> s {clusterIdentifier = a} :: DescribeLoggingStatus)

instance Core.AWSRequest DescribeLoggingStatus where
  type
    AWSResponse DescribeLoggingStatus =
      LoggingStatus
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeLoggingStatusResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable DescribeLoggingStatus where
  hashWithSalt _salt DescribeLoggingStatus' {..} =
    _salt `Prelude.hashWithSalt` clusterIdentifier

instance Prelude.NFData DescribeLoggingStatus where
  rnf DescribeLoggingStatus' {..} =
    Prelude.rnf clusterIdentifier

instance Core.ToHeaders DescribeLoggingStatus where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeLoggingStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLoggingStatus where
  toQuery DescribeLoggingStatus' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeLoggingStatus" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "ClusterIdentifier" Core.=: clusterIdentifier
      ]
