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
-- Module      : Amazonka.CloudWatch.Types.AlarmHistoryItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Types.AlarmHistoryItem where

import Amazonka.CloudWatch.Types.AlarmType
import Amazonka.CloudWatch.Types.HistoryItemType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the history of a specific alarm.
--
-- /See:/ 'newAlarmHistoryItem' smart constructor.
data AlarmHistoryItem = AlarmHistoryItem'
  { -- | The type of alarm, either metric alarm or composite alarm.
    alarmType :: Prelude.Maybe AlarmType,
    -- | The time stamp for the alarm history item.
    timestamp :: Prelude.Maybe Core.ISO8601,
    -- | Data about the alarm, in JSON format.
    historyData :: Prelude.Maybe Prelude.Text,
    -- | The type of alarm history item.
    historyItemType :: Prelude.Maybe HistoryItemType,
    -- | A summary of the alarm history, in text format.
    historySummary :: Prelude.Maybe Prelude.Text,
    -- | The descriptive name for the alarm.
    alarmName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlarmHistoryItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmType', 'alarmHistoryItem_alarmType' - The type of alarm, either metric alarm or composite alarm.
--
-- 'timestamp', 'alarmHistoryItem_timestamp' - The time stamp for the alarm history item.
--
-- 'historyData', 'alarmHistoryItem_historyData' - Data about the alarm, in JSON format.
--
-- 'historyItemType', 'alarmHistoryItem_historyItemType' - The type of alarm history item.
--
-- 'historySummary', 'alarmHistoryItem_historySummary' - A summary of the alarm history, in text format.
--
-- 'alarmName', 'alarmHistoryItem_alarmName' - The descriptive name for the alarm.
newAlarmHistoryItem ::
  AlarmHistoryItem
newAlarmHistoryItem =
  AlarmHistoryItem'
    { alarmType = Prelude.Nothing,
      timestamp = Prelude.Nothing,
      historyData = Prelude.Nothing,
      historyItemType = Prelude.Nothing,
      historySummary = Prelude.Nothing,
      alarmName = Prelude.Nothing
    }

-- | The type of alarm, either metric alarm or composite alarm.
alarmHistoryItem_alarmType :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe AlarmType)
alarmHistoryItem_alarmType = Lens.lens (\AlarmHistoryItem' {alarmType} -> alarmType) (\s@AlarmHistoryItem' {} a -> s {alarmType = a} :: AlarmHistoryItem)

-- | The time stamp for the alarm history item.
alarmHistoryItem_timestamp :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe Prelude.UTCTime)
alarmHistoryItem_timestamp = Lens.lens (\AlarmHistoryItem' {timestamp} -> timestamp) (\s@AlarmHistoryItem' {} a -> s {timestamp = a} :: AlarmHistoryItem) Prelude.. Lens.mapping Core._Time

-- | Data about the alarm, in JSON format.
alarmHistoryItem_historyData :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe Prelude.Text)
alarmHistoryItem_historyData = Lens.lens (\AlarmHistoryItem' {historyData} -> historyData) (\s@AlarmHistoryItem' {} a -> s {historyData = a} :: AlarmHistoryItem)

-- | The type of alarm history item.
alarmHistoryItem_historyItemType :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe HistoryItemType)
alarmHistoryItem_historyItemType = Lens.lens (\AlarmHistoryItem' {historyItemType} -> historyItemType) (\s@AlarmHistoryItem' {} a -> s {historyItemType = a} :: AlarmHistoryItem)

-- | A summary of the alarm history, in text format.
alarmHistoryItem_historySummary :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe Prelude.Text)
alarmHistoryItem_historySummary = Lens.lens (\AlarmHistoryItem' {historySummary} -> historySummary) (\s@AlarmHistoryItem' {} a -> s {historySummary = a} :: AlarmHistoryItem)

-- | The descriptive name for the alarm.
alarmHistoryItem_alarmName :: Lens.Lens' AlarmHistoryItem (Prelude.Maybe Prelude.Text)
alarmHistoryItem_alarmName = Lens.lens (\AlarmHistoryItem' {alarmName} -> alarmName) (\s@AlarmHistoryItem' {} a -> s {alarmName = a} :: AlarmHistoryItem)

instance Core.FromXML AlarmHistoryItem where
  parseXML x =
    AlarmHistoryItem'
      Prelude.<$> (x Core..@? "AlarmType")
      Prelude.<*> (x Core..@? "Timestamp")
      Prelude.<*> (x Core..@? "HistoryData")
      Prelude.<*> (x Core..@? "HistoryItemType")
      Prelude.<*> (x Core..@? "HistorySummary")
      Prelude.<*> (x Core..@? "AlarmName")

instance Prelude.Hashable AlarmHistoryItem where
  hashWithSalt _salt AlarmHistoryItem' {..} =
    _salt `Prelude.hashWithSalt` alarmType
      `Prelude.hashWithSalt` timestamp
      `Prelude.hashWithSalt` historyData
      `Prelude.hashWithSalt` historyItemType
      `Prelude.hashWithSalt` historySummary
      `Prelude.hashWithSalt` alarmName

instance Prelude.NFData AlarmHistoryItem where
  rnf AlarmHistoryItem' {..} =
    Prelude.rnf alarmType
      `Prelude.seq` Prelude.rnf timestamp
      `Prelude.seq` Prelude.rnf historyData
      `Prelude.seq` Prelude.rnf historyItemType
      `Prelude.seq` Prelude.rnf historySummary
      `Prelude.seq` Prelude.rnf alarmName
