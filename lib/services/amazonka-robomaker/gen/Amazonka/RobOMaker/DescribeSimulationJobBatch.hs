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
-- Module      : Amazonka.RobOMaker.DescribeSimulationJobBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a simulation job batch.
module Amazonka.RobOMaker.DescribeSimulationJobBatch
  ( -- * Creating a Request
    DescribeSimulationJobBatch (..),
    newDescribeSimulationJobBatch,

    -- * Request Lenses
    describeSimulationJobBatch_batch,

    -- * Destructuring the Response
    DescribeSimulationJobBatchResponse (..),
    newDescribeSimulationJobBatchResponse,

    -- * Response Lenses
    describeSimulationJobBatchResponse_tags,
    describeSimulationJobBatchResponse_failureCode,
    describeSimulationJobBatchResponse_clientRequestToken,
    describeSimulationJobBatchResponse_lastUpdatedAt,
    describeSimulationJobBatchResponse_arn,
    describeSimulationJobBatchResponse_status,
    describeSimulationJobBatchResponse_failedRequests,
    describeSimulationJobBatchResponse_pendingRequests,
    describeSimulationJobBatchResponse_createdRequests,
    describeSimulationJobBatchResponse_batchPolicy,
    describeSimulationJobBatchResponse_createdAt,
    describeSimulationJobBatchResponse_failureReason,
    describeSimulationJobBatchResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RobOMaker.Types

-- | /See:/ 'newDescribeSimulationJobBatch' smart constructor.
data DescribeSimulationJobBatch = DescribeSimulationJobBatch'
  { -- | The id of the batch to describe.
    batch :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSimulationJobBatch' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batch', 'describeSimulationJobBatch_batch' - The id of the batch to describe.
newDescribeSimulationJobBatch ::
  -- | 'batch'
  Prelude.Text ->
  DescribeSimulationJobBatch
newDescribeSimulationJobBatch pBatch_ =
  DescribeSimulationJobBatch' {batch = pBatch_}

-- | The id of the batch to describe.
describeSimulationJobBatch_batch :: Lens.Lens' DescribeSimulationJobBatch Prelude.Text
describeSimulationJobBatch_batch = Lens.lens (\DescribeSimulationJobBatch' {batch} -> batch) (\s@DescribeSimulationJobBatch' {} a -> s {batch = a} :: DescribeSimulationJobBatch)

instance Core.AWSRequest DescribeSimulationJobBatch where
  type
    AWSResponse DescribeSimulationJobBatch =
      DescribeSimulationJobBatchResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSimulationJobBatchResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "failureCode")
            Prelude.<*> (x Core..?> "clientRequestToken")
            Prelude.<*> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "failedRequests" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "pendingRequests")
            Prelude.<*> ( x Core..?> "createdRequests"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "batchPolicy")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "failureReason")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSimulationJobBatch where
  hashWithSalt _salt DescribeSimulationJobBatch' {..} =
    _salt `Prelude.hashWithSalt` batch

instance Prelude.NFData DescribeSimulationJobBatch where
  rnf DescribeSimulationJobBatch' {..} =
    Prelude.rnf batch

instance Core.ToHeaders DescribeSimulationJobBatch where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSimulationJobBatch where
  toJSON DescribeSimulationJobBatch' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("batch" Core..= batch)]
      )

instance Core.ToPath DescribeSimulationJobBatch where
  toPath = Prelude.const "/describeSimulationJobBatch"

instance Core.ToQuery DescribeSimulationJobBatch where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSimulationJobBatchResponse' smart constructor.
data DescribeSimulationJobBatchResponse = DescribeSimulationJobBatchResponse'
  { -- | A map that contains tag keys and tag values that are attached to the
    -- simulation job batch.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The failure code of the simulation job batch.
    failureCode :: Prelude.Maybe SimulationJobBatchErrorCode,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the simulation job batch
    -- was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the batch.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the batch.
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
    -- | A list of failed create simulation job requests. The request failed to
    -- be created into a simulation job. Failed requests do not have a
    -- simulation job ID.
    failedRequests :: Prelude.Maybe [FailedCreateSimulationJobRequest],
    -- | A list of pending simulation job requests. These requests have not yet
    -- been created into simulation jobs.
    pendingRequests :: Prelude.Maybe (Prelude.NonEmpty SimulationJobRequest),
    -- | A list of created simulation job summaries.
    createdRequests :: Prelude.Maybe [SimulationJobSummary],
    -- | The batch policy.
    batchPolicy :: Prelude.Maybe BatchPolicy,
    -- | The time, in milliseconds since the epoch, when the simulation job batch
    -- was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The reason the simulation job batch failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSimulationJobBatchResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeSimulationJobBatchResponse_tags' - A map that contains tag keys and tag values that are attached to the
-- simulation job batch.
--
-- 'failureCode', 'describeSimulationJobBatchResponse_failureCode' - The failure code of the simulation job batch.
--
-- 'clientRequestToken', 'describeSimulationJobBatchResponse_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'lastUpdatedAt', 'describeSimulationJobBatchResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the simulation job batch
-- was last updated.
--
-- 'arn', 'describeSimulationJobBatchResponse_arn' - The Amazon Resource Name (ARN) of the batch.
--
-- 'status', 'describeSimulationJobBatchResponse_status' - The status of the batch.
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
-- 'failedRequests', 'describeSimulationJobBatchResponse_failedRequests' - A list of failed create simulation job requests. The request failed to
-- be created into a simulation job. Failed requests do not have a
-- simulation job ID.
--
-- 'pendingRequests', 'describeSimulationJobBatchResponse_pendingRequests' - A list of pending simulation job requests. These requests have not yet
-- been created into simulation jobs.
--
-- 'createdRequests', 'describeSimulationJobBatchResponse_createdRequests' - A list of created simulation job summaries.
--
-- 'batchPolicy', 'describeSimulationJobBatchResponse_batchPolicy' - The batch policy.
--
-- 'createdAt', 'describeSimulationJobBatchResponse_createdAt' - The time, in milliseconds since the epoch, when the simulation job batch
-- was created.
--
-- 'failureReason', 'describeSimulationJobBatchResponse_failureReason' - The reason the simulation job batch failed.
--
-- 'httpStatus', 'describeSimulationJobBatchResponse_httpStatus' - The response's http status code.
newDescribeSimulationJobBatchResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSimulationJobBatchResponse
newDescribeSimulationJobBatchResponse pHttpStatus_ =
  DescribeSimulationJobBatchResponse'
    { tags =
        Prelude.Nothing,
      failureCode = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      failedRequests = Prelude.Nothing,
      pendingRequests = Prelude.Nothing,
      createdRequests = Prelude.Nothing,
      batchPolicy = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A map that contains tag keys and tag values that are attached to the
-- simulation job batch.
describeSimulationJobBatchResponse_tags :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeSimulationJobBatchResponse_tags = Lens.lens (\DescribeSimulationJobBatchResponse' {tags} -> tags) (\s@DescribeSimulationJobBatchResponse' {} a -> s {tags = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Lens.coerced

-- | The failure code of the simulation job batch.
describeSimulationJobBatchResponse_failureCode :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe SimulationJobBatchErrorCode)
describeSimulationJobBatchResponse_failureCode = Lens.lens (\DescribeSimulationJobBatchResponse' {failureCode} -> failureCode) (\s@DescribeSimulationJobBatchResponse' {} a -> s {failureCode = a} :: DescribeSimulationJobBatchResponse)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
describeSimulationJobBatchResponse_clientRequestToken :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe Prelude.Text)
describeSimulationJobBatchResponse_clientRequestToken = Lens.lens (\DescribeSimulationJobBatchResponse' {clientRequestToken} -> clientRequestToken) (\s@DescribeSimulationJobBatchResponse' {} a -> s {clientRequestToken = a} :: DescribeSimulationJobBatchResponse)

-- | The time, in milliseconds since the epoch, when the simulation job batch
-- was last updated.
describeSimulationJobBatchResponse_lastUpdatedAt :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe Prelude.UTCTime)
describeSimulationJobBatchResponse_lastUpdatedAt = Lens.lens (\DescribeSimulationJobBatchResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@DescribeSimulationJobBatchResponse' {} a -> s {lastUpdatedAt = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the batch.
describeSimulationJobBatchResponse_arn :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe Prelude.Text)
describeSimulationJobBatchResponse_arn = Lens.lens (\DescribeSimulationJobBatchResponse' {arn} -> arn) (\s@DescribeSimulationJobBatchResponse' {} a -> s {arn = a} :: DescribeSimulationJobBatchResponse)

-- | The status of the batch.
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
describeSimulationJobBatchResponse_status :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe SimulationJobBatchStatus)
describeSimulationJobBatchResponse_status = Lens.lens (\DescribeSimulationJobBatchResponse' {status} -> status) (\s@DescribeSimulationJobBatchResponse' {} a -> s {status = a} :: DescribeSimulationJobBatchResponse)

-- | A list of failed create simulation job requests. The request failed to
-- be created into a simulation job. Failed requests do not have a
-- simulation job ID.
describeSimulationJobBatchResponse_failedRequests :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe [FailedCreateSimulationJobRequest])
describeSimulationJobBatchResponse_failedRequests = Lens.lens (\DescribeSimulationJobBatchResponse' {failedRequests} -> failedRequests) (\s@DescribeSimulationJobBatchResponse' {} a -> s {failedRequests = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of pending simulation job requests. These requests have not yet
-- been created into simulation jobs.
describeSimulationJobBatchResponse_pendingRequests :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe (Prelude.NonEmpty SimulationJobRequest))
describeSimulationJobBatchResponse_pendingRequests = Lens.lens (\DescribeSimulationJobBatchResponse' {pendingRequests} -> pendingRequests) (\s@DescribeSimulationJobBatchResponse' {} a -> s {pendingRequests = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of created simulation job summaries.
describeSimulationJobBatchResponse_createdRequests :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe [SimulationJobSummary])
describeSimulationJobBatchResponse_createdRequests = Lens.lens (\DescribeSimulationJobBatchResponse' {createdRequests} -> createdRequests) (\s@DescribeSimulationJobBatchResponse' {} a -> s {createdRequests = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Lens.coerced

-- | The batch policy.
describeSimulationJobBatchResponse_batchPolicy :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe BatchPolicy)
describeSimulationJobBatchResponse_batchPolicy = Lens.lens (\DescribeSimulationJobBatchResponse' {batchPolicy} -> batchPolicy) (\s@DescribeSimulationJobBatchResponse' {} a -> s {batchPolicy = a} :: DescribeSimulationJobBatchResponse)

-- | The time, in milliseconds since the epoch, when the simulation job batch
-- was created.
describeSimulationJobBatchResponse_createdAt :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe Prelude.UTCTime)
describeSimulationJobBatchResponse_createdAt = Lens.lens (\DescribeSimulationJobBatchResponse' {createdAt} -> createdAt) (\s@DescribeSimulationJobBatchResponse' {} a -> s {createdAt = a} :: DescribeSimulationJobBatchResponse) Prelude.. Lens.mapping Core._Time

-- | The reason the simulation job batch failed.
describeSimulationJobBatchResponse_failureReason :: Lens.Lens' DescribeSimulationJobBatchResponse (Prelude.Maybe Prelude.Text)
describeSimulationJobBatchResponse_failureReason = Lens.lens (\DescribeSimulationJobBatchResponse' {failureReason} -> failureReason) (\s@DescribeSimulationJobBatchResponse' {} a -> s {failureReason = a} :: DescribeSimulationJobBatchResponse)

-- | The response's http status code.
describeSimulationJobBatchResponse_httpStatus :: Lens.Lens' DescribeSimulationJobBatchResponse Prelude.Int
describeSimulationJobBatchResponse_httpStatus = Lens.lens (\DescribeSimulationJobBatchResponse' {httpStatus} -> httpStatus) (\s@DescribeSimulationJobBatchResponse' {} a -> s {httpStatus = a} :: DescribeSimulationJobBatchResponse)

instance
  Prelude.NFData
    DescribeSimulationJobBatchResponse
  where
  rnf DescribeSimulationJobBatchResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf failureCode
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf failedRequests
      `Prelude.seq` Prelude.rnf pendingRequests
      `Prelude.seq` Prelude.rnf createdRequests
      `Prelude.seq` Prelude.rnf batchPolicy
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf httpStatus
