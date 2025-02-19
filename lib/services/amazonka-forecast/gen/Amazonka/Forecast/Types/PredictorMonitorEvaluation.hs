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
-- Module      : Amazonka.Forecast.Types.PredictorMonitorEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.PredictorMonitorEvaluation where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.MetricResult
import Amazonka.Forecast.Types.MonitorDataSource
import Amazonka.Forecast.Types.PredictorEvent
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the results of a monitor evaluation.
--
-- /See:/ 'newPredictorMonitorEvaluation' smart constructor.
data PredictorMonitorEvaluation = PredictorMonitorEvaluation'
  { -- | The timestamp that indicates when the monitor evaluation was started.
    evaluationTime :: Prelude.Maybe Core.POSIX,
    -- | Information about any errors that may have occurred during the monitor
    -- evaluation.
    message :: Prelude.Maybe Prelude.Text,
    -- | The status of the monitor evaluation. The state can be @SUCCESS@ or
    -- @FAILURE@.
    evaluationState :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the monitor resource.
    monitorArn :: Prelude.Maybe Prelude.Text,
    -- | The number of items considered during the evaluation.
    numItemsEvaluated :: Prelude.Maybe Prelude.Integer,
    -- | The timestamp that indicates the end of the window that is used for
    -- monitor evaluation.
    windowEndDatetime :: Prelude.Maybe Core.POSIX,
    -- | The source of the data the monitor resource used during the evaluation.
    monitorDataSource :: Prelude.Maybe MonitorDataSource,
    -- | The timestamp that indicates the start of the window that is used for
    -- monitor evaluation.
    windowStartDatetime :: Prelude.Maybe Core.POSIX,
    -- | Provides details about a predictor event, such as a retraining.
    predictorEvent :: Prelude.Maybe PredictorEvent,
    -- | A list of metrics Forecast calculated when monitoring a predictor. You
    -- can compare the value for each metric in the list to the metric\'s value
    -- in the Baseline to see how your predictor\'s performance is changing.
    metricResults :: Prelude.Maybe [MetricResult],
    -- | The Amazon Resource Name (ARN) of the resource to monitor.
    resourceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PredictorMonitorEvaluation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationTime', 'predictorMonitorEvaluation_evaluationTime' - The timestamp that indicates when the monitor evaluation was started.
--
-- 'message', 'predictorMonitorEvaluation_message' - Information about any errors that may have occurred during the monitor
-- evaluation.
--
-- 'evaluationState', 'predictorMonitorEvaluation_evaluationState' - The status of the monitor evaluation. The state can be @SUCCESS@ or
-- @FAILURE@.
--
-- 'monitorArn', 'predictorMonitorEvaluation_monitorArn' - The Amazon Resource Name (ARN) of the monitor resource.
--
-- 'numItemsEvaluated', 'predictorMonitorEvaluation_numItemsEvaluated' - The number of items considered during the evaluation.
--
-- 'windowEndDatetime', 'predictorMonitorEvaluation_windowEndDatetime' - The timestamp that indicates the end of the window that is used for
-- monitor evaluation.
--
-- 'monitorDataSource', 'predictorMonitorEvaluation_monitorDataSource' - The source of the data the monitor resource used during the evaluation.
--
-- 'windowStartDatetime', 'predictorMonitorEvaluation_windowStartDatetime' - The timestamp that indicates the start of the window that is used for
-- monitor evaluation.
--
-- 'predictorEvent', 'predictorMonitorEvaluation_predictorEvent' - Provides details about a predictor event, such as a retraining.
--
-- 'metricResults', 'predictorMonitorEvaluation_metricResults' - A list of metrics Forecast calculated when monitoring a predictor. You
-- can compare the value for each metric in the list to the metric\'s value
-- in the Baseline to see how your predictor\'s performance is changing.
--
-- 'resourceArn', 'predictorMonitorEvaluation_resourceArn' - The Amazon Resource Name (ARN) of the resource to monitor.
newPredictorMonitorEvaluation ::
  PredictorMonitorEvaluation
newPredictorMonitorEvaluation =
  PredictorMonitorEvaluation'
    { evaluationTime =
        Prelude.Nothing,
      message = Prelude.Nothing,
      evaluationState = Prelude.Nothing,
      monitorArn = Prelude.Nothing,
      numItemsEvaluated = Prelude.Nothing,
      windowEndDatetime = Prelude.Nothing,
      monitorDataSource = Prelude.Nothing,
      windowStartDatetime = Prelude.Nothing,
      predictorEvent = Prelude.Nothing,
      metricResults = Prelude.Nothing,
      resourceArn = Prelude.Nothing
    }

-- | The timestamp that indicates when the monitor evaluation was started.
predictorMonitorEvaluation_evaluationTime :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.UTCTime)
predictorMonitorEvaluation_evaluationTime = Lens.lens (\PredictorMonitorEvaluation' {evaluationTime} -> evaluationTime) (\s@PredictorMonitorEvaluation' {} a -> s {evaluationTime = a} :: PredictorMonitorEvaluation) Prelude.. Lens.mapping Core._Time

-- | Information about any errors that may have occurred during the monitor
-- evaluation.
predictorMonitorEvaluation_message :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.Text)
predictorMonitorEvaluation_message = Lens.lens (\PredictorMonitorEvaluation' {message} -> message) (\s@PredictorMonitorEvaluation' {} a -> s {message = a} :: PredictorMonitorEvaluation)

-- | The status of the monitor evaluation. The state can be @SUCCESS@ or
-- @FAILURE@.
predictorMonitorEvaluation_evaluationState :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.Text)
predictorMonitorEvaluation_evaluationState = Lens.lens (\PredictorMonitorEvaluation' {evaluationState} -> evaluationState) (\s@PredictorMonitorEvaluation' {} a -> s {evaluationState = a} :: PredictorMonitorEvaluation)

-- | The Amazon Resource Name (ARN) of the monitor resource.
predictorMonitorEvaluation_monitorArn :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.Text)
predictorMonitorEvaluation_monitorArn = Lens.lens (\PredictorMonitorEvaluation' {monitorArn} -> monitorArn) (\s@PredictorMonitorEvaluation' {} a -> s {monitorArn = a} :: PredictorMonitorEvaluation)

-- | The number of items considered during the evaluation.
predictorMonitorEvaluation_numItemsEvaluated :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.Integer)
predictorMonitorEvaluation_numItemsEvaluated = Lens.lens (\PredictorMonitorEvaluation' {numItemsEvaluated} -> numItemsEvaluated) (\s@PredictorMonitorEvaluation' {} a -> s {numItemsEvaluated = a} :: PredictorMonitorEvaluation)

-- | The timestamp that indicates the end of the window that is used for
-- monitor evaluation.
predictorMonitorEvaluation_windowEndDatetime :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.UTCTime)
predictorMonitorEvaluation_windowEndDatetime = Lens.lens (\PredictorMonitorEvaluation' {windowEndDatetime} -> windowEndDatetime) (\s@PredictorMonitorEvaluation' {} a -> s {windowEndDatetime = a} :: PredictorMonitorEvaluation) Prelude.. Lens.mapping Core._Time

-- | The source of the data the monitor resource used during the evaluation.
predictorMonitorEvaluation_monitorDataSource :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe MonitorDataSource)
predictorMonitorEvaluation_monitorDataSource = Lens.lens (\PredictorMonitorEvaluation' {monitorDataSource} -> monitorDataSource) (\s@PredictorMonitorEvaluation' {} a -> s {monitorDataSource = a} :: PredictorMonitorEvaluation)

-- | The timestamp that indicates the start of the window that is used for
-- monitor evaluation.
predictorMonitorEvaluation_windowStartDatetime :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.UTCTime)
predictorMonitorEvaluation_windowStartDatetime = Lens.lens (\PredictorMonitorEvaluation' {windowStartDatetime} -> windowStartDatetime) (\s@PredictorMonitorEvaluation' {} a -> s {windowStartDatetime = a} :: PredictorMonitorEvaluation) Prelude.. Lens.mapping Core._Time

-- | Provides details about a predictor event, such as a retraining.
predictorMonitorEvaluation_predictorEvent :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe PredictorEvent)
predictorMonitorEvaluation_predictorEvent = Lens.lens (\PredictorMonitorEvaluation' {predictorEvent} -> predictorEvent) (\s@PredictorMonitorEvaluation' {} a -> s {predictorEvent = a} :: PredictorMonitorEvaluation)

-- | A list of metrics Forecast calculated when monitoring a predictor. You
-- can compare the value for each metric in the list to the metric\'s value
-- in the Baseline to see how your predictor\'s performance is changing.
predictorMonitorEvaluation_metricResults :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe [MetricResult])
predictorMonitorEvaluation_metricResults = Lens.lens (\PredictorMonitorEvaluation' {metricResults} -> metricResults) (\s@PredictorMonitorEvaluation' {} a -> s {metricResults = a} :: PredictorMonitorEvaluation) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the resource to monitor.
predictorMonitorEvaluation_resourceArn :: Lens.Lens' PredictorMonitorEvaluation (Prelude.Maybe Prelude.Text)
predictorMonitorEvaluation_resourceArn = Lens.lens (\PredictorMonitorEvaluation' {resourceArn} -> resourceArn) (\s@PredictorMonitorEvaluation' {} a -> s {resourceArn = a} :: PredictorMonitorEvaluation)

instance Core.FromJSON PredictorMonitorEvaluation where
  parseJSON =
    Core.withObject
      "PredictorMonitorEvaluation"
      ( \x ->
          PredictorMonitorEvaluation'
            Prelude.<$> (x Core..:? "EvaluationTime")
            Prelude.<*> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "EvaluationState")
            Prelude.<*> (x Core..:? "MonitorArn")
            Prelude.<*> (x Core..:? "NumItemsEvaluated")
            Prelude.<*> (x Core..:? "WindowEndDatetime")
            Prelude.<*> (x Core..:? "MonitorDataSource")
            Prelude.<*> (x Core..:? "WindowStartDatetime")
            Prelude.<*> (x Core..:? "PredictorEvent")
            Prelude.<*> (x Core..:? "MetricResults" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ResourceArn")
      )

instance Prelude.Hashable PredictorMonitorEvaluation where
  hashWithSalt _salt PredictorMonitorEvaluation' {..} =
    _salt `Prelude.hashWithSalt` evaluationTime
      `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` evaluationState
      `Prelude.hashWithSalt` monitorArn
      `Prelude.hashWithSalt` numItemsEvaluated
      `Prelude.hashWithSalt` windowEndDatetime
      `Prelude.hashWithSalt` monitorDataSource
      `Prelude.hashWithSalt` windowStartDatetime
      `Prelude.hashWithSalt` predictorEvent
      `Prelude.hashWithSalt` metricResults
      `Prelude.hashWithSalt` resourceArn

instance Prelude.NFData PredictorMonitorEvaluation where
  rnf PredictorMonitorEvaluation' {..} =
    Prelude.rnf evaluationTime
      `Prelude.seq` Prelude.rnf message
      `Prelude.seq` Prelude.rnf evaluationState
      `Prelude.seq` Prelude.rnf monitorArn
      `Prelude.seq` Prelude.rnf numItemsEvaluated
      `Prelude.seq` Prelude.rnf windowEndDatetime
      `Prelude.seq` Prelude.rnf monitorDataSource
      `Prelude.seq` Prelude.rnf windowStartDatetime
      `Prelude.seq` Prelude.rnf predictorEvent
      `Prelude.seq` Prelude.rnf metricResults
      `Prelude.seq` Prelude.rnf resourceArn
