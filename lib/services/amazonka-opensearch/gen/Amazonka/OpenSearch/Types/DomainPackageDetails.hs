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
-- Module      : Amazonka.OpenSearch.Types.DomainPackageDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.DomainPackageDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.DomainPackageStatus
import Amazonka.OpenSearch.Types.ErrorDetails
import Amazonka.OpenSearch.Types.PackageType
import qualified Amazonka.Prelude as Prelude

-- | Information on a package associated with a domain.
--
-- /See:/ 'newDomainPackageDetails' smart constructor.
data DomainPackageDetails = DomainPackageDetails'
  { -- | The relative path on Amazon OpenSearch Service nodes, which can be used
    -- as synonym_path when the package is a synonym file.
    referencePath :: Prelude.Maybe Prelude.Text,
    -- | User-specified name of the package.
    packageName :: Prelude.Maybe Prelude.Text,
    -- | The name of the domain you\'ve associated a package with.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | Additional information if the package is in an error state. Null
    -- otherwise.
    errorDetails :: Prelude.Maybe ErrorDetails,
    -- | State of the association. Values are ASSOCIATING, ASSOCIATION_FAILED,
    -- ACTIVE, DISSOCIATING, and DISSOCIATION_FAILED.
    domainPackageStatus :: Prelude.Maybe DomainPackageStatus,
    -- | The internal ID of the package.
    packageID :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the most recent update to the package association
    -- status.
    lastUpdated :: Prelude.Maybe Core.POSIX,
    packageVersion :: Prelude.Maybe Prelude.Text,
    -- | Currently supports only TXT-DICTIONARY.
    packageType :: Prelude.Maybe PackageType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainPackageDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'referencePath', 'domainPackageDetails_referencePath' - The relative path on Amazon OpenSearch Service nodes, which can be used
-- as synonym_path when the package is a synonym file.
--
-- 'packageName', 'domainPackageDetails_packageName' - User-specified name of the package.
--
-- 'domainName', 'domainPackageDetails_domainName' - The name of the domain you\'ve associated a package with.
--
-- 'errorDetails', 'domainPackageDetails_errorDetails' - Additional information if the package is in an error state. Null
-- otherwise.
--
-- 'domainPackageStatus', 'domainPackageDetails_domainPackageStatus' - State of the association. Values are ASSOCIATING, ASSOCIATION_FAILED,
-- ACTIVE, DISSOCIATING, and DISSOCIATION_FAILED.
--
-- 'packageID', 'domainPackageDetails_packageID' - The internal ID of the package.
--
-- 'lastUpdated', 'domainPackageDetails_lastUpdated' - The timestamp of the most recent update to the package association
-- status.
--
-- 'packageVersion', 'domainPackageDetails_packageVersion' - Undocumented member.
--
-- 'packageType', 'domainPackageDetails_packageType' - Currently supports only TXT-DICTIONARY.
newDomainPackageDetails ::
  DomainPackageDetails
newDomainPackageDetails =
  DomainPackageDetails'
    { referencePath =
        Prelude.Nothing,
      packageName = Prelude.Nothing,
      domainName = Prelude.Nothing,
      errorDetails = Prelude.Nothing,
      domainPackageStatus = Prelude.Nothing,
      packageID = Prelude.Nothing,
      lastUpdated = Prelude.Nothing,
      packageVersion = Prelude.Nothing,
      packageType = Prelude.Nothing
    }

-- | The relative path on Amazon OpenSearch Service nodes, which can be used
-- as synonym_path when the package is a synonym file.
domainPackageDetails_referencePath :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.Text)
domainPackageDetails_referencePath = Lens.lens (\DomainPackageDetails' {referencePath} -> referencePath) (\s@DomainPackageDetails' {} a -> s {referencePath = a} :: DomainPackageDetails)

-- | User-specified name of the package.
domainPackageDetails_packageName :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.Text)
domainPackageDetails_packageName = Lens.lens (\DomainPackageDetails' {packageName} -> packageName) (\s@DomainPackageDetails' {} a -> s {packageName = a} :: DomainPackageDetails)

-- | The name of the domain you\'ve associated a package with.
domainPackageDetails_domainName :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.Text)
domainPackageDetails_domainName = Lens.lens (\DomainPackageDetails' {domainName} -> domainName) (\s@DomainPackageDetails' {} a -> s {domainName = a} :: DomainPackageDetails)

-- | Additional information if the package is in an error state. Null
-- otherwise.
domainPackageDetails_errorDetails :: Lens.Lens' DomainPackageDetails (Prelude.Maybe ErrorDetails)
domainPackageDetails_errorDetails = Lens.lens (\DomainPackageDetails' {errorDetails} -> errorDetails) (\s@DomainPackageDetails' {} a -> s {errorDetails = a} :: DomainPackageDetails)

-- | State of the association. Values are ASSOCIATING, ASSOCIATION_FAILED,
-- ACTIVE, DISSOCIATING, and DISSOCIATION_FAILED.
domainPackageDetails_domainPackageStatus :: Lens.Lens' DomainPackageDetails (Prelude.Maybe DomainPackageStatus)
domainPackageDetails_domainPackageStatus = Lens.lens (\DomainPackageDetails' {domainPackageStatus} -> domainPackageStatus) (\s@DomainPackageDetails' {} a -> s {domainPackageStatus = a} :: DomainPackageDetails)

-- | The internal ID of the package.
domainPackageDetails_packageID :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.Text)
domainPackageDetails_packageID = Lens.lens (\DomainPackageDetails' {packageID} -> packageID) (\s@DomainPackageDetails' {} a -> s {packageID = a} :: DomainPackageDetails)

-- | The timestamp of the most recent update to the package association
-- status.
domainPackageDetails_lastUpdated :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.UTCTime)
domainPackageDetails_lastUpdated = Lens.lens (\DomainPackageDetails' {lastUpdated} -> lastUpdated) (\s@DomainPackageDetails' {} a -> s {lastUpdated = a} :: DomainPackageDetails) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
domainPackageDetails_packageVersion :: Lens.Lens' DomainPackageDetails (Prelude.Maybe Prelude.Text)
domainPackageDetails_packageVersion = Lens.lens (\DomainPackageDetails' {packageVersion} -> packageVersion) (\s@DomainPackageDetails' {} a -> s {packageVersion = a} :: DomainPackageDetails)

-- | Currently supports only TXT-DICTIONARY.
domainPackageDetails_packageType :: Lens.Lens' DomainPackageDetails (Prelude.Maybe PackageType)
domainPackageDetails_packageType = Lens.lens (\DomainPackageDetails' {packageType} -> packageType) (\s@DomainPackageDetails' {} a -> s {packageType = a} :: DomainPackageDetails)

instance Core.FromJSON DomainPackageDetails where
  parseJSON =
    Core.withObject
      "DomainPackageDetails"
      ( \x ->
          DomainPackageDetails'
            Prelude.<$> (x Core..:? "ReferencePath")
            Prelude.<*> (x Core..:? "PackageName")
            Prelude.<*> (x Core..:? "DomainName")
            Prelude.<*> (x Core..:? "ErrorDetails")
            Prelude.<*> (x Core..:? "DomainPackageStatus")
            Prelude.<*> (x Core..:? "PackageID")
            Prelude.<*> (x Core..:? "LastUpdated")
            Prelude.<*> (x Core..:? "PackageVersion")
            Prelude.<*> (x Core..:? "PackageType")
      )

instance Prelude.Hashable DomainPackageDetails where
  hashWithSalt _salt DomainPackageDetails' {..} =
    _salt `Prelude.hashWithSalt` referencePath
      `Prelude.hashWithSalt` packageName
      `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` errorDetails
      `Prelude.hashWithSalt` domainPackageStatus
      `Prelude.hashWithSalt` packageID
      `Prelude.hashWithSalt` lastUpdated
      `Prelude.hashWithSalt` packageVersion
      `Prelude.hashWithSalt` packageType

instance Prelude.NFData DomainPackageDetails where
  rnf DomainPackageDetails' {..} =
    Prelude.rnf referencePath
      `Prelude.seq` Prelude.rnf packageName
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf errorDetails
      `Prelude.seq` Prelude.rnf domainPackageStatus
      `Prelude.seq` Prelude.rnf packageID
      `Prelude.seq` Prelude.rnf lastUpdated
      `Prelude.seq` Prelude.rnf packageVersion
      `Prelude.seq` Prelude.rnf packageType
