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
-- Module      : Amazonka.CodeGuruReviewer.Types.CodeReviewSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruReviewer.Types.CodeReviewSummary where

import Amazonka.CodeGuruReviewer.Types.JobState
import Amazonka.CodeGuruReviewer.Types.MetricsSummary
import Amazonka.CodeGuruReviewer.Types.ProviderType
import Amazonka.CodeGuruReviewer.Types.SourceCodeType
import Amazonka.CodeGuruReviewer.Types.Type
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the summary of the code review.
--
-- /See:/ 'newCodeReviewSummary' smart constructor.
data CodeReviewSummary = CodeReviewSummary'
  { -- | The time, in milliseconds since the epoch, when the code review was last
    -- updated.
    lastUpdatedTimeStamp :: Prelude.Maybe Core.POSIX,
    -- | The name of the code review.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of the code review.
    type' :: Prelude.Maybe Type,
    -- | The pull request ID for the code review.
    pullRequestId :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the code review was
    -- created.
    createdTimeStamp :: Prelude.Maybe Core.POSIX,
    sourceCodeType :: Prelude.Maybe SourceCodeType,
    -- | The name of the repository.
    repositoryName :: Prelude.Maybe Prelude.Text,
    -- | The state of the code review.
    --
    -- The valid code review states are:
    --
    -- -   @Completed@: The code review is complete.
    --
    -- -   @Pending@: The code review started and has not completed or failed.
    --
    -- -   @Failed@: The code review failed.
    --
    -- -   @Deleting@: The code review is being deleted.
    state :: Prelude.Maybe JobState,
    -- | The Amazon Resource Name (ARN) of the
    -- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html CodeReview>
    -- object.
    codeReviewArn :: Prelude.Maybe Prelude.Text,
    -- | The owner of the repository. For an Amazon Web Services CodeCommit
    -- repository, this is the Amazon Web Services account ID of the account
    -- that owns the repository. For a GitHub, GitHub Enterprise Server, or
    -- Bitbucket repository, this is the username for the account that owns the
    -- repository. For an S3 repository, it can be the username or Amazon Web
    -- Services account ID.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The provider type of the repository association.
    providerType :: Prelude.Maybe ProviderType,
    -- | The statistics from the code review.
    metricsSummary :: Prelude.Maybe MetricsSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeReviewSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimeStamp', 'codeReviewSummary_lastUpdatedTimeStamp' - The time, in milliseconds since the epoch, when the code review was last
-- updated.
--
-- 'name', 'codeReviewSummary_name' - The name of the code review.
--
-- 'type'', 'codeReviewSummary_type' - The type of the code review.
--
-- 'pullRequestId', 'codeReviewSummary_pullRequestId' - The pull request ID for the code review.
--
-- 'createdTimeStamp', 'codeReviewSummary_createdTimeStamp' - The time, in milliseconds since the epoch, when the code review was
-- created.
--
-- 'sourceCodeType', 'codeReviewSummary_sourceCodeType' - Undocumented member.
--
-- 'repositoryName', 'codeReviewSummary_repositoryName' - The name of the repository.
--
-- 'state', 'codeReviewSummary_state' - The state of the code review.
--
-- The valid code review states are:
--
-- -   @Completed@: The code review is complete.
--
-- -   @Pending@: The code review started and has not completed or failed.
--
-- -   @Failed@: The code review failed.
--
-- -   @Deleting@: The code review is being deleted.
--
-- 'codeReviewArn', 'codeReviewSummary_codeReviewArn' - The Amazon Resource Name (ARN) of the
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html CodeReview>
-- object.
--
-- 'owner', 'codeReviewSummary_owner' - The owner of the repository. For an Amazon Web Services CodeCommit
-- repository, this is the Amazon Web Services account ID of the account
-- that owns the repository. For a GitHub, GitHub Enterprise Server, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, it can be the username or Amazon Web
-- Services account ID.
--
-- 'providerType', 'codeReviewSummary_providerType' - The provider type of the repository association.
--
-- 'metricsSummary', 'codeReviewSummary_metricsSummary' - The statistics from the code review.
newCodeReviewSummary ::
  CodeReviewSummary
newCodeReviewSummary =
  CodeReviewSummary'
    { lastUpdatedTimeStamp =
        Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      pullRequestId = Prelude.Nothing,
      createdTimeStamp = Prelude.Nothing,
      sourceCodeType = Prelude.Nothing,
      repositoryName = Prelude.Nothing,
      state = Prelude.Nothing,
      codeReviewArn = Prelude.Nothing,
      owner = Prelude.Nothing,
      providerType = Prelude.Nothing,
      metricsSummary = Prelude.Nothing
    }

-- | The time, in milliseconds since the epoch, when the code review was last
-- updated.
codeReviewSummary_lastUpdatedTimeStamp :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.UTCTime)
codeReviewSummary_lastUpdatedTimeStamp = Lens.lens (\CodeReviewSummary' {lastUpdatedTimeStamp} -> lastUpdatedTimeStamp) (\s@CodeReviewSummary' {} a -> s {lastUpdatedTimeStamp = a} :: CodeReviewSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the code review.
codeReviewSummary_name :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.Text)
codeReviewSummary_name = Lens.lens (\CodeReviewSummary' {name} -> name) (\s@CodeReviewSummary' {} a -> s {name = a} :: CodeReviewSummary)

-- | The type of the code review.
codeReviewSummary_type :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Type)
codeReviewSummary_type = Lens.lens (\CodeReviewSummary' {type'} -> type') (\s@CodeReviewSummary' {} a -> s {type' = a} :: CodeReviewSummary)

-- | The pull request ID for the code review.
codeReviewSummary_pullRequestId :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.Text)
codeReviewSummary_pullRequestId = Lens.lens (\CodeReviewSummary' {pullRequestId} -> pullRequestId) (\s@CodeReviewSummary' {} a -> s {pullRequestId = a} :: CodeReviewSummary)

-- | The time, in milliseconds since the epoch, when the code review was
-- created.
codeReviewSummary_createdTimeStamp :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.UTCTime)
codeReviewSummary_createdTimeStamp = Lens.lens (\CodeReviewSummary' {createdTimeStamp} -> createdTimeStamp) (\s@CodeReviewSummary' {} a -> s {createdTimeStamp = a} :: CodeReviewSummary) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
codeReviewSummary_sourceCodeType :: Lens.Lens' CodeReviewSummary (Prelude.Maybe SourceCodeType)
codeReviewSummary_sourceCodeType = Lens.lens (\CodeReviewSummary' {sourceCodeType} -> sourceCodeType) (\s@CodeReviewSummary' {} a -> s {sourceCodeType = a} :: CodeReviewSummary)

-- | The name of the repository.
codeReviewSummary_repositoryName :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.Text)
codeReviewSummary_repositoryName = Lens.lens (\CodeReviewSummary' {repositoryName} -> repositoryName) (\s@CodeReviewSummary' {} a -> s {repositoryName = a} :: CodeReviewSummary)

-- | The state of the code review.
--
-- The valid code review states are:
--
-- -   @Completed@: The code review is complete.
--
-- -   @Pending@: The code review started and has not completed or failed.
--
-- -   @Failed@: The code review failed.
--
-- -   @Deleting@: The code review is being deleted.
codeReviewSummary_state :: Lens.Lens' CodeReviewSummary (Prelude.Maybe JobState)
codeReviewSummary_state = Lens.lens (\CodeReviewSummary' {state} -> state) (\s@CodeReviewSummary' {} a -> s {state = a} :: CodeReviewSummary)

-- | The Amazon Resource Name (ARN) of the
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html CodeReview>
-- object.
codeReviewSummary_codeReviewArn :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.Text)
codeReviewSummary_codeReviewArn = Lens.lens (\CodeReviewSummary' {codeReviewArn} -> codeReviewArn) (\s@CodeReviewSummary' {} a -> s {codeReviewArn = a} :: CodeReviewSummary)

-- | The owner of the repository. For an Amazon Web Services CodeCommit
-- repository, this is the Amazon Web Services account ID of the account
-- that owns the repository. For a GitHub, GitHub Enterprise Server, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, it can be the username or Amazon Web
-- Services account ID.
codeReviewSummary_owner :: Lens.Lens' CodeReviewSummary (Prelude.Maybe Prelude.Text)
codeReviewSummary_owner = Lens.lens (\CodeReviewSummary' {owner} -> owner) (\s@CodeReviewSummary' {} a -> s {owner = a} :: CodeReviewSummary)

-- | The provider type of the repository association.
codeReviewSummary_providerType :: Lens.Lens' CodeReviewSummary (Prelude.Maybe ProviderType)
codeReviewSummary_providerType = Lens.lens (\CodeReviewSummary' {providerType} -> providerType) (\s@CodeReviewSummary' {} a -> s {providerType = a} :: CodeReviewSummary)

-- | The statistics from the code review.
codeReviewSummary_metricsSummary :: Lens.Lens' CodeReviewSummary (Prelude.Maybe MetricsSummary)
codeReviewSummary_metricsSummary = Lens.lens (\CodeReviewSummary' {metricsSummary} -> metricsSummary) (\s@CodeReviewSummary' {} a -> s {metricsSummary = a} :: CodeReviewSummary)

instance Core.FromJSON CodeReviewSummary where
  parseJSON =
    Core.withObject
      "CodeReviewSummary"
      ( \x ->
          CodeReviewSummary'
            Prelude.<$> (x Core..:? "LastUpdatedTimeStamp")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "PullRequestId")
            Prelude.<*> (x Core..:? "CreatedTimeStamp")
            Prelude.<*> (x Core..:? "SourceCodeType")
            Prelude.<*> (x Core..:? "RepositoryName")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "CodeReviewArn")
            Prelude.<*> (x Core..:? "Owner")
            Prelude.<*> (x Core..:? "ProviderType")
            Prelude.<*> (x Core..:? "MetricsSummary")
      )

instance Prelude.Hashable CodeReviewSummary where
  hashWithSalt _salt CodeReviewSummary' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimeStamp
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` pullRequestId
      `Prelude.hashWithSalt` createdTimeStamp
      `Prelude.hashWithSalt` sourceCodeType
      `Prelude.hashWithSalt` repositoryName
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` codeReviewArn
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` providerType
      `Prelude.hashWithSalt` metricsSummary

instance Prelude.NFData CodeReviewSummary where
  rnf CodeReviewSummary' {..} =
    Prelude.rnf lastUpdatedTimeStamp
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf pullRequestId
      `Prelude.seq` Prelude.rnf createdTimeStamp
      `Prelude.seq` Prelude.rnf sourceCodeType
      `Prelude.seq` Prelude.rnf repositoryName
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf codeReviewArn
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf providerType
      `Prelude.seq` Prelude.rnf metricsSummary
