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
-- Module      : Amazonka.IoTWireless.Types.LoRaWANJoinEventNotificationConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.LoRaWANJoinEventNotificationConfigurations where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types.EventNotificationTopicStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Object for LoRaWAN join resource type event configuration.
--
-- /See:/ 'newLoRaWANJoinEventNotificationConfigurations' smart constructor.
data LoRaWANJoinEventNotificationConfigurations = LoRaWANJoinEventNotificationConfigurations'
  { -- | Enum to denote whether the Dev EUI join event topic is enabled or
    -- disabled.
    devEuiEventTopic :: Prelude.Maybe EventNotificationTopicStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANJoinEventNotificationConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'devEuiEventTopic', 'loRaWANJoinEventNotificationConfigurations_devEuiEventTopic' - Enum to denote whether the Dev EUI join event topic is enabled or
-- disabled.
newLoRaWANJoinEventNotificationConfigurations ::
  LoRaWANJoinEventNotificationConfigurations
newLoRaWANJoinEventNotificationConfigurations =
  LoRaWANJoinEventNotificationConfigurations'
    { devEuiEventTopic =
        Prelude.Nothing
    }

-- | Enum to denote whether the Dev EUI join event topic is enabled or
-- disabled.
loRaWANJoinEventNotificationConfigurations_devEuiEventTopic :: Lens.Lens' LoRaWANJoinEventNotificationConfigurations (Prelude.Maybe EventNotificationTopicStatus)
loRaWANJoinEventNotificationConfigurations_devEuiEventTopic = Lens.lens (\LoRaWANJoinEventNotificationConfigurations' {devEuiEventTopic} -> devEuiEventTopic) (\s@LoRaWANJoinEventNotificationConfigurations' {} a -> s {devEuiEventTopic = a} :: LoRaWANJoinEventNotificationConfigurations)

instance
  Core.FromJSON
    LoRaWANJoinEventNotificationConfigurations
  where
  parseJSON =
    Core.withObject
      "LoRaWANJoinEventNotificationConfigurations"
      ( \x ->
          LoRaWANJoinEventNotificationConfigurations'
            Prelude.<$> (x Core..:? "DevEuiEventTopic")
      )

instance
  Prelude.Hashable
    LoRaWANJoinEventNotificationConfigurations
  where
  hashWithSalt
    _salt
    LoRaWANJoinEventNotificationConfigurations' {..} =
      _salt `Prelude.hashWithSalt` devEuiEventTopic

instance
  Prelude.NFData
    LoRaWANJoinEventNotificationConfigurations
  where
  rnf LoRaWANJoinEventNotificationConfigurations' {..} =
    Prelude.rnf devEuiEventTopic

instance
  Core.ToJSON
    LoRaWANJoinEventNotificationConfigurations
  where
  toJSON
    LoRaWANJoinEventNotificationConfigurations' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("DevEuiEventTopic" Core..=)
                Prelude.<$> devEuiEventTopic
            ]
        )
