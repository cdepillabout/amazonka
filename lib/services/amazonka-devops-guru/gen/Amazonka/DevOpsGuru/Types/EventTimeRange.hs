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
-- Module      : Amazonka.DevOpsGuru.Types.EventTimeRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.EventTimeRange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The time range during which an Amazon Web Services event occurred.
-- Amazon Web Services resource events and metrics are analyzed by DevOps
-- Guru to find anomalous behavior and provide recommendations to improve
-- your operational solutions.
--
-- /See:/ 'newEventTimeRange' smart constructor.
data EventTimeRange = EventTimeRange'
  { -- | The time when the event started.
    fromTime :: Core.POSIX,
    -- | The time when the event ended.
    toTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventTimeRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fromTime', 'eventTimeRange_fromTime' - The time when the event started.
--
-- 'toTime', 'eventTimeRange_toTime' - The time when the event ended.
newEventTimeRange ::
  -- | 'fromTime'
  Prelude.UTCTime ->
  -- | 'toTime'
  Prelude.UTCTime ->
  EventTimeRange
newEventTimeRange pFromTime_ pToTime_ =
  EventTimeRange'
    { fromTime =
        Core._Time Lens.# pFromTime_,
      toTime = Core._Time Lens.# pToTime_
    }

-- | The time when the event started.
eventTimeRange_fromTime :: Lens.Lens' EventTimeRange Prelude.UTCTime
eventTimeRange_fromTime = Lens.lens (\EventTimeRange' {fromTime} -> fromTime) (\s@EventTimeRange' {} a -> s {fromTime = a} :: EventTimeRange) Prelude.. Core._Time

-- | The time when the event ended.
eventTimeRange_toTime :: Lens.Lens' EventTimeRange Prelude.UTCTime
eventTimeRange_toTime = Lens.lens (\EventTimeRange' {toTime} -> toTime) (\s@EventTimeRange' {} a -> s {toTime = a} :: EventTimeRange) Prelude.. Core._Time

instance Prelude.Hashable EventTimeRange where
  hashWithSalt _salt EventTimeRange' {..} =
    _salt `Prelude.hashWithSalt` fromTime
      `Prelude.hashWithSalt` toTime

instance Prelude.NFData EventTimeRange where
  rnf EventTimeRange' {..} =
    Prelude.rnf fromTime
      `Prelude.seq` Prelude.rnf toTime

instance Core.ToJSON EventTimeRange where
  toJSON EventTimeRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("FromTime" Core..= fromTime),
            Prelude.Just ("ToTime" Core..= toTime)
          ]
      )
