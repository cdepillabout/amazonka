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
-- Module      : Amazonka.SSM.Types.OpsAggregator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.OpsAggregator where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.OpsFilter

-- | One or more aggregators for viewing counts of OpsData using different
-- dimensions such as @Source@, @CreatedTime@, or @Source and CreatedTime@,
-- to name a few.
--
-- /See:/ 'newOpsAggregator' smart constructor.
data OpsAggregator = OpsAggregator'
  { -- | Either a @Range@ or @Count@ aggregator for limiting an OpsData summary.
    aggregatorType :: Prelude.Maybe Prelude.Text,
    -- | The aggregator filters.
    filters :: Prelude.Maybe (Prelude.NonEmpty OpsFilter),
    -- | The data type name to use for viewing counts of OpsData.
    typeName :: Prelude.Maybe Prelude.Text,
    -- | A nested aggregator for viewing counts of OpsData.
    aggregators :: Prelude.Maybe (Prelude.NonEmpty OpsAggregator),
    -- | The aggregator value.
    values :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of an OpsData attribute on which to limit the count of OpsData.
    attributeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OpsAggregator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aggregatorType', 'opsAggregator_aggregatorType' - Either a @Range@ or @Count@ aggregator for limiting an OpsData summary.
--
-- 'filters', 'opsAggregator_filters' - The aggregator filters.
--
-- 'typeName', 'opsAggregator_typeName' - The data type name to use for viewing counts of OpsData.
--
-- 'aggregators', 'opsAggregator_aggregators' - A nested aggregator for viewing counts of OpsData.
--
-- 'values', 'opsAggregator_values' - The aggregator value.
--
-- 'attributeName', 'opsAggregator_attributeName' - The name of an OpsData attribute on which to limit the count of OpsData.
newOpsAggregator ::
  OpsAggregator
newOpsAggregator =
  OpsAggregator'
    { aggregatorType = Prelude.Nothing,
      filters = Prelude.Nothing,
      typeName = Prelude.Nothing,
      aggregators = Prelude.Nothing,
      values = Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | Either a @Range@ or @Count@ aggregator for limiting an OpsData summary.
opsAggregator_aggregatorType :: Lens.Lens' OpsAggregator (Prelude.Maybe Prelude.Text)
opsAggregator_aggregatorType = Lens.lens (\OpsAggregator' {aggregatorType} -> aggregatorType) (\s@OpsAggregator' {} a -> s {aggregatorType = a} :: OpsAggregator)

-- | The aggregator filters.
opsAggregator_filters :: Lens.Lens' OpsAggregator (Prelude.Maybe (Prelude.NonEmpty OpsFilter))
opsAggregator_filters = Lens.lens (\OpsAggregator' {filters} -> filters) (\s@OpsAggregator' {} a -> s {filters = a} :: OpsAggregator) Prelude.. Lens.mapping Lens.coerced

-- | The data type name to use for viewing counts of OpsData.
opsAggregator_typeName :: Lens.Lens' OpsAggregator (Prelude.Maybe Prelude.Text)
opsAggregator_typeName = Lens.lens (\OpsAggregator' {typeName} -> typeName) (\s@OpsAggregator' {} a -> s {typeName = a} :: OpsAggregator)

-- | A nested aggregator for viewing counts of OpsData.
opsAggregator_aggregators :: Lens.Lens' OpsAggregator (Prelude.Maybe (Prelude.NonEmpty OpsAggregator))
opsAggregator_aggregators = Lens.lens (\OpsAggregator' {aggregators} -> aggregators) (\s@OpsAggregator' {} a -> s {aggregators = a} :: OpsAggregator) Prelude.. Lens.mapping Lens.coerced

-- | The aggregator value.
opsAggregator_values :: Lens.Lens' OpsAggregator (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
opsAggregator_values = Lens.lens (\OpsAggregator' {values} -> values) (\s@OpsAggregator' {} a -> s {values = a} :: OpsAggregator) Prelude.. Lens.mapping Lens.coerced

-- | The name of an OpsData attribute on which to limit the count of OpsData.
opsAggregator_attributeName :: Lens.Lens' OpsAggregator (Prelude.Maybe Prelude.Text)
opsAggregator_attributeName = Lens.lens (\OpsAggregator' {attributeName} -> attributeName) (\s@OpsAggregator' {} a -> s {attributeName = a} :: OpsAggregator)

instance Prelude.Hashable OpsAggregator where
  hashWithSalt _salt OpsAggregator' {..} =
    _salt `Prelude.hashWithSalt` aggregatorType
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` typeName
      `Prelude.hashWithSalt` aggregators
      `Prelude.hashWithSalt` values
      `Prelude.hashWithSalt` attributeName

instance Prelude.NFData OpsAggregator where
  rnf OpsAggregator' {..} =
    Prelude.rnf aggregatorType
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf typeName
      `Prelude.seq` Prelude.rnf aggregators
      `Prelude.seq` Prelude.rnf values
      `Prelude.seq` Prelude.rnf attributeName

instance Core.ToJSON OpsAggregator where
  toJSON OpsAggregator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AggregatorType" Core..=)
              Prelude.<$> aggregatorType,
            ("Filters" Core..=) Prelude.<$> filters,
            ("TypeName" Core..=) Prelude.<$> typeName,
            ("Aggregators" Core..=) Prelude.<$> aggregators,
            ("Values" Core..=) Prelude.<$> values,
            ("AttributeName" Core..=) Prelude.<$> attributeName
          ]
      )
