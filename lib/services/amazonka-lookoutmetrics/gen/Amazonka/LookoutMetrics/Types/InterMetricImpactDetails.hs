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
-- Module      : Amazonka.LookoutMetrics.Types.InterMetricImpactDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutMetrics.Types.InterMetricImpactDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutMetrics.Types.RelationshipType
import qualified Amazonka.Prelude as Prelude

-- | Aggregated details about the measures contributing to the anomaly group,
-- and the measures potentially impacted by the anomaly group.
--
-- /See:/ 'newInterMetricImpactDetails' smart constructor.
data InterMetricImpactDetails = InterMetricImpactDetails'
  { -- | The ID of the anomaly group.
    anomalyGroupId :: Prelude.Maybe Prelude.Text,
    -- | Whether a measure is a potential cause of the anomaly group
    -- (@CAUSE_OF_INPUT_ANOMALY_GROUP@), or whether the measure is impacted by
    -- the anomaly group (@EFFECT_OF_INPUT_ANOMALY_GROUP@).
    relationshipType :: Prelude.Maybe RelationshipType,
    -- | The name of the measure.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | For potential causes (@CAUSE_OF_INPUT_ANOMALY_GROUP@), the percentage
    -- contribution the measure has in causing the anomalies.
    contributionPercentage :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InterMetricImpactDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyGroupId', 'interMetricImpactDetails_anomalyGroupId' - The ID of the anomaly group.
--
-- 'relationshipType', 'interMetricImpactDetails_relationshipType' - Whether a measure is a potential cause of the anomaly group
-- (@CAUSE_OF_INPUT_ANOMALY_GROUP@), or whether the measure is impacted by
-- the anomaly group (@EFFECT_OF_INPUT_ANOMALY_GROUP@).
--
-- 'metricName', 'interMetricImpactDetails_metricName' - The name of the measure.
--
-- 'contributionPercentage', 'interMetricImpactDetails_contributionPercentage' - For potential causes (@CAUSE_OF_INPUT_ANOMALY_GROUP@), the percentage
-- contribution the measure has in causing the anomalies.
newInterMetricImpactDetails ::
  InterMetricImpactDetails
newInterMetricImpactDetails =
  InterMetricImpactDetails'
    { anomalyGroupId =
        Prelude.Nothing,
      relationshipType = Prelude.Nothing,
      metricName = Prelude.Nothing,
      contributionPercentage = Prelude.Nothing
    }

-- | The ID of the anomaly group.
interMetricImpactDetails_anomalyGroupId :: Lens.Lens' InterMetricImpactDetails (Prelude.Maybe Prelude.Text)
interMetricImpactDetails_anomalyGroupId = Lens.lens (\InterMetricImpactDetails' {anomalyGroupId} -> anomalyGroupId) (\s@InterMetricImpactDetails' {} a -> s {anomalyGroupId = a} :: InterMetricImpactDetails)

-- | Whether a measure is a potential cause of the anomaly group
-- (@CAUSE_OF_INPUT_ANOMALY_GROUP@), or whether the measure is impacted by
-- the anomaly group (@EFFECT_OF_INPUT_ANOMALY_GROUP@).
interMetricImpactDetails_relationshipType :: Lens.Lens' InterMetricImpactDetails (Prelude.Maybe RelationshipType)
interMetricImpactDetails_relationshipType = Lens.lens (\InterMetricImpactDetails' {relationshipType} -> relationshipType) (\s@InterMetricImpactDetails' {} a -> s {relationshipType = a} :: InterMetricImpactDetails)

-- | The name of the measure.
interMetricImpactDetails_metricName :: Lens.Lens' InterMetricImpactDetails (Prelude.Maybe Prelude.Text)
interMetricImpactDetails_metricName = Lens.lens (\InterMetricImpactDetails' {metricName} -> metricName) (\s@InterMetricImpactDetails' {} a -> s {metricName = a} :: InterMetricImpactDetails)

-- | For potential causes (@CAUSE_OF_INPUT_ANOMALY_GROUP@), the percentage
-- contribution the measure has in causing the anomalies.
interMetricImpactDetails_contributionPercentage :: Lens.Lens' InterMetricImpactDetails (Prelude.Maybe Prelude.Double)
interMetricImpactDetails_contributionPercentage = Lens.lens (\InterMetricImpactDetails' {contributionPercentage} -> contributionPercentage) (\s@InterMetricImpactDetails' {} a -> s {contributionPercentage = a} :: InterMetricImpactDetails)

instance Core.FromJSON InterMetricImpactDetails where
  parseJSON =
    Core.withObject
      "InterMetricImpactDetails"
      ( \x ->
          InterMetricImpactDetails'
            Prelude.<$> (x Core..:? "AnomalyGroupId")
            Prelude.<*> (x Core..:? "RelationshipType")
            Prelude.<*> (x Core..:? "MetricName")
            Prelude.<*> (x Core..:? "ContributionPercentage")
      )

instance Prelude.Hashable InterMetricImpactDetails where
  hashWithSalt _salt InterMetricImpactDetails' {..} =
    _salt `Prelude.hashWithSalt` anomalyGroupId
      `Prelude.hashWithSalt` relationshipType
      `Prelude.hashWithSalt` metricName
      `Prelude.hashWithSalt` contributionPercentage

instance Prelude.NFData InterMetricImpactDetails where
  rnf InterMetricImpactDetails' {..} =
    Prelude.rnf anomalyGroupId
      `Prelude.seq` Prelude.rnf relationshipType
      `Prelude.seq` Prelude.rnf metricName
      `Prelude.seq` Prelude.rnf contributionPercentage
