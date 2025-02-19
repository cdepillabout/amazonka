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
-- Module      : Amazonka.Connect.Types.SecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.SecurityProfile where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a security profile.
--
-- /See:/ 'newSecurityProfile' smart constructor.
data SecurityProfile = SecurityProfile'
  { -- | The tags used to organize, track, or control access for this resource.
    -- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (ARN) for the secruity profile.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the security profile.
    id :: Prelude.Maybe Prelude.Text,
    -- | The description of the security profile.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name for the security profile.
    securityProfileName :: Prelude.Maybe Prelude.Text,
    -- | The organization resource identifier for the security profile.
    organizationResourceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SecurityProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'securityProfile_tags' - The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
--
-- 'arn', 'securityProfile_arn' - The Amazon Resource Name (ARN) for the secruity profile.
--
-- 'id', 'securityProfile_id' - The identifier for the security profile.
--
-- 'description', 'securityProfile_description' - The description of the security profile.
--
-- 'securityProfileName', 'securityProfile_securityProfileName' - The name for the security profile.
--
-- 'organizationResourceId', 'securityProfile_organizationResourceId' - The organization resource identifier for the security profile.
newSecurityProfile ::
  SecurityProfile
newSecurityProfile =
  SecurityProfile'
    { tags = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      securityProfileName = Prelude.Nothing,
      organizationResourceId = Prelude.Nothing
    }

-- | The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
securityProfile_tags :: Lens.Lens' SecurityProfile (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
securityProfile_tags = Lens.lens (\SecurityProfile' {tags} -> tags) (\s@SecurityProfile' {} a -> s {tags = a} :: SecurityProfile) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) for the secruity profile.
securityProfile_arn :: Lens.Lens' SecurityProfile (Prelude.Maybe Prelude.Text)
securityProfile_arn = Lens.lens (\SecurityProfile' {arn} -> arn) (\s@SecurityProfile' {} a -> s {arn = a} :: SecurityProfile)

-- | The identifier for the security profile.
securityProfile_id :: Lens.Lens' SecurityProfile (Prelude.Maybe Prelude.Text)
securityProfile_id = Lens.lens (\SecurityProfile' {id} -> id) (\s@SecurityProfile' {} a -> s {id = a} :: SecurityProfile)

-- | The description of the security profile.
securityProfile_description :: Lens.Lens' SecurityProfile (Prelude.Maybe Prelude.Text)
securityProfile_description = Lens.lens (\SecurityProfile' {description} -> description) (\s@SecurityProfile' {} a -> s {description = a} :: SecurityProfile)

-- | The name for the security profile.
securityProfile_securityProfileName :: Lens.Lens' SecurityProfile (Prelude.Maybe Prelude.Text)
securityProfile_securityProfileName = Lens.lens (\SecurityProfile' {securityProfileName} -> securityProfileName) (\s@SecurityProfile' {} a -> s {securityProfileName = a} :: SecurityProfile)

-- | The organization resource identifier for the security profile.
securityProfile_organizationResourceId :: Lens.Lens' SecurityProfile (Prelude.Maybe Prelude.Text)
securityProfile_organizationResourceId = Lens.lens (\SecurityProfile' {organizationResourceId} -> organizationResourceId) (\s@SecurityProfile' {} a -> s {organizationResourceId = a} :: SecurityProfile)

instance Core.FromJSON SecurityProfile where
  parseJSON =
    Core.withObject
      "SecurityProfile"
      ( \x ->
          SecurityProfile'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "SecurityProfileName")
            Prelude.<*> (x Core..:? "OrganizationResourceId")
      )

instance Prelude.Hashable SecurityProfile where
  hashWithSalt _salt SecurityProfile' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` securityProfileName
      `Prelude.hashWithSalt` organizationResourceId

instance Prelude.NFData SecurityProfile where
  rnf SecurityProfile' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf securityProfileName
      `Prelude.seq` Prelude.rnf organizationResourceId
