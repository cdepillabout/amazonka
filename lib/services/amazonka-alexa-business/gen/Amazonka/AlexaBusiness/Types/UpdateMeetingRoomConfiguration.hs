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
-- Module      : Amazonka.AlexaBusiness.Types.UpdateMeetingRoomConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AlexaBusiness.Types.UpdateMeetingRoomConfiguration where

import Amazonka.AlexaBusiness.Types.UpdateEndOfMeetingReminder
import Amazonka.AlexaBusiness.Types.UpdateInstantBooking
import Amazonka.AlexaBusiness.Types.UpdateRequireCheckIn
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Updates meeting room settings of a room profile.
--
-- /See:/ 'newUpdateMeetingRoomConfiguration' smart constructor.
data UpdateMeetingRoomConfiguration = UpdateMeetingRoomConfiguration'
  { -- | Settings to automatically book an available room available for a
    -- configured duration when joining a meeting with Alexa.
    instantBooking :: Prelude.Maybe UpdateInstantBooking,
    -- | Settings for the end of meeting reminder feature that are applied to a
    -- room profile. The end of meeting reminder enables Alexa to remind users
    -- when a meeting is ending.
    endOfMeetingReminder :: Prelude.Maybe UpdateEndOfMeetingReminder,
    -- | Whether room utilization metrics are enabled or not.
    roomUtilizationMetricsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Settings for requiring a check in when a room is reserved. Alexa can
    -- cancel a room reservation if it\'s not checked into to make the room
    -- available for others. Users can check in by joining the meeting with
    -- Alexa or an AVS device, or by saying “Alexa, check in.”
    requireCheckIn :: Prelude.Maybe UpdateRequireCheckIn
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateMeetingRoomConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instantBooking', 'updateMeetingRoomConfiguration_instantBooking' - Settings to automatically book an available room available for a
-- configured duration when joining a meeting with Alexa.
--
-- 'endOfMeetingReminder', 'updateMeetingRoomConfiguration_endOfMeetingReminder' - Settings for the end of meeting reminder feature that are applied to a
-- room profile. The end of meeting reminder enables Alexa to remind users
-- when a meeting is ending.
--
-- 'roomUtilizationMetricsEnabled', 'updateMeetingRoomConfiguration_roomUtilizationMetricsEnabled' - Whether room utilization metrics are enabled or not.
--
-- 'requireCheckIn', 'updateMeetingRoomConfiguration_requireCheckIn' - Settings for requiring a check in when a room is reserved. Alexa can
-- cancel a room reservation if it\'s not checked into to make the room
-- available for others. Users can check in by joining the meeting with
-- Alexa or an AVS device, or by saying “Alexa, check in.”
newUpdateMeetingRoomConfiguration ::
  UpdateMeetingRoomConfiguration
newUpdateMeetingRoomConfiguration =
  UpdateMeetingRoomConfiguration'
    { instantBooking =
        Prelude.Nothing,
      endOfMeetingReminder = Prelude.Nothing,
      roomUtilizationMetricsEnabled =
        Prelude.Nothing,
      requireCheckIn = Prelude.Nothing
    }

-- | Settings to automatically book an available room available for a
-- configured duration when joining a meeting with Alexa.
updateMeetingRoomConfiguration_instantBooking :: Lens.Lens' UpdateMeetingRoomConfiguration (Prelude.Maybe UpdateInstantBooking)
updateMeetingRoomConfiguration_instantBooking = Lens.lens (\UpdateMeetingRoomConfiguration' {instantBooking} -> instantBooking) (\s@UpdateMeetingRoomConfiguration' {} a -> s {instantBooking = a} :: UpdateMeetingRoomConfiguration)

-- | Settings for the end of meeting reminder feature that are applied to a
-- room profile. The end of meeting reminder enables Alexa to remind users
-- when a meeting is ending.
updateMeetingRoomConfiguration_endOfMeetingReminder :: Lens.Lens' UpdateMeetingRoomConfiguration (Prelude.Maybe UpdateEndOfMeetingReminder)
updateMeetingRoomConfiguration_endOfMeetingReminder = Lens.lens (\UpdateMeetingRoomConfiguration' {endOfMeetingReminder} -> endOfMeetingReminder) (\s@UpdateMeetingRoomConfiguration' {} a -> s {endOfMeetingReminder = a} :: UpdateMeetingRoomConfiguration)

-- | Whether room utilization metrics are enabled or not.
updateMeetingRoomConfiguration_roomUtilizationMetricsEnabled :: Lens.Lens' UpdateMeetingRoomConfiguration (Prelude.Maybe Prelude.Bool)
updateMeetingRoomConfiguration_roomUtilizationMetricsEnabled = Lens.lens (\UpdateMeetingRoomConfiguration' {roomUtilizationMetricsEnabled} -> roomUtilizationMetricsEnabled) (\s@UpdateMeetingRoomConfiguration' {} a -> s {roomUtilizationMetricsEnabled = a} :: UpdateMeetingRoomConfiguration)

-- | Settings for requiring a check in when a room is reserved. Alexa can
-- cancel a room reservation if it\'s not checked into to make the room
-- available for others. Users can check in by joining the meeting with
-- Alexa or an AVS device, or by saying “Alexa, check in.”
updateMeetingRoomConfiguration_requireCheckIn :: Lens.Lens' UpdateMeetingRoomConfiguration (Prelude.Maybe UpdateRequireCheckIn)
updateMeetingRoomConfiguration_requireCheckIn = Lens.lens (\UpdateMeetingRoomConfiguration' {requireCheckIn} -> requireCheckIn) (\s@UpdateMeetingRoomConfiguration' {} a -> s {requireCheckIn = a} :: UpdateMeetingRoomConfiguration)

instance
  Prelude.Hashable
    UpdateMeetingRoomConfiguration
  where
  hashWithSalt
    _salt
    UpdateMeetingRoomConfiguration' {..} =
      _salt `Prelude.hashWithSalt` instantBooking
        `Prelude.hashWithSalt` endOfMeetingReminder
        `Prelude.hashWithSalt` roomUtilizationMetricsEnabled
        `Prelude.hashWithSalt` requireCheckIn

instance
  Prelude.NFData
    UpdateMeetingRoomConfiguration
  where
  rnf UpdateMeetingRoomConfiguration' {..} =
    Prelude.rnf instantBooking
      `Prelude.seq` Prelude.rnf endOfMeetingReminder
      `Prelude.seq` Prelude.rnf roomUtilizationMetricsEnabled
      `Prelude.seq` Prelude.rnf requireCheckIn

instance Core.ToJSON UpdateMeetingRoomConfiguration where
  toJSON UpdateMeetingRoomConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("InstantBooking" Core..=)
              Prelude.<$> instantBooking,
            ("EndOfMeetingReminder" Core..=)
              Prelude.<$> endOfMeetingReminder,
            ("RoomUtilizationMetricsEnabled" Core..=)
              Prelude.<$> roomUtilizationMetricsEnabled,
            ("RequireCheckIn" Core..=)
              Prelude.<$> requireCheckIn
          ]
      )
