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
-- Module      : Amazonka.FIS.Types.Experiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FIS.Types.Experiment where

import qualified Amazonka.Core as Core
import Amazonka.FIS.Types.ExperimentAction
import Amazonka.FIS.Types.ExperimentLogConfiguration
import Amazonka.FIS.Types.ExperimentState
import Amazonka.FIS.Types.ExperimentStopCondition
import Amazonka.FIS.Types.ExperimentTarget
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an experiment.
--
-- /See:/ 'newExperiment' smart constructor.
data Experiment = Experiment'
  { -- | The tags for the experiment.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The stop conditions for the experiment.
    stopConditions :: Prelude.Maybe [ExperimentStopCondition],
    -- | The configuration for experiment logging.
    logConfiguration :: Prelude.Maybe ExperimentLogConfiguration,
    -- | The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    -- service permission to perform service actions on your behalf.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The state of the experiment.
    state :: Prelude.Maybe ExperimentState,
    -- | The targets for the experiment.
    targets :: Prelude.Maybe (Prelude.HashMap Prelude.Text ExperimentTarget),
    -- | The time that the experiment ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the experiment.
    id :: Prelude.Maybe Prelude.Text,
    -- | The ID of the experiment template.
    experimentTemplateId :: Prelude.Maybe Prelude.Text,
    -- | The time that the experiment was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The time that the experiment started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The actions for the experiment.
    actions :: Prelude.Maybe (Prelude.HashMap Prelude.Text ExperimentAction)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Experiment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'experiment_tags' - The tags for the experiment.
--
-- 'stopConditions', 'experiment_stopConditions' - The stop conditions for the experiment.
--
-- 'logConfiguration', 'experiment_logConfiguration' - The configuration for experiment logging.
--
-- 'roleArn', 'experiment_roleArn' - The Amazon Resource Name (ARN) of an IAM role that grants the FIS
-- service permission to perform service actions on your behalf.
--
-- 'state', 'experiment_state' - The state of the experiment.
--
-- 'targets', 'experiment_targets' - The targets for the experiment.
--
-- 'endTime', 'experiment_endTime' - The time that the experiment ended.
--
-- 'id', 'experiment_id' - The ID of the experiment.
--
-- 'experimentTemplateId', 'experiment_experimentTemplateId' - The ID of the experiment template.
--
-- 'creationTime', 'experiment_creationTime' - The time that the experiment was created.
--
-- 'startTime', 'experiment_startTime' - The time that the experiment started.
--
-- 'actions', 'experiment_actions' - The actions for the experiment.
newExperiment ::
  Experiment
newExperiment =
  Experiment'
    { tags = Prelude.Nothing,
      stopConditions = Prelude.Nothing,
      logConfiguration = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      state = Prelude.Nothing,
      targets = Prelude.Nothing,
      endTime = Prelude.Nothing,
      id = Prelude.Nothing,
      experimentTemplateId = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      startTime = Prelude.Nothing,
      actions = Prelude.Nothing
    }

-- | The tags for the experiment.
experiment_tags :: Lens.Lens' Experiment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experiment_tags = Lens.lens (\Experiment' {tags} -> tags) (\s@Experiment' {} a -> s {tags = a} :: Experiment) Prelude.. Lens.mapping Lens.coerced

-- | The stop conditions for the experiment.
experiment_stopConditions :: Lens.Lens' Experiment (Prelude.Maybe [ExperimentStopCondition])
experiment_stopConditions = Lens.lens (\Experiment' {stopConditions} -> stopConditions) (\s@Experiment' {} a -> s {stopConditions = a} :: Experiment) Prelude.. Lens.mapping Lens.coerced

-- | The configuration for experiment logging.
experiment_logConfiguration :: Lens.Lens' Experiment (Prelude.Maybe ExperimentLogConfiguration)
experiment_logConfiguration = Lens.lens (\Experiment' {logConfiguration} -> logConfiguration) (\s@Experiment' {} a -> s {logConfiguration = a} :: Experiment)

-- | The Amazon Resource Name (ARN) of an IAM role that grants the FIS
-- service permission to perform service actions on your behalf.
experiment_roleArn :: Lens.Lens' Experiment (Prelude.Maybe Prelude.Text)
experiment_roleArn = Lens.lens (\Experiment' {roleArn} -> roleArn) (\s@Experiment' {} a -> s {roleArn = a} :: Experiment)

-- | The state of the experiment.
experiment_state :: Lens.Lens' Experiment (Prelude.Maybe ExperimentState)
experiment_state = Lens.lens (\Experiment' {state} -> state) (\s@Experiment' {} a -> s {state = a} :: Experiment)

-- | The targets for the experiment.
experiment_targets :: Lens.Lens' Experiment (Prelude.Maybe (Prelude.HashMap Prelude.Text ExperimentTarget))
experiment_targets = Lens.lens (\Experiment' {targets} -> targets) (\s@Experiment' {} a -> s {targets = a} :: Experiment) Prelude.. Lens.mapping Lens.coerced

-- | The time that the experiment ended.
experiment_endTime :: Lens.Lens' Experiment (Prelude.Maybe Prelude.UTCTime)
experiment_endTime = Lens.lens (\Experiment' {endTime} -> endTime) (\s@Experiment' {} a -> s {endTime = a} :: Experiment) Prelude.. Lens.mapping Core._Time

-- | The ID of the experiment.
experiment_id :: Lens.Lens' Experiment (Prelude.Maybe Prelude.Text)
experiment_id = Lens.lens (\Experiment' {id} -> id) (\s@Experiment' {} a -> s {id = a} :: Experiment)

-- | The ID of the experiment template.
experiment_experimentTemplateId :: Lens.Lens' Experiment (Prelude.Maybe Prelude.Text)
experiment_experimentTemplateId = Lens.lens (\Experiment' {experimentTemplateId} -> experimentTemplateId) (\s@Experiment' {} a -> s {experimentTemplateId = a} :: Experiment)

-- | The time that the experiment was created.
experiment_creationTime :: Lens.Lens' Experiment (Prelude.Maybe Prelude.UTCTime)
experiment_creationTime = Lens.lens (\Experiment' {creationTime} -> creationTime) (\s@Experiment' {} a -> s {creationTime = a} :: Experiment) Prelude.. Lens.mapping Core._Time

-- | The time that the experiment started.
experiment_startTime :: Lens.Lens' Experiment (Prelude.Maybe Prelude.UTCTime)
experiment_startTime = Lens.lens (\Experiment' {startTime} -> startTime) (\s@Experiment' {} a -> s {startTime = a} :: Experiment) Prelude.. Lens.mapping Core._Time

-- | The actions for the experiment.
experiment_actions :: Lens.Lens' Experiment (Prelude.Maybe (Prelude.HashMap Prelude.Text ExperimentAction))
experiment_actions = Lens.lens (\Experiment' {actions} -> actions) (\s@Experiment' {} a -> s {actions = a} :: Experiment) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Experiment where
  parseJSON =
    Core.withObject
      "Experiment"
      ( \x ->
          Experiment'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "stopConditions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "logConfiguration")
            Prelude.<*> (x Core..:? "roleArn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "targets" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "experimentTemplateId")
            Prelude.<*> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "startTime")
            Prelude.<*> (x Core..:? "actions" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Experiment where
  hashWithSalt _salt Experiment' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` stopConditions
      `Prelude.hashWithSalt` logConfiguration
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` targets
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` experimentTemplateId
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` actions

instance Prelude.NFData Experiment where
  rnf Experiment' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf stopConditions
      `Prelude.seq` Prelude.rnf logConfiguration
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf targets
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf experimentTemplateId
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf actions
