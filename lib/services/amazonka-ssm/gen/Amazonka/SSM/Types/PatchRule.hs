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
-- Module      : Amazonka.SSM.Types.PatchRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.PatchRule where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.PatchComplianceLevel
import Amazonka.SSM.Types.PatchFilterGroup

-- | Defines an approval rule for a patch baseline.
--
-- /See:/ 'newPatchRule' smart constructor.
data PatchRule = PatchRule'
  { -- | The number of days after the release date of each patch matched by the
    -- rule that the patch is marked as approved in the patch baseline. For
    -- example, a value of @7@ means that patches are approved seven days after
    -- they are released. Not supported on Debian Server or Ubuntu Server.
    approveAfterDays :: Prelude.Maybe Prelude.Natural,
    -- | For managed nodes identified by the approval rule filters, enables a
    -- patch baseline to apply non-security updates available in the specified
    -- repository. The default value is @false@. Applies to Linux managed nodes
    -- only.
    enableNonSecurity :: Prelude.Maybe Prelude.Bool,
    -- | A compliance severity level for all approved patches in a patch
    -- baseline.
    complianceLevel :: Prelude.Maybe PatchComplianceLevel,
    -- | The cutoff date for auto approval of released patches. Any patches
    -- released on or before this date are installed automatically. Not
    -- supported on Debian Server or Ubuntu Server.
    --
    -- Enter dates in the format @YYYY-MM-DD@. For example, @2021-12-31@.
    approveUntilDate :: Prelude.Maybe Prelude.Text,
    -- | The patch filter group that defines the criteria for the rule.
    patchFilterGroup :: PatchFilterGroup
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PatchRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approveAfterDays', 'patchRule_approveAfterDays' - The number of days after the release date of each patch matched by the
-- rule that the patch is marked as approved in the patch baseline. For
-- example, a value of @7@ means that patches are approved seven days after
-- they are released. Not supported on Debian Server or Ubuntu Server.
--
-- 'enableNonSecurity', 'patchRule_enableNonSecurity' - For managed nodes identified by the approval rule filters, enables a
-- patch baseline to apply non-security updates available in the specified
-- repository. The default value is @false@. Applies to Linux managed nodes
-- only.
--
-- 'complianceLevel', 'patchRule_complianceLevel' - A compliance severity level for all approved patches in a patch
-- baseline.
--
-- 'approveUntilDate', 'patchRule_approveUntilDate' - The cutoff date for auto approval of released patches. Any patches
-- released on or before this date are installed automatically. Not
-- supported on Debian Server or Ubuntu Server.
--
-- Enter dates in the format @YYYY-MM-DD@. For example, @2021-12-31@.
--
-- 'patchFilterGroup', 'patchRule_patchFilterGroup' - The patch filter group that defines the criteria for the rule.
newPatchRule ::
  -- | 'patchFilterGroup'
  PatchFilterGroup ->
  PatchRule
newPatchRule pPatchFilterGroup_ =
  PatchRule'
    { approveAfterDays = Prelude.Nothing,
      enableNonSecurity = Prelude.Nothing,
      complianceLevel = Prelude.Nothing,
      approveUntilDate = Prelude.Nothing,
      patchFilterGroup = pPatchFilterGroup_
    }

-- | The number of days after the release date of each patch matched by the
-- rule that the patch is marked as approved in the patch baseline. For
-- example, a value of @7@ means that patches are approved seven days after
-- they are released. Not supported on Debian Server or Ubuntu Server.
patchRule_approveAfterDays :: Lens.Lens' PatchRule (Prelude.Maybe Prelude.Natural)
patchRule_approveAfterDays = Lens.lens (\PatchRule' {approveAfterDays} -> approveAfterDays) (\s@PatchRule' {} a -> s {approveAfterDays = a} :: PatchRule)

-- | For managed nodes identified by the approval rule filters, enables a
-- patch baseline to apply non-security updates available in the specified
-- repository. The default value is @false@. Applies to Linux managed nodes
-- only.
patchRule_enableNonSecurity :: Lens.Lens' PatchRule (Prelude.Maybe Prelude.Bool)
patchRule_enableNonSecurity = Lens.lens (\PatchRule' {enableNonSecurity} -> enableNonSecurity) (\s@PatchRule' {} a -> s {enableNonSecurity = a} :: PatchRule)

-- | A compliance severity level for all approved patches in a patch
-- baseline.
patchRule_complianceLevel :: Lens.Lens' PatchRule (Prelude.Maybe PatchComplianceLevel)
patchRule_complianceLevel = Lens.lens (\PatchRule' {complianceLevel} -> complianceLevel) (\s@PatchRule' {} a -> s {complianceLevel = a} :: PatchRule)

-- | The cutoff date for auto approval of released patches. Any patches
-- released on or before this date are installed automatically. Not
-- supported on Debian Server or Ubuntu Server.
--
-- Enter dates in the format @YYYY-MM-DD@. For example, @2021-12-31@.
patchRule_approveUntilDate :: Lens.Lens' PatchRule (Prelude.Maybe Prelude.Text)
patchRule_approveUntilDate = Lens.lens (\PatchRule' {approveUntilDate} -> approveUntilDate) (\s@PatchRule' {} a -> s {approveUntilDate = a} :: PatchRule)

-- | The patch filter group that defines the criteria for the rule.
patchRule_patchFilterGroup :: Lens.Lens' PatchRule PatchFilterGroup
patchRule_patchFilterGroup = Lens.lens (\PatchRule' {patchFilterGroup} -> patchFilterGroup) (\s@PatchRule' {} a -> s {patchFilterGroup = a} :: PatchRule)

instance Core.FromJSON PatchRule where
  parseJSON =
    Core.withObject
      "PatchRule"
      ( \x ->
          PatchRule'
            Prelude.<$> (x Core..:? "ApproveAfterDays")
            Prelude.<*> (x Core..:? "EnableNonSecurity")
            Prelude.<*> (x Core..:? "ComplianceLevel")
            Prelude.<*> (x Core..:? "ApproveUntilDate")
            Prelude.<*> (x Core..: "PatchFilterGroup")
      )

instance Prelude.Hashable PatchRule where
  hashWithSalt _salt PatchRule' {..} =
    _salt `Prelude.hashWithSalt` approveAfterDays
      `Prelude.hashWithSalt` enableNonSecurity
      `Prelude.hashWithSalt` complianceLevel
      `Prelude.hashWithSalt` approveUntilDate
      `Prelude.hashWithSalt` patchFilterGroup

instance Prelude.NFData PatchRule where
  rnf PatchRule' {..} =
    Prelude.rnf approveAfterDays
      `Prelude.seq` Prelude.rnf enableNonSecurity
      `Prelude.seq` Prelude.rnf complianceLevel
      `Prelude.seq` Prelude.rnf approveUntilDate
      `Prelude.seq` Prelude.rnf patchFilterGroup

instance Core.ToJSON PatchRule where
  toJSON PatchRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ApproveAfterDays" Core..=)
              Prelude.<$> approveAfterDays,
            ("EnableNonSecurity" Core..=)
              Prelude.<$> enableNonSecurity,
            ("ComplianceLevel" Core..=)
              Prelude.<$> complianceLevel,
            ("ApproveUntilDate" Core..=)
              Prelude.<$> approveUntilDate,
            Prelude.Just
              ("PatchFilterGroup" Core..= patchFilterGroup)
          ]
      )
