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
-- Module      : Amazonka.CodeGuruReviewer.Types.Repository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruReviewer.Types.Repository where

import Amazonka.CodeGuruReviewer.Types.CodeCommitRepository
import Amazonka.CodeGuruReviewer.Types.S3Repository
import Amazonka.CodeGuruReviewer.Types.ThirdPartySourceRepository
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an associated Amazon Web Services CodeCommit
-- repository or an associated repository that is managed by Amazon Web
-- Services CodeStar Connections (for example, Bitbucket). This
-- @Repository@ object is not used if your source code is in an associated
-- GitHub repository.
--
-- /See:/ 'newRepository' smart constructor.
data Repository = Repository'
  { s3Bucket :: Prelude.Maybe S3Repository,
    -- | Information about a Bitbucket repository.
    bitbucket :: Prelude.Maybe ThirdPartySourceRepository,
    -- | Information about an Amazon Web Services CodeCommit repository.
    codeCommit :: Prelude.Maybe CodeCommitRepository,
    -- | Information about a GitHub Enterprise Server repository.
    gitHubEnterpriseServer :: Prelude.Maybe ThirdPartySourceRepository
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Repository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Bucket', 'repository_s3Bucket' - Undocumented member.
--
-- 'bitbucket', 'repository_bitbucket' - Information about a Bitbucket repository.
--
-- 'codeCommit', 'repository_codeCommit' - Information about an Amazon Web Services CodeCommit repository.
--
-- 'gitHubEnterpriseServer', 'repository_gitHubEnterpriseServer' - Information about a GitHub Enterprise Server repository.
newRepository ::
  Repository
newRepository =
  Repository'
    { s3Bucket = Prelude.Nothing,
      bitbucket = Prelude.Nothing,
      codeCommit = Prelude.Nothing,
      gitHubEnterpriseServer = Prelude.Nothing
    }

-- | Undocumented member.
repository_s3Bucket :: Lens.Lens' Repository (Prelude.Maybe S3Repository)
repository_s3Bucket = Lens.lens (\Repository' {s3Bucket} -> s3Bucket) (\s@Repository' {} a -> s {s3Bucket = a} :: Repository)

-- | Information about a Bitbucket repository.
repository_bitbucket :: Lens.Lens' Repository (Prelude.Maybe ThirdPartySourceRepository)
repository_bitbucket = Lens.lens (\Repository' {bitbucket} -> bitbucket) (\s@Repository' {} a -> s {bitbucket = a} :: Repository)

-- | Information about an Amazon Web Services CodeCommit repository.
repository_codeCommit :: Lens.Lens' Repository (Prelude.Maybe CodeCommitRepository)
repository_codeCommit = Lens.lens (\Repository' {codeCommit} -> codeCommit) (\s@Repository' {} a -> s {codeCommit = a} :: Repository)

-- | Information about a GitHub Enterprise Server repository.
repository_gitHubEnterpriseServer :: Lens.Lens' Repository (Prelude.Maybe ThirdPartySourceRepository)
repository_gitHubEnterpriseServer = Lens.lens (\Repository' {gitHubEnterpriseServer} -> gitHubEnterpriseServer) (\s@Repository' {} a -> s {gitHubEnterpriseServer = a} :: Repository)

instance Prelude.Hashable Repository where
  hashWithSalt _salt Repository' {..} =
    _salt `Prelude.hashWithSalt` s3Bucket
      `Prelude.hashWithSalt` bitbucket
      `Prelude.hashWithSalt` codeCommit
      `Prelude.hashWithSalt` gitHubEnterpriseServer

instance Prelude.NFData Repository where
  rnf Repository' {..} =
    Prelude.rnf s3Bucket
      `Prelude.seq` Prelude.rnf bitbucket
      `Prelude.seq` Prelude.rnf codeCommit
      `Prelude.seq` Prelude.rnf gitHubEnterpriseServer

instance Core.ToJSON Repository where
  toJSON Repository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3Bucket" Core..=) Prelude.<$> s3Bucket,
            ("Bitbucket" Core..=) Prelude.<$> bitbucket,
            ("CodeCommit" Core..=) Prelude.<$> codeCommit,
            ("GitHubEnterpriseServer" Core..=)
              Prelude.<$> gitHubEnterpriseServer
          ]
      )
