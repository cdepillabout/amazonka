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
-- Module      : Amazonka.ElasticTranscoder.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticTranscoder.Types.Permission where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The @Permission@ structure.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission'
  { -- | The type of value that appears in the Grantee object:
    --
    -- -   @Canonical@: Either the canonical user ID for an AWS account or an
    --     origin access identity for an Amazon CloudFront distribution.
    --
    --     A canonical user ID is not the same as an AWS account number.
    --
    -- -   @Email@: The registered email address of an AWS account.
    --
    -- -   @Group@: One of the following predefined Amazon S3 groups:
    --     @AllUsers@, @AuthenticatedUsers@, or @LogDelivery@.
    granteeType :: Prelude.Maybe Prelude.Text,
    -- | The permission that you want to give to the AWS user that is listed in
    -- Grantee. Valid values include:
    --
    -- -   @READ@: The grantee can read the thumbnails and metadata for
    --     thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.
    --
    -- -   @READ_ACP@: The grantee can read the object ACL for thumbnails that
    --     Elastic Transcoder adds to the Amazon S3 bucket.
    --
    -- -   @WRITE_ACP@: The grantee can write the ACL for the thumbnails that
    --     Elastic Transcoder adds to the Amazon S3 bucket.
    --
    -- -   @FULL_CONTROL@: The grantee has READ, READ_ACP, and WRITE_ACP
    --     permissions for the thumbnails that Elastic Transcoder adds to the
    --     Amazon S3 bucket.
    access :: Prelude.Maybe [Prelude.Text],
    -- | The AWS user or group that you want to have access to transcoded files
    -- and playlists. To identify the user or group, you can specify the
    -- canonical user ID for an AWS account, an origin access identity for a
    -- CloudFront distribution, the registered email address of an AWS account,
    -- or a predefined Amazon S3 group.
    grantee :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Permission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'granteeType', 'permission_granteeType' - The type of value that appears in the Grantee object:
--
-- -   @Canonical@: Either the canonical user ID for an AWS account or an
--     origin access identity for an Amazon CloudFront distribution.
--
--     A canonical user ID is not the same as an AWS account number.
--
-- -   @Email@: The registered email address of an AWS account.
--
-- -   @Group@: One of the following predefined Amazon S3 groups:
--     @AllUsers@, @AuthenticatedUsers@, or @LogDelivery@.
--
-- 'access', 'permission_access' - The permission that you want to give to the AWS user that is listed in
-- Grantee. Valid values include:
--
-- -   @READ@: The grantee can read the thumbnails and metadata for
--     thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @READ_ACP@: The grantee can read the object ACL for thumbnails that
--     Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @WRITE_ACP@: The grantee can write the ACL for the thumbnails that
--     Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @FULL_CONTROL@: The grantee has READ, READ_ACP, and WRITE_ACP
--     permissions for the thumbnails that Elastic Transcoder adds to the
--     Amazon S3 bucket.
--
-- 'grantee', 'permission_grantee' - The AWS user or group that you want to have access to transcoded files
-- and playlists. To identify the user or group, you can specify the
-- canonical user ID for an AWS account, an origin access identity for a
-- CloudFront distribution, the registered email address of an AWS account,
-- or a predefined Amazon S3 group.
newPermission ::
  Permission
newPermission =
  Permission'
    { granteeType = Prelude.Nothing,
      access = Prelude.Nothing,
      grantee = Prelude.Nothing
    }

-- | The type of value that appears in the Grantee object:
--
-- -   @Canonical@: Either the canonical user ID for an AWS account or an
--     origin access identity for an Amazon CloudFront distribution.
--
--     A canonical user ID is not the same as an AWS account number.
--
-- -   @Email@: The registered email address of an AWS account.
--
-- -   @Group@: One of the following predefined Amazon S3 groups:
--     @AllUsers@, @AuthenticatedUsers@, or @LogDelivery@.
permission_granteeType :: Lens.Lens' Permission (Prelude.Maybe Prelude.Text)
permission_granteeType = Lens.lens (\Permission' {granteeType} -> granteeType) (\s@Permission' {} a -> s {granteeType = a} :: Permission)

-- | The permission that you want to give to the AWS user that is listed in
-- Grantee. Valid values include:
--
-- -   @READ@: The grantee can read the thumbnails and metadata for
--     thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @READ_ACP@: The grantee can read the object ACL for thumbnails that
--     Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @WRITE_ACP@: The grantee can write the ACL for the thumbnails that
--     Elastic Transcoder adds to the Amazon S3 bucket.
--
-- -   @FULL_CONTROL@: The grantee has READ, READ_ACP, and WRITE_ACP
--     permissions for the thumbnails that Elastic Transcoder adds to the
--     Amazon S3 bucket.
permission_access :: Lens.Lens' Permission (Prelude.Maybe [Prelude.Text])
permission_access = Lens.lens (\Permission' {access} -> access) (\s@Permission' {} a -> s {access = a} :: Permission) Prelude.. Lens.mapping Lens.coerced

-- | The AWS user or group that you want to have access to transcoded files
-- and playlists. To identify the user or group, you can specify the
-- canonical user ID for an AWS account, an origin access identity for a
-- CloudFront distribution, the registered email address of an AWS account,
-- or a predefined Amazon S3 group.
permission_grantee :: Lens.Lens' Permission (Prelude.Maybe Prelude.Text)
permission_grantee = Lens.lens (\Permission' {grantee} -> grantee) (\s@Permission' {} a -> s {grantee = a} :: Permission)

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \x ->
          Permission'
            Prelude.<$> (x Core..:? "GranteeType")
            Prelude.<*> (x Core..:? "Access" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Grantee")
      )

instance Prelude.Hashable Permission where
  hashWithSalt _salt Permission' {..} =
    _salt `Prelude.hashWithSalt` granteeType
      `Prelude.hashWithSalt` access
      `Prelude.hashWithSalt` grantee

instance Prelude.NFData Permission where
  rnf Permission' {..} =
    Prelude.rnf granteeType
      `Prelude.seq` Prelude.rnf access
      `Prelude.seq` Prelude.rnf grantee

instance Core.ToJSON Permission where
  toJSON Permission' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GranteeType" Core..=) Prelude.<$> granteeType,
            ("Access" Core..=) Prelude.<$> access,
            ("Grantee" Core..=) Prelude.<$> grantee
          ]
      )
