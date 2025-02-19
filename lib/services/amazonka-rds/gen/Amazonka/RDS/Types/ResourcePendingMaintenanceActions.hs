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
-- Module      : Amazonka.RDS.Types.ResourcePendingMaintenanceActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.ResourcePendingMaintenanceActions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types.PendingMaintenanceAction

-- | Describes the pending maintenance actions for a resource.
--
-- /See:/ 'newResourcePendingMaintenanceActions' smart constructor.
data ResourcePendingMaintenanceActions = ResourcePendingMaintenanceActions'
  { -- | The ARN of the resource that has pending maintenance actions.
    resourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A list that provides details about the pending maintenance actions for
    -- the resource.
    pendingMaintenanceActionDetails :: Prelude.Maybe [PendingMaintenanceAction]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourcePendingMaintenanceActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceIdentifier', 'resourcePendingMaintenanceActions_resourceIdentifier' - The ARN of the resource that has pending maintenance actions.
--
-- 'pendingMaintenanceActionDetails', 'resourcePendingMaintenanceActions_pendingMaintenanceActionDetails' - A list that provides details about the pending maintenance actions for
-- the resource.
newResourcePendingMaintenanceActions ::
  ResourcePendingMaintenanceActions
newResourcePendingMaintenanceActions =
  ResourcePendingMaintenanceActions'
    { resourceIdentifier =
        Prelude.Nothing,
      pendingMaintenanceActionDetails =
        Prelude.Nothing
    }

-- | The ARN of the resource that has pending maintenance actions.
resourcePendingMaintenanceActions_resourceIdentifier :: Lens.Lens' ResourcePendingMaintenanceActions (Prelude.Maybe Prelude.Text)
resourcePendingMaintenanceActions_resourceIdentifier = Lens.lens (\ResourcePendingMaintenanceActions' {resourceIdentifier} -> resourceIdentifier) (\s@ResourcePendingMaintenanceActions' {} a -> s {resourceIdentifier = a} :: ResourcePendingMaintenanceActions)

-- | A list that provides details about the pending maintenance actions for
-- the resource.
resourcePendingMaintenanceActions_pendingMaintenanceActionDetails :: Lens.Lens' ResourcePendingMaintenanceActions (Prelude.Maybe [PendingMaintenanceAction])
resourcePendingMaintenanceActions_pendingMaintenanceActionDetails = Lens.lens (\ResourcePendingMaintenanceActions' {pendingMaintenanceActionDetails} -> pendingMaintenanceActionDetails) (\s@ResourcePendingMaintenanceActions' {} a -> s {pendingMaintenanceActionDetails = a} :: ResourcePendingMaintenanceActions) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromXML
    ResourcePendingMaintenanceActions
  where
  parseXML x =
    ResourcePendingMaintenanceActions'
      Prelude.<$> (x Core..@? "ResourceIdentifier")
      Prelude.<*> ( x Core..@? "PendingMaintenanceActionDetails"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may
                        (Core.parseXMLList "PendingMaintenanceAction")
                  )

instance
  Prelude.Hashable
    ResourcePendingMaintenanceActions
  where
  hashWithSalt
    _salt
    ResourcePendingMaintenanceActions' {..} =
      _salt `Prelude.hashWithSalt` resourceIdentifier
        `Prelude.hashWithSalt` pendingMaintenanceActionDetails

instance
  Prelude.NFData
    ResourcePendingMaintenanceActions
  where
  rnf ResourcePendingMaintenanceActions' {..} =
    Prelude.rnf resourceIdentifier
      `Prelude.seq` Prelude.rnf pendingMaintenanceActionDetails
