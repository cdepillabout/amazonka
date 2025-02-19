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
-- Module      : Amazonka.CodeGuruProfiler.Types.AnomalyInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruProfiler.Types.AnomalyInstance where

import Amazonka.CodeGuruProfiler.Types.UserFeedback
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The specific duration in which the metric is flagged as anomalous.
--
-- /See:/ 'newAnomalyInstance' smart constructor.
data AnomalyInstance = AnomalyInstance'
  { -- | Feedback type on a specific instance of anomaly submitted by the user.
    userFeedback :: Prelude.Maybe UserFeedback,
    -- | The end time of the period during which the metric is flagged as
    -- anomalous. This is specified using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The universally unique identifier (UUID) of an instance of an anomaly in
    -- a metric.
    id :: Prelude.Text,
    -- | The start time of the period during which the metric is flagged as
    -- anomalous. This is specified using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    startTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnomalyInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userFeedback', 'anomalyInstance_userFeedback' - Feedback type on a specific instance of anomaly submitted by the user.
--
-- 'endTime', 'anomalyInstance_endTime' - The end time of the period during which the metric is flagged as
-- anomalous. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
--
-- 'id', 'anomalyInstance_id' - The universally unique identifier (UUID) of an instance of an anomaly in
-- a metric.
--
-- 'startTime', 'anomalyInstance_startTime' - The start time of the period during which the metric is flagged as
-- anomalous. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
newAnomalyInstance ::
  -- | 'id'
  Prelude.Text ->
  -- | 'startTime'
  Prelude.UTCTime ->
  AnomalyInstance
newAnomalyInstance pId_ pStartTime_ =
  AnomalyInstance'
    { userFeedback = Prelude.Nothing,
      endTime = Prelude.Nothing,
      id = pId_,
      startTime = Core._Time Lens.# pStartTime_
    }

-- | Feedback type on a specific instance of anomaly submitted by the user.
anomalyInstance_userFeedback :: Lens.Lens' AnomalyInstance (Prelude.Maybe UserFeedback)
anomalyInstance_userFeedback = Lens.lens (\AnomalyInstance' {userFeedback} -> userFeedback) (\s@AnomalyInstance' {} a -> s {userFeedback = a} :: AnomalyInstance)

-- | The end time of the period during which the metric is flagged as
-- anomalous. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
anomalyInstance_endTime :: Lens.Lens' AnomalyInstance (Prelude.Maybe Prelude.UTCTime)
anomalyInstance_endTime = Lens.lens (\AnomalyInstance' {endTime} -> endTime) (\s@AnomalyInstance' {} a -> s {endTime = a} :: AnomalyInstance) Prelude.. Lens.mapping Core._Time

-- | The universally unique identifier (UUID) of an instance of an anomaly in
-- a metric.
anomalyInstance_id :: Lens.Lens' AnomalyInstance Prelude.Text
anomalyInstance_id = Lens.lens (\AnomalyInstance' {id} -> id) (\s@AnomalyInstance' {} a -> s {id = a} :: AnomalyInstance)

-- | The start time of the period during which the metric is flagged as
-- anomalous. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
anomalyInstance_startTime :: Lens.Lens' AnomalyInstance Prelude.UTCTime
anomalyInstance_startTime = Lens.lens (\AnomalyInstance' {startTime} -> startTime) (\s@AnomalyInstance' {} a -> s {startTime = a} :: AnomalyInstance) Prelude.. Core._Time

instance Core.FromJSON AnomalyInstance where
  parseJSON =
    Core.withObject
      "AnomalyInstance"
      ( \x ->
          AnomalyInstance'
            Prelude.<$> (x Core..:? "userFeedback")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "startTime")
      )

instance Prelude.Hashable AnomalyInstance where
  hashWithSalt _salt AnomalyInstance' {..} =
    _salt `Prelude.hashWithSalt` userFeedback
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData AnomalyInstance where
  rnf AnomalyInstance' {..} =
    Prelude.rnf userFeedback
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf startTime
