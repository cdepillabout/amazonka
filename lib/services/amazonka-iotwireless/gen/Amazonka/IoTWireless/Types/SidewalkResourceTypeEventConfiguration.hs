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
-- Module      : Amazonka.IoTWireless.Types.SidewalkResourceTypeEventConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.SidewalkResourceTypeEventConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types.EventNotificationTopicStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Sidewalk resource type event configuration object for enabling or
-- disabling topic.
--
-- /See:/ 'newSidewalkResourceTypeEventConfiguration' smart constructor.
data SidewalkResourceTypeEventConfiguration = SidewalkResourceTypeEventConfiguration'
  { -- | Enum to denote whether the wireless device join event topic is enabled
    -- or disabled.
    wirelessDeviceEventTopic :: Prelude.Maybe EventNotificationTopicStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SidewalkResourceTypeEventConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'wirelessDeviceEventTopic', 'sidewalkResourceTypeEventConfiguration_wirelessDeviceEventTopic' - Enum to denote whether the wireless device join event topic is enabled
-- or disabled.
newSidewalkResourceTypeEventConfiguration ::
  SidewalkResourceTypeEventConfiguration
newSidewalkResourceTypeEventConfiguration =
  SidewalkResourceTypeEventConfiguration'
    { wirelessDeviceEventTopic =
        Prelude.Nothing
    }

-- | Enum to denote whether the wireless device join event topic is enabled
-- or disabled.
sidewalkResourceTypeEventConfiguration_wirelessDeviceEventTopic :: Lens.Lens' SidewalkResourceTypeEventConfiguration (Prelude.Maybe EventNotificationTopicStatus)
sidewalkResourceTypeEventConfiguration_wirelessDeviceEventTopic = Lens.lens (\SidewalkResourceTypeEventConfiguration' {wirelessDeviceEventTopic} -> wirelessDeviceEventTopic) (\s@SidewalkResourceTypeEventConfiguration' {} a -> s {wirelessDeviceEventTopic = a} :: SidewalkResourceTypeEventConfiguration)

instance
  Core.FromJSON
    SidewalkResourceTypeEventConfiguration
  where
  parseJSON =
    Core.withObject
      "SidewalkResourceTypeEventConfiguration"
      ( \x ->
          SidewalkResourceTypeEventConfiguration'
            Prelude.<$> (x Core..:? "WirelessDeviceEventTopic")
      )

instance
  Prelude.Hashable
    SidewalkResourceTypeEventConfiguration
  where
  hashWithSalt
    _salt
    SidewalkResourceTypeEventConfiguration' {..} =
      _salt
        `Prelude.hashWithSalt` wirelessDeviceEventTopic

instance
  Prelude.NFData
    SidewalkResourceTypeEventConfiguration
  where
  rnf SidewalkResourceTypeEventConfiguration' {..} =
    Prelude.rnf wirelessDeviceEventTopic

instance
  Core.ToJSON
    SidewalkResourceTypeEventConfiguration
  where
  toJSON SidewalkResourceTypeEventConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("WirelessDeviceEventTopic" Core..=)
              Prelude.<$> wirelessDeviceEventTopic
          ]
      )
