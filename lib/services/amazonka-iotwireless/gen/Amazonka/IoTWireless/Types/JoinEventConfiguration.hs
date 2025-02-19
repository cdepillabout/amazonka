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
-- Module      : Amazonka.IoTWireless.Types.JoinEventConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.JoinEventConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types.EventNotificationTopicStatus
import Amazonka.IoTWireless.Types.LoRaWANJoinEventNotificationConfigurations
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Join event configuration object for enabling or disabling topic.
--
-- /See:/ 'newJoinEventConfiguration' smart constructor.
data JoinEventConfiguration = JoinEventConfiguration'
  { -- | Join event configuration object for enabling or disabling LoRaWAN
    -- related event topics.
    loRaWAN :: Prelude.Maybe LoRaWANJoinEventNotificationConfigurations,
    -- | Enum to denote whether the wireless device id join event topic is
    -- enabled or disabled.
    wirelessDeviceIdEventTopic :: Prelude.Maybe EventNotificationTopicStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JoinEventConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loRaWAN', 'joinEventConfiguration_loRaWAN' - Join event configuration object for enabling or disabling LoRaWAN
-- related event topics.
--
-- 'wirelessDeviceIdEventTopic', 'joinEventConfiguration_wirelessDeviceIdEventTopic' - Enum to denote whether the wireless device id join event topic is
-- enabled or disabled.
newJoinEventConfiguration ::
  JoinEventConfiguration
newJoinEventConfiguration =
  JoinEventConfiguration'
    { loRaWAN = Prelude.Nothing,
      wirelessDeviceIdEventTopic = Prelude.Nothing
    }

-- | Join event configuration object for enabling or disabling LoRaWAN
-- related event topics.
joinEventConfiguration_loRaWAN :: Lens.Lens' JoinEventConfiguration (Prelude.Maybe LoRaWANJoinEventNotificationConfigurations)
joinEventConfiguration_loRaWAN = Lens.lens (\JoinEventConfiguration' {loRaWAN} -> loRaWAN) (\s@JoinEventConfiguration' {} a -> s {loRaWAN = a} :: JoinEventConfiguration)

-- | Enum to denote whether the wireless device id join event topic is
-- enabled or disabled.
joinEventConfiguration_wirelessDeviceIdEventTopic :: Lens.Lens' JoinEventConfiguration (Prelude.Maybe EventNotificationTopicStatus)
joinEventConfiguration_wirelessDeviceIdEventTopic = Lens.lens (\JoinEventConfiguration' {wirelessDeviceIdEventTopic} -> wirelessDeviceIdEventTopic) (\s@JoinEventConfiguration' {} a -> s {wirelessDeviceIdEventTopic = a} :: JoinEventConfiguration)

instance Core.FromJSON JoinEventConfiguration where
  parseJSON =
    Core.withObject
      "JoinEventConfiguration"
      ( \x ->
          JoinEventConfiguration'
            Prelude.<$> (x Core..:? "LoRaWAN")
            Prelude.<*> (x Core..:? "WirelessDeviceIdEventTopic")
      )

instance Prelude.Hashable JoinEventConfiguration where
  hashWithSalt _salt JoinEventConfiguration' {..} =
    _salt `Prelude.hashWithSalt` loRaWAN
      `Prelude.hashWithSalt` wirelessDeviceIdEventTopic

instance Prelude.NFData JoinEventConfiguration where
  rnf JoinEventConfiguration' {..} =
    Prelude.rnf loRaWAN
      `Prelude.seq` Prelude.rnf wirelessDeviceIdEventTopic

instance Core.ToJSON JoinEventConfiguration where
  toJSON JoinEventConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LoRaWAN" Core..=) Prelude.<$> loRaWAN,
            ("WirelessDeviceIdEventTopic" Core..=)
              Prelude.<$> wirelessDeviceIdEventTopic
          ]
      )
