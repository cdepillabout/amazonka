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
-- Module      : Amazonka.SecurityHub.Types.RuleGroupSourceStatelessRuleMatchAttributesSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.RuleGroupSourceStatelessRuleMatchAttributesSources where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A source IP addresses and address range to inspect for.
--
-- /See:/ 'newRuleGroupSourceStatelessRuleMatchAttributesSources' smart constructor.
data RuleGroupSourceStatelessRuleMatchAttributesSources = RuleGroupSourceStatelessRuleMatchAttributesSources'
  { -- | An IP address or a block of IP addresses.
    addressDefinition :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleGroupSourceStatelessRuleMatchAttributesSources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addressDefinition', 'ruleGroupSourceStatelessRuleMatchAttributesSources_addressDefinition' - An IP address or a block of IP addresses.
newRuleGroupSourceStatelessRuleMatchAttributesSources ::
  RuleGroupSourceStatelessRuleMatchAttributesSources
newRuleGroupSourceStatelessRuleMatchAttributesSources =
  RuleGroupSourceStatelessRuleMatchAttributesSources'
    { addressDefinition =
        Prelude.Nothing
    }

-- | An IP address or a block of IP addresses.
ruleGroupSourceStatelessRuleMatchAttributesSources_addressDefinition :: Lens.Lens' RuleGroupSourceStatelessRuleMatchAttributesSources (Prelude.Maybe Prelude.Text)
ruleGroupSourceStatelessRuleMatchAttributesSources_addressDefinition = Lens.lens (\RuleGroupSourceStatelessRuleMatchAttributesSources' {addressDefinition} -> addressDefinition) (\s@RuleGroupSourceStatelessRuleMatchAttributesSources' {} a -> s {addressDefinition = a} :: RuleGroupSourceStatelessRuleMatchAttributesSources)

instance
  Core.FromJSON
    RuleGroupSourceStatelessRuleMatchAttributesSources
  where
  parseJSON =
    Core.withObject
      "RuleGroupSourceStatelessRuleMatchAttributesSources"
      ( \x ->
          RuleGroupSourceStatelessRuleMatchAttributesSources'
            Prelude.<$> (x Core..:? "AddressDefinition")
      )

instance
  Prelude.Hashable
    RuleGroupSourceStatelessRuleMatchAttributesSources
  where
  hashWithSalt
    _salt
    RuleGroupSourceStatelessRuleMatchAttributesSources' {..} =
      _salt `Prelude.hashWithSalt` addressDefinition

instance
  Prelude.NFData
    RuleGroupSourceStatelessRuleMatchAttributesSources
  where
  rnf
    RuleGroupSourceStatelessRuleMatchAttributesSources' {..} =
      Prelude.rnf addressDefinition

instance
  Core.ToJSON
    RuleGroupSourceStatelessRuleMatchAttributesSources
  where
  toJSON
    RuleGroupSourceStatelessRuleMatchAttributesSources' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("AddressDefinition" Core..=)
                Prelude.<$> addressDefinition
            ]
        )
