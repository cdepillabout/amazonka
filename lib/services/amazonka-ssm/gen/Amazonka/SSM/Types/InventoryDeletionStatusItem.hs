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
-- Module      : Amazonka.SSM.Types.InventoryDeletionStatusItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.InventoryDeletionStatusItem where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.InventoryDeletionStatus
import Amazonka.SSM.Types.InventoryDeletionSummary

-- | Status information returned by the @DeleteInventory@ operation.
--
-- /See:/ 'newInventoryDeletionStatusItem' smart constructor.
data InventoryDeletionStatusItem = InventoryDeletionStatusItem'
  { -- | The UTC timestamp when the delete operation started.
    deletionStartTime :: Prelude.Maybe Core.POSIX,
    -- | Information about the status.
    lastStatusMessage :: Prelude.Maybe Prelude.Text,
    -- | The status of the operation. Possible values are InProgress and
    -- Complete.
    lastStatus :: Prelude.Maybe InventoryDeletionStatus,
    -- | The name of the inventory data type.
    typeName :: Prelude.Maybe Prelude.Text,
    -- | Information about the delete operation. For more information about this
    -- summary, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete Understanding the delete inventory summary>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    deletionSummary :: Prelude.Maybe InventoryDeletionSummary,
    -- | The UTC timestamp of when the last status report.
    lastStatusUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | The deletion ID returned by the @DeleteInventory@ operation.
    deletionId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InventoryDeletionStatusItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deletionStartTime', 'inventoryDeletionStatusItem_deletionStartTime' - The UTC timestamp when the delete operation started.
--
-- 'lastStatusMessage', 'inventoryDeletionStatusItem_lastStatusMessage' - Information about the status.
--
-- 'lastStatus', 'inventoryDeletionStatusItem_lastStatus' - The status of the operation. Possible values are InProgress and
-- Complete.
--
-- 'typeName', 'inventoryDeletionStatusItem_typeName' - The name of the inventory data type.
--
-- 'deletionSummary', 'inventoryDeletionStatusItem_deletionSummary' - Information about the delete operation. For more information about this
-- summary, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete Understanding the delete inventory summary>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'lastStatusUpdateTime', 'inventoryDeletionStatusItem_lastStatusUpdateTime' - The UTC timestamp of when the last status report.
--
-- 'deletionId', 'inventoryDeletionStatusItem_deletionId' - The deletion ID returned by the @DeleteInventory@ operation.
newInventoryDeletionStatusItem ::
  InventoryDeletionStatusItem
newInventoryDeletionStatusItem =
  InventoryDeletionStatusItem'
    { deletionStartTime =
        Prelude.Nothing,
      lastStatusMessage = Prelude.Nothing,
      lastStatus = Prelude.Nothing,
      typeName = Prelude.Nothing,
      deletionSummary = Prelude.Nothing,
      lastStatusUpdateTime = Prelude.Nothing,
      deletionId = Prelude.Nothing
    }

-- | The UTC timestamp when the delete operation started.
inventoryDeletionStatusItem_deletionStartTime :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe Prelude.UTCTime)
inventoryDeletionStatusItem_deletionStartTime = Lens.lens (\InventoryDeletionStatusItem' {deletionStartTime} -> deletionStartTime) (\s@InventoryDeletionStatusItem' {} a -> s {deletionStartTime = a} :: InventoryDeletionStatusItem) Prelude.. Lens.mapping Core._Time

-- | Information about the status.
inventoryDeletionStatusItem_lastStatusMessage :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe Prelude.Text)
inventoryDeletionStatusItem_lastStatusMessage = Lens.lens (\InventoryDeletionStatusItem' {lastStatusMessage} -> lastStatusMessage) (\s@InventoryDeletionStatusItem' {} a -> s {lastStatusMessage = a} :: InventoryDeletionStatusItem)

-- | The status of the operation. Possible values are InProgress and
-- Complete.
inventoryDeletionStatusItem_lastStatus :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe InventoryDeletionStatus)
inventoryDeletionStatusItem_lastStatus = Lens.lens (\InventoryDeletionStatusItem' {lastStatus} -> lastStatus) (\s@InventoryDeletionStatusItem' {} a -> s {lastStatus = a} :: InventoryDeletionStatusItem)

-- | The name of the inventory data type.
inventoryDeletionStatusItem_typeName :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe Prelude.Text)
inventoryDeletionStatusItem_typeName = Lens.lens (\InventoryDeletionStatusItem' {typeName} -> typeName) (\s@InventoryDeletionStatusItem' {} a -> s {typeName = a} :: InventoryDeletionStatusItem)

-- | Information about the delete operation. For more information about this
-- summary, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete Understanding the delete inventory summary>
-- in the /Amazon Web Services Systems Manager User Guide/.
inventoryDeletionStatusItem_deletionSummary :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe InventoryDeletionSummary)
inventoryDeletionStatusItem_deletionSummary = Lens.lens (\InventoryDeletionStatusItem' {deletionSummary} -> deletionSummary) (\s@InventoryDeletionStatusItem' {} a -> s {deletionSummary = a} :: InventoryDeletionStatusItem)

-- | The UTC timestamp of when the last status report.
inventoryDeletionStatusItem_lastStatusUpdateTime :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe Prelude.UTCTime)
inventoryDeletionStatusItem_lastStatusUpdateTime = Lens.lens (\InventoryDeletionStatusItem' {lastStatusUpdateTime} -> lastStatusUpdateTime) (\s@InventoryDeletionStatusItem' {} a -> s {lastStatusUpdateTime = a} :: InventoryDeletionStatusItem) Prelude.. Lens.mapping Core._Time

-- | The deletion ID returned by the @DeleteInventory@ operation.
inventoryDeletionStatusItem_deletionId :: Lens.Lens' InventoryDeletionStatusItem (Prelude.Maybe Prelude.Text)
inventoryDeletionStatusItem_deletionId = Lens.lens (\InventoryDeletionStatusItem' {deletionId} -> deletionId) (\s@InventoryDeletionStatusItem' {} a -> s {deletionId = a} :: InventoryDeletionStatusItem)

instance Core.FromJSON InventoryDeletionStatusItem where
  parseJSON =
    Core.withObject
      "InventoryDeletionStatusItem"
      ( \x ->
          InventoryDeletionStatusItem'
            Prelude.<$> (x Core..:? "DeletionStartTime")
            Prelude.<*> (x Core..:? "LastStatusMessage")
            Prelude.<*> (x Core..:? "LastStatus")
            Prelude.<*> (x Core..:? "TypeName")
            Prelude.<*> (x Core..:? "DeletionSummary")
            Prelude.<*> (x Core..:? "LastStatusUpdateTime")
            Prelude.<*> (x Core..:? "DeletionId")
      )

instance Prelude.Hashable InventoryDeletionStatusItem where
  hashWithSalt _salt InventoryDeletionStatusItem' {..} =
    _salt `Prelude.hashWithSalt` deletionStartTime
      `Prelude.hashWithSalt` lastStatusMessage
      `Prelude.hashWithSalt` lastStatus
      `Prelude.hashWithSalt` typeName
      `Prelude.hashWithSalt` deletionSummary
      `Prelude.hashWithSalt` lastStatusUpdateTime
      `Prelude.hashWithSalt` deletionId

instance Prelude.NFData InventoryDeletionStatusItem where
  rnf InventoryDeletionStatusItem' {..} =
    Prelude.rnf deletionStartTime
      `Prelude.seq` Prelude.rnf lastStatusMessage
      `Prelude.seq` Prelude.rnf lastStatus
      `Prelude.seq` Prelude.rnf typeName
      `Prelude.seq` Prelude.rnf deletionSummary
      `Prelude.seq` Prelude.rnf lastStatusUpdateTime
      `Prelude.seq` Prelude.rnf deletionId
