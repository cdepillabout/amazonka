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
-- Module      : Amazonka.MacieV2.Types.UsageByAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.UsageByAccount where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.Types.Currency
import Amazonka.MacieV2.Types.ServiceLimit
import Amazonka.MacieV2.Types.UsageType
import qualified Amazonka.Prelude as Prelude

-- | Provides data for a specific usage metric and the corresponding quota
-- for an Amazon Macie account.
--
-- /See:/ 'newUsageByAccount' smart constructor.
data UsageByAccount = UsageByAccount'
  { -- | The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION,
    -- for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing
    -- S3 objects to detect sensitive data.
    type' :: Prelude.Maybe UsageType,
    -- | The current value for the quota that corresponds to the metric specified
    -- by the type field.
    serviceLimit :: Prelude.Maybe ServiceLimit,
    -- | The type of currency that the value for the metric (estimatedCost) is
    -- reported in.
    currency :: Prelude.Maybe Currency,
    -- | The estimated value for the metric.
    estimatedCost :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UsageByAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'usageByAccount_type' - The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION,
-- for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing
-- S3 objects to detect sensitive data.
--
-- 'serviceLimit', 'usageByAccount_serviceLimit' - The current value for the quota that corresponds to the metric specified
-- by the type field.
--
-- 'currency', 'usageByAccount_currency' - The type of currency that the value for the metric (estimatedCost) is
-- reported in.
--
-- 'estimatedCost', 'usageByAccount_estimatedCost' - The estimated value for the metric.
newUsageByAccount ::
  UsageByAccount
newUsageByAccount =
  UsageByAccount'
    { type' = Prelude.Nothing,
      serviceLimit = Prelude.Nothing,
      currency = Prelude.Nothing,
      estimatedCost = Prelude.Nothing
    }

-- | The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION,
-- for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing
-- S3 objects to detect sensitive data.
usageByAccount_type :: Lens.Lens' UsageByAccount (Prelude.Maybe UsageType)
usageByAccount_type = Lens.lens (\UsageByAccount' {type'} -> type') (\s@UsageByAccount' {} a -> s {type' = a} :: UsageByAccount)

-- | The current value for the quota that corresponds to the metric specified
-- by the type field.
usageByAccount_serviceLimit :: Lens.Lens' UsageByAccount (Prelude.Maybe ServiceLimit)
usageByAccount_serviceLimit = Lens.lens (\UsageByAccount' {serviceLimit} -> serviceLimit) (\s@UsageByAccount' {} a -> s {serviceLimit = a} :: UsageByAccount)

-- | The type of currency that the value for the metric (estimatedCost) is
-- reported in.
usageByAccount_currency :: Lens.Lens' UsageByAccount (Prelude.Maybe Currency)
usageByAccount_currency = Lens.lens (\UsageByAccount' {currency} -> currency) (\s@UsageByAccount' {} a -> s {currency = a} :: UsageByAccount)

-- | The estimated value for the metric.
usageByAccount_estimatedCost :: Lens.Lens' UsageByAccount (Prelude.Maybe Prelude.Text)
usageByAccount_estimatedCost = Lens.lens (\UsageByAccount' {estimatedCost} -> estimatedCost) (\s@UsageByAccount' {} a -> s {estimatedCost = a} :: UsageByAccount)

instance Core.FromJSON UsageByAccount where
  parseJSON =
    Core.withObject
      "UsageByAccount"
      ( \x ->
          UsageByAccount'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "serviceLimit")
            Prelude.<*> (x Core..:? "currency")
            Prelude.<*> (x Core..:? "estimatedCost")
      )

instance Prelude.Hashable UsageByAccount where
  hashWithSalt _salt UsageByAccount' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` serviceLimit
      `Prelude.hashWithSalt` currency
      `Prelude.hashWithSalt` estimatedCost

instance Prelude.NFData UsageByAccount where
  rnf UsageByAccount' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf serviceLimit
      `Prelude.seq` Prelude.rnf currency
      `Prelude.seq` Prelude.rnf estimatedCost
