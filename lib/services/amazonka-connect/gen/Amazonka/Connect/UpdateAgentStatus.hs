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
-- Module      : Amazonka.Connect.UpdateAgentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Updates agent status.
module Amazonka.Connect.UpdateAgentStatus
  ( -- * Creating a Request
    UpdateAgentStatus (..),
    newUpdateAgentStatus,

    -- * Request Lenses
    updateAgentStatus_name,
    updateAgentStatus_displayOrder,
    updateAgentStatus_state,
    updateAgentStatus_description,
    updateAgentStatus_resetOrderNumber,
    updateAgentStatus_instanceId,
    updateAgentStatus_agentStatusId,

    -- * Destructuring the Response
    UpdateAgentStatusResponse (..),
    newUpdateAgentStatusResponse,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAgentStatus' smart constructor.
data UpdateAgentStatus = UpdateAgentStatus'
  { -- | The name of the agent status.
    name :: Prelude.Maybe Prelude.Text,
    -- | The display order of the agent status.
    displayOrder :: Prelude.Maybe Prelude.Natural,
    -- | The state of the agent status.
    state :: Prelude.Maybe AgentStatusState,
    -- | The description of the agent status.
    description :: Prelude.Maybe Prelude.Text,
    -- | A number indicating the reset order of the agent status.
    resetOrderNumber :: Prelude.Maybe Prelude.Bool,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text,
    -- | The identifier of the agent status.
    agentStatusId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAgentStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateAgentStatus_name' - The name of the agent status.
--
-- 'displayOrder', 'updateAgentStatus_displayOrder' - The display order of the agent status.
--
-- 'state', 'updateAgentStatus_state' - The state of the agent status.
--
-- 'description', 'updateAgentStatus_description' - The description of the agent status.
--
-- 'resetOrderNumber', 'updateAgentStatus_resetOrderNumber' - A number indicating the reset order of the agent status.
--
-- 'instanceId', 'updateAgentStatus_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'agentStatusId', 'updateAgentStatus_agentStatusId' - The identifier of the agent status.
newUpdateAgentStatus ::
  -- | 'instanceId'
  Prelude.Text ->
  -- | 'agentStatusId'
  Prelude.Text ->
  UpdateAgentStatus
newUpdateAgentStatus pInstanceId_ pAgentStatusId_ =
  UpdateAgentStatus'
    { name = Prelude.Nothing,
      displayOrder = Prelude.Nothing,
      state = Prelude.Nothing,
      description = Prelude.Nothing,
      resetOrderNumber = Prelude.Nothing,
      instanceId = pInstanceId_,
      agentStatusId = pAgentStatusId_
    }

-- | The name of the agent status.
updateAgentStatus_name :: Lens.Lens' UpdateAgentStatus (Prelude.Maybe Prelude.Text)
updateAgentStatus_name = Lens.lens (\UpdateAgentStatus' {name} -> name) (\s@UpdateAgentStatus' {} a -> s {name = a} :: UpdateAgentStatus)

-- | The display order of the agent status.
updateAgentStatus_displayOrder :: Lens.Lens' UpdateAgentStatus (Prelude.Maybe Prelude.Natural)
updateAgentStatus_displayOrder = Lens.lens (\UpdateAgentStatus' {displayOrder} -> displayOrder) (\s@UpdateAgentStatus' {} a -> s {displayOrder = a} :: UpdateAgentStatus)

-- | The state of the agent status.
updateAgentStatus_state :: Lens.Lens' UpdateAgentStatus (Prelude.Maybe AgentStatusState)
updateAgentStatus_state = Lens.lens (\UpdateAgentStatus' {state} -> state) (\s@UpdateAgentStatus' {} a -> s {state = a} :: UpdateAgentStatus)

-- | The description of the agent status.
updateAgentStatus_description :: Lens.Lens' UpdateAgentStatus (Prelude.Maybe Prelude.Text)
updateAgentStatus_description = Lens.lens (\UpdateAgentStatus' {description} -> description) (\s@UpdateAgentStatus' {} a -> s {description = a} :: UpdateAgentStatus)

-- | A number indicating the reset order of the agent status.
updateAgentStatus_resetOrderNumber :: Lens.Lens' UpdateAgentStatus (Prelude.Maybe Prelude.Bool)
updateAgentStatus_resetOrderNumber = Lens.lens (\UpdateAgentStatus' {resetOrderNumber} -> resetOrderNumber) (\s@UpdateAgentStatus' {} a -> s {resetOrderNumber = a} :: UpdateAgentStatus)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
updateAgentStatus_instanceId :: Lens.Lens' UpdateAgentStatus Prelude.Text
updateAgentStatus_instanceId = Lens.lens (\UpdateAgentStatus' {instanceId} -> instanceId) (\s@UpdateAgentStatus' {} a -> s {instanceId = a} :: UpdateAgentStatus)

-- | The identifier of the agent status.
updateAgentStatus_agentStatusId :: Lens.Lens' UpdateAgentStatus Prelude.Text
updateAgentStatus_agentStatusId = Lens.lens (\UpdateAgentStatus' {agentStatusId} -> agentStatusId) (\s@UpdateAgentStatus' {} a -> s {agentStatusId = a} :: UpdateAgentStatus)

instance Core.AWSRequest UpdateAgentStatus where
  type
    AWSResponse UpdateAgentStatus =
      UpdateAgentStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull UpdateAgentStatusResponse'

instance Prelude.Hashable UpdateAgentStatus where
  hashWithSalt _salt UpdateAgentStatus' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` displayOrder
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` resetOrderNumber
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` agentStatusId

instance Prelude.NFData UpdateAgentStatus where
  rnf UpdateAgentStatus' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf displayOrder
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf resetOrderNumber
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf agentStatusId

instance Core.ToHeaders UpdateAgentStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAgentStatus where
  toJSON UpdateAgentStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("DisplayOrder" Core..=) Prelude.<$> displayOrder,
            ("State" Core..=) Prelude.<$> state,
            ("Description" Core..=) Prelude.<$> description,
            ("ResetOrderNumber" Core..=)
              Prelude.<$> resetOrderNumber
          ]
      )

instance Core.ToPath UpdateAgentStatus where
  toPath UpdateAgentStatus' {..} =
    Prelude.mconcat
      [ "/agent-status/",
        Core.toBS instanceId,
        "/",
        Core.toBS agentStatusId
      ]

instance Core.ToQuery UpdateAgentStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAgentStatusResponse' smart constructor.
data UpdateAgentStatusResponse = UpdateAgentStatusResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAgentStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateAgentStatusResponse ::
  UpdateAgentStatusResponse
newUpdateAgentStatusResponse =
  UpdateAgentStatusResponse'

instance Prelude.NFData UpdateAgentStatusResponse where
  rnf _ = ()
