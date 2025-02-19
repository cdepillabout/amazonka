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
-- Module      : Amazonka.Config.Types.AggregateComplianceByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.AggregateComplianceByConfigRule where

import Amazonka.Config.Types.Compliance
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Indicates whether an Config rule is compliant based on account ID,
-- region, compliance, and rule name.
--
-- A rule is compliant if all of the resources that the rule evaluated
-- comply with it. It is noncompliant if any of these resources do not
-- comply.
--
-- /See:/ 'newAggregateComplianceByConfigRule' smart constructor.
data AggregateComplianceByConfigRule = AggregateComplianceByConfigRule'
  { -- | The name of the Config rule.
    configRuleName :: Prelude.Maybe Prelude.Text,
    -- | The 12-digit account ID of the source account.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The source region from where the data is aggregated.
    awsRegion :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether an Amazon Web Services resource or Config rule is
    -- compliant and provides the number of contributors that affect the
    -- compliance.
    compliance :: Prelude.Maybe Compliance
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregateComplianceByConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configRuleName', 'aggregateComplianceByConfigRule_configRuleName' - The name of the Config rule.
--
-- 'accountId', 'aggregateComplianceByConfigRule_accountId' - The 12-digit account ID of the source account.
--
-- 'awsRegion', 'aggregateComplianceByConfigRule_awsRegion' - The source region from where the data is aggregated.
--
-- 'compliance', 'aggregateComplianceByConfigRule_compliance' - Indicates whether an Amazon Web Services resource or Config rule is
-- compliant and provides the number of contributors that affect the
-- compliance.
newAggregateComplianceByConfigRule ::
  AggregateComplianceByConfigRule
newAggregateComplianceByConfigRule =
  AggregateComplianceByConfigRule'
    { configRuleName =
        Prelude.Nothing,
      accountId = Prelude.Nothing,
      awsRegion = Prelude.Nothing,
      compliance = Prelude.Nothing
    }

-- | The name of the Config rule.
aggregateComplianceByConfigRule_configRuleName :: Lens.Lens' AggregateComplianceByConfigRule (Prelude.Maybe Prelude.Text)
aggregateComplianceByConfigRule_configRuleName = Lens.lens (\AggregateComplianceByConfigRule' {configRuleName} -> configRuleName) (\s@AggregateComplianceByConfigRule' {} a -> s {configRuleName = a} :: AggregateComplianceByConfigRule)

-- | The 12-digit account ID of the source account.
aggregateComplianceByConfigRule_accountId :: Lens.Lens' AggregateComplianceByConfigRule (Prelude.Maybe Prelude.Text)
aggregateComplianceByConfigRule_accountId = Lens.lens (\AggregateComplianceByConfigRule' {accountId} -> accountId) (\s@AggregateComplianceByConfigRule' {} a -> s {accountId = a} :: AggregateComplianceByConfigRule)

-- | The source region from where the data is aggregated.
aggregateComplianceByConfigRule_awsRegion :: Lens.Lens' AggregateComplianceByConfigRule (Prelude.Maybe Prelude.Text)
aggregateComplianceByConfigRule_awsRegion = Lens.lens (\AggregateComplianceByConfigRule' {awsRegion} -> awsRegion) (\s@AggregateComplianceByConfigRule' {} a -> s {awsRegion = a} :: AggregateComplianceByConfigRule)

-- | Indicates whether an Amazon Web Services resource or Config rule is
-- compliant and provides the number of contributors that affect the
-- compliance.
aggregateComplianceByConfigRule_compliance :: Lens.Lens' AggregateComplianceByConfigRule (Prelude.Maybe Compliance)
aggregateComplianceByConfigRule_compliance = Lens.lens (\AggregateComplianceByConfigRule' {compliance} -> compliance) (\s@AggregateComplianceByConfigRule' {} a -> s {compliance = a} :: AggregateComplianceByConfigRule)

instance
  Core.FromJSON
    AggregateComplianceByConfigRule
  where
  parseJSON =
    Core.withObject
      "AggregateComplianceByConfigRule"
      ( \x ->
          AggregateComplianceByConfigRule'
            Prelude.<$> (x Core..:? "ConfigRuleName")
            Prelude.<*> (x Core..:? "AccountId")
            Prelude.<*> (x Core..:? "AwsRegion")
            Prelude.<*> (x Core..:? "Compliance")
      )

instance
  Prelude.Hashable
    AggregateComplianceByConfigRule
  where
  hashWithSalt
    _salt
    AggregateComplianceByConfigRule' {..} =
      _salt `Prelude.hashWithSalt` configRuleName
        `Prelude.hashWithSalt` accountId
        `Prelude.hashWithSalt` awsRegion
        `Prelude.hashWithSalt` compliance

instance
  Prelude.NFData
    AggregateComplianceByConfigRule
  where
  rnf AggregateComplianceByConfigRule' {..} =
    Prelude.rnf configRuleName
      `Prelude.seq` Prelude.rnf accountId
      `Prelude.seq` Prelude.rnf awsRegion
      `Prelude.seq` Prelude.rnf compliance
