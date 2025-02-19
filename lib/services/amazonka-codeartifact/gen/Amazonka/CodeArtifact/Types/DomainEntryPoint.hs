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
-- Module      : Amazonka.CodeArtifact.Types.DomainEntryPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeArtifact.Types.DomainEntryPoint where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about how a package originally entered the CodeArtifact
-- domain. For packages published directly to CodeArtifact, the entry point
-- is the repository it was published to. For packages ingested from an
-- external repository, the entry point is the external connection that it
-- was ingested from. An external connection is a CodeArtifact repository
-- that is connected to an external repository such as the npm registry or
-- NuGet gallery.
--
-- /See:/ 'newDomainEntryPoint' smart constructor.
data DomainEntryPoint = DomainEntryPoint'
  { -- | The name of the repository that a package was originally published to.
    repositoryName :: Prelude.Maybe Prelude.Text,
    -- | The name of the external connection that a package was ingested from.
    externalConnectionName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainEntryPoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryName', 'domainEntryPoint_repositoryName' - The name of the repository that a package was originally published to.
--
-- 'externalConnectionName', 'domainEntryPoint_externalConnectionName' - The name of the external connection that a package was ingested from.
newDomainEntryPoint ::
  DomainEntryPoint
newDomainEntryPoint =
  DomainEntryPoint'
    { repositoryName = Prelude.Nothing,
      externalConnectionName = Prelude.Nothing
    }

-- | The name of the repository that a package was originally published to.
domainEntryPoint_repositoryName :: Lens.Lens' DomainEntryPoint (Prelude.Maybe Prelude.Text)
domainEntryPoint_repositoryName = Lens.lens (\DomainEntryPoint' {repositoryName} -> repositoryName) (\s@DomainEntryPoint' {} a -> s {repositoryName = a} :: DomainEntryPoint)

-- | The name of the external connection that a package was ingested from.
domainEntryPoint_externalConnectionName :: Lens.Lens' DomainEntryPoint (Prelude.Maybe Prelude.Text)
domainEntryPoint_externalConnectionName = Lens.lens (\DomainEntryPoint' {externalConnectionName} -> externalConnectionName) (\s@DomainEntryPoint' {} a -> s {externalConnectionName = a} :: DomainEntryPoint)

instance Core.FromJSON DomainEntryPoint where
  parseJSON =
    Core.withObject
      "DomainEntryPoint"
      ( \x ->
          DomainEntryPoint'
            Prelude.<$> (x Core..:? "repositoryName")
            Prelude.<*> (x Core..:? "externalConnectionName")
      )

instance Prelude.Hashable DomainEntryPoint where
  hashWithSalt _salt DomainEntryPoint' {..} =
    _salt `Prelude.hashWithSalt` repositoryName
      `Prelude.hashWithSalt` externalConnectionName

instance Prelude.NFData DomainEntryPoint where
  rnf DomainEntryPoint' {..} =
    Prelude.rnf repositoryName
      `Prelude.seq` Prelude.rnf externalConnectionName
