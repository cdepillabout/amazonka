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
-- Module      : Amazonka.RobOMaker.Types.SimulationJobBatchSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.SimulationJobBatchSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RobOMaker.Types.SimulationJobBatchStatus

-- | Information about a simulation job batch.
--
-- /See:/ 'newSimulationJobBatchSummary' smart constructor.
data SimulationJobBatchSummary = SimulationJobBatchSummary'
  { -- | The number of failed simulation job requests.
    failedRequestCount :: Prelude.Maybe Prelude.Int,
    -- | The time, in milliseconds since the epoch, when the simulation job batch
    -- was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The number of created simulation job requests.
    createdRequestCount :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the batch.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the simulation job batch.
    --
    -- [Pending]
    --     The simulation job batch request is pending.
    --
    -- [InProgress]
    --     The simulation job batch is in progress.
    --
    -- [Failed]
    --     The simulation job batch failed. One or more simulation job requests
    --     could not be completed due to an internal failure (like
    --     @InternalServiceError@). See @failureCode@ and @failureReason@ for
    --     more information.
    --
    -- [Completed]
    --     The simulation batch job completed. A batch is complete when (1)
    --     there are no pending simulation job requests in the batch and none
    --     of the failed simulation job requests are due to
    --     @InternalServiceError@ and (2) when all created simulation jobs have
    --     reached a terminal state (for example, @Completed@ or @Failed@).
    --
    -- [Canceled]
    --     The simulation batch job was cancelled.
    --
    -- [Canceling]
    --     The simulation batch job is being cancelled.
    --
    -- [Completing]
    --     The simulation batch job is completing.
    --
    -- [TimingOut]
    --     The simulation job batch is timing out.
    --
    --     If a batch timing out, and there are pending requests that were
    --     failing due to an internal failure (like @InternalServiceError@),
    --     the batch status will be @Failed@. If there are no such failing
    --     request, the batch status will be @TimedOut@.
    --
    -- [TimedOut]
    --     The simulation batch job timed out.
    status :: Prelude.Maybe SimulationJobBatchStatus,
    -- | The number of pending simulation job requests.
    pendingRequestCount :: Prelude.Maybe Prelude.Int,
    -- | The time, in milliseconds since the epoch, when the simulation job batch
    -- was created.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SimulationJobBatchSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedRequestCount', 'simulationJobBatchSummary_failedRequestCount' - The number of failed simulation job requests.
--
-- 'lastUpdatedAt', 'simulationJobBatchSummary_lastUpdatedAt' - The time, in milliseconds since the epoch, when the simulation job batch
-- was last updated.
--
-- 'createdRequestCount', 'simulationJobBatchSummary_createdRequestCount' - The number of created simulation job requests.
--
-- 'arn', 'simulationJobBatchSummary_arn' - The Amazon Resource Name (ARN) of the batch.
--
-- 'status', 'simulationJobBatchSummary_status' - The status of the simulation job batch.
--
-- [Pending]
--     The simulation job batch request is pending.
--
-- [InProgress]
--     The simulation job batch is in progress.
--
-- [Failed]
--     The simulation job batch failed. One or more simulation job requests
--     could not be completed due to an internal failure (like
--     @InternalServiceError@). See @failureCode@ and @failureReason@ for
--     more information.
--
-- [Completed]
--     The simulation batch job completed. A batch is complete when (1)
--     there are no pending simulation job requests in the batch and none
--     of the failed simulation job requests are due to
--     @InternalServiceError@ and (2) when all created simulation jobs have
--     reached a terminal state (for example, @Completed@ or @Failed@).
--
-- [Canceled]
--     The simulation batch job was cancelled.
--
-- [Canceling]
--     The simulation batch job is being cancelled.
--
-- [Completing]
--     The simulation batch job is completing.
--
-- [TimingOut]
--     The simulation job batch is timing out.
--
--     If a batch timing out, and there are pending requests that were
--     failing due to an internal failure (like @InternalServiceError@),
--     the batch status will be @Failed@. If there are no such failing
--     request, the batch status will be @TimedOut@.
--
-- [TimedOut]
--     The simulation batch job timed out.
--
-- 'pendingRequestCount', 'simulationJobBatchSummary_pendingRequestCount' - The number of pending simulation job requests.
--
-- 'createdAt', 'simulationJobBatchSummary_createdAt' - The time, in milliseconds since the epoch, when the simulation job batch
-- was created.
newSimulationJobBatchSummary ::
  SimulationJobBatchSummary
newSimulationJobBatchSummary =
  SimulationJobBatchSummary'
    { failedRequestCount =
        Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      createdRequestCount = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      pendingRequestCount = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The number of failed simulation job requests.
simulationJobBatchSummary_failedRequestCount :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.Int)
simulationJobBatchSummary_failedRequestCount = Lens.lens (\SimulationJobBatchSummary' {failedRequestCount} -> failedRequestCount) (\s@SimulationJobBatchSummary' {} a -> s {failedRequestCount = a} :: SimulationJobBatchSummary)

-- | The time, in milliseconds since the epoch, when the simulation job batch
-- was last updated.
simulationJobBatchSummary_lastUpdatedAt :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.UTCTime)
simulationJobBatchSummary_lastUpdatedAt = Lens.lens (\SimulationJobBatchSummary' {lastUpdatedAt} -> lastUpdatedAt) (\s@SimulationJobBatchSummary' {} a -> s {lastUpdatedAt = a} :: SimulationJobBatchSummary) Prelude.. Lens.mapping Core._Time

-- | The number of created simulation job requests.
simulationJobBatchSummary_createdRequestCount :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.Int)
simulationJobBatchSummary_createdRequestCount = Lens.lens (\SimulationJobBatchSummary' {createdRequestCount} -> createdRequestCount) (\s@SimulationJobBatchSummary' {} a -> s {createdRequestCount = a} :: SimulationJobBatchSummary)

-- | The Amazon Resource Name (ARN) of the batch.
simulationJobBatchSummary_arn :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.Text)
simulationJobBatchSummary_arn = Lens.lens (\SimulationJobBatchSummary' {arn} -> arn) (\s@SimulationJobBatchSummary' {} a -> s {arn = a} :: SimulationJobBatchSummary)

-- | The status of the simulation job batch.
--
-- [Pending]
--     The simulation job batch request is pending.
--
-- [InProgress]
--     The simulation job batch is in progress.
--
-- [Failed]
--     The simulation job batch failed. One or more simulation job requests
--     could not be completed due to an internal failure (like
--     @InternalServiceError@). See @failureCode@ and @failureReason@ for
--     more information.
--
-- [Completed]
--     The simulation batch job completed. A batch is complete when (1)
--     there are no pending simulation job requests in the batch and none
--     of the failed simulation job requests are due to
--     @InternalServiceError@ and (2) when all created simulation jobs have
--     reached a terminal state (for example, @Completed@ or @Failed@).
--
-- [Canceled]
--     The simulation batch job was cancelled.
--
-- [Canceling]
--     The simulation batch job is being cancelled.
--
-- [Completing]
--     The simulation batch job is completing.
--
-- [TimingOut]
--     The simulation job batch is timing out.
--
--     If a batch timing out, and there are pending requests that were
--     failing due to an internal failure (like @InternalServiceError@),
--     the batch status will be @Failed@. If there are no such failing
--     request, the batch status will be @TimedOut@.
--
-- [TimedOut]
--     The simulation batch job timed out.
simulationJobBatchSummary_status :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe SimulationJobBatchStatus)
simulationJobBatchSummary_status = Lens.lens (\SimulationJobBatchSummary' {status} -> status) (\s@SimulationJobBatchSummary' {} a -> s {status = a} :: SimulationJobBatchSummary)

-- | The number of pending simulation job requests.
simulationJobBatchSummary_pendingRequestCount :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.Int)
simulationJobBatchSummary_pendingRequestCount = Lens.lens (\SimulationJobBatchSummary' {pendingRequestCount} -> pendingRequestCount) (\s@SimulationJobBatchSummary' {} a -> s {pendingRequestCount = a} :: SimulationJobBatchSummary)

-- | The time, in milliseconds since the epoch, when the simulation job batch
-- was created.
simulationJobBatchSummary_createdAt :: Lens.Lens' SimulationJobBatchSummary (Prelude.Maybe Prelude.UTCTime)
simulationJobBatchSummary_createdAt = Lens.lens (\SimulationJobBatchSummary' {createdAt} -> createdAt) (\s@SimulationJobBatchSummary' {} a -> s {createdAt = a} :: SimulationJobBatchSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON SimulationJobBatchSummary where
  parseJSON =
    Core.withObject
      "SimulationJobBatchSummary"
      ( \x ->
          SimulationJobBatchSummary'
            Prelude.<$> (x Core..:? "failedRequestCount")
            Prelude.<*> (x Core..:? "lastUpdatedAt")
            Prelude.<*> (x Core..:? "createdRequestCount")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "pendingRequestCount")
            Prelude.<*> (x Core..:? "createdAt")
      )

instance Prelude.Hashable SimulationJobBatchSummary where
  hashWithSalt _salt SimulationJobBatchSummary' {..} =
    _salt `Prelude.hashWithSalt` failedRequestCount
      `Prelude.hashWithSalt` lastUpdatedAt
      `Prelude.hashWithSalt` createdRequestCount
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` pendingRequestCount
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData SimulationJobBatchSummary where
  rnf SimulationJobBatchSummary' {..} =
    Prelude.rnf failedRequestCount
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf createdRequestCount
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf pendingRequestCount
      `Prelude.seq` Prelude.rnf createdAt
