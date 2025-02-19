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
-- Module      : Amazonka.Lightsail.Types.DomainEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.DomainEntry where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a domain recordset entry.
--
-- /See:/ 'newDomainEntry' smart constructor.
data DomainEntry = DomainEntry'
  { -- | The name of the domain.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of domain entry, such as address for IPv4 (A), address for IPv6
    -- (AAAA), canonical name (CNAME), mail exchanger (MX), name server (NS),
    -- start of authority (SOA), service locator (SRV), or text (TXT).
    --
    -- The following domain entry types can be used:
    --
    -- -   @A@
    --
    -- -   @AAAA@
    --
    -- -   @CNAME@
    --
    -- -   @MX@
    --
    -- -   @NS@
    --
    -- -   @SOA@
    --
    -- -   @SRV@
    --
    -- -   @TXT@
    type' :: Prelude.Maybe Prelude.Text,
    -- | When @true@, specifies whether the domain entry is an alias used by the
    -- Lightsail load balancer. You can include an alias (A type) record in
    -- your request, which points to a load balancer DNS name and routes
    -- traffic to your load balancer.
    isAlias :: Prelude.Maybe Prelude.Bool,
    -- | The target IP address (e.g., @192.0.2.0@), or AWS name server (e.g.,
    -- @ns-111.awsdns-22.com.@).
    --
    -- For Lightsail load balancers, the value looks like
    -- @ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com@.
    -- For Lightsail distributions, the value looks like
    -- @exampled1182ne.cloudfront.net@. For Lightsail container services, the
    -- value looks like
    -- @container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com@.
    -- Be sure to also set @isAlias@ to @true@ when setting up an A record for
    -- a Lightsail load balancer, distribution, or container service.
    target :: Prelude.Maybe Prelude.Text,
    -- | The ID of the domain recordset entry.
    id :: Prelude.Maybe Prelude.Text,
    -- | (Deprecated) The options for the domain entry.
    --
    -- In releases prior to November 29, 2017, this parameter was not included
    -- in the API response. It is now deprecated.
    options :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'domainEntry_name' - The name of the domain.
--
-- 'type'', 'domainEntry_type' - The type of domain entry, such as address for IPv4 (A), address for IPv6
-- (AAAA), canonical name (CNAME), mail exchanger (MX), name server (NS),
-- start of authority (SOA), service locator (SRV), or text (TXT).
--
-- The following domain entry types can be used:
--
-- -   @A@
--
-- -   @AAAA@
--
-- -   @CNAME@
--
-- -   @MX@
--
-- -   @NS@
--
-- -   @SOA@
--
-- -   @SRV@
--
-- -   @TXT@
--
-- 'isAlias', 'domainEntry_isAlias' - When @true@, specifies whether the domain entry is an alias used by the
-- Lightsail load balancer. You can include an alias (A type) record in
-- your request, which points to a load balancer DNS name and routes
-- traffic to your load balancer.
--
-- 'target', 'domainEntry_target' - The target IP address (e.g., @192.0.2.0@), or AWS name server (e.g.,
-- @ns-111.awsdns-22.com.@).
--
-- For Lightsail load balancers, the value looks like
-- @ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com@.
-- For Lightsail distributions, the value looks like
-- @exampled1182ne.cloudfront.net@. For Lightsail container services, the
-- value looks like
-- @container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com@.
-- Be sure to also set @isAlias@ to @true@ when setting up an A record for
-- a Lightsail load balancer, distribution, or container service.
--
-- 'id', 'domainEntry_id' - The ID of the domain recordset entry.
--
-- 'options', 'domainEntry_options' - (Deprecated) The options for the domain entry.
--
-- In releases prior to November 29, 2017, this parameter was not included
-- in the API response. It is now deprecated.
newDomainEntry ::
  DomainEntry
newDomainEntry =
  DomainEntry'
    { name = Prelude.Nothing,
      type' = Prelude.Nothing,
      isAlias = Prelude.Nothing,
      target = Prelude.Nothing,
      id = Prelude.Nothing,
      options = Prelude.Nothing
    }

-- | The name of the domain.
domainEntry_name :: Lens.Lens' DomainEntry (Prelude.Maybe Prelude.Text)
domainEntry_name = Lens.lens (\DomainEntry' {name} -> name) (\s@DomainEntry' {} a -> s {name = a} :: DomainEntry)

-- | The type of domain entry, such as address for IPv4 (A), address for IPv6
-- (AAAA), canonical name (CNAME), mail exchanger (MX), name server (NS),
-- start of authority (SOA), service locator (SRV), or text (TXT).
--
-- The following domain entry types can be used:
--
-- -   @A@
--
-- -   @AAAA@
--
-- -   @CNAME@
--
-- -   @MX@
--
-- -   @NS@
--
-- -   @SOA@
--
-- -   @SRV@
--
-- -   @TXT@
domainEntry_type :: Lens.Lens' DomainEntry (Prelude.Maybe Prelude.Text)
domainEntry_type = Lens.lens (\DomainEntry' {type'} -> type') (\s@DomainEntry' {} a -> s {type' = a} :: DomainEntry)

-- | When @true@, specifies whether the domain entry is an alias used by the
-- Lightsail load balancer. You can include an alias (A type) record in
-- your request, which points to a load balancer DNS name and routes
-- traffic to your load balancer.
domainEntry_isAlias :: Lens.Lens' DomainEntry (Prelude.Maybe Prelude.Bool)
domainEntry_isAlias = Lens.lens (\DomainEntry' {isAlias} -> isAlias) (\s@DomainEntry' {} a -> s {isAlias = a} :: DomainEntry)

-- | The target IP address (e.g., @192.0.2.0@), or AWS name server (e.g.,
-- @ns-111.awsdns-22.com.@).
--
-- For Lightsail load balancers, the value looks like
-- @ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com@.
-- For Lightsail distributions, the value looks like
-- @exampled1182ne.cloudfront.net@. For Lightsail container services, the
-- value looks like
-- @container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com@.
-- Be sure to also set @isAlias@ to @true@ when setting up an A record for
-- a Lightsail load balancer, distribution, or container service.
domainEntry_target :: Lens.Lens' DomainEntry (Prelude.Maybe Prelude.Text)
domainEntry_target = Lens.lens (\DomainEntry' {target} -> target) (\s@DomainEntry' {} a -> s {target = a} :: DomainEntry)

-- | The ID of the domain recordset entry.
domainEntry_id :: Lens.Lens' DomainEntry (Prelude.Maybe Prelude.Text)
domainEntry_id = Lens.lens (\DomainEntry' {id} -> id) (\s@DomainEntry' {} a -> s {id = a} :: DomainEntry)

-- | (Deprecated) The options for the domain entry.
--
-- In releases prior to November 29, 2017, this parameter was not included
-- in the API response. It is now deprecated.
domainEntry_options :: Lens.Lens' DomainEntry (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
domainEntry_options = Lens.lens (\DomainEntry' {options} -> options) (\s@DomainEntry' {} a -> s {options = a} :: DomainEntry) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON DomainEntry where
  parseJSON =
    Core.withObject
      "DomainEntry"
      ( \x ->
          DomainEntry'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "isAlias")
            Prelude.<*> (x Core..:? "target")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "options" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable DomainEntry where
  hashWithSalt _salt DomainEntry' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` isAlias
      `Prelude.hashWithSalt` target
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` options

instance Prelude.NFData DomainEntry where
  rnf DomainEntry' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf isAlias
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf options

instance Core.ToJSON DomainEntry where
  toJSON DomainEntry' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("type" Core..=) Prelude.<$> type',
            ("isAlias" Core..=) Prelude.<$> isAlias,
            ("target" Core..=) Prelude.<$> target,
            ("id" Core..=) Prelude.<$> id,
            ("options" Core..=) Prelude.<$> options
          ]
      )
