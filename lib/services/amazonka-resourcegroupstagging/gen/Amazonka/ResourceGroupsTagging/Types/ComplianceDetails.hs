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
-- Module      : Amazonka.ResourceGroupsTagging.Types.ComplianceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResourceGroupsTagging.Types.ComplianceDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information that shows whether a resource is compliant with the
-- effective tag policy, including details on any noncompliant tag keys.
--
-- /See:/ 'newComplianceDetails' smart constructor.
data ComplianceDetails = ComplianceDetails'
  { -- | These tag keys on the resource are noncompliant with the effective tag
    -- policy.
    noncompliantKeys :: Prelude.Maybe [Prelude.Text],
    -- | Whether a resource is compliant with the effective tag policy.
    complianceStatus :: Prelude.Maybe Prelude.Bool,
    -- | These are keys defined in the effective policy that are on the resource
    -- with either incorrect case treatment or noncompliant values.
    keysWithNoncompliantValues :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComplianceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'noncompliantKeys', 'complianceDetails_noncompliantKeys' - These tag keys on the resource are noncompliant with the effective tag
-- policy.
--
-- 'complianceStatus', 'complianceDetails_complianceStatus' - Whether a resource is compliant with the effective tag policy.
--
-- 'keysWithNoncompliantValues', 'complianceDetails_keysWithNoncompliantValues' - These are keys defined in the effective policy that are on the resource
-- with either incorrect case treatment or noncompliant values.
newComplianceDetails ::
  ComplianceDetails
newComplianceDetails =
  ComplianceDetails'
    { noncompliantKeys =
        Prelude.Nothing,
      complianceStatus = Prelude.Nothing,
      keysWithNoncompliantValues = Prelude.Nothing
    }

-- | These tag keys on the resource are noncompliant with the effective tag
-- policy.
complianceDetails_noncompliantKeys :: Lens.Lens' ComplianceDetails (Prelude.Maybe [Prelude.Text])
complianceDetails_noncompliantKeys = Lens.lens (\ComplianceDetails' {noncompliantKeys} -> noncompliantKeys) (\s@ComplianceDetails' {} a -> s {noncompliantKeys = a} :: ComplianceDetails) Prelude.. Lens.mapping Lens.coerced

-- | Whether a resource is compliant with the effective tag policy.
complianceDetails_complianceStatus :: Lens.Lens' ComplianceDetails (Prelude.Maybe Prelude.Bool)
complianceDetails_complianceStatus = Lens.lens (\ComplianceDetails' {complianceStatus} -> complianceStatus) (\s@ComplianceDetails' {} a -> s {complianceStatus = a} :: ComplianceDetails)

-- | These are keys defined in the effective policy that are on the resource
-- with either incorrect case treatment or noncompliant values.
complianceDetails_keysWithNoncompliantValues :: Lens.Lens' ComplianceDetails (Prelude.Maybe [Prelude.Text])
complianceDetails_keysWithNoncompliantValues = Lens.lens (\ComplianceDetails' {keysWithNoncompliantValues} -> keysWithNoncompliantValues) (\s@ComplianceDetails' {} a -> s {keysWithNoncompliantValues = a} :: ComplianceDetails) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ComplianceDetails where
  parseJSON =
    Core.withObject
      "ComplianceDetails"
      ( \x ->
          ComplianceDetails'
            Prelude.<$> ( x Core..:? "NoncompliantKeys"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ComplianceStatus")
            Prelude.<*> ( x Core..:? "KeysWithNoncompliantValues"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable ComplianceDetails where
  hashWithSalt _salt ComplianceDetails' {..} =
    _salt `Prelude.hashWithSalt` noncompliantKeys
      `Prelude.hashWithSalt` complianceStatus
      `Prelude.hashWithSalt` keysWithNoncompliantValues

instance Prelude.NFData ComplianceDetails where
  rnf ComplianceDetails' {..} =
    Prelude.rnf noncompliantKeys
      `Prelude.seq` Prelude.rnf complianceStatus
      `Prelude.seq` Prelude.rnf keysWithNoncompliantValues
