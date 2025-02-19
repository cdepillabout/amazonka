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
-- Module      : Amazonka.Forecast.Types.EvaluationResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.EvaluationResult where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.WindowSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The results of evaluating an algorithm. Returned as part of the
-- GetAccuracyMetrics response.
--
-- /See:/ 'newEvaluationResult' smart constructor.
data EvaluationResult = EvaluationResult'
  { -- | The array of test windows used for evaluating the algorithm. The
    -- @NumberOfBacktestWindows@ from the EvaluationParameters object
    -- determines the number of windows in the array.
    testWindows :: Prelude.Maybe [WindowSummary],
    -- | The Amazon Resource Name (ARN) of the algorithm that was evaluated.
    algorithmArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EvaluationResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'testWindows', 'evaluationResult_testWindows' - The array of test windows used for evaluating the algorithm. The
-- @NumberOfBacktestWindows@ from the EvaluationParameters object
-- determines the number of windows in the array.
--
-- 'algorithmArn', 'evaluationResult_algorithmArn' - The Amazon Resource Name (ARN) of the algorithm that was evaluated.
newEvaluationResult ::
  EvaluationResult
newEvaluationResult =
  EvaluationResult'
    { testWindows = Prelude.Nothing,
      algorithmArn = Prelude.Nothing
    }

-- | The array of test windows used for evaluating the algorithm. The
-- @NumberOfBacktestWindows@ from the EvaluationParameters object
-- determines the number of windows in the array.
evaluationResult_testWindows :: Lens.Lens' EvaluationResult (Prelude.Maybe [WindowSummary])
evaluationResult_testWindows = Lens.lens (\EvaluationResult' {testWindows} -> testWindows) (\s@EvaluationResult' {} a -> s {testWindows = a} :: EvaluationResult) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the algorithm that was evaluated.
evaluationResult_algorithmArn :: Lens.Lens' EvaluationResult (Prelude.Maybe Prelude.Text)
evaluationResult_algorithmArn = Lens.lens (\EvaluationResult' {algorithmArn} -> algorithmArn) (\s@EvaluationResult' {} a -> s {algorithmArn = a} :: EvaluationResult)

instance Core.FromJSON EvaluationResult where
  parseJSON =
    Core.withObject
      "EvaluationResult"
      ( \x ->
          EvaluationResult'
            Prelude.<$> (x Core..:? "TestWindows" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "AlgorithmArn")
      )

instance Prelude.Hashable EvaluationResult where
  hashWithSalt _salt EvaluationResult' {..} =
    _salt `Prelude.hashWithSalt` testWindows
      `Prelude.hashWithSalt` algorithmArn

instance Prelude.NFData EvaluationResult where
  rnf EvaluationResult' {..} =
    Prelude.rnf testWindows
      `Prelude.seq` Prelude.rnf algorithmArn
