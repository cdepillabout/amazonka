{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MachineLearning.Types.RealtimeEndpointInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MachineLearning.Types.RealtimeEndpointInfo where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MachineLearning.Types.RealtimeEndpointStatus
import qualified Amazonka.Prelude as Prelude

-- | Describes the real-time endpoint information for an @MLModel@.
--
-- /See:/ 'newRealtimeEndpointInfo' smart constructor.
data RealtimeEndpointInfo = RealtimeEndpointInfo'
  { -- | The maximum processing rate for the real-time endpoint for @MLModel@,
    -- measured in incoming requests per second.
    peakRequestsPerSecond :: Prelude.Maybe Prelude.Int,
    -- | The URI that specifies where to send real-time prediction requests for
    -- the @MLModel@.
    --
    -- __Note:__ The application must wait until the real-time endpoint is
    -- ready before using this URI.
    endpointUrl :: Prelude.Maybe Prelude.Text,
    -- | The current status of the real-time endpoint for the @MLModel@. This
    -- element can have one of the following values:
    --
    -- -   @NONE@ - Endpoint does not exist or was previously deleted.
    --
    -- -   @READY@ - Endpoint is ready to be used for real-time predictions.
    --
    -- -   @UPDATING@ - Updating\/creating the endpoint.
    endpointStatus :: Prelude.Maybe RealtimeEndpointStatus,
    -- | The time that the request to create the real-time endpoint for the
    -- @MLModel@ was received. The time is expressed in epoch time.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RealtimeEndpointInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'peakRequestsPerSecond', 'realtimeEndpointInfo_peakRequestsPerSecond' - The maximum processing rate for the real-time endpoint for @MLModel@,
-- measured in incoming requests per second.
--
-- 'endpointUrl', 'realtimeEndpointInfo_endpointUrl' - The URI that specifies where to send real-time prediction requests for
-- the @MLModel@.
--
-- __Note:__ The application must wait until the real-time endpoint is
-- ready before using this URI.
--
-- 'endpointStatus', 'realtimeEndpointInfo_endpointStatus' - The current status of the real-time endpoint for the @MLModel@. This
-- element can have one of the following values:
--
-- -   @NONE@ - Endpoint does not exist or was previously deleted.
--
-- -   @READY@ - Endpoint is ready to be used for real-time predictions.
--
-- -   @UPDATING@ - Updating\/creating the endpoint.
--
-- 'createdAt', 'realtimeEndpointInfo_createdAt' - The time that the request to create the real-time endpoint for the
-- @MLModel@ was received. The time is expressed in epoch time.
newRealtimeEndpointInfo ::
  RealtimeEndpointInfo
newRealtimeEndpointInfo =
  RealtimeEndpointInfo'
    { peakRequestsPerSecond =
        Prelude.Nothing,
      endpointUrl = Prelude.Nothing,
      endpointStatus = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The maximum processing rate for the real-time endpoint for @MLModel@,
-- measured in incoming requests per second.
realtimeEndpointInfo_peakRequestsPerSecond :: Lens.Lens' RealtimeEndpointInfo (Prelude.Maybe Prelude.Int)
realtimeEndpointInfo_peakRequestsPerSecond = Lens.lens (\RealtimeEndpointInfo' {peakRequestsPerSecond} -> peakRequestsPerSecond) (\s@RealtimeEndpointInfo' {} a -> s {peakRequestsPerSecond = a} :: RealtimeEndpointInfo)

-- | The URI that specifies where to send real-time prediction requests for
-- the @MLModel@.
--
-- __Note:__ The application must wait until the real-time endpoint is
-- ready before using this URI.
realtimeEndpointInfo_endpointUrl :: Lens.Lens' RealtimeEndpointInfo (Prelude.Maybe Prelude.Text)
realtimeEndpointInfo_endpointUrl = Lens.lens (\RealtimeEndpointInfo' {endpointUrl} -> endpointUrl) (\s@RealtimeEndpointInfo' {} a -> s {endpointUrl = a} :: RealtimeEndpointInfo)

-- | The current status of the real-time endpoint for the @MLModel@. This
-- element can have one of the following values:
--
-- -   @NONE@ - Endpoint does not exist or was previously deleted.
--
-- -   @READY@ - Endpoint is ready to be used for real-time predictions.
--
-- -   @UPDATING@ - Updating\/creating the endpoint.
realtimeEndpointInfo_endpointStatus :: Lens.Lens' RealtimeEndpointInfo (Prelude.Maybe RealtimeEndpointStatus)
realtimeEndpointInfo_endpointStatus = Lens.lens (\RealtimeEndpointInfo' {endpointStatus} -> endpointStatus) (\s@RealtimeEndpointInfo' {} a -> s {endpointStatus = a} :: RealtimeEndpointInfo)

-- | The time that the request to create the real-time endpoint for the
-- @MLModel@ was received. The time is expressed in epoch time.
realtimeEndpointInfo_createdAt :: Lens.Lens' RealtimeEndpointInfo (Prelude.Maybe Prelude.UTCTime)
realtimeEndpointInfo_createdAt = Lens.lens (\RealtimeEndpointInfo' {createdAt} -> createdAt) (\s@RealtimeEndpointInfo' {} a -> s {createdAt = a} :: RealtimeEndpointInfo) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON RealtimeEndpointInfo where
  parseJSON =
    Core.withObject
      "RealtimeEndpointInfo"
      ( \x ->
          RealtimeEndpointInfo'
            Prelude.<$> (x Core..:? "PeakRequestsPerSecond")
            Prelude.<*> (x Core..:? "EndpointUrl")
            Prelude.<*> (x Core..:? "EndpointStatus")
            Prelude.<*> (x Core..:? "CreatedAt")
      )

instance Prelude.Hashable RealtimeEndpointInfo where
  hashWithSalt _salt RealtimeEndpointInfo' {..} =
    _salt `Prelude.hashWithSalt` peakRequestsPerSecond
      `Prelude.hashWithSalt` endpointUrl
      `Prelude.hashWithSalt` endpointStatus
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData RealtimeEndpointInfo where
  rnf RealtimeEndpointInfo' {..} =
    Prelude.rnf peakRequestsPerSecond
      `Prelude.seq` Prelude.rnf endpointUrl
      `Prelude.seq` Prelude.rnf endpointStatus
      `Prelude.seq` Prelude.rnf createdAt
