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
-- Module      : Amazonka.OpenSearch.Types.PackageVersionHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.PackageVersionHistory where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details of a package version.
--
-- /See:/ 'newPackageVersionHistory' smart constructor.
data PackageVersionHistory = PackageVersionHistory'
  { -- | The package version.
    packageVersion :: Prelude.Maybe Prelude.Text,
    -- | A message associated with the package version.
    commitMessage :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of when the package was created.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageVersionHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageVersion', 'packageVersionHistory_packageVersion' - The package version.
--
-- 'commitMessage', 'packageVersionHistory_commitMessage' - A message associated with the package version.
--
-- 'createdAt', 'packageVersionHistory_createdAt' - The timestamp of when the package was created.
newPackageVersionHistory ::
  PackageVersionHistory
newPackageVersionHistory =
  PackageVersionHistory'
    { packageVersion =
        Prelude.Nothing,
      commitMessage = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The package version.
packageVersionHistory_packageVersion :: Lens.Lens' PackageVersionHistory (Prelude.Maybe Prelude.Text)
packageVersionHistory_packageVersion = Lens.lens (\PackageVersionHistory' {packageVersion} -> packageVersion) (\s@PackageVersionHistory' {} a -> s {packageVersion = a} :: PackageVersionHistory)

-- | A message associated with the package version.
packageVersionHistory_commitMessage :: Lens.Lens' PackageVersionHistory (Prelude.Maybe Prelude.Text)
packageVersionHistory_commitMessage = Lens.lens (\PackageVersionHistory' {commitMessage} -> commitMessage) (\s@PackageVersionHistory' {} a -> s {commitMessage = a} :: PackageVersionHistory)

-- | The timestamp of when the package was created.
packageVersionHistory_createdAt :: Lens.Lens' PackageVersionHistory (Prelude.Maybe Prelude.UTCTime)
packageVersionHistory_createdAt = Lens.lens (\PackageVersionHistory' {createdAt} -> createdAt) (\s@PackageVersionHistory' {} a -> s {createdAt = a} :: PackageVersionHistory) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON PackageVersionHistory where
  parseJSON =
    Core.withObject
      "PackageVersionHistory"
      ( \x ->
          PackageVersionHistory'
            Prelude.<$> (x Core..:? "PackageVersion")
            Prelude.<*> (x Core..:? "CommitMessage")
            Prelude.<*> (x Core..:? "CreatedAt")
      )

instance Prelude.Hashable PackageVersionHistory where
  hashWithSalt _salt PackageVersionHistory' {..} =
    _salt `Prelude.hashWithSalt` packageVersion
      `Prelude.hashWithSalt` commitMessage
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData PackageVersionHistory where
  rnf PackageVersionHistory' {..} =
    Prelude.rnf packageVersion
      `Prelude.seq` Prelude.rnf commitMessage
      `Prelude.seq` Prelude.rnf createdAt
