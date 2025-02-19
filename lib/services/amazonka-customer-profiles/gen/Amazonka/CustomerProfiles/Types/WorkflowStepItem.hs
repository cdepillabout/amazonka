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
-- Module      : Amazonka.CustomerProfiles.Types.WorkflowStepItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CustomerProfiles.Types.WorkflowStepItem where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types.AppflowIntegrationWorkflowStep
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | List containing steps in workflow.
--
-- /See:/ 'newWorkflowStepItem' smart constructor.
data WorkflowStepItem = WorkflowStepItem'
  { -- | Workflow step information specific to @APPFLOW_INTEGRATION@ workflow.
    appflowIntegration :: Prelude.Maybe AppflowIntegrationWorkflowStep
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkflowStepItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appflowIntegration', 'workflowStepItem_appflowIntegration' - Workflow step information specific to @APPFLOW_INTEGRATION@ workflow.
newWorkflowStepItem ::
  WorkflowStepItem
newWorkflowStepItem =
  WorkflowStepItem'
    { appflowIntegration =
        Prelude.Nothing
    }

-- | Workflow step information specific to @APPFLOW_INTEGRATION@ workflow.
workflowStepItem_appflowIntegration :: Lens.Lens' WorkflowStepItem (Prelude.Maybe AppflowIntegrationWorkflowStep)
workflowStepItem_appflowIntegration = Lens.lens (\WorkflowStepItem' {appflowIntegration} -> appflowIntegration) (\s@WorkflowStepItem' {} a -> s {appflowIntegration = a} :: WorkflowStepItem)

instance Core.FromJSON WorkflowStepItem where
  parseJSON =
    Core.withObject
      "WorkflowStepItem"
      ( \x ->
          WorkflowStepItem'
            Prelude.<$> (x Core..:? "AppflowIntegration")
      )

instance Prelude.Hashable WorkflowStepItem where
  hashWithSalt _salt WorkflowStepItem' {..} =
    _salt `Prelude.hashWithSalt` appflowIntegration

instance Prelude.NFData WorkflowStepItem where
  rnf WorkflowStepItem' {..} =
    Prelude.rnf appflowIntegration
