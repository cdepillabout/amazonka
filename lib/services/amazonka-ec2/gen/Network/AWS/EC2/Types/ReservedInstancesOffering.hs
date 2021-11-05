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
-- Module      : Amazonka.EC2.Types.ReservedInstancesOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ReservedInstancesOffering where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.CurrencyCodeValues
import Amazonka.EC2.Types.InstanceType
import Amazonka.EC2.Types.OfferingClassType
import Amazonka.EC2.Types.OfferingTypeValues
import Amazonka.EC2.Types.PricingDetail
import Amazonka.EC2.Types.RIProductDescription
import Amazonka.EC2.Types.RecurringCharge
import Amazonka.EC2.Types.Scope
import Amazonka.EC2.Types.Tenancy
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a Reserved Instance offering.
--
-- /See:/ 'newReservedInstancesOffering' smart constructor.
data ReservedInstancesOffering = ReservedInstancesOffering'
  { -- | Indicates whether the offering is available through the Reserved
    -- Instance Marketplace (resale) or Amazon Web Services. If it\'s a
    -- Reserved Instance Marketplace offering, this is @true@.
    marketplace :: Prelude.Maybe Prelude.Bool,
    -- | The currency of the Reserved Instance offering you are purchasing. It\'s
    -- specified using ISO 4217 standard currency codes. At this time, the only
    -- supported currency is @USD@.
    currencyCode :: Prelude.Maybe CurrencyCodeValues,
    -- | The Reserved Instance product platform description.
    productDescription :: Prelude.Maybe RIProductDescription,
    -- | The instance type on which the Reserved Instance can be used.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The Availability Zone in which the Reserved Instance can be used.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The pricing details of the Reserved Instance offering.
    pricingDetails :: Prelude.Maybe [PricingDetail],
    -- | Whether the Reserved Instance is applied to instances in a Region or an
    -- Availability Zone.
    scope :: Prelude.Maybe Scope,
    -- | The recurring charge tag assigned to the resource.
    recurringCharges :: Prelude.Maybe [RecurringCharge],
    -- | The Reserved Instance offering type.
    offeringType :: Prelude.Maybe OfferingTypeValues,
    -- | The usage price of the Reserved Instance, per hour.
    usagePrice :: Prelude.Maybe Prelude.Double,
    -- | The purchase price of the Reserved Instance.
    fixedPrice :: Prelude.Maybe Prelude.Double,
    -- | The tenancy of the instance.
    instanceTenancy :: Prelude.Maybe Tenancy,
    -- | The ID of the Reserved Instance offering. This is the offering ID used
    -- in GetReservedInstancesExchangeQuote to confirm that an exchange can be
    -- made.
    reservedInstancesOfferingId :: Prelude.Maybe Prelude.Text,
    -- | If @convertible@ it can be exchanged for Reserved Instances of the same
    -- or higher monetary value, with different configurations. If @standard@,
    -- it is not possible to perform an exchange.
    offeringClass :: Prelude.Maybe OfferingClassType,
    -- | The duration of the Reserved Instance, in seconds.
    duration :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReservedInstancesOffering' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marketplace', 'reservedInstancesOffering_marketplace' - Indicates whether the offering is available through the Reserved
-- Instance Marketplace (resale) or Amazon Web Services. If it\'s a
-- Reserved Instance Marketplace offering, this is @true@.
--
-- 'currencyCode', 'reservedInstancesOffering_currencyCode' - The currency of the Reserved Instance offering you are purchasing. It\'s
-- specified using ISO 4217 standard currency codes. At this time, the only
-- supported currency is @USD@.
--
-- 'productDescription', 'reservedInstancesOffering_productDescription' - The Reserved Instance product platform description.
--
-- 'instanceType', 'reservedInstancesOffering_instanceType' - The instance type on which the Reserved Instance can be used.
--
-- 'availabilityZone', 'reservedInstancesOffering_availabilityZone' - The Availability Zone in which the Reserved Instance can be used.
--
-- 'pricingDetails', 'reservedInstancesOffering_pricingDetails' - The pricing details of the Reserved Instance offering.
--
-- 'scope', 'reservedInstancesOffering_scope' - Whether the Reserved Instance is applied to instances in a Region or an
-- Availability Zone.
--
-- 'recurringCharges', 'reservedInstancesOffering_recurringCharges' - The recurring charge tag assigned to the resource.
--
-- 'offeringType', 'reservedInstancesOffering_offeringType' - The Reserved Instance offering type.
--
-- 'usagePrice', 'reservedInstancesOffering_usagePrice' - The usage price of the Reserved Instance, per hour.
--
-- 'fixedPrice', 'reservedInstancesOffering_fixedPrice' - The purchase price of the Reserved Instance.
--
-- 'instanceTenancy', 'reservedInstancesOffering_instanceTenancy' - The tenancy of the instance.
--
-- 'reservedInstancesOfferingId', 'reservedInstancesOffering_reservedInstancesOfferingId' - The ID of the Reserved Instance offering. This is the offering ID used
-- in GetReservedInstancesExchangeQuote to confirm that an exchange can be
-- made.
--
-- 'offeringClass', 'reservedInstancesOffering_offeringClass' - If @convertible@ it can be exchanged for Reserved Instances of the same
-- or higher monetary value, with different configurations. If @standard@,
-- it is not possible to perform an exchange.
--
-- 'duration', 'reservedInstancesOffering_duration' - The duration of the Reserved Instance, in seconds.
newReservedInstancesOffering ::
  ReservedInstancesOffering
newReservedInstancesOffering =
  ReservedInstancesOffering'
    { marketplace =
        Prelude.Nothing,
      currencyCode = Prelude.Nothing,
      productDescription = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      pricingDetails = Prelude.Nothing,
      scope = Prelude.Nothing,
      recurringCharges = Prelude.Nothing,
      offeringType = Prelude.Nothing,
      usagePrice = Prelude.Nothing,
      fixedPrice = Prelude.Nothing,
      instanceTenancy = Prelude.Nothing,
      reservedInstancesOfferingId = Prelude.Nothing,
      offeringClass = Prelude.Nothing,
      duration = Prelude.Nothing
    }

-- | Indicates whether the offering is available through the Reserved
-- Instance Marketplace (resale) or Amazon Web Services. If it\'s a
-- Reserved Instance Marketplace offering, this is @true@.
reservedInstancesOffering_marketplace :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Bool)
reservedInstancesOffering_marketplace = Lens.lens (\ReservedInstancesOffering' {marketplace} -> marketplace) (\s@ReservedInstancesOffering' {} a -> s {marketplace = a} :: ReservedInstancesOffering)

-- | The currency of the Reserved Instance offering you are purchasing. It\'s
-- specified using ISO 4217 standard currency codes. At this time, the only
-- supported currency is @USD@.
reservedInstancesOffering_currencyCode :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe CurrencyCodeValues)
reservedInstancesOffering_currencyCode = Lens.lens (\ReservedInstancesOffering' {currencyCode} -> currencyCode) (\s@ReservedInstancesOffering' {} a -> s {currencyCode = a} :: ReservedInstancesOffering)

-- | The Reserved Instance product platform description.
reservedInstancesOffering_productDescription :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe RIProductDescription)
reservedInstancesOffering_productDescription = Lens.lens (\ReservedInstancesOffering' {productDescription} -> productDescription) (\s@ReservedInstancesOffering' {} a -> s {productDescription = a} :: ReservedInstancesOffering)

-- | The instance type on which the Reserved Instance can be used.
reservedInstancesOffering_instanceType :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe InstanceType)
reservedInstancesOffering_instanceType = Lens.lens (\ReservedInstancesOffering' {instanceType} -> instanceType) (\s@ReservedInstancesOffering' {} a -> s {instanceType = a} :: ReservedInstancesOffering)

-- | The Availability Zone in which the Reserved Instance can be used.
reservedInstancesOffering_availabilityZone :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Text)
reservedInstancesOffering_availabilityZone = Lens.lens (\ReservedInstancesOffering' {availabilityZone} -> availabilityZone) (\s@ReservedInstancesOffering' {} a -> s {availabilityZone = a} :: ReservedInstancesOffering)

-- | The pricing details of the Reserved Instance offering.
reservedInstancesOffering_pricingDetails :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe [PricingDetail])
reservedInstancesOffering_pricingDetails = Lens.lens (\ReservedInstancesOffering' {pricingDetails} -> pricingDetails) (\s@ReservedInstancesOffering' {} a -> s {pricingDetails = a} :: ReservedInstancesOffering) Prelude.. Lens.mapping Lens.coerced

-- | Whether the Reserved Instance is applied to instances in a Region or an
-- Availability Zone.
reservedInstancesOffering_scope :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Scope)
reservedInstancesOffering_scope = Lens.lens (\ReservedInstancesOffering' {scope} -> scope) (\s@ReservedInstancesOffering' {} a -> s {scope = a} :: ReservedInstancesOffering)

-- | The recurring charge tag assigned to the resource.
reservedInstancesOffering_recurringCharges :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe [RecurringCharge])
reservedInstancesOffering_recurringCharges = Lens.lens (\ReservedInstancesOffering' {recurringCharges} -> recurringCharges) (\s@ReservedInstancesOffering' {} a -> s {recurringCharges = a} :: ReservedInstancesOffering) Prelude.. Lens.mapping Lens.coerced

-- | The Reserved Instance offering type.
reservedInstancesOffering_offeringType :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe OfferingTypeValues)
reservedInstancesOffering_offeringType = Lens.lens (\ReservedInstancesOffering' {offeringType} -> offeringType) (\s@ReservedInstancesOffering' {} a -> s {offeringType = a} :: ReservedInstancesOffering)

-- | The usage price of the Reserved Instance, per hour.
reservedInstancesOffering_usagePrice :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Double)
reservedInstancesOffering_usagePrice = Lens.lens (\ReservedInstancesOffering' {usagePrice} -> usagePrice) (\s@ReservedInstancesOffering' {} a -> s {usagePrice = a} :: ReservedInstancesOffering)

-- | The purchase price of the Reserved Instance.
reservedInstancesOffering_fixedPrice :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Double)
reservedInstancesOffering_fixedPrice = Lens.lens (\ReservedInstancesOffering' {fixedPrice} -> fixedPrice) (\s@ReservedInstancesOffering' {} a -> s {fixedPrice = a} :: ReservedInstancesOffering)

-- | The tenancy of the instance.
reservedInstancesOffering_instanceTenancy :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Tenancy)
reservedInstancesOffering_instanceTenancy = Lens.lens (\ReservedInstancesOffering' {instanceTenancy} -> instanceTenancy) (\s@ReservedInstancesOffering' {} a -> s {instanceTenancy = a} :: ReservedInstancesOffering)

-- | The ID of the Reserved Instance offering. This is the offering ID used
-- in GetReservedInstancesExchangeQuote to confirm that an exchange can be
-- made.
reservedInstancesOffering_reservedInstancesOfferingId :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Text)
reservedInstancesOffering_reservedInstancesOfferingId = Lens.lens (\ReservedInstancesOffering' {reservedInstancesOfferingId} -> reservedInstancesOfferingId) (\s@ReservedInstancesOffering' {} a -> s {reservedInstancesOfferingId = a} :: ReservedInstancesOffering)

-- | If @convertible@ it can be exchanged for Reserved Instances of the same
-- or higher monetary value, with different configurations. If @standard@,
-- it is not possible to perform an exchange.
reservedInstancesOffering_offeringClass :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe OfferingClassType)
reservedInstancesOffering_offeringClass = Lens.lens (\ReservedInstancesOffering' {offeringClass} -> offeringClass) (\s@ReservedInstancesOffering' {} a -> s {offeringClass = a} :: ReservedInstancesOffering)

-- | The duration of the Reserved Instance, in seconds.
reservedInstancesOffering_duration :: Lens.Lens' ReservedInstancesOffering (Prelude.Maybe Prelude.Integer)
reservedInstancesOffering_duration = Lens.lens (\ReservedInstancesOffering' {duration} -> duration) (\s@ReservedInstancesOffering' {} a -> s {duration = a} :: ReservedInstancesOffering)

instance Core.FromXML ReservedInstancesOffering where
  parseXML x =
    ReservedInstancesOffering'
      Prelude.<$> (x Core..@? "marketplace")
      Prelude.<*> (x Core..@? "currencyCode")
      Prelude.<*> (x Core..@? "productDescription")
      Prelude.<*> (x Core..@? "instanceType")
      Prelude.<*> (x Core..@? "availabilityZone")
      Prelude.<*> ( x Core..@? "pricingDetailsSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "scope")
      Prelude.<*> ( x Core..@? "recurringCharges"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "offeringType")
      Prelude.<*> (x Core..@? "usagePrice")
      Prelude.<*> (x Core..@? "fixedPrice")
      Prelude.<*> (x Core..@? "instanceTenancy")
      Prelude.<*> (x Core..@? "reservedInstancesOfferingId")
      Prelude.<*> (x Core..@? "offeringClass")
      Prelude.<*> (x Core..@? "duration")

instance Prelude.Hashable ReservedInstancesOffering

instance Prelude.NFData ReservedInstancesOffering
