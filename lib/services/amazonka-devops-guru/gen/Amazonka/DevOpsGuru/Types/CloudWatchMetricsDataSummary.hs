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
-- Module      : Amazonka.DevOpsGuru.Types.CloudWatchMetricsDataSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.CloudWatchMetricsDataSummary where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.CloudWatchMetricDataStatusCode
import Amazonka.DevOpsGuru.Types.TimestampMetricValuePair
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the analyzed metrics that displayed anomalous
-- behavior.
--
-- /See:/ 'newCloudWatchMetricsDataSummary' smart constructor.
data CloudWatchMetricsDataSummary = CloudWatchMetricsDataSummary'
  { -- | This is a list of Amazon CloudWatch metric values at given timestamp.
    timestampMetricValuePairList :: Prelude.Maybe [TimestampMetricValuePair],
    -- | This is an enum of the status showing whether the metric value pair list
    -- has partial or complete data, or if there was an error.
    statusCode :: Prelude.Maybe CloudWatchMetricDataStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchMetricsDataSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timestampMetricValuePairList', 'cloudWatchMetricsDataSummary_timestampMetricValuePairList' - This is a list of Amazon CloudWatch metric values at given timestamp.
--
-- 'statusCode', 'cloudWatchMetricsDataSummary_statusCode' - This is an enum of the status showing whether the metric value pair list
-- has partial or complete data, or if there was an error.
newCloudWatchMetricsDataSummary ::
  CloudWatchMetricsDataSummary
newCloudWatchMetricsDataSummary =
  CloudWatchMetricsDataSummary'
    { timestampMetricValuePairList =
        Prelude.Nothing,
      statusCode = Prelude.Nothing
    }

-- | This is a list of Amazon CloudWatch metric values at given timestamp.
cloudWatchMetricsDataSummary_timestampMetricValuePairList :: Lens.Lens' CloudWatchMetricsDataSummary (Prelude.Maybe [TimestampMetricValuePair])
cloudWatchMetricsDataSummary_timestampMetricValuePairList = Lens.lens (\CloudWatchMetricsDataSummary' {timestampMetricValuePairList} -> timestampMetricValuePairList) (\s@CloudWatchMetricsDataSummary' {} a -> s {timestampMetricValuePairList = a} :: CloudWatchMetricsDataSummary) Prelude.. Lens.mapping Lens.coerced

-- | This is an enum of the status showing whether the metric value pair list
-- has partial or complete data, or if there was an error.
cloudWatchMetricsDataSummary_statusCode :: Lens.Lens' CloudWatchMetricsDataSummary (Prelude.Maybe CloudWatchMetricDataStatusCode)
cloudWatchMetricsDataSummary_statusCode = Lens.lens (\CloudWatchMetricsDataSummary' {statusCode} -> statusCode) (\s@CloudWatchMetricsDataSummary' {} a -> s {statusCode = a} :: CloudWatchMetricsDataSummary)

instance Core.FromJSON CloudWatchMetricsDataSummary where
  parseJSON =
    Core.withObject
      "CloudWatchMetricsDataSummary"
      ( \x ->
          CloudWatchMetricsDataSummary'
            Prelude.<$> ( x Core..:? "TimestampMetricValuePairList"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StatusCode")
      )

instance
  Prelude.Hashable
    CloudWatchMetricsDataSummary
  where
  hashWithSalt _salt CloudWatchMetricsDataSummary' {..} =
    _salt
      `Prelude.hashWithSalt` timestampMetricValuePairList
      `Prelude.hashWithSalt` statusCode

instance Prelude.NFData CloudWatchMetricsDataSummary where
  rnf CloudWatchMetricsDataSummary' {..} =
    Prelude.rnf timestampMetricValuePairList
      `Prelude.seq` Prelude.rnf statusCode
