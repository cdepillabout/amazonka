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
-- Module      : Amazonka.StepFunctions.Types.ActivityScheduledEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.StepFunctions.Types.ActivityScheduledEventDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.StepFunctions.Types.HistoryEventExecutionDataDetails

-- | Contains details about an activity scheduled during an execution.
--
-- /See:/ 'newActivityScheduledEventDetails' smart constructor.
data ActivityScheduledEventDetails = ActivityScheduledEventDetails'
  { -- | Contains details about the input for an execution history event.
    inputDetails :: Prelude.Maybe HistoryEventExecutionDataDetails,
    -- | The maximum allowed duration of the activity task.
    timeoutInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The JSON data input to the activity task. Length constraints apply to
    -- the payload size, and are expressed as bytes in UTF-8 encoding.
    input :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum allowed duration between two heartbeats for the activity
    -- task.
    heartbeatInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The Amazon Resource Name (ARN) of the scheduled activity.
    resource :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActivityScheduledEventDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputDetails', 'activityScheduledEventDetails_inputDetails' - Contains details about the input for an execution history event.
--
-- 'timeoutInSeconds', 'activityScheduledEventDetails_timeoutInSeconds' - The maximum allowed duration of the activity task.
--
-- 'input', 'activityScheduledEventDetails_input' - The JSON data input to the activity task. Length constraints apply to
-- the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- 'heartbeatInSeconds', 'activityScheduledEventDetails_heartbeatInSeconds' - The maximum allowed duration between two heartbeats for the activity
-- task.
--
-- 'resource', 'activityScheduledEventDetails_resource' - The Amazon Resource Name (ARN) of the scheduled activity.
newActivityScheduledEventDetails ::
  -- | 'resource'
  Prelude.Text ->
  ActivityScheduledEventDetails
newActivityScheduledEventDetails pResource_ =
  ActivityScheduledEventDetails'
    { inputDetails =
        Prelude.Nothing,
      timeoutInSeconds = Prelude.Nothing,
      input = Prelude.Nothing,
      heartbeatInSeconds = Prelude.Nothing,
      resource = pResource_
    }

-- | Contains details about the input for an execution history event.
activityScheduledEventDetails_inputDetails :: Lens.Lens' ActivityScheduledEventDetails (Prelude.Maybe HistoryEventExecutionDataDetails)
activityScheduledEventDetails_inputDetails = Lens.lens (\ActivityScheduledEventDetails' {inputDetails} -> inputDetails) (\s@ActivityScheduledEventDetails' {} a -> s {inputDetails = a} :: ActivityScheduledEventDetails)

-- | The maximum allowed duration of the activity task.
activityScheduledEventDetails_timeoutInSeconds :: Lens.Lens' ActivityScheduledEventDetails (Prelude.Maybe Prelude.Integer)
activityScheduledEventDetails_timeoutInSeconds = Lens.lens (\ActivityScheduledEventDetails' {timeoutInSeconds} -> timeoutInSeconds) (\s@ActivityScheduledEventDetails' {} a -> s {timeoutInSeconds = a} :: ActivityScheduledEventDetails)

-- | The JSON data input to the activity task. Length constraints apply to
-- the payload size, and are expressed as bytes in UTF-8 encoding.
activityScheduledEventDetails_input :: Lens.Lens' ActivityScheduledEventDetails (Prelude.Maybe Prelude.Text)
activityScheduledEventDetails_input = Lens.lens (\ActivityScheduledEventDetails' {input} -> input) (\s@ActivityScheduledEventDetails' {} a -> s {input = a} :: ActivityScheduledEventDetails) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum allowed duration between two heartbeats for the activity
-- task.
activityScheduledEventDetails_heartbeatInSeconds :: Lens.Lens' ActivityScheduledEventDetails (Prelude.Maybe Prelude.Integer)
activityScheduledEventDetails_heartbeatInSeconds = Lens.lens (\ActivityScheduledEventDetails' {heartbeatInSeconds} -> heartbeatInSeconds) (\s@ActivityScheduledEventDetails' {} a -> s {heartbeatInSeconds = a} :: ActivityScheduledEventDetails)

-- | The Amazon Resource Name (ARN) of the scheduled activity.
activityScheduledEventDetails_resource :: Lens.Lens' ActivityScheduledEventDetails Prelude.Text
activityScheduledEventDetails_resource = Lens.lens (\ActivityScheduledEventDetails' {resource} -> resource) (\s@ActivityScheduledEventDetails' {} a -> s {resource = a} :: ActivityScheduledEventDetails)

instance Core.FromJSON ActivityScheduledEventDetails where
  parseJSON =
    Core.withObject
      "ActivityScheduledEventDetails"
      ( \x ->
          ActivityScheduledEventDetails'
            Prelude.<$> (x Core..:? "inputDetails")
            Prelude.<*> (x Core..:? "timeoutInSeconds")
            Prelude.<*> (x Core..:? "input")
            Prelude.<*> (x Core..:? "heartbeatInSeconds")
            Prelude.<*> (x Core..: "resource")
      )

instance
  Prelude.Hashable
    ActivityScheduledEventDetails
  where
  hashWithSalt _salt ActivityScheduledEventDetails' {..} =
    _salt `Prelude.hashWithSalt` inputDetails
      `Prelude.hashWithSalt` timeoutInSeconds
      `Prelude.hashWithSalt` input
      `Prelude.hashWithSalt` heartbeatInSeconds
      `Prelude.hashWithSalt` resource

instance Prelude.NFData ActivityScheduledEventDetails where
  rnf ActivityScheduledEventDetails' {..} =
    Prelude.rnf inputDetails
      `Prelude.seq` Prelude.rnf timeoutInSeconds
      `Prelude.seq` Prelude.rnf input
      `Prelude.seq` Prelude.rnf heartbeatInSeconds
      `Prelude.seq` Prelude.rnf resource
