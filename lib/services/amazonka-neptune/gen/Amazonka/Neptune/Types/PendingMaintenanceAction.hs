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
-- Module      : Amazonka.Neptune.Types.PendingMaintenanceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Neptune.Types.PendingMaintenanceAction where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a pending maintenance action for a resource.
--
-- /See:/ 'newPendingMaintenanceAction' smart constructor.
data PendingMaintenanceAction = PendingMaintenanceAction'
  { -- | Indicates the type of opt-in request that has been received for the
    -- resource.
    optInStatus :: Prelude.Maybe Prelude.Text,
    -- | A description providing more detail about the maintenance action.
    description :: Prelude.Maybe Prelude.Text,
    -- | The effective date when the pending maintenance action is applied to the
    -- resource. This date takes into account opt-in requests received from the
    -- ApplyPendingMaintenanceAction API, the @AutoAppliedAfterDate@, and the
    -- @ForcedApplyDate@. This value is blank if an opt-in request has not been
    -- received and nothing has been specified as @AutoAppliedAfterDate@ or
    -- @ForcedApplyDate@.
    currentApplyDate :: Prelude.Maybe Core.ISO8601,
    -- | The type of pending maintenance action that is available for the
    -- resource.
    action :: Prelude.Maybe Prelude.Text,
    -- | The date of the maintenance window when the action is applied. The
    -- maintenance action is applied to the resource during its first
    -- maintenance window after this date. If this date is specified, any
    -- @next-maintenance@ opt-in requests are ignored.
    autoAppliedAfterDate :: Prelude.Maybe Core.ISO8601,
    -- | The date when the maintenance action is automatically applied. The
    -- maintenance action is applied to the resource on this date regardless of
    -- the maintenance window for the resource. If this date is specified, any
    -- @immediate@ opt-in requests are ignored.
    forcedApplyDate :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PendingMaintenanceAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'optInStatus', 'pendingMaintenanceAction_optInStatus' - Indicates the type of opt-in request that has been received for the
-- resource.
--
-- 'description', 'pendingMaintenanceAction_description' - A description providing more detail about the maintenance action.
--
-- 'currentApplyDate', 'pendingMaintenanceAction_currentApplyDate' - The effective date when the pending maintenance action is applied to the
-- resource. This date takes into account opt-in requests received from the
-- ApplyPendingMaintenanceAction API, the @AutoAppliedAfterDate@, and the
-- @ForcedApplyDate@. This value is blank if an opt-in request has not been
-- received and nothing has been specified as @AutoAppliedAfterDate@ or
-- @ForcedApplyDate@.
--
-- 'action', 'pendingMaintenanceAction_action' - The type of pending maintenance action that is available for the
-- resource.
--
-- 'autoAppliedAfterDate', 'pendingMaintenanceAction_autoAppliedAfterDate' - The date of the maintenance window when the action is applied. The
-- maintenance action is applied to the resource during its first
-- maintenance window after this date. If this date is specified, any
-- @next-maintenance@ opt-in requests are ignored.
--
-- 'forcedApplyDate', 'pendingMaintenanceAction_forcedApplyDate' - The date when the maintenance action is automatically applied. The
-- maintenance action is applied to the resource on this date regardless of
-- the maintenance window for the resource. If this date is specified, any
-- @immediate@ opt-in requests are ignored.
newPendingMaintenanceAction ::
  PendingMaintenanceAction
newPendingMaintenanceAction =
  PendingMaintenanceAction'
    { optInStatus =
        Prelude.Nothing,
      description = Prelude.Nothing,
      currentApplyDate = Prelude.Nothing,
      action = Prelude.Nothing,
      autoAppliedAfterDate = Prelude.Nothing,
      forcedApplyDate = Prelude.Nothing
    }

-- | Indicates the type of opt-in request that has been received for the
-- resource.
pendingMaintenanceAction_optInStatus :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.Text)
pendingMaintenanceAction_optInStatus = Lens.lens (\PendingMaintenanceAction' {optInStatus} -> optInStatus) (\s@PendingMaintenanceAction' {} a -> s {optInStatus = a} :: PendingMaintenanceAction)

-- | A description providing more detail about the maintenance action.
pendingMaintenanceAction_description :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.Text)
pendingMaintenanceAction_description = Lens.lens (\PendingMaintenanceAction' {description} -> description) (\s@PendingMaintenanceAction' {} a -> s {description = a} :: PendingMaintenanceAction)

-- | The effective date when the pending maintenance action is applied to the
-- resource. This date takes into account opt-in requests received from the
-- ApplyPendingMaintenanceAction API, the @AutoAppliedAfterDate@, and the
-- @ForcedApplyDate@. This value is blank if an opt-in request has not been
-- received and nothing has been specified as @AutoAppliedAfterDate@ or
-- @ForcedApplyDate@.
pendingMaintenanceAction_currentApplyDate :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.UTCTime)
pendingMaintenanceAction_currentApplyDate = Lens.lens (\PendingMaintenanceAction' {currentApplyDate} -> currentApplyDate) (\s@PendingMaintenanceAction' {} a -> s {currentApplyDate = a} :: PendingMaintenanceAction) Prelude.. Lens.mapping Core._Time

-- | The type of pending maintenance action that is available for the
-- resource.
pendingMaintenanceAction_action :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.Text)
pendingMaintenanceAction_action = Lens.lens (\PendingMaintenanceAction' {action} -> action) (\s@PendingMaintenanceAction' {} a -> s {action = a} :: PendingMaintenanceAction)

-- | The date of the maintenance window when the action is applied. The
-- maintenance action is applied to the resource during its first
-- maintenance window after this date. If this date is specified, any
-- @next-maintenance@ opt-in requests are ignored.
pendingMaintenanceAction_autoAppliedAfterDate :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.UTCTime)
pendingMaintenanceAction_autoAppliedAfterDate = Lens.lens (\PendingMaintenanceAction' {autoAppliedAfterDate} -> autoAppliedAfterDate) (\s@PendingMaintenanceAction' {} a -> s {autoAppliedAfterDate = a} :: PendingMaintenanceAction) Prelude.. Lens.mapping Core._Time

-- | The date when the maintenance action is automatically applied. The
-- maintenance action is applied to the resource on this date regardless of
-- the maintenance window for the resource. If this date is specified, any
-- @immediate@ opt-in requests are ignored.
pendingMaintenanceAction_forcedApplyDate :: Lens.Lens' PendingMaintenanceAction (Prelude.Maybe Prelude.UTCTime)
pendingMaintenanceAction_forcedApplyDate = Lens.lens (\PendingMaintenanceAction' {forcedApplyDate} -> forcedApplyDate) (\s@PendingMaintenanceAction' {} a -> s {forcedApplyDate = a} :: PendingMaintenanceAction) Prelude.. Lens.mapping Core._Time

instance Core.FromXML PendingMaintenanceAction where
  parseXML x =
    PendingMaintenanceAction'
      Prelude.<$> (x Core..@? "OptInStatus")
      Prelude.<*> (x Core..@? "Description")
      Prelude.<*> (x Core..@? "CurrentApplyDate")
      Prelude.<*> (x Core..@? "Action")
      Prelude.<*> (x Core..@? "AutoAppliedAfterDate")
      Prelude.<*> (x Core..@? "ForcedApplyDate")

instance Prelude.Hashable PendingMaintenanceAction where
  hashWithSalt _salt PendingMaintenanceAction' {..} =
    _salt `Prelude.hashWithSalt` optInStatus
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` currentApplyDate
      `Prelude.hashWithSalt` action
      `Prelude.hashWithSalt` autoAppliedAfterDate
      `Prelude.hashWithSalt` forcedApplyDate

instance Prelude.NFData PendingMaintenanceAction where
  rnf PendingMaintenanceAction' {..} =
    Prelude.rnf optInStatus
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf currentApplyDate
      `Prelude.seq` Prelude.rnf action
      `Prelude.seq` Prelude.rnf autoAppliedAfterDate
      `Prelude.seq` Prelude.rnf forcedApplyDate
