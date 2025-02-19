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
-- Module      : Amazonka.CertificateManagerPCA.Types.OcspConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CertificateManagerPCA.Types.OcspConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information to enable and configure Online Certificate Status
-- Protocol (OCSP) for validating certificate revocation status.
--
-- When you revoke a certificate, OCSP responses may take up to 60 minutes
-- to reflect the new status.
--
-- /See:/ 'newOcspConfiguration' smart constructor.
data OcspConfiguration = OcspConfiguration'
  { -- | By default, ACM Private CA injects an Amazon Web Services domain into
    -- certificates being validated by the Online Certificate Status Protocol
    -- (OCSP). A customer can alternatively use this object to define a CNAME
    -- specifying a customized OCSP domain.
    --
    -- Note: The value of the CNAME must not include a protocol prefix such as
    -- \"http:\/\/\" or \"https:\/\/\".
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/acm-pca/latest/userguide/ocsp-customize.html Customizing Online Certificate Status Protocol (OCSP)>
    -- in the /Certificate Manager Private Certificate Authority (PCA) User
    -- Guide/.
    ocspCustomCname :: Prelude.Maybe Prelude.Text,
    -- | Flag enabling use of the Online Certificate Status Protocol (OCSP) for
    -- validating certificate revocation status.
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OcspConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ocspCustomCname', 'ocspConfiguration_ocspCustomCname' - By default, ACM Private CA injects an Amazon Web Services domain into
-- certificates being validated by the Online Certificate Status Protocol
-- (OCSP). A customer can alternatively use this object to define a CNAME
-- specifying a customized OCSP domain.
--
-- Note: The value of the CNAME must not include a protocol prefix such as
-- \"http:\/\/\" or \"https:\/\/\".
--
-- For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/ocsp-customize.html Customizing Online Certificate Status Protocol (OCSP)>
-- in the /Certificate Manager Private Certificate Authority (PCA) User
-- Guide/.
--
-- 'enabled', 'ocspConfiguration_enabled' - Flag enabling use of the Online Certificate Status Protocol (OCSP) for
-- validating certificate revocation status.
newOcspConfiguration ::
  -- | 'enabled'
  Prelude.Bool ->
  OcspConfiguration
newOcspConfiguration pEnabled_ =
  OcspConfiguration'
    { ocspCustomCname =
        Prelude.Nothing,
      enabled = pEnabled_
    }

-- | By default, ACM Private CA injects an Amazon Web Services domain into
-- certificates being validated by the Online Certificate Status Protocol
-- (OCSP). A customer can alternatively use this object to define a CNAME
-- specifying a customized OCSP domain.
--
-- Note: The value of the CNAME must not include a protocol prefix such as
-- \"http:\/\/\" or \"https:\/\/\".
--
-- For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/ocsp-customize.html Customizing Online Certificate Status Protocol (OCSP)>
-- in the /Certificate Manager Private Certificate Authority (PCA) User
-- Guide/.
ocspConfiguration_ocspCustomCname :: Lens.Lens' OcspConfiguration (Prelude.Maybe Prelude.Text)
ocspConfiguration_ocspCustomCname = Lens.lens (\OcspConfiguration' {ocspCustomCname} -> ocspCustomCname) (\s@OcspConfiguration' {} a -> s {ocspCustomCname = a} :: OcspConfiguration)

-- | Flag enabling use of the Online Certificate Status Protocol (OCSP) for
-- validating certificate revocation status.
ocspConfiguration_enabled :: Lens.Lens' OcspConfiguration Prelude.Bool
ocspConfiguration_enabled = Lens.lens (\OcspConfiguration' {enabled} -> enabled) (\s@OcspConfiguration' {} a -> s {enabled = a} :: OcspConfiguration)

instance Core.FromJSON OcspConfiguration where
  parseJSON =
    Core.withObject
      "OcspConfiguration"
      ( \x ->
          OcspConfiguration'
            Prelude.<$> (x Core..:? "OcspCustomCname")
            Prelude.<*> (x Core..: "Enabled")
      )

instance Prelude.Hashable OcspConfiguration where
  hashWithSalt _salt OcspConfiguration' {..} =
    _salt `Prelude.hashWithSalt` ocspCustomCname
      `Prelude.hashWithSalt` enabled

instance Prelude.NFData OcspConfiguration where
  rnf OcspConfiguration' {..} =
    Prelude.rnf ocspCustomCname
      `Prelude.seq` Prelude.rnf enabled

instance Core.ToJSON OcspConfiguration where
  toJSON OcspConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OcspCustomCname" Core..=)
              Prelude.<$> ocspCustomCname,
            Prelude.Just ("Enabled" Core..= enabled)
          ]
      )
