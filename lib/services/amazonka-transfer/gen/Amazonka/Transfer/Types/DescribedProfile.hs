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
-- Module      : Amazonka.Transfer.Types.DescribedProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transfer.Types.DescribedProfile where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Transfer.Types.ProfileType
import Amazonka.Transfer.Types.Tag

-- | The details for a local or partner AS2 profile. profile.
--
-- /See:/ 'newDescribedProfile' smart constructor.
data DescribedProfile = DescribedProfile'
  { -- | Key-value pairs that can be used to group and search for profiles.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | A unique identifier for the local or partner AS2 profile.
    profileId :: Prelude.Maybe Prelude.Text,
    -- | An array of identifiers for the imported certificates. You use this
    -- identifier for working with profiles and partner profiles.
    certificateIds :: Prelude.Maybe [Prelude.Text],
    -- | The unique identifier for the AS2 process.
    as2Id :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether to list only @LOCAL@ type profiles or only @PARTNER@
    -- type profiles. If not supplied in the request, the command lists all
    -- types of profiles.
    profileType :: Prelude.Maybe ProfileType,
    -- | The unique Amazon Resource Name (ARN) for the profile.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribedProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describedProfile_tags' - Key-value pairs that can be used to group and search for profiles.
--
-- 'profileId', 'describedProfile_profileId' - A unique identifier for the local or partner AS2 profile.
--
-- 'certificateIds', 'describedProfile_certificateIds' - An array of identifiers for the imported certificates. You use this
-- identifier for working with profiles and partner profiles.
--
-- 'as2Id', 'describedProfile_as2Id' - The unique identifier for the AS2 process.
--
-- 'profileType', 'describedProfile_profileType' - Indicates whether to list only @LOCAL@ type profiles or only @PARTNER@
-- type profiles. If not supplied in the request, the command lists all
-- types of profiles.
--
-- 'arn', 'describedProfile_arn' - The unique Amazon Resource Name (ARN) for the profile.
newDescribedProfile ::
  -- | 'arn'
  Prelude.Text ->
  DescribedProfile
newDescribedProfile pArn_ =
  DescribedProfile'
    { tags = Prelude.Nothing,
      profileId = Prelude.Nothing,
      certificateIds = Prelude.Nothing,
      as2Id = Prelude.Nothing,
      profileType = Prelude.Nothing,
      arn = pArn_
    }

-- | Key-value pairs that can be used to group and search for profiles.
describedProfile_tags :: Lens.Lens' DescribedProfile (Prelude.Maybe (Prelude.NonEmpty Tag))
describedProfile_tags = Lens.lens (\DescribedProfile' {tags} -> tags) (\s@DescribedProfile' {} a -> s {tags = a} :: DescribedProfile) Prelude.. Lens.mapping Lens.coerced

-- | A unique identifier for the local or partner AS2 profile.
describedProfile_profileId :: Lens.Lens' DescribedProfile (Prelude.Maybe Prelude.Text)
describedProfile_profileId = Lens.lens (\DescribedProfile' {profileId} -> profileId) (\s@DescribedProfile' {} a -> s {profileId = a} :: DescribedProfile)

-- | An array of identifiers for the imported certificates. You use this
-- identifier for working with profiles and partner profiles.
describedProfile_certificateIds :: Lens.Lens' DescribedProfile (Prelude.Maybe [Prelude.Text])
describedProfile_certificateIds = Lens.lens (\DescribedProfile' {certificateIds} -> certificateIds) (\s@DescribedProfile' {} a -> s {certificateIds = a} :: DescribedProfile) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for the AS2 process.
describedProfile_as2Id :: Lens.Lens' DescribedProfile (Prelude.Maybe Prelude.Text)
describedProfile_as2Id = Lens.lens (\DescribedProfile' {as2Id} -> as2Id) (\s@DescribedProfile' {} a -> s {as2Id = a} :: DescribedProfile)

-- | Indicates whether to list only @LOCAL@ type profiles or only @PARTNER@
-- type profiles. If not supplied in the request, the command lists all
-- types of profiles.
describedProfile_profileType :: Lens.Lens' DescribedProfile (Prelude.Maybe ProfileType)
describedProfile_profileType = Lens.lens (\DescribedProfile' {profileType} -> profileType) (\s@DescribedProfile' {} a -> s {profileType = a} :: DescribedProfile)

-- | The unique Amazon Resource Name (ARN) for the profile.
describedProfile_arn :: Lens.Lens' DescribedProfile Prelude.Text
describedProfile_arn = Lens.lens (\DescribedProfile' {arn} -> arn) (\s@DescribedProfile' {} a -> s {arn = a} :: DescribedProfile)

instance Core.FromJSON DescribedProfile where
  parseJSON =
    Core.withObject
      "DescribedProfile"
      ( \x ->
          DescribedProfile'
            Prelude.<$> (x Core..:? "Tags")
            Prelude.<*> (x Core..:? "ProfileId")
            Prelude.<*> (x Core..:? "CertificateIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "As2Id")
            Prelude.<*> (x Core..:? "ProfileType")
            Prelude.<*> (x Core..: "Arn")
      )

instance Prelude.Hashable DescribedProfile where
  hashWithSalt _salt DescribedProfile' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` profileId
      `Prelude.hashWithSalt` certificateIds
      `Prelude.hashWithSalt` as2Id
      `Prelude.hashWithSalt` profileType
      `Prelude.hashWithSalt` arn

instance Prelude.NFData DescribedProfile where
  rnf DescribedProfile' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf profileId
      `Prelude.seq` Prelude.rnf certificateIds
      `Prelude.seq` Prelude.rnf as2Id
      `Prelude.seq` Prelude.rnf profileType
      `Prelude.seq` Prelude.rnf arn
