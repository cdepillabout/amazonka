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
-- Module      : Amazonka.SSM.Types.MaintenanceWindowExecutionTaskIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.MaintenanceWindowExecutionTaskIdentity where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.MaintenanceWindowExecutionStatus
import Amazonka.SSM.Types.MaintenanceWindowTaskType

-- | Information about a task execution performed as part of a maintenance
-- window execution.
--
-- /See:/ 'newMaintenanceWindowExecutionTaskIdentity' smart constructor.
data MaintenanceWindowExecutionTaskIdentity = MaintenanceWindowExecutionTaskIdentity'
  { -- | The ID of the maintenance window execution that ran the task.
    windowExecutionId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the task that ran.
    taskArn :: Prelude.Maybe Prelude.Text,
    -- | The details explaining the status of the task execution. Not available
    -- for all status values.
    statusDetails :: Prelude.Maybe Prelude.Text,
    -- | The status of the task execution.
    status :: Prelude.Maybe MaintenanceWindowExecutionStatus,
    -- | The time the task execution finished.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The type of task that ran.
    taskType :: Prelude.Maybe MaintenanceWindowTaskType,
    -- | The time the task execution started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the specific task execution in the maintenance window
    -- execution.
    taskExecutionId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MaintenanceWindowExecutionTaskIdentity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowExecutionId', 'maintenanceWindowExecutionTaskIdentity_windowExecutionId' - The ID of the maintenance window execution that ran the task.
--
-- 'taskArn', 'maintenanceWindowExecutionTaskIdentity_taskArn' - The Amazon Resource Name (ARN) of the task that ran.
--
-- 'statusDetails', 'maintenanceWindowExecutionTaskIdentity_statusDetails' - The details explaining the status of the task execution. Not available
-- for all status values.
--
-- 'status', 'maintenanceWindowExecutionTaskIdentity_status' - The status of the task execution.
--
-- 'endTime', 'maintenanceWindowExecutionTaskIdentity_endTime' - The time the task execution finished.
--
-- 'taskType', 'maintenanceWindowExecutionTaskIdentity_taskType' - The type of task that ran.
--
-- 'startTime', 'maintenanceWindowExecutionTaskIdentity_startTime' - The time the task execution started.
--
-- 'taskExecutionId', 'maintenanceWindowExecutionTaskIdentity_taskExecutionId' - The ID of the specific task execution in the maintenance window
-- execution.
newMaintenanceWindowExecutionTaskIdentity ::
  MaintenanceWindowExecutionTaskIdentity
newMaintenanceWindowExecutionTaskIdentity =
  MaintenanceWindowExecutionTaskIdentity'
    { windowExecutionId =
        Prelude.Nothing,
      taskArn = Prelude.Nothing,
      statusDetails = Prelude.Nothing,
      status = Prelude.Nothing,
      endTime = Prelude.Nothing,
      taskType = Prelude.Nothing,
      startTime = Prelude.Nothing,
      taskExecutionId = Prelude.Nothing
    }

-- | The ID of the maintenance window execution that ran the task.
maintenanceWindowExecutionTaskIdentity_windowExecutionId :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.Text)
maintenanceWindowExecutionTaskIdentity_windowExecutionId = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {windowExecutionId} -> windowExecutionId) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {windowExecutionId = a} :: MaintenanceWindowExecutionTaskIdentity)

-- | The Amazon Resource Name (ARN) of the task that ran.
maintenanceWindowExecutionTaskIdentity_taskArn :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.Text)
maintenanceWindowExecutionTaskIdentity_taskArn = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {taskArn} -> taskArn) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {taskArn = a} :: MaintenanceWindowExecutionTaskIdentity)

-- | The details explaining the status of the task execution. Not available
-- for all status values.
maintenanceWindowExecutionTaskIdentity_statusDetails :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.Text)
maintenanceWindowExecutionTaskIdentity_statusDetails = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {statusDetails} -> statusDetails) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {statusDetails = a} :: MaintenanceWindowExecutionTaskIdentity)

-- | The status of the task execution.
maintenanceWindowExecutionTaskIdentity_status :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe MaintenanceWindowExecutionStatus)
maintenanceWindowExecutionTaskIdentity_status = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {status} -> status) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {status = a} :: MaintenanceWindowExecutionTaskIdentity)

-- | The time the task execution finished.
maintenanceWindowExecutionTaskIdentity_endTime :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.UTCTime)
maintenanceWindowExecutionTaskIdentity_endTime = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {endTime} -> endTime) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {endTime = a} :: MaintenanceWindowExecutionTaskIdentity) Prelude.. Lens.mapping Core._Time

-- | The type of task that ran.
maintenanceWindowExecutionTaskIdentity_taskType :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe MaintenanceWindowTaskType)
maintenanceWindowExecutionTaskIdentity_taskType = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {taskType} -> taskType) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {taskType = a} :: MaintenanceWindowExecutionTaskIdentity)

-- | The time the task execution started.
maintenanceWindowExecutionTaskIdentity_startTime :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.UTCTime)
maintenanceWindowExecutionTaskIdentity_startTime = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {startTime} -> startTime) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {startTime = a} :: MaintenanceWindowExecutionTaskIdentity) Prelude.. Lens.mapping Core._Time

-- | The ID of the specific task execution in the maintenance window
-- execution.
maintenanceWindowExecutionTaskIdentity_taskExecutionId :: Lens.Lens' MaintenanceWindowExecutionTaskIdentity (Prelude.Maybe Prelude.Text)
maintenanceWindowExecutionTaskIdentity_taskExecutionId = Lens.lens (\MaintenanceWindowExecutionTaskIdentity' {taskExecutionId} -> taskExecutionId) (\s@MaintenanceWindowExecutionTaskIdentity' {} a -> s {taskExecutionId = a} :: MaintenanceWindowExecutionTaskIdentity)

instance
  Core.FromJSON
    MaintenanceWindowExecutionTaskIdentity
  where
  parseJSON =
    Core.withObject
      "MaintenanceWindowExecutionTaskIdentity"
      ( \x ->
          MaintenanceWindowExecutionTaskIdentity'
            Prelude.<$> (x Core..:? "WindowExecutionId")
            Prelude.<*> (x Core..:? "TaskArn")
            Prelude.<*> (x Core..:? "StatusDetails")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "TaskType")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..:? "TaskExecutionId")
      )

instance
  Prelude.Hashable
    MaintenanceWindowExecutionTaskIdentity
  where
  hashWithSalt
    _salt
    MaintenanceWindowExecutionTaskIdentity' {..} =
      _salt `Prelude.hashWithSalt` windowExecutionId
        `Prelude.hashWithSalt` taskArn
        `Prelude.hashWithSalt` statusDetails
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` endTime
        `Prelude.hashWithSalt` taskType
        `Prelude.hashWithSalt` startTime
        `Prelude.hashWithSalt` taskExecutionId

instance
  Prelude.NFData
    MaintenanceWindowExecutionTaskIdentity
  where
  rnf MaintenanceWindowExecutionTaskIdentity' {..} =
    Prelude.rnf windowExecutionId
      `Prelude.seq` Prelude.rnf taskArn
      `Prelude.seq` Prelude.rnf statusDetails
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf taskType
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf taskExecutionId
