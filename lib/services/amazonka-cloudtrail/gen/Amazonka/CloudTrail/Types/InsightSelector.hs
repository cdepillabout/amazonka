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
-- Module      : Amazonka.CloudTrail.Types.InsightSelector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudTrail.Types.InsightSelector where

import Amazonka.CloudTrail.Types.InsightType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A JSON string that contains a list of insight types that are logged on a
-- trail.
--
-- /See:/ 'newInsightSelector' smart constructor.
data InsightSelector = InsightSelector'
  { -- | The type of insights to log on a trail. @ApiCallRateInsight@ and
    -- @ApiErrorRateInsight@ are valid insight types.
    insightType :: Prelude.Maybe InsightType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InsightSelector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'insightType', 'insightSelector_insightType' - The type of insights to log on a trail. @ApiCallRateInsight@ and
-- @ApiErrorRateInsight@ are valid insight types.
newInsightSelector ::
  InsightSelector
newInsightSelector =
  InsightSelector' {insightType = Prelude.Nothing}

-- | The type of insights to log on a trail. @ApiCallRateInsight@ and
-- @ApiErrorRateInsight@ are valid insight types.
insightSelector_insightType :: Lens.Lens' InsightSelector (Prelude.Maybe InsightType)
insightSelector_insightType = Lens.lens (\InsightSelector' {insightType} -> insightType) (\s@InsightSelector' {} a -> s {insightType = a} :: InsightSelector)

instance Core.FromJSON InsightSelector where
  parseJSON =
    Core.withObject
      "InsightSelector"
      ( \x ->
          InsightSelector'
            Prelude.<$> (x Core..:? "InsightType")
      )

instance Prelude.Hashable InsightSelector where
  hashWithSalt _salt InsightSelector' {..} =
    _salt `Prelude.hashWithSalt` insightType

instance Prelude.NFData InsightSelector where
  rnf InsightSelector' {..} = Prelude.rnf insightType

instance Core.ToJSON InsightSelector where
  toJSON InsightSelector' {..} =
    Core.object
      ( Prelude.catMaybes
          [("InsightType" Core..=) Prelude.<$> insightType]
      )
