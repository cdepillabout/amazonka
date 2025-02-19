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
-- Module      : Amazonka.ECS.SubmitContainerStateChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This action is only used by the Amazon ECS agent, and it is not intended
-- for use outside of the agent.
--
-- Sent to acknowledge that a container changed states.
module Amazonka.ECS.SubmitContainerStateChange
  ( -- * Creating a Request
    SubmitContainerStateChange (..),
    newSubmitContainerStateChange,

    -- * Request Lenses
    submitContainerStateChange_containerName,
    submitContainerStateChange_task,
    submitContainerStateChange_cluster,
    submitContainerStateChange_status,
    submitContainerStateChange_runtimeId,
    submitContainerStateChange_networkBindings,
    submitContainerStateChange_reason,
    submitContainerStateChange_exitCode,

    -- * Destructuring the Response
    SubmitContainerStateChangeResponse (..),
    newSubmitContainerStateChangeResponse,

    -- * Response Lenses
    submitContainerStateChangeResponse_acknowledgment,
    submitContainerStateChangeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSubmitContainerStateChange' smart constructor.
data SubmitContainerStateChange = SubmitContainerStateChange'
  { -- | The name of the container.
    containerName :: Prelude.Maybe Prelude.Text,
    -- | The task ID or full Amazon Resource Name (ARN) of the task that hosts
    -- the container.
    task :: Prelude.Maybe Prelude.Text,
    -- | The short name or full ARN of the cluster that hosts the container.
    cluster :: Prelude.Maybe Prelude.Text,
    -- | The status of the state change request.
    status :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Docker container.
    runtimeId :: Prelude.Maybe Prelude.Text,
    -- | The network bindings of the container.
    networkBindings :: Prelude.Maybe [NetworkBinding],
    -- | The reason for the state change request.
    reason :: Prelude.Maybe Prelude.Text,
    -- | The exit code that\'s returned for the state change request.
    exitCode :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubmitContainerStateChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerName', 'submitContainerStateChange_containerName' - The name of the container.
--
-- 'task', 'submitContainerStateChange_task' - The task ID or full Amazon Resource Name (ARN) of the task that hosts
-- the container.
--
-- 'cluster', 'submitContainerStateChange_cluster' - The short name or full ARN of the cluster that hosts the container.
--
-- 'status', 'submitContainerStateChange_status' - The status of the state change request.
--
-- 'runtimeId', 'submitContainerStateChange_runtimeId' - The ID of the Docker container.
--
-- 'networkBindings', 'submitContainerStateChange_networkBindings' - The network bindings of the container.
--
-- 'reason', 'submitContainerStateChange_reason' - The reason for the state change request.
--
-- 'exitCode', 'submitContainerStateChange_exitCode' - The exit code that\'s returned for the state change request.
newSubmitContainerStateChange ::
  SubmitContainerStateChange
newSubmitContainerStateChange =
  SubmitContainerStateChange'
    { containerName =
        Prelude.Nothing,
      task = Prelude.Nothing,
      cluster = Prelude.Nothing,
      status = Prelude.Nothing,
      runtimeId = Prelude.Nothing,
      networkBindings = Prelude.Nothing,
      reason = Prelude.Nothing,
      exitCode = Prelude.Nothing
    }

-- | The name of the container.
submitContainerStateChange_containerName :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_containerName = Lens.lens (\SubmitContainerStateChange' {containerName} -> containerName) (\s@SubmitContainerStateChange' {} a -> s {containerName = a} :: SubmitContainerStateChange)

-- | The task ID or full Amazon Resource Name (ARN) of the task that hosts
-- the container.
submitContainerStateChange_task :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_task = Lens.lens (\SubmitContainerStateChange' {task} -> task) (\s@SubmitContainerStateChange' {} a -> s {task = a} :: SubmitContainerStateChange)

-- | The short name or full ARN of the cluster that hosts the container.
submitContainerStateChange_cluster :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_cluster = Lens.lens (\SubmitContainerStateChange' {cluster} -> cluster) (\s@SubmitContainerStateChange' {} a -> s {cluster = a} :: SubmitContainerStateChange)

-- | The status of the state change request.
submitContainerStateChange_status :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_status = Lens.lens (\SubmitContainerStateChange' {status} -> status) (\s@SubmitContainerStateChange' {} a -> s {status = a} :: SubmitContainerStateChange)

-- | The ID of the Docker container.
submitContainerStateChange_runtimeId :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_runtimeId = Lens.lens (\SubmitContainerStateChange' {runtimeId} -> runtimeId) (\s@SubmitContainerStateChange' {} a -> s {runtimeId = a} :: SubmitContainerStateChange)

-- | The network bindings of the container.
submitContainerStateChange_networkBindings :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe [NetworkBinding])
submitContainerStateChange_networkBindings = Lens.lens (\SubmitContainerStateChange' {networkBindings} -> networkBindings) (\s@SubmitContainerStateChange' {} a -> s {networkBindings = a} :: SubmitContainerStateChange) Prelude.. Lens.mapping Lens.coerced

-- | The reason for the state change request.
submitContainerStateChange_reason :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Text)
submitContainerStateChange_reason = Lens.lens (\SubmitContainerStateChange' {reason} -> reason) (\s@SubmitContainerStateChange' {} a -> s {reason = a} :: SubmitContainerStateChange)

-- | The exit code that\'s returned for the state change request.
submitContainerStateChange_exitCode :: Lens.Lens' SubmitContainerStateChange (Prelude.Maybe Prelude.Int)
submitContainerStateChange_exitCode = Lens.lens (\SubmitContainerStateChange' {exitCode} -> exitCode) (\s@SubmitContainerStateChange' {} a -> s {exitCode = a} :: SubmitContainerStateChange)

instance Core.AWSRequest SubmitContainerStateChange where
  type
    AWSResponse SubmitContainerStateChange =
      SubmitContainerStateChangeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SubmitContainerStateChangeResponse'
            Prelude.<$> (x Core..?> "acknowledgment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SubmitContainerStateChange where
  hashWithSalt _salt SubmitContainerStateChange' {..} =
    _salt `Prelude.hashWithSalt` containerName
      `Prelude.hashWithSalt` task
      `Prelude.hashWithSalt` cluster
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` runtimeId
      `Prelude.hashWithSalt` networkBindings
      `Prelude.hashWithSalt` reason
      `Prelude.hashWithSalt` exitCode

instance Prelude.NFData SubmitContainerStateChange where
  rnf SubmitContainerStateChange' {..} =
    Prelude.rnf containerName
      `Prelude.seq` Prelude.rnf task
      `Prelude.seq` Prelude.rnf cluster
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf runtimeId
      `Prelude.seq` Prelude.rnf networkBindings
      `Prelude.seq` Prelude.rnf reason
      `Prelude.seq` Prelude.rnf exitCode

instance Core.ToHeaders SubmitContainerStateChange where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerServiceV20141113.SubmitContainerStateChange" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SubmitContainerStateChange where
  toJSON SubmitContainerStateChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("containerName" Core..=) Prelude.<$> containerName,
            ("task" Core..=) Prelude.<$> task,
            ("cluster" Core..=) Prelude.<$> cluster,
            ("status" Core..=) Prelude.<$> status,
            ("runtimeId" Core..=) Prelude.<$> runtimeId,
            ("networkBindings" Core..=)
              Prelude.<$> networkBindings,
            ("reason" Core..=) Prelude.<$> reason,
            ("exitCode" Core..=) Prelude.<$> exitCode
          ]
      )

instance Core.ToPath SubmitContainerStateChange where
  toPath = Prelude.const "/"

instance Core.ToQuery SubmitContainerStateChange where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSubmitContainerStateChangeResponse' smart constructor.
data SubmitContainerStateChangeResponse = SubmitContainerStateChangeResponse'
  { -- | Acknowledgement of the state change.
    acknowledgment :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubmitContainerStateChangeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acknowledgment', 'submitContainerStateChangeResponse_acknowledgment' - Acknowledgement of the state change.
--
-- 'httpStatus', 'submitContainerStateChangeResponse_httpStatus' - The response's http status code.
newSubmitContainerStateChangeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SubmitContainerStateChangeResponse
newSubmitContainerStateChangeResponse pHttpStatus_ =
  SubmitContainerStateChangeResponse'
    { acknowledgment =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Acknowledgement of the state change.
submitContainerStateChangeResponse_acknowledgment :: Lens.Lens' SubmitContainerStateChangeResponse (Prelude.Maybe Prelude.Text)
submitContainerStateChangeResponse_acknowledgment = Lens.lens (\SubmitContainerStateChangeResponse' {acknowledgment} -> acknowledgment) (\s@SubmitContainerStateChangeResponse' {} a -> s {acknowledgment = a} :: SubmitContainerStateChangeResponse)

-- | The response's http status code.
submitContainerStateChangeResponse_httpStatus :: Lens.Lens' SubmitContainerStateChangeResponse Prelude.Int
submitContainerStateChangeResponse_httpStatus = Lens.lens (\SubmitContainerStateChangeResponse' {httpStatus} -> httpStatus) (\s@SubmitContainerStateChangeResponse' {} a -> s {httpStatus = a} :: SubmitContainerStateChangeResponse)

instance
  Prelude.NFData
    SubmitContainerStateChangeResponse
  where
  rnf SubmitContainerStateChangeResponse' {..} =
    Prelude.rnf acknowledgment
      `Prelude.seq` Prelude.rnf httpStatus
