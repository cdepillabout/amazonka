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
-- Module      : Amazonka.IoTWireless.Types.ConnectionStatusEventConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.ConnectionStatusEventConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types.EventNotificationTopicStatus
import Amazonka.IoTWireless.Types.LoRaWANConnectionStatusEventNotificationConfigurations
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Connection status event configuration object for enabling or disabling
-- topic.
--
-- /See:/ 'newConnectionStatusEventConfiguration' smart constructor.
data ConnectionStatusEventConfiguration = ConnectionStatusEventConfiguration'
  { -- | Connection status event configuration object for enabling or disabling
    -- LoRaWAN related event topics.
    loRaWAN :: Prelude.Maybe LoRaWANConnectionStatusEventNotificationConfigurations,
    -- | Enum to denote whether the wireless gateway ID connection status event
    -- topic is enabled or disabled.
    wirelessGatewayIdEventTopic :: Prelude.Maybe EventNotificationTopicStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionStatusEventConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loRaWAN', 'connectionStatusEventConfiguration_loRaWAN' - Connection status event configuration object for enabling or disabling
-- LoRaWAN related event topics.
--
-- 'wirelessGatewayIdEventTopic', 'connectionStatusEventConfiguration_wirelessGatewayIdEventTopic' - Enum to denote whether the wireless gateway ID connection status event
-- topic is enabled or disabled.
newConnectionStatusEventConfiguration ::
  ConnectionStatusEventConfiguration
newConnectionStatusEventConfiguration =
  ConnectionStatusEventConfiguration'
    { loRaWAN =
        Prelude.Nothing,
      wirelessGatewayIdEventTopic =
        Prelude.Nothing
    }

-- | Connection status event configuration object for enabling or disabling
-- LoRaWAN related event topics.
connectionStatusEventConfiguration_loRaWAN :: Lens.Lens' ConnectionStatusEventConfiguration (Prelude.Maybe LoRaWANConnectionStatusEventNotificationConfigurations)
connectionStatusEventConfiguration_loRaWAN = Lens.lens (\ConnectionStatusEventConfiguration' {loRaWAN} -> loRaWAN) (\s@ConnectionStatusEventConfiguration' {} a -> s {loRaWAN = a} :: ConnectionStatusEventConfiguration)

-- | Enum to denote whether the wireless gateway ID connection status event
-- topic is enabled or disabled.
connectionStatusEventConfiguration_wirelessGatewayIdEventTopic :: Lens.Lens' ConnectionStatusEventConfiguration (Prelude.Maybe EventNotificationTopicStatus)
connectionStatusEventConfiguration_wirelessGatewayIdEventTopic = Lens.lens (\ConnectionStatusEventConfiguration' {wirelessGatewayIdEventTopic} -> wirelessGatewayIdEventTopic) (\s@ConnectionStatusEventConfiguration' {} a -> s {wirelessGatewayIdEventTopic = a} :: ConnectionStatusEventConfiguration)

instance
  Core.FromJSON
    ConnectionStatusEventConfiguration
  where
  parseJSON =
    Core.withObject
      "ConnectionStatusEventConfiguration"
      ( \x ->
          ConnectionStatusEventConfiguration'
            Prelude.<$> (x Core..:? "LoRaWAN")
            Prelude.<*> (x Core..:? "WirelessGatewayIdEventTopic")
      )

instance
  Prelude.Hashable
    ConnectionStatusEventConfiguration
  where
  hashWithSalt
    _salt
    ConnectionStatusEventConfiguration' {..} =
      _salt `Prelude.hashWithSalt` loRaWAN
        `Prelude.hashWithSalt` wirelessGatewayIdEventTopic

instance
  Prelude.NFData
    ConnectionStatusEventConfiguration
  where
  rnf ConnectionStatusEventConfiguration' {..} =
    Prelude.rnf loRaWAN
      `Prelude.seq` Prelude.rnf wirelessGatewayIdEventTopic

instance
  Core.ToJSON
    ConnectionStatusEventConfiguration
  where
  toJSON ConnectionStatusEventConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LoRaWAN" Core..=) Prelude.<$> loRaWAN,
            ("WirelessGatewayIdEventTopic" Core..=)
              Prelude.<$> wirelessGatewayIdEventTopic
          ]
      )
