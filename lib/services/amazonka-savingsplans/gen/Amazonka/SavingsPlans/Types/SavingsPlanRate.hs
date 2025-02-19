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
-- Module      : Amazonka.SavingsPlans.Types.SavingsPlanRate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SavingsPlans.Types.SavingsPlanRate where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SavingsPlans.Types.CurrencyCode
import Amazonka.SavingsPlans.Types.SavingsPlanProductType
import Amazonka.SavingsPlans.Types.SavingsPlanRateProperty
import Amazonka.SavingsPlans.Types.SavingsPlanRateServiceCode
import Amazonka.SavingsPlans.Types.SavingsPlanRateUnit

-- | Information about a Savings Plan rate.
--
-- /See:/ 'newSavingsPlanRate' smart constructor.
data SavingsPlanRate = SavingsPlanRate'
  { -- | The rate.
    rate :: Prelude.Maybe Prelude.Text,
    -- | The product type.
    productType :: Prelude.Maybe SavingsPlanProductType,
    -- | The properties.
    properties :: Prelude.Maybe [SavingsPlanRateProperty],
    -- | The service.
    serviceCode :: Prelude.Maybe SavingsPlanRateServiceCode,
    -- | The usage details of the line item in the billing report.
    usageType :: Prelude.Maybe Prelude.Text,
    -- | The currency.
    currency :: Prelude.Maybe CurrencyCode,
    -- | The unit.
    unit :: Prelude.Maybe SavingsPlanRateUnit,
    -- | The specific AWS operation for the line item in the billing report.
    operation :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SavingsPlanRate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rate', 'savingsPlanRate_rate' - The rate.
--
-- 'productType', 'savingsPlanRate_productType' - The product type.
--
-- 'properties', 'savingsPlanRate_properties' - The properties.
--
-- 'serviceCode', 'savingsPlanRate_serviceCode' - The service.
--
-- 'usageType', 'savingsPlanRate_usageType' - The usage details of the line item in the billing report.
--
-- 'currency', 'savingsPlanRate_currency' - The currency.
--
-- 'unit', 'savingsPlanRate_unit' - The unit.
--
-- 'operation', 'savingsPlanRate_operation' - The specific AWS operation for the line item in the billing report.
newSavingsPlanRate ::
  SavingsPlanRate
newSavingsPlanRate =
  SavingsPlanRate'
    { rate = Prelude.Nothing,
      productType = Prelude.Nothing,
      properties = Prelude.Nothing,
      serviceCode = Prelude.Nothing,
      usageType = Prelude.Nothing,
      currency = Prelude.Nothing,
      unit = Prelude.Nothing,
      operation = Prelude.Nothing
    }

-- | The rate.
savingsPlanRate_rate :: Lens.Lens' SavingsPlanRate (Prelude.Maybe Prelude.Text)
savingsPlanRate_rate = Lens.lens (\SavingsPlanRate' {rate} -> rate) (\s@SavingsPlanRate' {} a -> s {rate = a} :: SavingsPlanRate)

-- | The product type.
savingsPlanRate_productType :: Lens.Lens' SavingsPlanRate (Prelude.Maybe SavingsPlanProductType)
savingsPlanRate_productType = Lens.lens (\SavingsPlanRate' {productType} -> productType) (\s@SavingsPlanRate' {} a -> s {productType = a} :: SavingsPlanRate)

-- | The properties.
savingsPlanRate_properties :: Lens.Lens' SavingsPlanRate (Prelude.Maybe [SavingsPlanRateProperty])
savingsPlanRate_properties = Lens.lens (\SavingsPlanRate' {properties} -> properties) (\s@SavingsPlanRate' {} a -> s {properties = a} :: SavingsPlanRate) Prelude.. Lens.mapping Lens.coerced

-- | The service.
savingsPlanRate_serviceCode :: Lens.Lens' SavingsPlanRate (Prelude.Maybe SavingsPlanRateServiceCode)
savingsPlanRate_serviceCode = Lens.lens (\SavingsPlanRate' {serviceCode} -> serviceCode) (\s@SavingsPlanRate' {} a -> s {serviceCode = a} :: SavingsPlanRate)

-- | The usage details of the line item in the billing report.
savingsPlanRate_usageType :: Lens.Lens' SavingsPlanRate (Prelude.Maybe Prelude.Text)
savingsPlanRate_usageType = Lens.lens (\SavingsPlanRate' {usageType} -> usageType) (\s@SavingsPlanRate' {} a -> s {usageType = a} :: SavingsPlanRate)

-- | The currency.
savingsPlanRate_currency :: Lens.Lens' SavingsPlanRate (Prelude.Maybe CurrencyCode)
savingsPlanRate_currency = Lens.lens (\SavingsPlanRate' {currency} -> currency) (\s@SavingsPlanRate' {} a -> s {currency = a} :: SavingsPlanRate)

-- | The unit.
savingsPlanRate_unit :: Lens.Lens' SavingsPlanRate (Prelude.Maybe SavingsPlanRateUnit)
savingsPlanRate_unit = Lens.lens (\SavingsPlanRate' {unit} -> unit) (\s@SavingsPlanRate' {} a -> s {unit = a} :: SavingsPlanRate)

-- | The specific AWS operation for the line item in the billing report.
savingsPlanRate_operation :: Lens.Lens' SavingsPlanRate (Prelude.Maybe Prelude.Text)
savingsPlanRate_operation = Lens.lens (\SavingsPlanRate' {operation} -> operation) (\s@SavingsPlanRate' {} a -> s {operation = a} :: SavingsPlanRate)

instance Core.FromJSON SavingsPlanRate where
  parseJSON =
    Core.withObject
      "SavingsPlanRate"
      ( \x ->
          SavingsPlanRate'
            Prelude.<$> (x Core..:? "rate")
            Prelude.<*> (x Core..:? "productType")
            Prelude.<*> (x Core..:? "properties" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "serviceCode")
            Prelude.<*> (x Core..:? "usageType")
            Prelude.<*> (x Core..:? "currency")
            Prelude.<*> (x Core..:? "unit")
            Prelude.<*> (x Core..:? "operation")
      )

instance Prelude.Hashable SavingsPlanRate where
  hashWithSalt _salt SavingsPlanRate' {..} =
    _salt `Prelude.hashWithSalt` rate
      `Prelude.hashWithSalt` productType
      `Prelude.hashWithSalt` properties
      `Prelude.hashWithSalt` serviceCode
      `Prelude.hashWithSalt` usageType
      `Prelude.hashWithSalt` currency
      `Prelude.hashWithSalt` unit
      `Prelude.hashWithSalt` operation

instance Prelude.NFData SavingsPlanRate where
  rnf SavingsPlanRate' {..} =
    Prelude.rnf rate
      `Prelude.seq` Prelude.rnf productType
      `Prelude.seq` Prelude.rnf properties
      `Prelude.seq` Prelude.rnf serviceCode
      `Prelude.seq` Prelude.rnf usageType
      `Prelude.seq` Prelude.rnf currency
      `Prelude.seq` Prelude.rnf unit
      `Prelude.seq` Prelude.rnf operation
