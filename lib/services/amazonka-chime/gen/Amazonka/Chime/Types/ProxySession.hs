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
-- Module      : Amazonka.Chime.Types.ProxySession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.ProxySession where

import Amazonka.Chime.Types.Capability
import Amazonka.Chime.Types.GeoMatchLevel
import Amazonka.Chime.Types.GeoMatchParams
import Amazonka.Chime.Types.NumberSelectionBehavior
import Amazonka.Chime.Types.Participant
import Amazonka.Chime.Types.ProxySessionStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The proxy session for an Amazon Chime Voice Connector.
--
-- /See:/ 'newProxySession' smart constructor.
data ProxySession = ProxySession'
  { -- | The name of the proxy session.
    name :: Prelude.Maybe Prelude.Text,
    -- | The country and area code for the proxy phone number.
    geoMatchParams :: Prelude.Maybe GeoMatchParams,
    -- | The Amazon Chime voice connector ID.
    voiceConnectorId :: Prelude.Maybe Prelude.Text,
    -- | The created time stamp, in ISO 8601 format.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The updated time stamp, in ISO 8601 format.
    updatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The proxy session ID.
    proxySessionId :: Prelude.Maybe Prelude.Text,
    -- | The status of the proxy session.
    status :: Prelude.Maybe ProxySessionStatus,
    -- | The ended time stamp, in ISO 8601 format.
    endedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The number of minutes allowed for the proxy session.
    expiryMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The proxy session capabilities.
    capabilities :: Prelude.Maybe [Capability],
    -- | The preference for matching the country or area code of the proxy phone
    -- number with that of the first participant.
    geoMatchLevel :: Prelude.Maybe GeoMatchLevel,
    -- | The preference for proxy phone number reuse, or stickiness, between the
    -- same participants across sessions.
    numberSelectionBehavior :: Prelude.Maybe NumberSelectionBehavior,
    -- | The proxy session participants.
    participants :: Prelude.Maybe [Participant]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProxySession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'proxySession_name' - The name of the proxy session.
--
-- 'geoMatchParams', 'proxySession_geoMatchParams' - The country and area code for the proxy phone number.
--
-- 'voiceConnectorId', 'proxySession_voiceConnectorId' - The Amazon Chime voice connector ID.
--
-- 'createdTimestamp', 'proxySession_createdTimestamp' - The created time stamp, in ISO 8601 format.
--
-- 'updatedTimestamp', 'proxySession_updatedTimestamp' - The updated time stamp, in ISO 8601 format.
--
-- 'proxySessionId', 'proxySession_proxySessionId' - The proxy session ID.
--
-- 'status', 'proxySession_status' - The status of the proxy session.
--
-- 'endedTimestamp', 'proxySession_endedTimestamp' - The ended time stamp, in ISO 8601 format.
--
-- 'expiryMinutes', 'proxySession_expiryMinutes' - The number of minutes allowed for the proxy session.
--
-- 'capabilities', 'proxySession_capabilities' - The proxy session capabilities.
--
-- 'geoMatchLevel', 'proxySession_geoMatchLevel' - The preference for matching the country or area code of the proxy phone
-- number with that of the first participant.
--
-- 'numberSelectionBehavior', 'proxySession_numberSelectionBehavior' - The preference for proxy phone number reuse, or stickiness, between the
-- same participants across sessions.
--
-- 'participants', 'proxySession_participants' - The proxy session participants.
newProxySession ::
  ProxySession
newProxySession =
  ProxySession'
    { name = Prelude.Nothing,
      geoMatchParams = Prelude.Nothing,
      voiceConnectorId = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      updatedTimestamp = Prelude.Nothing,
      proxySessionId = Prelude.Nothing,
      status = Prelude.Nothing,
      endedTimestamp = Prelude.Nothing,
      expiryMinutes = Prelude.Nothing,
      capabilities = Prelude.Nothing,
      geoMatchLevel = Prelude.Nothing,
      numberSelectionBehavior = Prelude.Nothing,
      participants = Prelude.Nothing
    }

-- | The name of the proxy session.
proxySession_name :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.Text)
proxySession_name = Lens.lens (\ProxySession' {name} -> name) (\s@ProxySession' {} a -> s {name = a} :: ProxySession)

-- | The country and area code for the proxy phone number.
proxySession_geoMatchParams :: Lens.Lens' ProxySession (Prelude.Maybe GeoMatchParams)
proxySession_geoMatchParams = Lens.lens (\ProxySession' {geoMatchParams} -> geoMatchParams) (\s@ProxySession' {} a -> s {geoMatchParams = a} :: ProxySession)

-- | The Amazon Chime voice connector ID.
proxySession_voiceConnectorId :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.Text)
proxySession_voiceConnectorId = Lens.lens (\ProxySession' {voiceConnectorId} -> voiceConnectorId) (\s@ProxySession' {} a -> s {voiceConnectorId = a} :: ProxySession)

-- | The created time stamp, in ISO 8601 format.
proxySession_createdTimestamp :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.UTCTime)
proxySession_createdTimestamp = Lens.lens (\ProxySession' {createdTimestamp} -> createdTimestamp) (\s@ProxySession' {} a -> s {createdTimestamp = a} :: ProxySession) Prelude.. Lens.mapping Core._Time

-- | The updated time stamp, in ISO 8601 format.
proxySession_updatedTimestamp :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.UTCTime)
proxySession_updatedTimestamp = Lens.lens (\ProxySession' {updatedTimestamp} -> updatedTimestamp) (\s@ProxySession' {} a -> s {updatedTimestamp = a} :: ProxySession) Prelude.. Lens.mapping Core._Time

-- | The proxy session ID.
proxySession_proxySessionId :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.Text)
proxySession_proxySessionId = Lens.lens (\ProxySession' {proxySessionId} -> proxySessionId) (\s@ProxySession' {} a -> s {proxySessionId = a} :: ProxySession)

-- | The status of the proxy session.
proxySession_status :: Lens.Lens' ProxySession (Prelude.Maybe ProxySessionStatus)
proxySession_status = Lens.lens (\ProxySession' {status} -> status) (\s@ProxySession' {} a -> s {status = a} :: ProxySession)

-- | The ended time stamp, in ISO 8601 format.
proxySession_endedTimestamp :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.UTCTime)
proxySession_endedTimestamp = Lens.lens (\ProxySession' {endedTimestamp} -> endedTimestamp) (\s@ProxySession' {} a -> s {endedTimestamp = a} :: ProxySession) Prelude.. Lens.mapping Core._Time

-- | The number of minutes allowed for the proxy session.
proxySession_expiryMinutes :: Lens.Lens' ProxySession (Prelude.Maybe Prelude.Natural)
proxySession_expiryMinutes = Lens.lens (\ProxySession' {expiryMinutes} -> expiryMinutes) (\s@ProxySession' {} a -> s {expiryMinutes = a} :: ProxySession)

-- | The proxy session capabilities.
proxySession_capabilities :: Lens.Lens' ProxySession (Prelude.Maybe [Capability])
proxySession_capabilities = Lens.lens (\ProxySession' {capabilities} -> capabilities) (\s@ProxySession' {} a -> s {capabilities = a} :: ProxySession) Prelude.. Lens.mapping Lens.coerced

-- | The preference for matching the country or area code of the proxy phone
-- number with that of the first participant.
proxySession_geoMatchLevel :: Lens.Lens' ProxySession (Prelude.Maybe GeoMatchLevel)
proxySession_geoMatchLevel = Lens.lens (\ProxySession' {geoMatchLevel} -> geoMatchLevel) (\s@ProxySession' {} a -> s {geoMatchLevel = a} :: ProxySession)

-- | The preference for proxy phone number reuse, or stickiness, between the
-- same participants across sessions.
proxySession_numberSelectionBehavior :: Lens.Lens' ProxySession (Prelude.Maybe NumberSelectionBehavior)
proxySession_numberSelectionBehavior = Lens.lens (\ProxySession' {numberSelectionBehavior} -> numberSelectionBehavior) (\s@ProxySession' {} a -> s {numberSelectionBehavior = a} :: ProxySession)

-- | The proxy session participants.
proxySession_participants :: Lens.Lens' ProxySession (Prelude.Maybe [Participant])
proxySession_participants = Lens.lens (\ProxySession' {participants} -> participants) (\s@ProxySession' {} a -> s {participants = a} :: ProxySession) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ProxySession where
  parseJSON =
    Core.withObject
      "ProxySession"
      ( \x ->
          ProxySession'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "GeoMatchParams")
            Prelude.<*> (x Core..:? "VoiceConnectorId")
            Prelude.<*> (x Core..:? "CreatedTimestamp")
            Prelude.<*> (x Core..:? "UpdatedTimestamp")
            Prelude.<*> (x Core..:? "ProxySessionId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "EndedTimestamp")
            Prelude.<*> (x Core..:? "ExpiryMinutes")
            Prelude.<*> (x Core..:? "Capabilities" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "GeoMatchLevel")
            Prelude.<*> (x Core..:? "NumberSelectionBehavior")
            Prelude.<*> (x Core..:? "Participants" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ProxySession where
  hashWithSalt _salt ProxySession' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` geoMatchParams
      `Prelude.hashWithSalt` voiceConnectorId
      `Prelude.hashWithSalt` createdTimestamp
      `Prelude.hashWithSalt` updatedTimestamp
      `Prelude.hashWithSalt` proxySessionId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` endedTimestamp
      `Prelude.hashWithSalt` expiryMinutes
      `Prelude.hashWithSalt` capabilities
      `Prelude.hashWithSalt` geoMatchLevel
      `Prelude.hashWithSalt` numberSelectionBehavior
      `Prelude.hashWithSalt` participants

instance Prelude.NFData ProxySession where
  rnf ProxySession' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf geoMatchParams
      `Prelude.seq` Prelude.rnf voiceConnectorId
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf updatedTimestamp
      `Prelude.seq` Prelude.rnf proxySessionId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endedTimestamp
      `Prelude.seq` Prelude.rnf expiryMinutes
      `Prelude.seq` Prelude.rnf capabilities
      `Prelude.seq` Prelude.rnf geoMatchLevel
      `Prelude.seq` Prelude.rnf numberSelectionBehavior
      `Prelude.seq` Prelude.rnf participants
