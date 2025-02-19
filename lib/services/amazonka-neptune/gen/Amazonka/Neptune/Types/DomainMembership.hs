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
-- Module      : Amazonka.Neptune.Types.DomainMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Neptune.Types.DomainMembership where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An Active Directory Domain membership record associated with a DB
-- instance.
--
-- /See:/ 'newDomainMembership' smart constructor.
data DomainMembership = DomainMembership'
  { -- | The identifier of the Active Directory Domain.
    domain :: Prelude.Maybe Prelude.Text,
    -- | The fully qualified domain name of the Active Directory Domain.
    fqdn :: Prelude.Maybe Prelude.Text,
    -- | The status of the DB instance\'s Active Directory Domain membership,
    -- such as joined, pending-join, failed etc).
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the IAM role to be used when making API calls to the
    -- Directory Service.
    iAMRoleName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'domainMembership_domain' - The identifier of the Active Directory Domain.
--
-- 'fqdn', 'domainMembership_fqdn' - The fully qualified domain name of the Active Directory Domain.
--
-- 'status', 'domainMembership_status' - The status of the DB instance\'s Active Directory Domain membership,
-- such as joined, pending-join, failed etc).
--
-- 'iAMRoleName', 'domainMembership_iAMRoleName' - The name of the IAM role to be used when making API calls to the
-- Directory Service.
newDomainMembership ::
  DomainMembership
newDomainMembership =
  DomainMembership'
    { domain = Prelude.Nothing,
      fqdn = Prelude.Nothing,
      status = Prelude.Nothing,
      iAMRoleName = Prelude.Nothing
    }

-- | The identifier of the Active Directory Domain.
domainMembership_domain :: Lens.Lens' DomainMembership (Prelude.Maybe Prelude.Text)
domainMembership_domain = Lens.lens (\DomainMembership' {domain} -> domain) (\s@DomainMembership' {} a -> s {domain = a} :: DomainMembership)

-- | The fully qualified domain name of the Active Directory Domain.
domainMembership_fqdn :: Lens.Lens' DomainMembership (Prelude.Maybe Prelude.Text)
domainMembership_fqdn = Lens.lens (\DomainMembership' {fqdn} -> fqdn) (\s@DomainMembership' {} a -> s {fqdn = a} :: DomainMembership)

-- | The status of the DB instance\'s Active Directory Domain membership,
-- such as joined, pending-join, failed etc).
domainMembership_status :: Lens.Lens' DomainMembership (Prelude.Maybe Prelude.Text)
domainMembership_status = Lens.lens (\DomainMembership' {status} -> status) (\s@DomainMembership' {} a -> s {status = a} :: DomainMembership)

-- | The name of the IAM role to be used when making API calls to the
-- Directory Service.
domainMembership_iAMRoleName :: Lens.Lens' DomainMembership (Prelude.Maybe Prelude.Text)
domainMembership_iAMRoleName = Lens.lens (\DomainMembership' {iAMRoleName} -> iAMRoleName) (\s@DomainMembership' {} a -> s {iAMRoleName = a} :: DomainMembership)

instance Core.FromXML DomainMembership where
  parseXML x =
    DomainMembership'
      Prelude.<$> (x Core..@? "Domain")
      Prelude.<*> (x Core..@? "FQDN")
      Prelude.<*> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "IAMRoleName")

instance Prelude.Hashable DomainMembership where
  hashWithSalt _salt DomainMembership' {..} =
    _salt `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` fqdn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` iAMRoleName

instance Prelude.NFData DomainMembership where
  rnf DomainMembership' {..} =
    Prelude.rnf domain
      `Prelude.seq` Prelude.rnf fqdn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf iAMRoleName
