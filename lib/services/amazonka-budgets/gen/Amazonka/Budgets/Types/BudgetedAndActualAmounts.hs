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
-- Module      : Amazonka.Budgets.Types.BudgetedAndActualAmounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Budgets.Types.BudgetedAndActualAmounts where

import Amazonka.Budgets.Types.Spend
import Amazonka.Budgets.Types.TimePeriod
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The amount of cost or usage that you created the budget for, compared to
-- your actual costs or usage.
--
-- /See:/ 'newBudgetedAndActualAmounts' smart constructor.
data BudgetedAndActualAmounts = BudgetedAndActualAmounts'
  { -- | The amount of cost or usage that you created the budget for.
    budgetedAmount :: Prelude.Maybe Spend,
    -- | The time period that\'s covered by this budget comparison.
    timePeriod :: Prelude.Maybe TimePeriod,
    -- | Your actual costs or usage for a budget period.
    actualAmount :: Prelude.Maybe Spend
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BudgetedAndActualAmounts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'budgetedAmount', 'budgetedAndActualAmounts_budgetedAmount' - The amount of cost or usage that you created the budget for.
--
-- 'timePeriod', 'budgetedAndActualAmounts_timePeriod' - The time period that\'s covered by this budget comparison.
--
-- 'actualAmount', 'budgetedAndActualAmounts_actualAmount' - Your actual costs or usage for a budget period.
newBudgetedAndActualAmounts ::
  BudgetedAndActualAmounts
newBudgetedAndActualAmounts =
  BudgetedAndActualAmounts'
    { budgetedAmount =
        Prelude.Nothing,
      timePeriod = Prelude.Nothing,
      actualAmount = Prelude.Nothing
    }

-- | The amount of cost or usage that you created the budget for.
budgetedAndActualAmounts_budgetedAmount :: Lens.Lens' BudgetedAndActualAmounts (Prelude.Maybe Spend)
budgetedAndActualAmounts_budgetedAmount = Lens.lens (\BudgetedAndActualAmounts' {budgetedAmount} -> budgetedAmount) (\s@BudgetedAndActualAmounts' {} a -> s {budgetedAmount = a} :: BudgetedAndActualAmounts)

-- | The time period that\'s covered by this budget comparison.
budgetedAndActualAmounts_timePeriod :: Lens.Lens' BudgetedAndActualAmounts (Prelude.Maybe TimePeriod)
budgetedAndActualAmounts_timePeriod = Lens.lens (\BudgetedAndActualAmounts' {timePeriod} -> timePeriod) (\s@BudgetedAndActualAmounts' {} a -> s {timePeriod = a} :: BudgetedAndActualAmounts)

-- | Your actual costs or usage for a budget period.
budgetedAndActualAmounts_actualAmount :: Lens.Lens' BudgetedAndActualAmounts (Prelude.Maybe Spend)
budgetedAndActualAmounts_actualAmount = Lens.lens (\BudgetedAndActualAmounts' {actualAmount} -> actualAmount) (\s@BudgetedAndActualAmounts' {} a -> s {actualAmount = a} :: BudgetedAndActualAmounts)

instance Core.FromJSON BudgetedAndActualAmounts where
  parseJSON =
    Core.withObject
      "BudgetedAndActualAmounts"
      ( \x ->
          BudgetedAndActualAmounts'
            Prelude.<$> (x Core..:? "BudgetedAmount")
            Prelude.<*> (x Core..:? "TimePeriod")
            Prelude.<*> (x Core..:? "ActualAmount")
      )

instance Prelude.Hashable BudgetedAndActualAmounts where
  hashWithSalt _salt BudgetedAndActualAmounts' {..} =
    _salt `Prelude.hashWithSalt` budgetedAmount
      `Prelude.hashWithSalt` timePeriod
      `Prelude.hashWithSalt` actualAmount

instance Prelude.NFData BudgetedAndActualAmounts where
  rnf BudgetedAndActualAmounts' {..} =
    Prelude.rnf budgetedAmount
      `Prelude.seq` Prelude.rnf timePeriod
      `Prelude.seq` Prelude.rnf actualAmount
