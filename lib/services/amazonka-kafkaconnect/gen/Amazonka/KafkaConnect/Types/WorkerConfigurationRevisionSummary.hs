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
-- Module      : Amazonka.KafkaConnect.Types.WorkerConfigurationRevisionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KafkaConnect.Types.WorkerConfigurationRevisionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The summary of a worker configuration revision.
--
-- /See:/ 'newWorkerConfigurationRevisionSummary' smart constructor.
data WorkerConfigurationRevisionSummary = WorkerConfigurationRevisionSummary'
  { -- | The revision of a worker configuration.
    revision :: Prelude.Maybe Prelude.Integer,
    -- | The description of a worker configuration revision.
    description :: Prelude.Maybe Prelude.Text,
    -- | The time that a worker configuration revision was created.
    creationTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkerConfigurationRevisionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revision', 'workerConfigurationRevisionSummary_revision' - The revision of a worker configuration.
--
-- 'description', 'workerConfigurationRevisionSummary_description' - The description of a worker configuration revision.
--
-- 'creationTime', 'workerConfigurationRevisionSummary_creationTime' - The time that a worker configuration revision was created.
newWorkerConfigurationRevisionSummary ::
  WorkerConfigurationRevisionSummary
newWorkerConfigurationRevisionSummary =
  WorkerConfigurationRevisionSummary'
    { revision =
        Prelude.Nothing,
      description = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | The revision of a worker configuration.
workerConfigurationRevisionSummary_revision :: Lens.Lens' WorkerConfigurationRevisionSummary (Prelude.Maybe Prelude.Integer)
workerConfigurationRevisionSummary_revision = Lens.lens (\WorkerConfigurationRevisionSummary' {revision} -> revision) (\s@WorkerConfigurationRevisionSummary' {} a -> s {revision = a} :: WorkerConfigurationRevisionSummary)

-- | The description of a worker configuration revision.
workerConfigurationRevisionSummary_description :: Lens.Lens' WorkerConfigurationRevisionSummary (Prelude.Maybe Prelude.Text)
workerConfigurationRevisionSummary_description = Lens.lens (\WorkerConfigurationRevisionSummary' {description} -> description) (\s@WorkerConfigurationRevisionSummary' {} a -> s {description = a} :: WorkerConfigurationRevisionSummary)

-- | The time that a worker configuration revision was created.
workerConfigurationRevisionSummary_creationTime :: Lens.Lens' WorkerConfigurationRevisionSummary (Prelude.Maybe Prelude.UTCTime)
workerConfigurationRevisionSummary_creationTime = Lens.lens (\WorkerConfigurationRevisionSummary' {creationTime} -> creationTime) (\s@WorkerConfigurationRevisionSummary' {} a -> s {creationTime = a} :: WorkerConfigurationRevisionSummary) Prelude.. Lens.mapping Core._Time

instance
  Core.FromJSON
    WorkerConfigurationRevisionSummary
  where
  parseJSON =
    Core.withObject
      "WorkerConfigurationRevisionSummary"
      ( \x ->
          WorkerConfigurationRevisionSummary'
            Prelude.<$> (x Core..:? "revision")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "creationTime")
      )

instance
  Prelude.Hashable
    WorkerConfigurationRevisionSummary
  where
  hashWithSalt
    _salt
    WorkerConfigurationRevisionSummary' {..} =
      _salt `Prelude.hashWithSalt` revision
        `Prelude.hashWithSalt` description
        `Prelude.hashWithSalt` creationTime

instance
  Prelude.NFData
    WorkerConfigurationRevisionSummary
  where
  rnf WorkerConfigurationRevisionSummary' {..} =
    Prelude.rnf revision
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf creationTime
