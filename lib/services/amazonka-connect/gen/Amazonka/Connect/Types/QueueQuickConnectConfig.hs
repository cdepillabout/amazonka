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
-- Module      : Amazonka.Connect.Types.QueueQuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.QueueQuickConnectConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a queue for a quick connect. The flow must be
-- of type Transfer to Queue.
--
-- /See:/ 'newQueueQuickConnectConfig' smart constructor.
data QueueQuickConnectConfig = QueueQuickConnectConfig'
  { -- | The identifier for the queue.
    queueId :: Prelude.Text,
    -- | The identifier of the flow.
    contactFlowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QueueQuickConnectConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queueId', 'queueQuickConnectConfig_queueId' - The identifier for the queue.
--
-- 'contactFlowId', 'queueQuickConnectConfig_contactFlowId' - The identifier of the flow.
newQueueQuickConnectConfig ::
  -- | 'queueId'
  Prelude.Text ->
  -- | 'contactFlowId'
  Prelude.Text ->
  QueueQuickConnectConfig
newQueueQuickConnectConfig pQueueId_ pContactFlowId_ =
  QueueQuickConnectConfig'
    { queueId = pQueueId_,
      contactFlowId = pContactFlowId_
    }

-- | The identifier for the queue.
queueQuickConnectConfig_queueId :: Lens.Lens' QueueQuickConnectConfig Prelude.Text
queueQuickConnectConfig_queueId = Lens.lens (\QueueQuickConnectConfig' {queueId} -> queueId) (\s@QueueQuickConnectConfig' {} a -> s {queueId = a} :: QueueQuickConnectConfig)

-- | The identifier of the flow.
queueQuickConnectConfig_contactFlowId :: Lens.Lens' QueueQuickConnectConfig Prelude.Text
queueQuickConnectConfig_contactFlowId = Lens.lens (\QueueQuickConnectConfig' {contactFlowId} -> contactFlowId) (\s@QueueQuickConnectConfig' {} a -> s {contactFlowId = a} :: QueueQuickConnectConfig)

instance Core.FromJSON QueueQuickConnectConfig where
  parseJSON =
    Core.withObject
      "QueueQuickConnectConfig"
      ( \x ->
          QueueQuickConnectConfig'
            Prelude.<$> (x Core..: "QueueId")
            Prelude.<*> (x Core..: "ContactFlowId")
      )

instance Prelude.Hashable QueueQuickConnectConfig where
  hashWithSalt _salt QueueQuickConnectConfig' {..} =
    _salt `Prelude.hashWithSalt` queueId
      `Prelude.hashWithSalt` contactFlowId

instance Prelude.NFData QueueQuickConnectConfig where
  rnf QueueQuickConnectConfig' {..} =
    Prelude.rnf queueId
      `Prelude.seq` Prelude.rnf contactFlowId

instance Core.ToJSON QueueQuickConnectConfig where
  toJSON QueueQuickConnectConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("QueueId" Core..= queueId),
            Prelude.Just
              ("ContactFlowId" Core..= contactFlowId)
          ]
      )
