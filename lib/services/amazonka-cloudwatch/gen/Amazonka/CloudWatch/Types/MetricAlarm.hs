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
-- Module      : Amazonka.CloudWatch.Types.MetricAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Types.MetricAlarm where

import Amazonka.CloudWatch.Types.ComparisonOperator
import Amazonka.CloudWatch.Types.Dimension
import Amazonka.CloudWatch.Types.MetricDataQuery
import Amazonka.CloudWatch.Types.StandardUnit
import Amazonka.CloudWatch.Types.StateValue
import Amazonka.CloudWatch.Types.Statistic
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details about a metric alarm.
--
-- /See:/ 'newMetricAlarm' smart constructor.
data MetricAlarm = MetricAlarm'
  { -- | The actions to execute when this alarm transitions to the @ALARM@ state
    -- from any other state. Each action is specified as an Amazon Resource
    -- Name (ARN).
    alarmActions :: Prelude.Maybe [Prelude.Text],
    -- | The time stamp of the last update to the alarm state.
    stateUpdatedTimestamp :: Prelude.Maybe Core.ISO8601,
    -- | The description of the alarm.
    alarmDescription :: Prelude.Maybe Prelude.Text,
    -- | The percentile statistic for the metric associated with the alarm.
    -- Specify a value between p0.0 and p100.
    extendedStatistic :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether actions should be executed during any changes to the
    -- alarm state.
    actionsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The period, in seconds, over which the statistic is applied.
    period :: Prelude.Maybe Prelude.Natural,
    -- | Used only for alarms based on percentiles. If @ignore@, the alarm state
    -- does not change during periods with too few data points to be
    -- statistically significant. If @evaluate@ or this parameter is not used,
    -- the alarm is always evaluated and possibly changes state no matter how
    -- many data points are available.
    evaluateLowSampleCountPercentile :: Prelude.Maybe Prelude.Text,
    -- | The dimensions for the metric associated with the alarm.
    dimensions :: Prelude.Maybe [Dimension],
    -- | In an alarm based on an anomaly detection model, this is the ID of the
    -- @ANOMALY_DETECTION_BAND@ function used as the threshold for the alarm.
    thresholdMetricId :: Prelude.Maybe Prelude.Text,
    -- | Sets how this alarm is to handle missing data points. The valid values
    -- are @breaching@, @notBreaching@, @ignore@, and @missing@. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data Configuring how CloudWatch alarms treat missing data>.
    --
    -- If this parameter is omitted, the default behavior of @missing@ is used.
    treatMissingData :: Prelude.Maybe Prelude.Text,
    -- | An array of MetricDataQuery structures, used in an alarm based on a
    -- metric math expression. Each structure either retrieves a metric or
    -- performs a math expression. One item in the Metrics array is the math
    -- expression that the alarm watches. This expression by designated by
    -- having @ReturnData@ set to true.
    metrics :: Prelude.Maybe [MetricDataQuery],
    -- | The number of periods over which data is compared to the specified
    -- threshold.
    evaluationPeriods :: Prelude.Maybe Prelude.Natural,
    -- | The number of data points that must be breaching to trigger the alarm.
    datapointsToAlarm :: Prelude.Maybe Prelude.Natural,
    -- | The actions to execute when this alarm transitions to the
    -- @INSUFFICIENT_DATA@ state from any other state. Each action is specified
    -- as an Amazon Resource Name (ARN).
    insufficientDataActions :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the alarm.
    alarmArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the metric associated with the alarm, if this is an alarm
    -- based on a single metric.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The time stamp of the last update to the alarm configuration.
    alarmConfigurationUpdatedTimestamp :: Prelude.Maybe Core.ISO8601,
    -- | The value to compare with the specified statistic.
    threshold :: Prelude.Maybe Prelude.Double,
    -- | The state value for the alarm.
    stateValue :: Prelude.Maybe StateValue,
    -- | An explanation for the alarm state, in JSON format.
    stateReasonData :: Prelude.Maybe Prelude.Text,
    -- | The actions to execute when this alarm transitions to the @OK@ state
    -- from any other state. Each action is specified as an Amazon Resource
    -- Name (ARN).
    oKActions :: Prelude.Maybe [Prelude.Text],
    -- | The name of the alarm.
    alarmName :: Prelude.Maybe Prelude.Text,
    -- | The arithmetic operation to use when comparing the specified statistic
    -- and threshold. The specified statistic value is used as the first
    -- operand.
    comparisonOperator :: Prelude.Maybe ComparisonOperator,
    -- | The namespace of the metric associated with the alarm.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The statistic for the metric associated with the alarm, other than
    -- percentile. For percentile statistics, use @ExtendedStatistic@.
    statistic :: Prelude.Maybe Statistic,
    -- | The unit of the metric associated with the alarm.
    unit :: Prelude.Maybe StandardUnit,
    -- | An explanation for the alarm state, in text format.
    stateReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricAlarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmActions', 'metricAlarm_alarmActions' - The actions to execute when this alarm transitions to the @ALARM@ state
-- from any other state. Each action is specified as an Amazon Resource
-- Name (ARN).
--
-- 'stateUpdatedTimestamp', 'metricAlarm_stateUpdatedTimestamp' - The time stamp of the last update to the alarm state.
--
-- 'alarmDescription', 'metricAlarm_alarmDescription' - The description of the alarm.
--
-- 'extendedStatistic', 'metricAlarm_extendedStatistic' - The percentile statistic for the metric associated with the alarm.
-- Specify a value between p0.0 and p100.
--
-- 'actionsEnabled', 'metricAlarm_actionsEnabled' - Indicates whether actions should be executed during any changes to the
-- alarm state.
--
-- 'period', 'metricAlarm_period' - The period, in seconds, over which the statistic is applied.
--
-- 'evaluateLowSampleCountPercentile', 'metricAlarm_evaluateLowSampleCountPercentile' - Used only for alarms based on percentiles. If @ignore@, the alarm state
-- does not change during periods with too few data points to be
-- statistically significant. If @evaluate@ or this parameter is not used,
-- the alarm is always evaluated and possibly changes state no matter how
-- many data points are available.
--
-- 'dimensions', 'metricAlarm_dimensions' - The dimensions for the metric associated with the alarm.
--
-- 'thresholdMetricId', 'metricAlarm_thresholdMetricId' - In an alarm based on an anomaly detection model, this is the ID of the
-- @ANOMALY_DETECTION_BAND@ function used as the threshold for the alarm.
--
-- 'treatMissingData', 'metricAlarm_treatMissingData' - Sets how this alarm is to handle missing data points. The valid values
-- are @breaching@, @notBreaching@, @ignore@, and @missing@. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data Configuring how CloudWatch alarms treat missing data>.
--
-- If this parameter is omitted, the default behavior of @missing@ is used.
--
-- 'metrics', 'metricAlarm_metrics' - An array of MetricDataQuery structures, used in an alarm based on a
-- metric math expression. Each structure either retrieves a metric or
-- performs a math expression. One item in the Metrics array is the math
-- expression that the alarm watches. This expression by designated by
-- having @ReturnData@ set to true.
--
-- 'evaluationPeriods', 'metricAlarm_evaluationPeriods' - The number of periods over which data is compared to the specified
-- threshold.
--
-- 'datapointsToAlarm', 'metricAlarm_datapointsToAlarm' - The number of data points that must be breaching to trigger the alarm.
--
-- 'insufficientDataActions', 'metricAlarm_insufficientDataActions' - The actions to execute when this alarm transitions to the
-- @INSUFFICIENT_DATA@ state from any other state. Each action is specified
-- as an Amazon Resource Name (ARN).
--
-- 'alarmArn', 'metricAlarm_alarmArn' - The Amazon Resource Name (ARN) of the alarm.
--
-- 'metricName', 'metricAlarm_metricName' - The name of the metric associated with the alarm, if this is an alarm
-- based on a single metric.
--
-- 'alarmConfigurationUpdatedTimestamp', 'metricAlarm_alarmConfigurationUpdatedTimestamp' - The time stamp of the last update to the alarm configuration.
--
-- 'threshold', 'metricAlarm_threshold' - The value to compare with the specified statistic.
--
-- 'stateValue', 'metricAlarm_stateValue' - The state value for the alarm.
--
-- 'stateReasonData', 'metricAlarm_stateReasonData' - An explanation for the alarm state, in JSON format.
--
-- 'oKActions', 'metricAlarm_oKActions' - The actions to execute when this alarm transitions to the @OK@ state
-- from any other state. Each action is specified as an Amazon Resource
-- Name (ARN).
--
-- 'alarmName', 'metricAlarm_alarmName' - The name of the alarm.
--
-- 'comparisonOperator', 'metricAlarm_comparisonOperator' - The arithmetic operation to use when comparing the specified statistic
-- and threshold. The specified statistic value is used as the first
-- operand.
--
-- 'namespace', 'metricAlarm_namespace' - The namespace of the metric associated with the alarm.
--
-- 'statistic', 'metricAlarm_statistic' - The statistic for the metric associated with the alarm, other than
-- percentile. For percentile statistics, use @ExtendedStatistic@.
--
-- 'unit', 'metricAlarm_unit' - The unit of the metric associated with the alarm.
--
-- 'stateReason', 'metricAlarm_stateReason' - An explanation for the alarm state, in text format.
newMetricAlarm ::
  MetricAlarm
newMetricAlarm =
  MetricAlarm'
    { alarmActions = Prelude.Nothing,
      stateUpdatedTimestamp = Prelude.Nothing,
      alarmDescription = Prelude.Nothing,
      extendedStatistic = Prelude.Nothing,
      actionsEnabled = Prelude.Nothing,
      period = Prelude.Nothing,
      evaluateLowSampleCountPercentile = Prelude.Nothing,
      dimensions = Prelude.Nothing,
      thresholdMetricId = Prelude.Nothing,
      treatMissingData = Prelude.Nothing,
      metrics = Prelude.Nothing,
      evaluationPeriods = Prelude.Nothing,
      datapointsToAlarm = Prelude.Nothing,
      insufficientDataActions = Prelude.Nothing,
      alarmArn = Prelude.Nothing,
      metricName = Prelude.Nothing,
      alarmConfigurationUpdatedTimestamp = Prelude.Nothing,
      threshold = Prelude.Nothing,
      stateValue = Prelude.Nothing,
      stateReasonData = Prelude.Nothing,
      oKActions = Prelude.Nothing,
      alarmName = Prelude.Nothing,
      comparisonOperator = Prelude.Nothing,
      namespace = Prelude.Nothing,
      statistic = Prelude.Nothing,
      unit = Prelude.Nothing,
      stateReason = Prelude.Nothing
    }

-- | The actions to execute when this alarm transitions to the @ALARM@ state
-- from any other state. Each action is specified as an Amazon Resource
-- Name (ARN).
metricAlarm_alarmActions :: Lens.Lens' MetricAlarm (Prelude.Maybe [Prelude.Text])
metricAlarm_alarmActions = Lens.lens (\MetricAlarm' {alarmActions} -> alarmActions) (\s@MetricAlarm' {} a -> s {alarmActions = a} :: MetricAlarm) Prelude.. Lens.mapping Lens.coerced

-- | The time stamp of the last update to the alarm state.
metricAlarm_stateUpdatedTimestamp :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.UTCTime)
metricAlarm_stateUpdatedTimestamp = Lens.lens (\MetricAlarm' {stateUpdatedTimestamp} -> stateUpdatedTimestamp) (\s@MetricAlarm' {} a -> s {stateUpdatedTimestamp = a} :: MetricAlarm) Prelude.. Lens.mapping Core._Time

-- | The description of the alarm.
metricAlarm_alarmDescription :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_alarmDescription = Lens.lens (\MetricAlarm' {alarmDescription} -> alarmDescription) (\s@MetricAlarm' {} a -> s {alarmDescription = a} :: MetricAlarm)

-- | The percentile statistic for the metric associated with the alarm.
-- Specify a value between p0.0 and p100.
metricAlarm_extendedStatistic :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_extendedStatistic = Lens.lens (\MetricAlarm' {extendedStatistic} -> extendedStatistic) (\s@MetricAlarm' {} a -> s {extendedStatistic = a} :: MetricAlarm)

-- | Indicates whether actions should be executed during any changes to the
-- alarm state.
metricAlarm_actionsEnabled :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Bool)
metricAlarm_actionsEnabled = Lens.lens (\MetricAlarm' {actionsEnabled} -> actionsEnabled) (\s@MetricAlarm' {} a -> s {actionsEnabled = a} :: MetricAlarm)

-- | The period, in seconds, over which the statistic is applied.
metricAlarm_period :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Natural)
metricAlarm_period = Lens.lens (\MetricAlarm' {period} -> period) (\s@MetricAlarm' {} a -> s {period = a} :: MetricAlarm)

-- | Used only for alarms based on percentiles. If @ignore@, the alarm state
-- does not change during periods with too few data points to be
-- statistically significant. If @evaluate@ or this parameter is not used,
-- the alarm is always evaluated and possibly changes state no matter how
-- many data points are available.
metricAlarm_evaluateLowSampleCountPercentile :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_evaluateLowSampleCountPercentile = Lens.lens (\MetricAlarm' {evaluateLowSampleCountPercentile} -> evaluateLowSampleCountPercentile) (\s@MetricAlarm' {} a -> s {evaluateLowSampleCountPercentile = a} :: MetricAlarm)

-- | The dimensions for the metric associated with the alarm.
metricAlarm_dimensions :: Lens.Lens' MetricAlarm (Prelude.Maybe [Dimension])
metricAlarm_dimensions = Lens.lens (\MetricAlarm' {dimensions} -> dimensions) (\s@MetricAlarm' {} a -> s {dimensions = a} :: MetricAlarm) Prelude.. Lens.mapping Lens.coerced

-- | In an alarm based on an anomaly detection model, this is the ID of the
-- @ANOMALY_DETECTION_BAND@ function used as the threshold for the alarm.
metricAlarm_thresholdMetricId :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_thresholdMetricId = Lens.lens (\MetricAlarm' {thresholdMetricId} -> thresholdMetricId) (\s@MetricAlarm' {} a -> s {thresholdMetricId = a} :: MetricAlarm)

-- | Sets how this alarm is to handle missing data points. The valid values
-- are @breaching@, @notBreaching@, @ignore@, and @missing@. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data Configuring how CloudWatch alarms treat missing data>.
--
-- If this parameter is omitted, the default behavior of @missing@ is used.
metricAlarm_treatMissingData :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_treatMissingData = Lens.lens (\MetricAlarm' {treatMissingData} -> treatMissingData) (\s@MetricAlarm' {} a -> s {treatMissingData = a} :: MetricAlarm)

-- | An array of MetricDataQuery structures, used in an alarm based on a
-- metric math expression. Each structure either retrieves a metric or
-- performs a math expression. One item in the Metrics array is the math
-- expression that the alarm watches. This expression by designated by
-- having @ReturnData@ set to true.
metricAlarm_metrics :: Lens.Lens' MetricAlarm (Prelude.Maybe [MetricDataQuery])
metricAlarm_metrics = Lens.lens (\MetricAlarm' {metrics} -> metrics) (\s@MetricAlarm' {} a -> s {metrics = a} :: MetricAlarm) Prelude.. Lens.mapping Lens.coerced

-- | The number of periods over which data is compared to the specified
-- threshold.
metricAlarm_evaluationPeriods :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Natural)
metricAlarm_evaluationPeriods = Lens.lens (\MetricAlarm' {evaluationPeriods} -> evaluationPeriods) (\s@MetricAlarm' {} a -> s {evaluationPeriods = a} :: MetricAlarm)

-- | The number of data points that must be breaching to trigger the alarm.
metricAlarm_datapointsToAlarm :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Natural)
metricAlarm_datapointsToAlarm = Lens.lens (\MetricAlarm' {datapointsToAlarm} -> datapointsToAlarm) (\s@MetricAlarm' {} a -> s {datapointsToAlarm = a} :: MetricAlarm)

-- | The actions to execute when this alarm transitions to the
-- @INSUFFICIENT_DATA@ state from any other state. Each action is specified
-- as an Amazon Resource Name (ARN).
metricAlarm_insufficientDataActions :: Lens.Lens' MetricAlarm (Prelude.Maybe [Prelude.Text])
metricAlarm_insufficientDataActions = Lens.lens (\MetricAlarm' {insufficientDataActions} -> insufficientDataActions) (\s@MetricAlarm' {} a -> s {insufficientDataActions = a} :: MetricAlarm) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the alarm.
metricAlarm_alarmArn :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_alarmArn = Lens.lens (\MetricAlarm' {alarmArn} -> alarmArn) (\s@MetricAlarm' {} a -> s {alarmArn = a} :: MetricAlarm)

-- | The name of the metric associated with the alarm, if this is an alarm
-- based on a single metric.
metricAlarm_metricName :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_metricName = Lens.lens (\MetricAlarm' {metricName} -> metricName) (\s@MetricAlarm' {} a -> s {metricName = a} :: MetricAlarm)

-- | The time stamp of the last update to the alarm configuration.
metricAlarm_alarmConfigurationUpdatedTimestamp :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.UTCTime)
metricAlarm_alarmConfigurationUpdatedTimestamp = Lens.lens (\MetricAlarm' {alarmConfigurationUpdatedTimestamp} -> alarmConfigurationUpdatedTimestamp) (\s@MetricAlarm' {} a -> s {alarmConfigurationUpdatedTimestamp = a} :: MetricAlarm) Prelude.. Lens.mapping Core._Time

-- | The value to compare with the specified statistic.
metricAlarm_threshold :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Double)
metricAlarm_threshold = Lens.lens (\MetricAlarm' {threshold} -> threshold) (\s@MetricAlarm' {} a -> s {threshold = a} :: MetricAlarm)

-- | The state value for the alarm.
metricAlarm_stateValue :: Lens.Lens' MetricAlarm (Prelude.Maybe StateValue)
metricAlarm_stateValue = Lens.lens (\MetricAlarm' {stateValue} -> stateValue) (\s@MetricAlarm' {} a -> s {stateValue = a} :: MetricAlarm)

-- | An explanation for the alarm state, in JSON format.
metricAlarm_stateReasonData :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_stateReasonData = Lens.lens (\MetricAlarm' {stateReasonData} -> stateReasonData) (\s@MetricAlarm' {} a -> s {stateReasonData = a} :: MetricAlarm)

-- | The actions to execute when this alarm transitions to the @OK@ state
-- from any other state. Each action is specified as an Amazon Resource
-- Name (ARN).
metricAlarm_oKActions :: Lens.Lens' MetricAlarm (Prelude.Maybe [Prelude.Text])
metricAlarm_oKActions = Lens.lens (\MetricAlarm' {oKActions} -> oKActions) (\s@MetricAlarm' {} a -> s {oKActions = a} :: MetricAlarm) Prelude.. Lens.mapping Lens.coerced

-- | The name of the alarm.
metricAlarm_alarmName :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_alarmName = Lens.lens (\MetricAlarm' {alarmName} -> alarmName) (\s@MetricAlarm' {} a -> s {alarmName = a} :: MetricAlarm)

-- | The arithmetic operation to use when comparing the specified statistic
-- and threshold. The specified statistic value is used as the first
-- operand.
metricAlarm_comparisonOperator :: Lens.Lens' MetricAlarm (Prelude.Maybe ComparisonOperator)
metricAlarm_comparisonOperator = Lens.lens (\MetricAlarm' {comparisonOperator} -> comparisonOperator) (\s@MetricAlarm' {} a -> s {comparisonOperator = a} :: MetricAlarm)

-- | The namespace of the metric associated with the alarm.
metricAlarm_namespace :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_namespace = Lens.lens (\MetricAlarm' {namespace} -> namespace) (\s@MetricAlarm' {} a -> s {namespace = a} :: MetricAlarm)

-- | The statistic for the metric associated with the alarm, other than
-- percentile. For percentile statistics, use @ExtendedStatistic@.
metricAlarm_statistic :: Lens.Lens' MetricAlarm (Prelude.Maybe Statistic)
metricAlarm_statistic = Lens.lens (\MetricAlarm' {statistic} -> statistic) (\s@MetricAlarm' {} a -> s {statistic = a} :: MetricAlarm)

-- | The unit of the metric associated with the alarm.
metricAlarm_unit :: Lens.Lens' MetricAlarm (Prelude.Maybe StandardUnit)
metricAlarm_unit = Lens.lens (\MetricAlarm' {unit} -> unit) (\s@MetricAlarm' {} a -> s {unit = a} :: MetricAlarm)

-- | An explanation for the alarm state, in text format.
metricAlarm_stateReason :: Lens.Lens' MetricAlarm (Prelude.Maybe Prelude.Text)
metricAlarm_stateReason = Lens.lens (\MetricAlarm' {stateReason} -> stateReason) (\s@MetricAlarm' {} a -> s {stateReason = a} :: MetricAlarm)

instance Core.FromXML MetricAlarm where
  parseXML x =
    MetricAlarm'
      Prelude.<$> ( x Core..@? "AlarmActions" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "StateUpdatedTimestamp")
      Prelude.<*> (x Core..@? "AlarmDescription")
      Prelude.<*> (x Core..@? "ExtendedStatistic")
      Prelude.<*> (x Core..@? "ActionsEnabled")
      Prelude.<*> (x Core..@? "Period")
      Prelude.<*> (x Core..@? "EvaluateLowSampleCountPercentile")
      Prelude.<*> ( x Core..@? "Dimensions" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "ThresholdMetricId")
      Prelude.<*> (x Core..@? "TreatMissingData")
      Prelude.<*> ( x Core..@? "Metrics" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "EvaluationPeriods")
      Prelude.<*> (x Core..@? "DatapointsToAlarm")
      Prelude.<*> ( x Core..@? "InsufficientDataActions"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "AlarmArn")
      Prelude.<*> (x Core..@? "MetricName")
      Prelude.<*> (x Core..@? "AlarmConfigurationUpdatedTimestamp")
      Prelude.<*> (x Core..@? "Threshold")
      Prelude.<*> (x Core..@? "StateValue")
      Prelude.<*> (x Core..@? "StateReasonData")
      Prelude.<*> ( x Core..@? "OKActions" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "AlarmName")
      Prelude.<*> (x Core..@? "ComparisonOperator")
      Prelude.<*> (x Core..@? "Namespace")
      Prelude.<*> (x Core..@? "Statistic")
      Prelude.<*> (x Core..@? "Unit")
      Prelude.<*> (x Core..@? "StateReason")

instance Prelude.Hashable MetricAlarm where
  hashWithSalt _salt MetricAlarm' {..} =
    _salt `Prelude.hashWithSalt` alarmActions
      `Prelude.hashWithSalt` stateUpdatedTimestamp
      `Prelude.hashWithSalt` alarmDescription
      `Prelude.hashWithSalt` extendedStatistic
      `Prelude.hashWithSalt` actionsEnabled
      `Prelude.hashWithSalt` period
      `Prelude.hashWithSalt` evaluateLowSampleCountPercentile
      `Prelude.hashWithSalt` dimensions
      `Prelude.hashWithSalt` thresholdMetricId
      `Prelude.hashWithSalt` treatMissingData
      `Prelude.hashWithSalt` metrics
      `Prelude.hashWithSalt` evaluationPeriods
      `Prelude.hashWithSalt` datapointsToAlarm
      `Prelude.hashWithSalt` insufficientDataActions
      `Prelude.hashWithSalt` alarmArn
      `Prelude.hashWithSalt` metricName
      `Prelude.hashWithSalt` alarmConfigurationUpdatedTimestamp
      `Prelude.hashWithSalt` threshold
      `Prelude.hashWithSalt` stateValue
      `Prelude.hashWithSalt` stateReasonData
      `Prelude.hashWithSalt` oKActions
      `Prelude.hashWithSalt` alarmName
      `Prelude.hashWithSalt` comparisonOperator
      `Prelude.hashWithSalt` namespace
      `Prelude.hashWithSalt` statistic
      `Prelude.hashWithSalt` unit
      `Prelude.hashWithSalt` stateReason

instance Prelude.NFData MetricAlarm where
  rnf MetricAlarm' {..} =
    Prelude.rnf alarmActions
      `Prelude.seq` Prelude.rnf stateUpdatedTimestamp
      `Prelude.seq` Prelude.rnf alarmDescription
      `Prelude.seq` Prelude.rnf extendedStatistic
      `Prelude.seq` Prelude.rnf actionsEnabled
      `Prelude.seq` Prelude.rnf period
      `Prelude.seq` Prelude.rnf evaluateLowSampleCountPercentile
      `Prelude.seq` Prelude.rnf dimensions
      `Prelude.seq` Prelude.rnf thresholdMetricId
      `Prelude.seq` Prelude.rnf treatMissingData
      `Prelude.seq` Prelude.rnf metrics
      `Prelude.seq` Prelude.rnf evaluationPeriods
      `Prelude.seq` Prelude.rnf datapointsToAlarm
      `Prelude.seq` Prelude.rnf insufficientDataActions
      `Prelude.seq` Prelude.rnf alarmArn
      `Prelude.seq` Prelude.rnf metricName
      `Prelude.seq` Prelude.rnf
        alarmConfigurationUpdatedTimestamp
      `Prelude.seq` Prelude.rnf threshold
      `Prelude.seq` Prelude.rnf stateValue
      `Prelude.seq` Prelude.rnf stateReasonData
      `Prelude.seq` Prelude.rnf oKActions
      `Prelude.seq` Prelude.rnf alarmName
      `Prelude.seq` Prelude.rnf
        comparisonOperator
      `Prelude.seq` Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf
        statistic
      `Prelude.seq` Prelude.rnf unit
      `Prelude.seq` Prelude.rnf
        stateReason
