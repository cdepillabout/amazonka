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
-- Module      : Amazonka.XRay.Types.EdgeStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.XRay.Types.EdgeStatistics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.XRay.Types.ErrorStatistics
import Amazonka.XRay.Types.FaultStatistics

-- | Response statistics for an edge.
--
-- /See:/ 'newEdgeStatistics' smart constructor.
data EdgeStatistics = EdgeStatistics'
  { -- | Information about requests that failed with a 5xx Server Error status
    -- code.
    faultStatistics :: Prelude.Maybe FaultStatistics,
    -- | The number of requests that completed with a 2xx Success status code.
    okCount :: Prelude.Maybe Prelude.Integer,
    -- | The aggregate response time of completed requests.
    totalResponseTime :: Prelude.Maybe Prelude.Double,
    -- | The total number of completed requests.
    totalCount :: Prelude.Maybe Prelude.Integer,
    -- | Information about requests that failed with a 4xx Client Error status
    -- code.
    errorStatistics :: Prelude.Maybe ErrorStatistics
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EdgeStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'faultStatistics', 'edgeStatistics_faultStatistics' - Information about requests that failed with a 5xx Server Error status
-- code.
--
-- 'okCount', 'edgeStatistics_okCount' - The number of requests that completed with a 2xx Success status code.
--
-- 'totalResponseTime', 'edgeStatistics_totalResponseTime' - The aggregate response time of completed requests.
--
-- 'totalCount', 'edgeStatistics_totalCount' - The total number of completed requests.
--
-- 'errorStatistics', 'edgeStatistics_errorStatistics' - Information about requests that failed with a 4xx Client Error status
-- code.
newEdgeStatistics ::
  EdgeStatistics
newEdgeStatistics =
  EdgeStatistics'
    { faultStatistics = Prelude.Nothing,
      okCount = Prelude.Nothing,
      totalResponseTime = Prelude.Nothing,
      totalCount = Prelude.Nothing,
      errorStatistics = Prelude.Nothing
    }

-- | Information about requests that failed with a 5xx Server Error status
-- code.
edgeStatistics_faultStatistics :: Lens.Lens' EdgeStatistics (Prelude.Maybe FaultStatistics)
edgeStatistics_faultStatistics = Lens.lens (\EdgeStatistics' {faultStatistics} -> faultStatistics) (\s@EdgeStatistics' {} a -> s {faultStatistics = a} :: EdgeStatistics)

-- | The number of requests that completed with a 2xx Success status code.
edgeStatistics_okCount :: Lens.Lens' EdgeStatistics (Prelude.Maybe Prelude.Integer)
edgeStatistics_okCount = Lens.lens (\EdgeStatistics' {okCount} -> okCount) (\s@EdgeStatistics' {} a -> s {okCount = a} :: EdgeStatistics)

-- | The aggregate response time of completed requests.
edgeStatistics_totalResponseTime :: Lens.Lens' EdgeStatistics (Prelude.Maybe Prelude.Double)
edgeStatistics_totalResponseTime = Lens.lens (\EdgeStatistics' {totalResponseTime} -> totalResponseTime) (\s@EdgeStatistics' {} a -> s {totalResponseTime = a} :: EdgeStatistics)

-- | The total number of completed requests.
edgeStatistics_totalCount :: Lens.Lens' EdgeStatistics (Prelude.Maybe Prelude.Integer)
edgeStatistics_totalCount = Lens.lens (\EdgeStatistics' {totalCount} -> totalCount) (\s@EdgeStatistics' {} a -> s {totalCount = a} :: EdgeStatistics)

-- | Information about requests that failed with a 4xx Client Error status
-- code.
edgeStatistics_errorStatistics :: Lens.Lens' EdgeStatistics (Prelude.Maybe ErrorStatistics)
edgeStatistics_errorStatistics = Lens.lens (\EdgeStatistics' {errorStatistics} -> errorStatistics) (\s@EdgeStatistics' {} a -> s {errorStatistics = a} :: EdgeStatistics)

instance Core.FromJSON EdgeStatistics where
  parseJSON =
    Core.withObject
      "EdgeStatistics"
      ( \x ->
          EdgeStatistics'
            Prelude.<$> (x Core..:? "FaultStatistics")
            Prelude.<*> (x Core..:? "OkCount")
            Prelude.<*> (x Core..:? "TotalResponseTime")
            Prelude.<*> (x Core..:? "TotalCount")
            Prelude.<*> (x Core..:? "ErrorStatistics")
      )

instance Prelude.Hashable EdgeStatistics where
  hashWithSalt _salt EdgeStatistics' {..} =
    _salt `Prelude.hashWithSalt` faultStatistics
      `Prelude.hashWithSalt` okCount
      `Prelude.hashWithSalt` totalResponseTime
      `Prelude.hashWithSalt` totalCount
      `Prelude.hashWithSalt` errorStatistics

instance Prelude.NFData EdgeStatistics where
  rnf EdgeStatistics' {..} =
    Prelude.rnf faultStatistics
      `Prelude.seq` Prelude.rnf okCount
      `Prelude.seq` Prelude.rnf totalResponseTime
      `Prelude.seq` Prelude.rnf totalCount
      `Prelude.seq` Prelude.rnf errorStatistics
