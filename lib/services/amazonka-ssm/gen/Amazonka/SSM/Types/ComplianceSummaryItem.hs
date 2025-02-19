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
-- Module      : Amazonka.SSM.Types.ComplianceSummaryItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.ComplianceSummaryItem where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.CompliantSummary
import Amazonka.SSM.Types.NonCompliantSummary

-- | A summary of compliance information by compliance type.
--
-- /See:/ 'newComplianceSummaryItem' smart constructor.
data ComplianceSummaryItem = ComplianceSummaryItem'
  { -- | A list of COMPLIANT items for the specified compliance type.
    compliantSummary :: Prelude.Maybe CompliantSummary,
    -- | A list of NON_COMPLIANT items for the specified compliance type.
    nonCompliantSummary :: Prelude.Maybe NonCompliantSummary,
    -- | The type of compliance item. For example, the compliance type can be
    -- Association, Patch, or Custom:string.
    complianceType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComplianceSummaryItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compliantSummary', 'complianceSummaryItem_compliantSummary' - A list of COMPLIANT items for the specified compliance type.
--
-- 'nonCompliantSummary', 'complianceSummaryItem_nonCompliantSummary' - A list of NON_COMPLIANT items for the specified compliance type.
--
-- 'complianceType', 'complianceSummaryItem_complianceType' - The type of compliance item. For example, the compliance type can be
-- Association, Patch, or Custom:string.
newComplianceSummaryItem ::
  ComplianceSummaryItem
newComplianceSummaryItem =
  ComplianceSummaryItem'
    { compliantSummary =
        Prelude.Nothing,
      nonCompliantSummary = Prelude.Nothing,
      complianceType = Prelude.Nothing
    }

-- | A list of COMPLIANT items for the specified compliance type.
complianceSummaryItem_compliantSummary :: Lens.Lens' ComplianceSummaryItem (Prelude.Maybe CompliantSummary)
complianceSummaryItem_compliantSummary = Lens.lens (\ComplianceSummaryItem' {compliantSummary} -> compliantSummary) (\s@ComplianceSummaryItem' {} a -> s {compliantSummary = a} :: ComplianceSummaryItem)

-- | A list of NON_COMPLIANT items for the specified compliance type.
complianceSummaryItem_nonCompliantSummary :: Lens.Lens' ComplianceSummaryItem (Prelude.Maybe NonCompliantSummary)
complianceSummaryItem_nonCompliantSummary = Lens.lens (\ComplianceSummaryItem' {nonCompliantSummary} -> nonCompliantSummary) (\s@ComplianceSummaryItem' {} a -> s {nonCompliantSummary = a} :: ComplianceSummaryItem)

-- | The type of compliance item. For example, the compliance type can be
-- Association, Patch, or Custom:string.
complianceSummaryItem_complianceType :: Lens.Lens' ComplianceSummaryItem (Prelude.Maybe Prelude.Text)
complianceSummaryItem_complianceType = Lens.lens (\ComplianceSummaryItem' {complianceType} -> complianceType) (\s@ComplianceSummaryItem' {} a -> s {complianceType = a} :: ComplianceSummaryItem)

instance Core.FromJSON ComplianceSummaryItem where
  parseJSON =
    Core.withObject
      "ComplianceSummaryItem"
      ( \x ->
          ComplianceSummaryItem'
            Prelude.<$> (x Core..:? "CompliantSummary")
            Prelude.<*> (x Core..:? "NonCompliantSummary")
            Prelude.<*> (x Core..:? "ComplianceType")
      )

instance Prelude.Hashable ComplianceSummaryItem where
  hashWithSalt _salt ComplianceSummaryItem' {..} =
    _salt `Prelude.hashWithSalt` compliantSummary
      `Prelude.hashWithSalt` nonCompliantSummary
      `Prelude.hashWithSalt` complianceType

instance Prelude.NFData ComplianceSummaryItem where
  rnf ComplianceSummaryItem' {..} =
    Prelude.rnf compliantSummary
      `Prelude.seq` Prelude.rnf nonCompliantSummary
      `Prelude.seq` Prelude.rnf complianceType
