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
-- Module      : Amazonka.CodeCommit.Types.RepositoryTriggerExecutionFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeCommit.Types.RepositoryTriggerExecutionFailure where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A trigger failed to run.
--
-- /See:/ 'newRepositoryTriggerExecutionFailure' smart constructor.
data RepositoryTriggerExecutionFailure = RepositoryTriggerExecutionFailure'
  { -- | The name of the trigger that did not run.
    trigger :: Prelude.Maybe Prelude.Text,
    -- | Message information about the trigger that did not run.
    failureMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryTriggerExecutionFailure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trigger', 'repositoryTriggerExecutionFailure_trigger' - The name of the trigger that did not run.
--
-- 'failureMessage', 'repositoryTriggerExecutionFailure_failureMessage' - Message information about the trigger that did not run.
newRepositoryTriggerExecutionFailure ::
  RepositoryTriggerExecutionFailure
newRepositoryTriggerExecutionFailure =
  RepositoryTriggerExecutionFailure'
    { trigger =
        Prelude.Nothing,
      failureMessage = Prelude.Nothing
    }

-- | The name of the trigger that did not run.
repositoryTriggerExecutionFailure_trigger :: Lens.Lens' RepositoryTriggerExecutionFailure (Prelude.Maybe Prelude.Text)
repositoryTriggerExecutionFailure_trigger = Lens.lens (\RepositoryTriggerExecutionFailure' {trigger} -> trigger) (\s@RepositoryTriggerExecutionFailure' {} a -> s {trigger = a} :: RepositoryTriggerExecutionFailure)

-- | Message information about the trigger that did not run.
repositoryTriggerExecutionFailure_failureMessage :: Lens.Lens' RepositoryTriggerExecutionFailure (Prelude.Maybe Prelude.Text)
repositoryTriggerExecutionFailure_failureMessage = Lens.lens (\RepositoryTriggerExecutionFailure' {failureMessage} -> failureMessage) (\s@RepositoryTriggerExecutionFailure' {} a -> s {failureMessage = a} :: RepositoryTriggerExecutionFailure)

instance
  Core.FromJSON
    RepositoryTriggerExecutionFailure
  where
  parseJSON =
    Core.withObject
      "RepositoryTriggerExecutionFailure"
      ( \x ->
          RepositoryTriggerExecutionFailure'
            Prelude.<$> (x Core..:? "trigger")
            Prelude.<*> (x Core..:? "failureMessage")
      )

instance
  Prelude.Hashable
    RepositoryTriggerExecutionFailure
  where
  hashWithSalt
    _salt
    RepositoryTriggerExecutionFailure' {..} =
      _salt `Prelude.hashWithSalt` trigger
        `Prelude.hashWithSalt` failureMessage

instance
  Prelude.NFData
    RepositoryTriggerExecutionFailure
  where
  rnf RepositoryTriggerExecutionFailure' {..} =
    Prelude.rnf trigger
      `Prelude.seq` Prelude.rnf failureMessage
