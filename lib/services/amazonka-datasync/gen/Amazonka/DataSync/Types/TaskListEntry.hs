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
-- Module      : Amazonka.DataSync.Types.TaskListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataSync.Types.TaskListEntry where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types.TaskStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a single entry in a list of tasks. @TaskListEntry@ returns an
-- array that contains a list of tasks when the
-- <https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTasks.html ListTasks>
-- operation is called. A task includes the source and destination file
-- systems to sync and the options to use for the tasks.
--
-- /See:/ 'newTaskListEntry' smart constructor.
data TaskListEntry = TaskListEntry'
  { -- | The name of the task.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the task.
    taskArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the task.
    status :: Prelude.Maybe TaskStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'taskListEntry_name' - The name of the task.
--
-- 'taskArn', 'taskListEntry_taskArn' - The Amazon Resource Name (ARN) of the task.
--
-- 'status', 'taskListEntry_status' - The status of the task.
newTaskListEntry ::
  TaskListEntry
newTaskListEntry =
  TaskListEntry'
    { name = Prelude.Nothing,
      taskArn = Prelude.Nothing,
      status = Prelude.Nothing
    }

-- | The name of the task.
taskListEntry_name :: Lens.Lens' TaskListEntry (Prelude.Maybe Prelude.Text)
taskListEntry_name = Lens.lens (\TaskListEntry' {name} -> name) (\s@TaskListEntry' {} a -> s {name = a} :: TaskListEntry)

-- | The Amazon Resource Name (ARN) of the task.
taskListEntry_taskArn :: Lens.Lens' TaskListEntry (Prelude.Maybe Prelude.Text)
taskListEntry_taskArn = Lens.lens (\TaskListEntry' {taskArn} -> taskArn) (\s@TaskListEntry' {} a -> s {taskArn = a} :: TaskListEntry)

-- | The status of the task.
taskListEntry_status :: Lens.Lens' TaskListEntry (Prelude.Maybe TaskStatus)
taskListEntry_status = Lens.lens (\TaskListEntry' {status} -> status) (\s@TaskListEntry' {} a -> s {status = a} :: TaskListEntry)

instance Core.FromJSON TaskListEntry where
  parseJSON =
    Core.withObject
      "TaskListEntry"
      ( \x ->
          TaskListEntry'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "TaskArn")
            Prelude.<*> (x Core..:? "Status")
      )

instance Prelude.Hashable TaskListEntry where
  hashWithSalt _salt TaskListEntry' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` taskArn
      `Prelude.hashWithSalt` status

instance Prelude.NFData TaskListEntry where
  rnf TaskListEntry' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf taskArn
      `Prelude.seq` Prelude.rnf status
