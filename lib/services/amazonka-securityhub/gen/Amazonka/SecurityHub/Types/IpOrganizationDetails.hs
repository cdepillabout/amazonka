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
-- Module      : Amazonka.SecurityHub.Types.IpOrganizationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.IpOrganizationDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about an internet provider.
--
-- /See:/ 'newIpOrganizationDetails' smart constructor.
data IpOrganizationDetails = IpOrganizationDetails'
  { -- | The ISP information for the internet provider.
    isp :: Prelude.Maybe Prelude.Text,
    -- | The name of the internet provider.
    org :: Prelude.Maybe Prelude.Text,
    -- | The Autonomous System Number (ASN) of the internet provider
    asn :: Prelude.Maybe Prelude.Int,
    -- | The name of the organization that registered the ASN.
    asnOrg :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IpOrganizationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isp', 'ipOrganizationDetails_isp' - The ISP information for the internet provider.
--
-- 'org', 'ipOrganizationDetails_org' - The name of the internet provider.
--
-- 'asn', 'ipOrganizationDetails_asn' - The Autonomous System Number (ASN) of the internet provider
--
-- 'asnOrg', 'ipOrganizationDetails_asnOrg' - The name of the organization that registered the ASN.
newIpOrganizationDetails ::
  IpOrganizationDetails
newIpOrganizationDetails =
  IpOrganizationDetails'
    { isp = Prelude.Nothing,
      org = Prelude.Nothing,
      asn = Prelude.Nothing,
      asnOrg = Prelude.Nothing
    }

-- | The ISP information for the internet provider.
ipOrganizationDetails_isp :: Lens.Lens' IpOrganizationDetails (Prelude.Maybe Prelude.Text)
ipOrganizationDetails_isp = Lens.lens (\IpOrganizationDetails' {isp} -> isp) (\s@IpOrganizationDetails' {} a -> s {isp = a} :: IpOrganizationDetails)

-- | The name of the internet provider.
ipOrganizationDetails_org :: Lens.Lens' IpOrganizationDetails (Prelude.Maybe Prelude.Text)
ipOrganizationDetails_org = Lens.lens (\IpOrganizationDetails' {org} -> org) (\s@IpOrganizationDetails' {} a -> s {org = a} :: IpOrganizationDetails)

-- | The Autonomous System Number (ASN) of the internet provider
ipOrganizationDetails_asn :: Lens.Lens' IpOrganizationDetails (Prelude.Maybe Prelude.Int)
ipOrganizationDetails_asn = Lens.lens (\IpOrganizationDetails' {asn} -> asn) (\s@IpOrganizationDetails' {} a -> s {asn = a} :: IpOrganizationDetails)

-- | The name of the organization that registered the ASN.
ipOrganizationDetails_asnOrg :: Lens.Lens' IpOrganizationDetails (Prelude.Maybe Prelude.Text)
ipOrganizationDetails_asnOrg = Lens.lens (\IpOrganizationDetails' {asnOrg} -> asnOrg) (\s@IpOrganizationDetails' {} a -> s {asnOrg = a} :: IpOrganizationDetails)

instance Core.FromJSON IpOrganizationDetails where
  parseJSON =
    Core.withObject
      "IpOrganizationDetails"
      ( \x ->
          IpOrganizationDetails'
            Prelude.<$> (x Core..:? "Isp")
            Prelude.<*> (x Core..:? "Org")
            Prelude.<*> (x Core..:? "Asn")
            Prelude.<*> (x Core..:? "AsnOrg")
      )

instance Prelude.Hashable IpOrganizationDetails where
  hashWithSalt _salt IpOrganizationDetails' {..} =
    _salt `Prelude.hashWithSalt` isp
      `Prelude.hashWithSalt` org
      `Prelude.hashWithSalt` asn
      `Prelude.hashWithSalt` asnOrg

instance Prelude.NFData IpOrganizationDetails where
  rnf IpOrganizationDetails' {..} =
    Prelude.rnf isp
      `Prelude.seq` Prelude.rnf org
      `Prelude.seq` Prelude.rnf asn
      `Prelude.seq` Prelude.rnf asnOrg

instance Core.ToJSON IpOrganizationDetails where
  toJSON IpOrganizationDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Isp" Core..=) Prelude.<$> isp,
            ("Org" Core..=) Prelude.<$> org,
            ("Asn" Core..=) Prelude.<$> asn,
            ("AsnOrg" Core..=) Prelude.<$> asnOrg
          ]
      )
