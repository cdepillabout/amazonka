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
-- Module      : Amazonka.DevOpsGuru.Types.ProactiveAnomalySummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.ProactiveAnomalySummary where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.AnomalyReportedTimeRange
import Amazonka.DevOpsGuru.Types.AnomalyResource
import Amazonka.DevOpsGuru.Types.AnomalySeverity
import Amazonka.DevOpsGuru.Types.AnomalySourceDetails
import Amazonka.DevOpsGuru.Types.AnomalySourceMetadata
import Amazonka.DevOpsGuru.Types.AnomalyStatus
import Amazonka.DevOpsGuru.Types.AnomalyTimeRange
import Amazonka.DevOpsGuru.Types.PredictionTimeRange
import Amazonka.DevOpsGuru.Types.ResourceCollection
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about a proactive anomaly. This object is returned by
-- @DescribeAnomaly.@
--
-- /See:/ 'newProactiveAnomalySummary' smart constructor.
data ProactiveAnomalySummary = ProactiveAnomalySummary'
  { anomalyTimeRange :: Prelude.Maybe AnomalyTimeRange,
    -- | The severity of the anomaly. The severity of anomalies that generate an
    -- insight determine that insight\'s severity. For more information, see
    -- <https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities Understanding insight severities>
    -- in the /Amazon DevOps Guru User Guide/.
    severity :: Prelude.Maybe AnomalySeverity,
    -- | An @AnomalyReportedTimeRange@ object that specifies the time range
    -- between when the anomaly is opened and the time when it is closed.
    anomalyReportedTimeRange :: Prelude.Maybe AnomalyReportedTimeRange,
    -- | The ID of the insight that contains this anomaly. An insight is composed
    -- of related anomalies.
    associatedInsightId :: Prelude.Maybe Prelude.Text,
    -- | Information about a resource in which DevOps Guru detected anomalous
    -- behavior.
    anomalyResources :: Prelude.Maybe [AnomalyResource],
    resourceCollection :: Prelude.Maybe ResourceCollection,
    -- | Details about the source of the analyzed operational data that triggered
    -- the anomaly. The one supported source is Amazon CloudWatch metrics.
    sourceDetails :: Prelude.Maybe AnomalySourceDetails,
    -- | The status of the anomaly.
    status :: Prelude.Maybe AnomalyStatus,
    -- | The ID of the anomaly.
    id :: Prelude.Maybe Prelude.Text,
    predictionTimeRange :: Prelude.Maybe PredictionTimeRange,
    -- | A threshold that was exceeded by behavior in analyzed resources.
    -- Exceeding this threshold is related to the anomalous behavior that
    -- generated this anomaly.
    limit :: Prelude.Maybe Prelude.Double,
    -- | The metadata of the source which detects proactive anomalies.
    sourceMetadata :: Prelude.Maybe AnomalySourceMetadata,
    -- | The time of the anomaly\'s most recent update.
    updateTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProactiveAnomalySummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyTimeRange', 'proactiveAnomalySummary_anomalyTimeRange' - Undocumented member.
--
-- 'severity', 'proactiveAnomalySummary_severity' - The severity of the anomaly. The severity of anomalies that generate an
-- insight determine that insight\'s severity. For more information, see
-- <https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities Understanding insight severities>
-- in the /Amazon DevOps Guru User Guide/.
--
-- 'anomalyReportedTimeRange', 'proactiveAnomalySummary_anomalyReportedTimeRange' - An @AnomalyReportedTimeRange@ object that specifies the time range
-- between when the anomaly is opened and the time when it is closed.
--
-- 'associatedInsightId', 'proactiveAnomalySummary_associatedInsightId' - The ID of the insight that contains this anomaly. An insight is composed
-- of related anomalies.
--
-- 'anomalyResources', 'proactiveAnomalySummary_anomalyResources' - Information about a resource in which DevOps Guru detected anomalous
-- behavior.
--
-- 'resourceCollection', 'proactiveAnomalySummary_resourceCollection' - Undocumented member.
--
-- 'sourceDetails', 'proactiveAnomalySummary_sourceDetails' - Details about the source of the analyzed operational data that triggered
-- the anomaly. The one supported source is Amazon CloudWatch metrics.
--
-- 'status', 'proactiveAnomalySummary_status' - The status of the anomaly.
--
-- 'id', 'proactiveAnomalySummary_id' - The ID of the anomaly.
--
-- 'predictionTimeRange', 'proactiveAnomalySummary_predictionTimeRange' - Undocumented member.
--
-- 'limit', 'proactiveAnomalySummary_limit' - A threshold that was exceeded by behavior in analyzed resources.
-- Exceeding this threshold is related to the anomalous behavior that
-- generated this anomaly.
--
-- 'sourceMetadata', 'proactiveAnomalySummary_sourceMetadata' - The metadata of the source which detects proactive anomalies.
--
-- 'updateTime', 'proactiveAnomalySummary_updateTime' - The time of the anomaly\'s most recent update.
newProactiveAnomalySummary ::
  ProactiveAnomalySummary
newProactiveAnomalySummary =
  ProactiveAnomalySummary'
    { anomalyTimeRange =
        Prelude.Nothing,
      severity = Prelude.Nothing,
      anomalyReportedTimeRange = Prelude.Nothing,
      associatedInsightId = Prelude.Nothing,
      anomalyResources = Prelude.Nothing,
      resourceCollection = Prelude.Nothing,
      sourceDetails = Prelude.Nothing,
      status = Prelude.Nothing,
      id = Prelude.Nothing,
      predictionTimeRange = Prelude.Nothing,
      limit = Prelude.Nothing,
      sourceMetadata = Prelude.Nothing,
      updateTime = Prelude.Nothing
    }

-- | Undocumented member.
proactiveAnomalySummary_anomalyTimeRange :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalyTimeRange)
proactiveAnomalySummary_anomalyTimeRange = Lens.lens (\ProactiveAnomalySummary' {anomalyTimeRange} -> anomalyTimeRange) (\s@ProactiveAnomalySummary' {} a -> s {anomalyTimeRange = a} :: ProactiveAnomalySummary)

-- | The severity of the anomaly. The severity of anomalies that generate an
-- insight determine that insight\'s severity. For more information, see
-- <https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities Understanding insight severities>
-- in the /Amazon DevOps Guru User Guide/.
proactiveAnomalySummary_severity :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalySeverity)
proactiveAnomalySummary_severity = Lens.lens (\ProactiveAnomalySummary' {severity} -> severity) (\s@ProactiveAnomalySummary' {} a -> s {severity = a} :: ProactiveAnomalySummary)

-- | An @AnomalyReportedTimeRange@ object that specifies the time range
-- between when the anomaly is opened and the time when it is closed.
proactiveAnomalySummary_anomalyReportedTimeRange :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalyReportedTimeRange)
proactiveAnomalySummary_anomalyReportedTimeRange = Lens.lens (\ProactiveAnomalySummary' {anomalyReportedTimeRange} -> anomalyReportedTimeRange) (\s@ProactiveAnomalySummary' {} a -> s {anomalyReportedTimeRange = a} :: ProactiveAnomalySummary)

-- | The ID of the insight that contains this anomaly. An insight is composed
-- of related anomalies.
proactiveAnomalySummary_associatedInsightId :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe Prelude.Text)
proactiveAnomalySummary_associatedInsightId = Lens.lens (\ProactiveAnomalySummary' {associatedInsightId} -> associatedInsightId) (\s@ProactiveAnomalySummary' {} a -> s {associatedInsightId = a} :: ProactiveAnomalySummary)

-- | Information about a resource in which DevOps Guru detected anomalous
-- behavior.
proactiveAnomalySummary_anomalyResources :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe [AnomalyResource])
proactiveAnomalySummary_anomalyResources = Lens.lens (\ProactiveAnomalySummary' {anomalyResources} -> anomalyResources) (\s@ProactiveAnomalySummary' {} a -> s {anomalyResources = a} :: ProactiveAnomalySummary) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
proactiveAnomalySummary_resourceCollection :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe ResourceCollection)
proactiveAnomalySummary_resourceCollection = Lens.lens (\ProactiveAnomalySummary' {resourceCollection} -> resourceCollection) (\s@ProactiveAnomalySummary' {} a -> s {resourceCollection = a} :: ProactiveAnomalySummary)

-- | Details about the source of the analyzed operational data that triggered
-- the anomaly. The one supported source is Amazon CloudWatch metrics.
proactiveAnomalySummary_sourceDetails :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalySourceDetails)
proactiveAnomalySummary_sourceDetails = Lens.lens (\ProactiveAnomalySummary' {sourceDetails} -> sourceDetails) (\s@ProactiveAnomalySummary' {} a -> s {sourceDetails = a} :: ProactiveAnomalySummary)

-- | The status of the anomaly.
proactiveAnomalySummary_status :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalyStatus)
proactiveAnomalySummary_status = Lens.lens (\ProactiveAnomalySummary' {status} -> status) (\s@ProactiveAnomalySummary' {} a -> s {status = a} :: ProactiveAnomalySummary)

-- | The ID of the anomaly.
proactiveAnomalySummary_id :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe Prelude.Text)
proactiveAnomalySummary_id = Lens.lens (\ProactiveAnomalySummary' {id} -> id) (\s@ProactiveAnomalySummary' {} a -> s {id = a} :: ProactiveAnomalySummary)

-- | Undocumented member.
proactiveAnomalySummary_predictionTimeRange :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe PredictionTimeRange)
proactiveAnomalySummary_predictionTimeRange = Lens.lens (\ProactiveAnomalySummary' {predictionTimeRange} -> predictionTimeRange) (\s@ProactiveAnomalySummary' {} a -> s {predictionTimeRange = a} :: ProactiveAnomalySummary)

-- | A threshold that was exceeded by behavior in analyzed resources.
-- Exceeding this threshold is related to the anomalous behavior that
-- generated this anomaly.
proactiveAnomalySummary_limit :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe Prelude.Double)
proactiveAnomalySummary_limit = Lens.lens (\ProactiveAnomalySummary' {limit} -> limit) (\s@ProactiveAnomalySummary' {} a -> s {limit = a} :: ProactiveAnomalySummary)

-- | The metadata of the source which detects proactive anomalies.
proactiveAnomalySummary_sourceMetadata :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe AnomalySourceMetadata)
proactiveAnomalySummary_sourceMetadata = Lens.lens (\ProactiveAnomalySummary' {sourceMetadata} -> sourceMetadata) (\s@ProactiveAnomalySummary' {} a -> s {sourceMetadata = a} :: ProactiveAnomalySummary)

-- | The time of the anomaly\'s most recent update.
proactiveAnomalySummary_updateTime :: Lens.Lens' ProactiveAnomalySummary (Prelude.Maybe Prelude.UTCTime)
proactiveAnomalySummary_updateTime = Lens.lens (\ProactiveAnomalySummary' {updateTime} -> updateTime) (\s@ProactiveAnomalySummary' {} a -> s {updateTime = a} :: ProactiveAnomalySummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ProactiveAnomalySummary where
  parseJSON =
    Core.withObject
      "ProactiveAnomalySummary"
      ( \x ->
          ProactiveAnomalySummary'
            Prelude.<$> (x Core..:? "AnomalyTimeRange")
            Prelude.<*> (x Core..:? "Severity")
            Prelude.<*> (x Core..:? "AnomalyReportedTimeRange")
            Prelude.<*> (x Core..:? "AssociatedInsightId")
            Prelude.<*> ( x Core..:? "AnomalyResources"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ResourceCollection")
            Prelude.<*> (x Core..:? "SourceDetails")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "PredictionTimeRange")
            Prelude.<*> (x Core..:? "Limit")
            Prelude.<*> (x Core..:? "SourceMetadata")
            Prelude.<*> (x Core..:? "UpdateTime")
      )

instance Prelude.Hashable ProactiveAnomalySummary where
  hashWithSalt _salt ProactiveAnomalySummary' {..} =
    _salt `Prelude.hashWithSalt` anomalyTimeRange
      `Prelude.hashWithSalt` severity
      `Prelude.hashWithSalt` anomalyReportedTimeRange
      `Prelude.hashWithSalt` associatedInsightId
      `Prelude.hashWithSalt` anomalyResources
      `Prelude.hashWithSalt` resourceCollection
      `Prelude.hashWithSalt` sourceDetails
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` predictionTimeRange
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` sourceMetadata
      `Prelude.hashWithSalt` updateTime

instance Prelude.NFData ProactiveAnomalySummary where
  rnf ProactiveAnomalySummary' {..} =
    Prelude.rnf anomalyTimeRange
      `Prelude.seq` Prelude.rnf severity
      `Prelude.seq` Prelude.rnf anomalyReportedTimeRange
      `Prelude.seq` Prelude.rnf associatedInsightId
      `Prelude.seq` Prelude.rnf anomalyResources
      `Prelude.seq` Prelude.rnf resourceCollection
      `Prelude.seq` Prelude.rnf sourceDetails
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf predictionTimeRange
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf sourceMetadata
      `Prelude.seq` Prelude.rnf updateTime
