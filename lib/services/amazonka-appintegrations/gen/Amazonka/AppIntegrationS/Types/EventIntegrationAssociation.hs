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
-- Module      : Amazonka.AppIntegrationS.Types.EventIntegrationAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppIntegrationS.Types.EventIntegrationAssociation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The event integration association.
--
-- /See:/ 'newEventIntegrationAssociation' smart constructor.
data EventIntegrationAssociation = EventIntegrationAssociation'
  { -- | The name of the EventBridge rule.
    eventBridgeRuleName :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the client that is associated with the event
    -- integration.
    clientId :: Prelude.Maybe Prelude.Text,
    -- | The name of the event integration.
    eventIntegrationName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the event integration association.
    eventIntegrationAssociationArn :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the event integration association.
    eventIntegrationAssociationId :: Prelude.Maybe Prelude.Text,
    -- | The metadata associated with the client.
    clientAssociationMetadata :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventIntegrationAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventBridgeRuleName', 'eventIntegrationAssociation_eventBridgeRuleName' - The name of the EventBridge rule.
--
-- 'clientId', 'eventIntegrationAssociation_clientId' - The identifier for the client that is associated with the event
-- integration.
--
-- 'eventIntegrationName', 'eventIntegrationAssociation_eventIntegrationName' - The name of the event integration.
--
-- 'eventIntegrationAssociationArn', 'eventIntegrationAssociation_eventIntegrationAssociationArn' - The Amazon Resource Name (ARN) for the event integration association.
--
-- 'eventIntegrationAssociationId', 'eventIntegrationAssociation_eventIntegrationAssociationId' - The identifier for the event integration association.
--
-- 'clientAssociationMetadata', 'eventIntegrationAssociation_clientAssociationMetadata' - The metadata associated with the client.
newEventIntegrationAssociation ::
  EventIntegrationAssociation
newEventIntegrationAssociation =
  EventIntegrationAssociation'
    { eventBridgeRuleName =
        Prelude.Nothing,
      clientId = Prelude.Nothing,
      eventIntegrationName = Prelude.Nothing,
      eventIntegrationAssociationArn =
        Prelude.Nothing,
      eventIntegrationAssociationId =
        Prelude.Nothing,
      clientAssociationMetadata = Prelude.Nothing
    }

-- | The name of the EventBridge rule.
eventIntegrationAssociation_eventBridgeRuleName :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe Prelude.Text)
eventIntegrationAssociation_eventBridgeRuleName = Lens.lens (\EventIntegrationAssociation' {eventBridgeRuleName} -> eventBridgeRuleName) (\s@EventIntegrationAssociation' {} a -> s {eventBridgeRuleName = a} :: EventIntegrationAssociation)

-- | The identifier for the client that is associated with the event
-- integration.
eventIntegrationAssociation_clientId :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe Prelude.Text)
eventIntegrationAssociation_clientId = Lens.lens (\EventIntegrationAssociation' {clientId} -> clientId) (\s@EventIntegrationAssociation' {} a -> s {clientId = a} :: EventIntegrationAssociation)

-- | The name of the event integration.
eventIntegrationAssociation_eventIntegrationName :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe Prelude.Text)
eventIntegrationAssociation_eventIntegrationName = Lens.lens (\EventIntegrationAssociation' {eventIntegrationName} -> eventIntegrationName) (\s@EventIntegrationAssociation' {} a -> s {eventIntegrationName = a} :: EventIntegrationAssociation)

-- | The Amazon Resource Name (ARN) for the event integration association.
eventIntegrationAssociation_eventIntegrationAssociationArn :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe Prelude.Text)
eventIntegrationAssociation_eventIntegrationAssociationArn = Lens.lens (\EventIntegrationAssociation' {eventIntegrationAssociationArn} -> eventIntegrationAssociationArn) (\s@EventIntegrationAssociation' {} a -> s {eventIntegrationAssociationArn = a} :: EventIntegrationAssociation)

-- | The identifier for the event integration association.
eventIntegrationAssociation_eventIntegrationAssociationId :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe Prelude.Text)
eventIntegrationAssociation_eventIntegrationAssociationId = Lens.lens (\EventIntegrationAssociation' {eventIntegrationAssociationId} -> eventIntegrationAssociationId) (\s@EventIntegrationAssociation' {} a -> s {eventIntegrationAssociationId = a} :: EventIntegrationAssociation)

-- | The metadata associated with the client.
eventIntegrationAssociation_clientAssociationMetadata :: Lens.Lens' EventIntegrationAssociation (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
eventIntegrationAssociation_clientAssociationMetadata = Lens.lens (\EventIntegrationAssociation' {clientAssociationMetadata} -> clientAssociationMetadata) (\s@EventIntegrationAssociation' {} a -> s {clientAssociationMetadata = a} :: EventIntegrationAssociation) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EventIntegrationAssociation where
  parseJSON =
    Core.withObject
      "EventIntegrationAssociation"
      ( \x ->
          EventIntegrationAssociation'
            Prelude.<$> (x Core..:? "EventBridgeRuleName")
            Prelude.<*> (x Core..:? "ClientId")
            Prelude.<*> (x Core..:? "EventIntegrationName")
            Prelude.<*> (x Core..:? "EventIntegrationAssociationArn")
            Prelude.<*> (x Core..:? "EventIntegrationAssociationId")
            Prelude.<*> ( x Core..:? "ClientAssociationMetadata"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable EventIntegrationAssociation where
  hashWithSalt _salt EventIntegrationAssociation' {..} =
    _salt `Prelude.hashWithSalt` eventBridgeRuleName
      `Prelude.hashWithSalt` clientId
      `Prelude.hashWithSalt` eventIntegrationName
      `Prelude.hashWithSalt` eventIntegrationAssociationArn
      `Prelude.hashWithSalt` eventIntegrationAssociationId
      `Prelude.hashWithSalt` clientAssociationMetadata

instance Prelude.NFData EventIntegrationAssociation where
  rnf EventIntegrationAssociation' {..} =
    Prelude.rnf eventBridgeRuleName
      `Prelude.seq` Prelude.rnf clientId
      `Prelude.seq` Prelude.rnf eventIntegrationName
      `Prelude.seq` Prelude.rnf eventIntegrationAssociationArn
      `Prelude.seq` Prelude.rnf eventIntegrationAssociationId
      `Prelude.seq` Prelude.rnf clientAssociationMetadata
