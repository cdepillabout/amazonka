{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Chime.CreateProxySession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a proxy session on the specified Amazon Chime Voice Connector
-- for the specified participant phone numbers.
module Amazonka.Chime.CreateProxySession
  ( -- * Creating a Request
    CreateProxySession (..),
    newCreateProxySession,

    -- * Request Lenses
    createProxySession_name,
    createProxySession_geoMatchParams,
    createProxySession_expiryMinutes,
    createProxySession_geoMatchLevel,
    createProxySession_numberSelectionBehavior,
    createProxySession_participantPhoneNumbers,
    createProxySession_capabilities,
    createProxySession_voiceConnectorId,

    -- * Destructuring the Response
    CreateProxySessionResponse (..),
    newCreateProxySessionResponse,

    -- * Response Lenses
    createProxySessionResponse_proxySession,
    createProxySessionResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateProxySession' smart constructor.
data CreateProxySession = CreateProxySession'
  { -- | The name of the proxy session.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The country and area code for the proxy phone number.
    geoMatchParams :: Prelude.Maybe GeoMatchParams,
    -- | The number of minutes allowed for the proxy session.
    expiryMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The preference for matching the country or area code of the proxy phone
    -- number with that of the first participant.
    geoMatchLevel :: Prelude.Maybe GeoMatchLevel,
    -- | The preference for proxy phone number reuse, or stickiness, between the
    -- same participants across sessions.
    numberSelectionBehavior :: Prelude.Maybe NumberSelectionBehavior,
    -- | The participant phone numbers.
    participantPhoneNumbers :: Prelude.NonEmpty (Core.Sensitive Prelude.Text),
    -- | The proxy session capabilities.
    capabilities :: [Capability],
    -- | The Amazon Chime voice connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProxySession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createProxySession_name' - The name of the proxy session.
--
-- 'geoMatchParams', 'createProxySession_geoMatchParams' - The country and area code for the proxy phone number.
--
-- 'expiryMinutes', 'createProxySession_expiryMinutes' - The number of minutes allowed for the proxy session.
--
-- 'geoMatchLevel', 'createProxySession_geoMatchLevel' - The preference for matching the country or area code of the proxy phone
-- number with that of the first participant.
--
-- 'numberSelectionBehavior', 'createProxySession_numberSelectionBehavior' - The preference for proxy phone number reuse, or stickiness, between the
-- same participants across sessions.
--
-- 'participantPhoneNumbers', 'createProxySession_participantPhoneNumbers' - The participant phone numbers.
--
-- 'capabilities', 'createProxySession_capabilities' - The proxy session capabilities.
--
-- 'voiceConnectorId', 'createProxySession_voiceConnectorId' - The Amazon Chime voice connector ID.
newCreateProxySession ::
  -- | 'participantPhoneNumbers'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'voiceConnectorId'
  Prelude.Text ->
  CreateProxySession
newCreateProxySession
  pParticipantPhoneNumbers_
  pVoiceConnectorId_ =
    CreateProxySession'
      { name = Prelude.Nothing,
        geoMatchParams = Prelude.Nothing,
        expiryMinutes = Prelude.Nothing,
        geoMatchLevel = Prelude.Nothing,
        numberSelectionBehavior = Prelude.Nothing,
        participantPhoneNumbers =
          Lens.coerced Lens.# pParticipantPhoneNumbers_,
        capabilities = Prelude.mempty,
        voiceConnectorId = pVoiceConnectorId_
      }

-- | The name of the proxy session.
createProxySession_name :: Lens.Lens' CreateProxySession (Prelude.Maybe Prelude.Text)
createProxySession_name = Lens.lens (\CreateProxySession' {name} -> name) (\s@CreateProxySession' {} a -> s {name = a} :: CreateProxySession) Prelude.. Lens.mapping Core._Sensitive

-- | The country and area code for the proxy phone number.
createProxySession_geoMatchParams :: Lens.Lens' CreateProxySession (Prelude.Maybe GeoMatchParams)
createProxySession_geoMatchParams = Lens.lens (\CreateProxySession' {geoMatchParams} -> geoMatchParams) (\s@CreateProxySession' {} a -> s {geoMatchParams = a} :: CreateProxySession)

-- | The number of minutes allowed for the proxy session.
createProxySession_expiryMinutes :: Lens.Lens' CreateProxySession (Prelude.Maybe Prelude.Natural)
createProxySession_expiryMinutes = Lens.lens (\CreateProxySession' {expiryMinutes} -> expiryMinutes) (\s@CreateProxySession' {} a -> s {expiryMinutes = a} :: CreateProxySession)

-- | The preference for matching the country or area code of the proxy phone
-- number with that of the first participant.
createProxySession_geoMatchLevel :: Lens.Lens' CreateProxySession (Prelude.Maybe GeoMatchLevel)
createProxySession_geoMatchLevel = Lens.lens (\CreateProxySession' {geoMatchLevel} -> geoMatchLevel) (\s@CreateProxySession' {} a -> s {geoMatchLevel = a} :: CreateProxySession)

-- | The preference for proxy phone number reuse, or stickiness, between the
-- same participants across sessions.
createProxySession_numberSelectionBehavior :: Lens.Lens' CreateProxySession (Prelude.Maybe NumberSelectionBehavior)
createProxySession_numberSelectionBehavior = Lens.lens (\CreateProxySession' {numberSelectionBehavior} -> numberSelectionBehavior) (\s@CreateProxySession' {} a -> s {numberSelectionBehavior = a} :: CreateProxySession)

-- | The participant phone numbers.
createProxySession_participantPhoneNumbers :: Lens.Lens' CreateProxySession (Prelude.NonEmpty Prelude.Text)
createProxySession_participantPhoneNumbers = Lens.lens (\CreateProxySession' {participantPhoneNumbers} -> participantPhoneNumbers) (\s@CreateProxySession' {} a -> s {participantPhoneNumbers = a} :: CreateProxySession) Prelude.. Lens.coerced

-- | The proxy session capabilities.
createProxySession_capabilities :: Lens.Lens' CreateProxySession [Capability]
createProxySession_capabilities = Lens.lens (\CreateProxySession' {capabilities} -> capabilities) (\s@CreateProxySession' {} a -> s {capabilities = a} :: CreateProxySession) Prelude.. Lens.coerced

-- | The Amazon Chime voice connector ID.
createProxySession_voiceConnectorId :: Lens.Lens' CreateProxySession Prelude.Text
createProxySession_voiceConnectorId = Lens.lens (\CreateProxySession' {voiceConnectorId} -> voiceConnectorId) (\s@CreateProxySession' {} a -> s {voiceConnectorId = a} :: CreateProxySession)

instance Core.AWSRequest CreateProxySession where
  type
    AWSResponse CreateProxySession =
      CreateProxySessionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProxySessionResponse'
            Prelude.<$> (x Core..?> "ProxySession")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateProxySession where
  hashWithSalt _salt CreateProxySession' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` geoMatchParams
      `Prelude.hashWithSalt` expiryMinutes
      `Prelude.hashWithSalt` geoMatchLevel
      `Prelude.hashWithSalt` numberSelectionBehavior
      `Prelude.hashWithSalt` participantPhoneNumbers
      `Prelude.hashWithSalt` capabilities
      `Prelude.hashWithSalt` voiceConnectorId

instance Prelude.NFData CreateProxySession where
  rnf CreateProxySession' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf geoMatchParams
      `Prelude.seq` Prelude.rnf expiryMinutes
      `Prelude.seq` Prelude.rnf geoMatchLevel
      `Prelude.seq` Prelude.rnf numberSelectionBehavior
      `Prelude.seq` Prelude.rnf participantPhoneNumbers
      `Prelude.seq` Prelude.rnf capabilities
      `Prelude.seq` Prelude.rnf voiceConnectorId

instance Core.ToHeaders CreateProxySession where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateProxySession where
  toJSON CreateProxySession' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("GeoMatchParams" Core..=)
              Prelude.<$> geoMatchParams,
            ("ExpiryMinutes" Core..=) Prelude.<$> expiryMinutes,
            ("GeoMatchLevel" Core..=) Prelude.<$> geoMatchLevel,
            ("NumberSelectionBehavior" Core..=)
              Prelude.<$> numberSelectionBehavior,
            Prelude.Just
              ( "ParticipantPhoneNumbers"
                  Core..= participantPhoneNumbers
              ),
            Prelude.Just ("Capabilities" Core..= capabilities)
          ]
      )

instance Core.ToPath CreateProxySession where
  toPath CreateProxySession' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/proxy-sessions"
      ]

instance Core.ToQuery CreateProxySession where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateProxySessionResponse' smart constructor.
data CreateProxySessionResponse = CreateProxySessionResponse'
  { -- | The proxy session details.
    proxySession :: Prelude.Maybe ProxySession,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProxySessionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proxySession', 'createProxySessionResponse_proxySession' - The proxy session details.
--
-- 'httpStatus', 'createProxySessionResponse_httpStatus' - The response's http status code.
newCreateProxySessionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateProxySessionResponse
newCreateProxySessionResponse pHttpStatus_ =
  CreateProxySessionResponse'
    { proxySession =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The proxy session details.
createProxySessionResponse_proxySession :: Lens.Lens' CreateProxySessionResponse (Prelude.Maybe ProxySession)
createProxySessionResponse_proxySession = Lens.lens (\CreateProxySessionResponse' {proxySession} -> proxySession) (\s@CreateProxySessionResponse' {} a -> s {proxySession = a} :: CreateProxySessionResponse)

-- | The response's http status code.
createProxySessionResponse_httpStatus :: Lens.Lens' CreateProxySessionResponse Prelude.Int
createProxySessionResponse_httpStatus = Lens.lens (\CreateProxySessionResponse' {httpStatus} -> httpStatus) (\s@CreateProxySessionResponse' {} a -> s {httpStatus = a} :: CreateProxySessionResponse)

instance Prelude.NFData CreateProxySessionResponse where
  rnf CreateProxySessionResponse' {..} =
    Prelude.rnf proxySession
      `Prelude.seq` Prelude.rnf httpStatus
