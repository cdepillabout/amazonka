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
-- Module      : Amazonka.CodeGuruReviewer.Types.RepositoryAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruReviewer.Types.RepositoryAssociation where

import Amazonka.CodeGuruReviewer.Types.KMSKeyDetails
import Amazonka.CodeGuruReviewer.Types.ProviderType
import Amazonka.CodeGuruReviewer.Types.RepositoryAssociationState
import Amazonka.CodeGuruReviewer.Types.S3RepositoryDetails
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a repository association. The
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_DescribeRepositoryAssociation.html DescribeRepositoryAssociation>
-- operation returns a @RepositoryAssociation@ object.
--
-- /See:/ 'newRepositoryAssociation' smart constructor.
data RepositoryAssociation = RepositoryAssociation'
  { -- | The time, in milliseconds since the epoch, when the repository
    -- association was last updated.
    lastUpdatedTimeStamp :: Prelude.Maybe Core.POSIX,
    -- | The name of the repository.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) identifying the repository association.
    associationArn :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the repository
    -- association was created.
    createdTimeStamp :: Prelude.Maybe Core.POSIX,
    -- | A @KMSKeyDetails@ object that contains:
    --
    -- -   The encryption option for this repository association. It is either
    --     owned by Amazon Web Services Key Management Service (KMS)
    --     (@AWS_OWNED_CMK@) or customer managed (@CUSTOMER_MANAGED_CMK@).
    --
    -- -   The ID of the Amazon Web Services KMS key that is associated with
    --     this respository association.
    kmsKeyDetails :: Prelude.Maybe KMSKeyDetails,
    -- | The state of the repository association.
    --
    -- The valid repository association states are:
    --
    -- -   __Associated__: The repository association is complete.
    --
    -- -   __Associating__: CodeGuru Reviewer is:
    --
    --     -   Setting up pull request notifications. This is required for pull
    --         requests to trigger a CodeGuru Reviewer review.
    --
    --         If your repository @ProviderType@ is @GitHub@,
    --         @GitHub Enterprise Server@, or @Bitbucket@, CodeGuru Reviewer
    --         creates webhooks in your repository to trigger CodeGuru Reviewer
    --         reviews. If you delete these webhooks, reviews of code in your
    --         repository cannot be triggered.
    --
    --     -   Setting up source code access. This is required for CodeGuru
    --         Reviewer to securely clone code in your repository.
    --
    -- -   __Failed__: The repository failed to associate or disassociate.
    --
    -- -   __Disassociating__: CodeGuru Reviewer is removing the repository\'s
    --     pull request notifications and source code access.
    --
    -- -   __Disassociated__: CodeGuru Reviewer successfully disassociated the
    --     repository. You can create a new association with this repository if
    --     you want to review source code in it later. You can control access
    --     to code reviews created in an associated repository with tags after
    --     it has been disassociated. For more information, see
    --     <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html Using tags to control access to associated repositories>
    --     in the /Amazon CodeGuru Reviewer User Guide/.
    state :: Prelude.Maybe RepositoryAssociationState,
    s3RepositoryDetails :: Prelude.Maybe S3RepositoryDetails,
    -- | The owner of the repository. For an Amazon Web Services CodeCommit
    -- repository, this is the Amazon Web Services account ID of the account
    -- that owns the repository. For a GitHub, GitHub Enterprise Server, or
    -- Bitbucket repository, this is the username for the account that owns the
    -- repository. For an S3 repository, it can be the username or Amazon Web
    -- Services account ID.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
    -- Connections connection. Its format is
    -- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
    -- For more information, see
    -- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
    -- in the /Amazon Web Services CodeStar Connections API Reference/.
    connectionArn :: Prelude.Maybe Prelude.Text,
    -- | The provider type of the repository association.
    providerType :: Prelude.Maybe ProviderType,
    -- | A description of why the repository association is in the current state.
    stateReason :: Prelude.Maybe Prelude.Text,
    -- | The ID of the repository association.
    associationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimeStamp', 'repositoryAssociation_lastUpdatedTimeStamp' - The time, in milliseconds since the epoch, when the repository
-- association was last updated.
--
-- 'name', 'repositoryAssociation_name' - The name of the repository.
--
-- 'associationArn', 'repositoryAssociation_associationArn' - The Amazon Resource Name (ARN) identifying the repository association.
--
-- 'createdTimeStamp', 'repositoryAssociation_createdTimeStamp' - The time, in milliseconds since the epoch, when the repository
-- association was created.
--
-- 'kmsKeyDetails', 'repositoryAssociation_kmsKeyDetails' - A @KMSKeyDetails@ object that contains:
--
-- -   The encryption option for this repository association. It is either
--     owned by Amazon Web Services Key Management Service (KMS)
--     (@AWS_OWNED_CMK@) or customer managed (@CUSTOMER_MANAGED_CMK@).
--
-- -   The ID of the Amazon Web Services KMS key that is associated with
--     this respository association.
--
-- 'state', 'repositoryAssociation_state' - The state of the repository association.
--
-- The valid repository association states are:
--
-- -   __Associated__: The repository association is complete.
--
-- -   __Associating__: CodeGuru Reviewer is:
--
--     -   Setting up pull request notifications. This is required for pull
--         requests to trigger a CodeGuru Reviewer review.
--
--         If your repository @ProviderType@ is @GitHub@,
--         @GitHub Enterprise Server@, or @Bitbucket@, CodeGuru Reviewer
--         creates webhooks in your repository to trigger CodeGuru Reviewer
--         reviews. If you delete these webhooks, reviews of code in your
--         repository cannot be triggered.
--
--     -   Setting up source code access. This is required for CodeGuru
--         Reviewer to securely clone code in your repository.
--
-- -   __Failed__: The repository failed to associate or disassociate.
--
-- -   __Disassociating__: CodeGuru Reviewer is removing the repository\'s
--     pull request notifications and source code access.
--
-- -   __Disassociated__: CodeGuru Reviewer successfully disassociated the
--     repository. You can create a new association with this repository if
--     you want to review source code in it later. You can control access
--     to code reviews created in an associated repository with tags after
--     it has been disassociated. For more information, see
--     <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html Using tags to control access to associated repositories>
--     in the /Amazon CodeGuru Reviewer User Guide/.
--
-- 's3RepositoryDetails', 'repositoryAssociation_s3RepositoryDetails' - Undocumented member.
--
-- 'owner', 'repositoryAssociation_owner' - The owner of the repository. For an Amazon Web Services CodeCommit
-- repository, this is the Amazon Web Services account ID of the account
-- that owns the repository. For a GitHub, GitHub Enterprise Server, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, it can be the username or Amazon Web
-- Services account ID.
--
-- 'connectionArn', 'repositoryAssociation_connectionArn' - The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
-- Connections connection. Its format is
-- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
-- For more information, see
-- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
-- in the /Amazon Web Services CodeStar Connections API Reference/.
--
-- 'providerType', 'repositoryAssociation_providerType' - The provider type of the repository association.
--
-- 'stateReason', 'repositoryAssociation_stateReason' - A description of why the repository association is in the current state.
--
-- 'associationId', 'repositoryAssociation_associationId' - The ID of the repository association.
newRepositoryAssociation ::
  RepositoryAssociation
newRepositoryAssociation =
  RepositoryAssociation'
    { lastUpdatedTimeStamp =
        Prelude.Nothing,
      name = Prelude.Nothing,
      associationArn = Prelude.Nothing,
      createdTimeStamp = Prelude.Nothing,
      kmsKeyDetails = Prelude.Nothing,
      state = Prelude.Nothing,
      s3RepositoryDetails = Prelude.Nothing,
      owner = Prelude.Nothing,
      connectionArn = Prelude.Nothing,
      providerType = Prelude.Nothing,
      stateReason = Prelude.Nothing,
      associationId = Prelude.Nothing
    }

-- | The time, in milliseconds since the epoch, when the repository
-- association was last updated.
repositoryAssociation_lastUpdatedTimeStamp :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.UTCTime)
repositoryAssociation_lastUpdatedTimeStamp = Lens.lens (\RepositoryAssociation' {lastUpdatedTimeStamp} -> lastUpdatedTimeStamp) (\s@RepositoryAssociation' {} a -> s {lastUpdatedTimeStamp = a} :: RepositoryAssociation) Prelude.. Lens.mapping Core._Time

-- | The name of the repository.
repositoryAssociation_name :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_name = Lens.lens (\RepositoryAssociation' {name} -> name) (\s@RepositoryAssociation' {} a -> s {name = a} :: RepositoryAssociation)

-- | The Amazon Resource Name (ARN) identifying the repository association.
repositoryAssociation_associationArn :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_associationArn = Lens.lens (\RepositoryAssociation' {associationArn} -> associationArn) (\s@RepositoryAssociation' {} a -> s {associationArn = a} :: RepositoryAssociation)

-- | The time, in milliseconds since the epoch, when the repository
-- association was created.
repositoryAssociation_createdTimeStamp :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.UTCTime)
repositoryAssociation_createdTimeStamp = Lens.lens (\RepositoryAssociation' {createdTimeStamp} -> createdTimeStamp) (\s@RepositoryAssociation' {} a -> s {createdTimeStamp = a} :: RepositoryAssociation) Prelude.. Lens.mapping Core._Time

-- | A @KMSKeyDetails@ object that contains:
--
-- -   The encryption option for this repository association. It is either
--     owned by Amazon Web Services Key Management Service (KMS)
--     (@AWS_OWNED_CMK@) or customer managed (@CUSTOMER_MANAGED_CMK@).
--
-- -   The ID of the Amazon Web Services KMS key that is associated with
--     this respository association.
repositoryAssociation_kmsKeyDetails :: Lens.Lens' RepositoryAssociation (Prelude.Maybe KMSKeyDetails)
repositoryAssociation_kmsKeyDetails = Lens.lens (\RepositoryAssociation' {kmsKeyDetails} -> kmsKeyDetails) (\s@RepositoryAssociation' {} a -> s {kmsKeyDetails = a} :: RepositoryAssociation)

-- | The state of the repository association.
--
-- The valid repository association states are:
--
-- -   __Associated__: The repository association is complete.
--
-- -   __Associating__: CodeGuru Reviewer is:
--
--     -   Setting up pull request notifications. This is required for pull
--         requests to trigger a CodeGuru Reviewer review.
--
--         If your repository @ProviderType@ is @GitHub@,
--         @GitHub Enterprise Server@, or @Bitbucket@, CodeGuru Reviewer
--         creates webhooks in your repository to trigger CodeGuru Reviewer
--         reviews. If you delete these webhooks, reviews of code in your
--         repository cannot be triggered.
--
--     -   Setting up source code access. This is required for CodeGuru
--         Reviewer to securely clone code in your repository.
--
-- -   __Failed__: The repository failed to associate or disassociate.
--
-- -   __Disassociating__: CodeGuru Reviewer is removing the repository\'s
--     pull request notifications and source code access.
--
-- -   __Disassociated__: CodeGuru Reviewer successfully disassociated the
--     repository. You can create a new association with this repository if
--     you want to review source code in it later. You can control access
--     to code reviews created in an associated repository with tags after
--     it has been disassociated. For more information, see
--     <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html Using tags to control access to associated repositories>
--     in the /Amazon CodeGuru Reviewer User Guide/.
repositoryAssociation_state :: Lens.Lens' RepositoryAssociation (Prelude.Maybe RepositoryAssociationState)
repositoryAssociation_state = Lens.lens (\RepositoryAssociation' {state} -> state) (\s@RepositoryAssociation' {} a -> s {state = a} :: RepositoryAssociation)

-- | Undocumented member.
repositoryAssociation_s3RepositoryDetails :: Lens.Lens' RepositoryAssociation (Prelude.Maybe S3RepositoryDetails)
repositoryAssociation_s3RepositoryDetails = Lens.lens (\RepositoryAssociation' {s3RepositoryDetails} -> s3RepositoryDetails) (\s@RepositoryAssociation' {} a -> s {s3RepositoryDetails = a} :: RepositoryAssociation)

-- | The owner of the repository. For an Amazon Web Services CodeCommit
-- repository, this is the Amazon Web Services account ID of the account
-- that owns the repository. For a GitHub, GitHub Enterprise Server, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, it can be the username or Amazon Web
-- Services account ID.
repositoryAssociation_owner :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_owner = Lens.lens (\RepositoryAssociation' {owner} -> owner) (\s@RepositoryAssociation' {} a -> s {owner = a} :: RepositoryAssociation)

-- | The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
-- Connections connection. Its format is
-- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
-- For more information, see
-- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
-- in the /Amazon Web Services CodeStar Connections API Reference/.
repositoryAssociation_connectionArn :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_connectionArn = Lens.lens (\RepositoryAssociation' {connectionArn} -> connectionArn) (\s@RepositoryAssociation' {} a -> s {connectionArn = a} :: RepositoryAssociation)

-- | The provider type of the repository association.
repositoryAssociation_providerType :: Lens.Lens' RepositoryAssociation (Prelude.Maybe ProviderType)
repositoryAssociation_providerType = Lens.lens (\RepositoryAssociation' {providerType} -> providerType) (\s@RepositoryAssociation' {} a -> s {providerType = a} :: RepositoryAssociation)

-- | A description of why the repository association is in the current state.
repositoryAssociation_stateReason :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_stateReason = Lens.lens (\RepositoryAssociation' {stateReason} -> stateReason) (\s@RepositoryAssociation' {} a -> s {stateReason = a} :: RepositoryAssociation)

-- | The ID of the repository association.
repositoryAssociation_associationId :: Lens.Lens' RepositoryAssociation (Prelude.Maybe Prelude.Text)
repositoryAssociation_associationId = Lens.lens (\RepositoryAssociation' {associationId} -> associationId) (\s@RepositoryAssociation' {} a -> s {associationId = a} :: RepositoryAssociation)

instance Core.FromJSON RepositoryAssociation where
  parseJSON =
    Core.withObject
      "RepositoryAssociation"
      ( \x ->
          RepositoryAssociation'
            Prelude.<$> (x Core..:? "LastUpdatedTimeStamp")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "AssociationArn")
            Prelude.<*> (x Core..:? "CreatedTimeStamp")
            Prelude.<*> (x Core..:? "KMSKeyDetails")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "S3RepositoryDetails")
            Prelude.<*> (x Core..:? "Owner")
            Prelude.<*> (x Core..:? "ConnectionArn")
            Prelude.<*> (x Core..:? "ProviderType")
            Prelude.<*> (x Core..:? "StateReason")
            Prelude.<*> (x Core..:? "AssociationId")
      )

instance Prelude.Hashable RepositoryAssociation where
  hashWithSalt _salt RepositoryAssociation' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimeStamp
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` associationArn
      `Prelude.hashWithSalt` createdTimeStamp
      `Prelude.hashWithSalt` kmsKeyDetails
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` s3RepositoryDetails
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` connectionArn
      `Prelude.hashWithSalt` providerType
      `Prelude.hashWithSalt` stateReason
      `Prelude.hashWithSalt` associationId

instance Prelude.NFData RepositoryAssociation where
  rnf RepositoryAssociation' {..} =
    Prelude.rnf lastUpdatedTimeStamp
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf associationArn
      `Prelude.seq` Prelude.rnf createdTimeStamp
      `Prelude.seq` Prelude.rnf kmsKeyDetails
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf s3RepositoryDetails
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf connectionArn
      `Prelude.seq` Prelude.rnf providerType
      `Prelude.seq` Prelude.rnf stateReason
      `Prelude.seq` Prelude.rnf associationId
