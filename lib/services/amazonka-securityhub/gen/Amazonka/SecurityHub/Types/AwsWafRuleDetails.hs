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
-- Module      : Amazonka.SecurityHub.Types.AwsWafRuleDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsWafRuleDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsWafRulePredicateListDetails

-- | Provides information about a WAF rule. This rule specifies the web
-- requests that you want to allow, block, or count.
--
-- /See:/ 'newAwsWafRuleDetails' smart constructor.
data AwsWafRuleDetails = AwsWafRuleDetails'
  { -- | A descriptive name for the rule.
    name :: Prelude.Maybe Prelude.Text,
    -- | Specifies the @ByteMatchSet@, @IPSet@, @SqlInjectionMatchSet@,
    -- @XssMatchSet@, @RegexMatchSet@, @GeoMatchSet@, and @SizeConstraintSet@
    -- objects that you want to add to a rule and, for each object, indicates
    -- whether you want to negate the settings.
    predicateList :: Prelude.Maybe [AwsWafRulePredicateListDetails],
    -- | The ID of the WAF rule.
    ruleId :: Prelude.Maybe Prelude.Text,
    -- | The name of the metrics for this rule.
    metricName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsWafRuleDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'awsWafRuleDetails_name' - A descriptive name for the rule.
--
-- 'predicateList', 'awsWafRuleDetails_predicateList' - Specifies the @ByteMatchSet@, @IPSet@, @SqlInjectionMatchSet@,
-- @XssMatchSet@, @RegexMatchSet@, @GeoMatchSet@, and @SizeConstraintSet@
-- objects that you want to add to a rule and, for each object, indicates
-- whether you want to negate the settings.
--
-- 'ruleId', 'awsWafRuleDetails_ruleId' - The ID of the WAF rule.
--
-- 'metricName', 'awsWafRuleDetails_metricName' - The name of the metrics for this rule.
newAwsWafRuleDetails ::
  AwsWafRuleDetails
newAwsWafRuleDetails =
  AwsWafRuleDetails'
    { name = Prelude.Nothing,
      predicateList = Prelude.Nothing,
      ruleId = Prelude.Nothing,
      metricName = Prelude.Nothing
    }

-- | A descriptive name for the rule.
awsWafRuleDetails_name :: Lens.Lens' AwsWafRuleDetails (Prelude.Maybe Prelude.Text)
awsWafRuleDetails_name = Lens.lens (\AwsWafRuleDetails' {name} -> name) (\s@AwsWafRuleDetails' {} a -> s {name = a} :: AwsWafRuleDetails)

-- | Specifies the @ByteMatchSet@, @IPSet@, @SqlInjectionMatchSet@,
-- @XssMatchSet@, @RegexMatchSet@, @GeoMatchSet@, and @SizeConstraintSet@
-- objects that you want to add to a rule and, for each object, indicates
-- whether you want to negate the settings.
awsWafRuleDetails_predicateList :: Lens.Lens' AwsWafRuleDetails (Prelude.Maybe [AwsWafRulePredicateListDetails])
awsWafRuleDetails_predicateList = Lens.lens (\AwsWafRuleDetails' {predicateList} -> predicateList) (\s@AwsWafRuleDetails' {} a -> s {predicateList = a} :: AwsWafRuleDetails) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the WAF rule.
awsWafRuleDetails_ruleId :: Lens.Lens' AwsWafRuleDetails (Prelude.Maybe Prelude.Text)
awsWafRuleDetails_ruleId = Lens.lens (\AwsWafRuleDetails' {ruleId} -> ruleId) (\s@AwsWafRuleDetails' {} a -> s {ruleId = a} :: AwsWafRuleDetails)

-- | The name of the metrics for this rule.
awsWafRuleDetails_metricName :: Lens.Lens' AwsWafRuleDetails (Prelude.Maybe Prelude.Text)
awsWafRuleDetails_metricName = Lens.lens (\AwsWafRuleDetails' {metricName} -> metricName) (\s@AwsWafRuleDetails' {} a -> s {metricName = a} :: AwsWafRuleDetails)

instance Core.FromJSON AwsWafRuleDetails where
  parseJSON =
    Core.withObject
      "AwsWafRuleDetails"
      ( \x ->
          AwsWafRuleDetails'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "PredicateList" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "RuleId")
            Prelude.<*> (x Core..:? "MetricName")
      )

instance Prelude.Hashable AwsWafRuleDetails where
  hashWithSalt _salt AwsWafRuleDetails' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` predicateList
      `Prelude.hashWithSalt` ruleId
      `Prelude.hashWithSalt` metricName

instance Prelude.NFData AwsWafRuleDetails where
  rnf AwsWafRuleDetails' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf predicateList
      `Prelude.seq` Prelude.rnf ruleId
      `Prelude.seq` Prelude.rnf metricName

instance Core.ToJSON AwsWafRuleDetails where
  toJSON AwsWafRuleDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("PredicateList" Core..=) Prelude.<$> predicateList,
            ("RuleId" Core..=) Prelude.<$> ruleId,
            ("MetricName" Core..=) Prelude.<$> metricName
          ]
      )
