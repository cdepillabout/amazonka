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
-- Module      : Amazonka.Budgets.Types.Budget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Budgets.Types.Budget where

import Amazonka.Budgets.Types.AutoAdjustData
import Amazonka.Budgets.Types.BudgetType
import Amazonka.Budgets.Types.CalculatedSpend
import Amazonka.Budgets.Types.CostTypes
import Amazonka.Budgets.Types.Spend
import Amazonka.Budgets.Types.TimePeriod
import Amazonka.Budgets.Types.TimeUnit
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the output of the @CreateBudget@ operation. The content
-- consists of the detailed metadata and data file information, and the
-- current status of the @budget@ object.
--
-- This is the Amazon Resource Name (ARN) pattern for a budget:
--
-- @arn:aws:budgets::AccountId:budget\/budgetName@
--
-- /See:/ 'newBudget' smart constructor.
data Budget = Budget'
  { -- | The parameters that determine the budget amount for an auto-adjusting
    -- budget.
    autoAdjustData :: Prelude.Maybe AutoAdjustData,
    -- | The total amount of cost, usage, RI utilization, RI coverage, Savings
    -- Plans utilization, or Savings Plans coverage that you want to track with
    -- your budget.
    --
    -- @BudgetLimit@ is required for cost or usage budgets, but optional for RI
    -- or Savings Plans utilization or coverage budgets. RI and Savings Plans
    -- utilization or coverage budgets default to @100@. This is the only valid
    -- value for RI or Savings Plans utilization or coverage budgets. You
    -- can\'t use @BudgetLimit@ with @PlannedBudgetLimits@ for @CreateBudget@
    -- and @UpdateBudget@ actions.
    budgetLimit :: Prelude.Maybe Spend,
    -- | A map containing multiple @BudgetLimit@, including current or future
    -- limits.
    --
    -- @PlannedBudgetLimits@ is available for cost or usage budget and supports
    -- both monthly and quarterly @TimeUnit@.
    --
    -- For monthly budgets, provide 12 months of @PlannedBudgetLimits@ values.
    -- This must start from the current month and include the next 11 months.
    -- The @key@ is the start of the month, @UTC@ in epoch seconds.
    --
    -- For quarterly budgets, provide four quarters of @PlannedBudgetLimits@
    -- value entries in standard calendar quarter increments. This must start
    -- from the current quarter and include the next three quarters. The @key@
    -- is the start of the quarter, @UTC@ in epoch seconds.
    --
    -- If the planned budget expires before 12 months for monthly or four
    -- quarters for quarterly, provide the @PlannedBudgetLimits@ values only
    -- for the remaining periods.
    --
    -- If the budget begins at a date in the future, provide
    -- @PlannedBudgetLimits@ values from the start date of the budget.
    --
    -- After all of the @BudgetLimit@ values in @PlannedBudgetLimits@ are used,
    -- the budget continues to use the last limit as the @BudgetLimit@. At that
    -- point, the planned budget provides the same experience as a fixed
    -- budget.
    --
    -- @DescribeBudget@ and @DescribeBudgets@ response along with
    -- @PlannedBudgetLimits@ also contain @BudgetLimit@ representing the
    -- current month or quarter limit present in @PlannedBudgetLimits@. This
    -- only applies to budgets that are created with @PlannedBudgetLimits@.
    -- Budgets that are created without @PlannedBudgetLimits@ only contain
    -- @BudgetLimit@. They don\'t contain @PlannedBudgetLimits@.
    plannedBudgetLimits :: Prelude.Maybe (Prelude.HashMap Prelude.Text Spend),
    -- | The cost filters, such as @Region@, @Service@, @member account@, @Tag@,
    -- or @Cost Category@, that are applied to a budget.
    --
    -- Amazon Web Services Budgets supports the following services as a
    -- @Service@ filter for RI budgets:
    --
    -- -   Amazon EC2
    --
    -- -   Amazon Redshift
    --
    -- -   Amazon Relational Database Service
    --
    -- -   Amazon ElastiCache
    --
    -- -   Amazon OpenSearch Service
    costFilters :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The last time that you updated this budget.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | The actual and forecasted cost or usage that the budget tracks.
    calculatedSpend :: Prelude.Maybe CalculatedSpend,
    -- | The period of time that\'s covered by a budget. You setthe start date
    -- and end date. The start date must come before the end date. The end date
    -- must come before @06\/15\/87 00:00 UTC@.
    --
    -- If you create your budget and don\'t specify a start date, Amazon Web
    -- Services defaults to the start of your chosen time period (DAILY,
    -- MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your
    -- budget on January 24, 2018, chose @DAILY@, and didn\'t set a start date,
    -- Amazon Web Services set your start date to @01\/24\/18 00:00 UTC@. If
    -- you chose @MONTHLY@, Amazon Web Services set your start date to
    -- @01\/01\/18 00:00 UTC@. If you didn\'t specify an end date, Amazon Web
    -- Services set your end date to @06\/15\/87 00:00 UTC@. The defaults are
    -- the same for the Billing and Cost Management console and the API.
    --
    -- You can change either date with the @UpdateBudget@ operation.
    --
    -- After the end date, Amazon Web Services deletes the budget and all the
    -- associated notifications and subscribers.
    timePeriod :: Prelude.Maybe TimePeriod,
    -- | The types of costs that are included in this @COST@ budget.
    --
    -- @USAGE@, @RI_UTILIZATION@, @RI_COVERAGE@, @SAVINGS_PLANS_UTILIZATION@,
    -- and @SAVINGS_PLANS_COVERAGE@ budgets do not have @CostTypes@.
    costTypes :: Prelude.Maybe CostTypes,
    -- | The name of a budget. The name must be unique within an account. The @:@
    -- and @\\@ characters aren\'t allowed in @BudgetName@.
    budgetName :: Prelude.Text,
    -- | The length of time until a budget resets the actual and forecasted
    -- spend.
    timeUnit :: TimeUnit,
    -- | Specifies whether this budget tracks costs, usage, RI utilization, RI
    -- coverage, Savings Plans utilization, or Savings Plans coverage.
    budgetType :: BudgetType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Budget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoAdjustData', 'budget_autoAdjustData' - The parameters that determine the budget amount for an auto-adjusting
-- budget.
--
-- 'budgetLimit', 'budget_budgetLimit' - The total amount of cost, usage, RI utilization, RI coverage, Savings
-- Plans utilization, or Savings Plans coverage that you want to track with
-- your budget.
--
-- @BudgetLimit@ is required for cost or usage budgets, but optional for RI
-- or Savings Plans utilization or coverage budgets. RI and Savings Plans
-- utilization or coverage budgets default to @100@. This is the only valid
-- value for RI or Savings Plans utilization or coverage budgets. You
-- can\'t use @BudgetLimit@ with @PlannedBudgetLimits@ for @CreateBudget@
-- and @UpdateBudget@ actions.
--
-- 'plannedBudgetLimits', 'budget_plannedBudgetLimits' - A map containing multiple @BudgetLimit@, including current or future
-- limits.
--
-- @PlannedBudgetLimits@ is available for cost or usage budget and supports
-- both monthly and quarterly @TimeUnit@.
--
-- For monthly budgets, provide 12 months of @PlannedBudgetLimits@ values.
-- This must start from the current month and include the next 11 months.
-- The @key@ is the start of the month, @UTC@ in epoch seconds.
--
-- For quarterly budgets, provide four quarters of @PlannedBudgetLimits@
-- value entries in standard calendar quarter increments. This must start
-- from the current quarter and include the next three quarters. The @key@
-- is the start of the quarter, @UTC@ in epoch seconds.
--
-- If the planned budget expires before 12 months for monthly or four
-- quarters for quarterly, provide the @PlannedBudgetLimits@ values only
-- for the remaining periods.
--
-- If the budget begins at a date in the future, provide
-- @PlannedBudgetLimits@ values from the start date of the budget.
--
-- After all of the @BudgetLimit@ values in @PlannedBudgetLimits@ are used,
-- the budget continues to use the last limit as the @BudgetLimit@. At that
-- point, the planned budget provides the same experience as a fixed
-- budget.
--
-- @DescribeBudget@ and @DescribeBudgets@ response along with
-- @PlannedBudgetLimits@ also contain @BudgetLimit@ representing the
-- current month or quarter limit present in @PlannedBudgetLimits@. This
-- only applies to budgets that are created with @PlannedBudgetLimits@.
-- Budgets that are created without @PlannedBudgetLimits@ only contain
-- @BudgetLimit@. They don\'t contain @PlannedBudgetLimits@.
--
-- 'costFilters', 'budget_costFilters' - The cost filters, such as @Region@, @Service@, @member account@, @Tag@,
-- or @Cost Category@, that are applied to a budget.
--
-- Amazon Web Services Budgets supports the following services as a
-- @Service@ filter for RI budgets:
--
-- -   Amazon EC2
--
-- -   Amazon Redshift
--
-- -   Amazon Relational Database Service
--
-- -   Amazon ElastiCache
--
-- -   Amazon OpenSearch Service
--
-- 'lastUpdatedTime', 'budget_lastUpdatedTime' - The last time that you updated this budget.
--
-- 'calculatedSpend', 'budget_calculatedSpend' - The actual and forecasted cost or usage that the budget tracks.
--
-- 'timePeriod', 'budget_timePeriod' - The period of time that\'s covered by a budget. You setthe start date
-- and end date. The start date must come before the end date. The end date
-- must come before @06\/15\/87 00:00 UTC@.
--
-- If you create your budget and don\'t specify a start date, Amazon Web
-- Services defaults to the start of your chosen time period (DAILY,
-- MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your
-- budget on January 24, 2018, chose @DAILY@, and didn\'t set a start date,
-- Amazon Web Services set your start date to @01\/24\/18 00:00 UTC@. If
-- you chose @MONTHLY@, Amazon Web Services set your start date to
-- @01\/01\/18 00:00 UTC@. If you didn\'t specify an end date, Amazon Web
-- Services set your end date to @06\/15\/87 00:00 UTC@. The defaults are
-- the same for the Billing and Cost Management console and the API.
--
-- You can change either date with the @UpdateBudget@ operation.
--
-- After the end date, Amazon Web Services deletes the budget and all the
-- associated notifications and subscribers.
--
-- 'costTypes', 'budget_costTypes' - The types of costs that are included in this @COST@ budget.
--
-- @USAGE@, @RI_UTILIZATION@, @RI_COVERAGE@, @SAVINGS_PLANS_UTILIZATION@,
-- and @SAVINGS_PLANS_COVERAGE@ budgets do not have @CostTypes@.
--
-- 'budgetName', 'budget_budgetName' - The name of a budget. The name must be unique within an account. The @:@
-- and @\\@ characters aren\'t allowed in @BudgetName@.
--
-- 'timeUnit', 'budget_timeUnit' - The length of time until a budget resets the actual and forecasted
-- spend.
--
-- 'budgetType', 'budget_budgetType' - Specifies whether this budget tracks costs, usage, RI utilization, RI
-- coverage, Savings Plans utilization, or Savings Plans coverage.
newBudget ::
  -- | 'budgetName'
  Prelude.Text ->
  -- | 'timeUnit'
  TimeUnit ->
  -- | 'budgetType'
  BudgetType ->
  Budget
newBudget pBudgetName_ pTimeUnit_ pBudgetType_ =
  Budget'
    { autoAdjustData = Prelude.Nothing,
      budgetLimit = Prelude.Nothing,
      plannedBudgetLimits = Prelude.Nothing,
      costFilters = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      calculatedSpend = Prelude.Nothing,
      timePeriod = Prelude.Nothing,
      costTypes = Prelude.Nothing,
      budgetName = pBudgetName_,
      timeUnit = pTimeUnit_,
      budgetType = pBudgetType_
    }

-- | The parameters that determine the budget amount for an auto-adjusting
-- budget.
budget_autoAdjustData :: Lens.Lens' Budget (Prelude.Maybe AutoAdjustData)
budget_autoAdjustData = Lens.lens (\Budget' {autoAdjustData} -> autoAdjustData) (\s@Budget' {} a -> s {autoAdjustData = a} :: Budget)

-- | The total amount of cost, usage, RI utilization, RI coverage, Savings
-- Plans utilization, or Savings Plans coverage that you want to track with
-- your budget.
--
-- @BudgetLimit@ is required for cost or usage budgets, but optional for RI
-- or Savings Plans utilization or coverage budgets. RI and Savings Plans
-- utilization or coverage budgets default to @100@. This is the only valid
-- value for RI or Savings Plans utilization or coverage budgets. You
-- can\'t use @BudgetLimit@ with @PlannedBudgetLimits@ for @CreateBudget@
-- and @UpdateBudget@ actions.
budget_budgetLimit :: Lens.Lens' Budget (Prelude.Maybe Spend)
budget_budgetLimit = Lens.lens (\Budget' {budgetLimit} -> budgetLimit) (\s@Budget' {} a -> s {budgetLimit = a} :: Budget)

-- | A map containing multiple @BudgetLimit@, including current or future
-- limits.
--
-- @PlannedBudgetLimits@ is available for cost or usage budget and supports
-- both monthly and quarterly @TimeUnit@.
--
-- For monthly budgets, provide 12 months of @PlannedBudgetLimits@ values.
-- This must start from the current month and include the next 11 months.
-- The @key@ is the start of the month, @UTC@ in epoch seconds.
--
-- For quarterly budgets, provide four quarters of @PlannedBudgetLimits@
-- value entries in standard calendar quarter increments. This must start
-- from the current quarter and include the next three quarters. The @key@
-- is the start of the quarter, @UTC@ in epoch seconds.
--
-- If the planned budget expires before 12 months for monthly or four
-- quarters for quarterly, provide the @PlannedBudgetLimits@ values only
-- for the remaining periods.
--
-- If the budget begins at a date in the future, provide
-- @PlannedBudgetLimits@ values from the start date of the budget.
--
-- After all of the @BudgetLimit@ values in @PlannedBudgetLimits@ are used,
-- the budget continues to use the last limit as the @BudgetLimit@. At that
-- point, the planned budget provides the same experience as a fixed
-- budget.
--
-- @DescribeBudget@ and @DescribeBudgets@ response along with
-- @PlannedBudgetLimits@ also contain @BudgetLimit@ representing the
-- current month or quarter limit present in @PlannedBudgetLimits@. This
-- only applies to budgets that are created with @PlannedBudgetLimits@.
-- Budgets that are created without @PlannedBudgetLimits@ only contain
-- @BudgetLimit@. They don\'t contain @PlannedBudgetLimits@.
budget_plannedBudgetLimits :: Lens.Lens' Budget (Prelude.Maybe (Prelude.HashMap Prelude.Text Spend))
budget_plannedBudgetLimits = Lens.lens (\Budget' {plannedBudgetLimits} -> plannedBudgetLimits) (\s@Budget' {} a -> s {plannedBudgetLimits = a} :: Budget) Prelude.. Lens.mapping Lens.coerced

-- | The cost filters, such as @Region@, @Service@, @member account@, @Tag@,
-- or @Cost Category@, that are applied to a budget.
--
-- Amazon Web Services Budgets supports the following services as a
-- @Service@ filter for RI budgets:
--
-- -   Amazon EC2
--
-- -   Amazon Redshift
--
-- -   Amazon Relational Database Service
--
-- -   Amazon ElastiCache
--
-- -   Amazon OpenSearch Service
budget_costFilters :: Lens.Lens' Budget (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
budget_costFilters = Lens.lens (\Budget' {costFilters} -> costFilters) (\s@Budget' {} a -> s {costFilters = a} :: Budget) Prelude.. Lens.mapping Lens.coerced

-- | The last time that you updated this budget.
budget_lastUpdatedTime :: Lens.Lens' Budget (Prelude.Maybe Prelude.UTCTime)
budget_lastUpdatedTime = Lens.lens (\Budget' {lastUpdatedTime} -> lastUpdatedTime) (\s@Budget' {} a -> s {lastUpdatedTime = a} :: Budget) Prelude.. Lens.mapping Core._Time

-- | The actual and forecasted cost or usage that the budget tracks.
budget_calculatedSpend :: Lens.Lens' Budget (Prelude.Maybe CalculatedSpend)
budget_calculatedSpend = Lens.lens (\Budget' {calculatedSpend} -> calculatedSpend) (\s@Budget' {} a -> s {calculatedSpend = a} :: Budget)

-- | The period of time that\'s covered by a budget. You setthe start date
-- and end date. The start date must come before the end date. The end date
-- must come before @06\/15\/87 00:00 UTC@.
--
-- If you create your budget and don\'t specify a start date, Amazon Web
-- Services defaults to the start of your chosen time period (DAILY,
-- MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your
-- budget on January 24, 2018, chose @DAILY@, and didn\'t set a start date,
-- Amazon Web Services set your start date to @01\/24\/18 00:00 UTC@. If
-- you chose @MONTHLY@, Amazon Web Services set your start date to
-- @01\/01\/18 00:00 UTC@. If you didn\'t specify an end date, Amazon Web
-- Services set your end date to @06\/15\/87 00:00 UTC@. The defaults are
-- the same for the Billing and Cost Management console and the API.
--
-- You can change either date with the @UpdateBudget@ operation.
--
-- After the end date, Amazon Web Services deletes the budget and all the
-- associated notifications and subscribers.
budget_timePeriod :: Lens.Lens' Budget (Prelude.Maybe TimePeriod)
budget_timePeriod = Lens.lens (\Budget' {timePeriod} -> timePeriod) (\s@Budget' {} a -> s {timePeriod = a} :: Budget)

-- | The types of costs that are included in this @COST@ budget.
--
-- @USAGE@, @RI_UTILIZATION@, @RI_COVERAGE@, @SAVINGS_PLANS_UTILIZATION@,
-- and @SAVINGS_PLANS_COVERAGE@ budgets do not have @CostTypes@.
budget_costTypes :: Lens.Lens' Budget (Prelude.Maybe CostTypes)
budget_costTypes = Lens.lens (\Budget' {costTypes} -> costTypes) (\s@Budget' {} a -> s {costTypes = a} :: Budget)

-- | The name of a budget. The name must be unique within an account. The @:@
-- and @\\@ characters aren\'t allowed in @BudgetName@.
budget_budgetName :: Lens.Lens' Budget Prelude.Text
budget_budgetName = Lens.lens (\Budget' {budgetName} -> budgetName) (\s@Budget' {} a -> s {budgetName = a} :: Budget)

-- | The length of time until a budget resets the actual and forecasted
-- spend.
budget_timeUnit :: Lens.Lens' Budget TimeUnit
budget_timeUnit = Lens.lens (\Budget' {timeUnit} -> timeUnit) (\s@Budget' {} a -> s {timeUnit = a} :: Budget)

-- | Specifies whether this budget tracks costs, usage, RI utilization, RI
-- coverage, Savings Plans utilization, or Savings Plans coverage.
budget_budgetType :: Lens.Lens' Budget BudgetType
budget_budgetType = Lens.lens (\Budget' {budgetType} -> budgetType) (\s@Budget' {} a -> s {budgetType = a} :: Budget)

instance Core.FromJSON Budget where
  parseJSON =
    Core.withObject
      "Budget"
      ( \x ->
          Budget'
            Prelude.<$> (x Core..:? "AutoAdjustData")
            Prelude.<*> (x Core..:? "BudgetLimit")
            Prelude.<*> ( x Core..:? "PlannedBudgetLimits"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "CostFilters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "LastUpdatedTime")
            Prelude.<*> (x Core..:? "CalculatedSpend")
            Prelude.<*> (x Core..:? "TimePeriod")
            Prelude.<*> (x Core..:? "CostTypes")
            Prelude.<*> (x Core..: "BudgetName")
            Prelude.<*> (x Core..: "TimeUnit")
            Prelude.<*> (x Core..: "BudgetType")
      )

instance Prelude.Hashable Budget where
  hashWithSalt _salt Budget' {..} =
    _salt `Prelude.hashWithSalt` autoAdjustData
      `Prelude.hashWithSalt` budgetLimit
      `Prelude.hashWithSalt` plannedBudgetLimits
      `Prelude.hashWithSalt` costFilters
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` calculatedSpend
      `Prelude.hashWithSalt` timePeriod
      `Prelude.hashWithSalt` costTypes
      `Prelude.hashWithSalt` budgetName
      `Prelude.hashWithSalt` timeUnit
      `Prelude.hashWithSalt` budgetType

instance Prelude.NFData Budget where
  rnf Budget' {..} =
    Prelude.rnf autoAdjustData
      `Prelude.seq` Prelude.rnf budgetLimit
      `Prelude.seq` Prelude.rnf plannedBudgetLimits
      `Prelude.seq` Prelude.rnf costFilters
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf calculatedSpend
      `Prelude.seq` Prelude.rnf timePeriod
      `Prelude.seq` Prelude.rnf costTypes
      `Prelude.seq` Prelude.rnf budgetName
      `Prelude.seq` Prelude.rnf timeUnit
      `Prelude.seq` Prelude.rnf budgetType

instance Core.ToJSON Budget where
  toJSON Budget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AutoAdjustData" Core..=)
              Prelude.<$> autoAdjustData,
            ("BudgetLimit" Core..=) Prelude.<$> budgetLimit,
            ("PlannedBudgetLimits" Core..=)
              Prelude.<$> plannedBudgetLimits,
            ("CostFilters" Core..=) Prelude.<$> costFilters,
            ("LastUpdatedTime" Core..=)
              Prelude.<$> lastUpdatedTime,
            ("CalculatedSpend" Core..=)
              Prelude.<$> calculatedSpend,
            ("TimePeriod" Core..=) Prelude.<$> timePeriod,
            ("CostTypes" Core..=) Prelude.<$> costTypes,
            Prelude.Just ("BudgetName" Core..= budgetName),
            Prelude.Just ("TimeUnit" Core..= timeUnit),
            Prelude.Just ("BudgetType" Core..= budgetType)
          ]
      )
