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
-- Module      : Amazonka.Forecast.Types.PredictorExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.PredictorExecution where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.TestWindowSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The algorithm used to perform a backtest and the status of those tests.
--
-- /See:/ 'newPredictorExecution' smart constructor.
data PredictorExecution = PredictorExecution'
  { -- | An array of test windows used to evaluate the algorithm. The
    -- @NumberOfBacktestWindows@ from the object determines the number of
    -- windows in the array.
    testWindows :: Prelude.Maybe [TestWindowSummary],
    -- | The ARN of the algorithm used to test the predictor.
    algorithmArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PredictorExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'testWindows', 'predictorExecution_testWindows' - An array of test windows used to evaluate the algorithm. The
-- @NumberOfBacktestWindows@ from the object determines the number of
-- windows in the array.
--
-- 'algorithmArn', 'predictorExecution_algorithmArn' - The ARN of the algorithm used to test the predictor.
newPredictorExecution ::
  PredictorExecution
newPredictorExecution =
  PredictorExecution'
    { testWindows = Prelude.Nothing,
      algorithmArn = Prelude.Nothing
    }

-- | An array of test windows used to evaluate the algorithm. The
-- @NumberOfBacktestWindows@ from the object determines the number of
-- windows in the array.
predictorExecution_testWindows :: Lens.Lens' PredictorExecution (Prelude.Maybe [TestWindowSummary])
predictorExecution_testWindows = Lens.lens (\PredictorExecution' {testWindows} -> testWindows) (\s@PredictorExecution' {} a -> s {testWindows = a} :: PredictorExecution) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the algorithm used to test the predictor.
predictorExecution_algorithmArn :: Lens.Lens' PredictorExecution (Prelude.Maybe Prelude.Text)
predictorExecution_algorithmArn = Lens.lens (\PredictorExecution' {algorithmArn} -> algorithmArn) (\s@PredictorExecution' {} a -> s {algorithmArn = a} :: PredictorExecution)

instance Core.FromJSON PredictorExecution where
  parseJSON =
    Core.withObject
      "PredictorExecution"
      ( \x ->
          PredictorExecution'
            Prelude.<$> (x Core..:? "TestWindows" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "AlgorithmArn")
      )

instance Prelude.Hashable PredictorExecution where
  hashWithSalt _salt PredictorExecution' {..} =
    _salt `Prelude.hashWithSalt` testWindows
      `Prelude.hashWithSalt` algorithmArn

instance Prelude.NFData PredictorExecution where
  rnf PredictorExecution' {..} =
    Prelude.rnf testWindows
      `Prelude.seq` Prelude.rnf algorithmArn
