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
-- Module      : Amazonka.CustomerProfiles.Types.WorkflowAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CustomerProfiles.Types.WorkflowAttributes where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types.AppflowIntegrationWorkflowAttributes
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Structure to hold workflow attributes.
--
-- /See:/ 'newWorkflowAttributes' smart constructor.
data WorkflowAttributes = WorkflowAttributes'
  { -- | Workflow attributes specific to @APPFLOW_INTEGRATION@ workflow.
    appflowIntegration :: Prelude.Maybe AppflowIntegrationWorkflowAttributes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkflowAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appflowIntegration', 'workflowAttributes_appflowIntegration' - Workflow attributes specific to @APPFLOW_INTEGRATION@ workflow.
newWorkflowAttributes ::
  WorkflowAttributes
newWorkflowAttributes =
  WorkflowAttributes'
    { appflowIntegration =
        Prelude.Nothing
    }

-- | Workflow attributes specific to @APPFLOW_INTEGRATION@ workflow.
workflowAttributes_appflowIntegration :: Lens.Lens' WorkflowAttributes (Prelude.Maybe AppflowIntegrationWorkflowAttributes)
workflowAttributes_appflowIntegration = Lens.lens (\WorkflowAttributes' {appflowIntegration} -> appflowIntegration) (\s@WorkflowAttributes' {} a -> s {appflowIntegration = a} :: WorkflowAttributes)

instance Core.FromJSON WorkflowAttributes where
  parseJSON =
    Core.withObject
      "WorkflowAttributes"
      ( \x ->
          WorkflowAttributes'
            Prelude.<$> (x Core..:? "AppflowIntegration")
      )

instance Prelude.Hashable WorkflowAttributes where
  hashWithSalt _salt WorkflowAttributes' {..} =
    _salt `Prelude.hashWithSalt` appflowIntegration

instance Prelude.NFData WorkflowAttributes where
  rnf WorkflowAttributes' {..} =
    Prelude.rnf appflowIntegration
