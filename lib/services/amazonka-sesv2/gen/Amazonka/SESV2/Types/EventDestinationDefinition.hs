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
-- Module      : Amazonka.SESV2.Types.EventDestinationDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.EventDestinationDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SESV2.Types.CloudWatchDestination
import Amazonka.SESV2.Types.EventType
import Amazonka.SESV2.Types.KinesisFirehoseDestination
import Amazonka.SESV2.Types.PinpointDestination
import Amazonka.SESV2.Types.SnsDestination

-- | An object that defines the event destination. Specifically, it defines
-- which services receive events from emails sent using the configuration
-- set that the event destination is associated with. Also defines the
-- types of events that are sent to the event destination.
--
-- /See:/ 'newEventDestinationDefinition' smart constructor.
data EventDestinationDefinition = EventDestinationDefinition'
  { -- | An array that specifies which events the Amazon SES API v2 should send
    -- to the destinations in this @EventDestinationDefinition@.
    matchingEventTypes :: Prelude.Maybe [EventType],
    -- | An object that defines an Amazon Pinpoint project destination for email
    -- events. You can send email event data to a Amazon Pinpoint project to
    -- view metrics using the Transactional Messaging dashboards that are built
    -- in to Amazon Pinpoint. For more information, see
    -- <https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html Transactional Messaging Charts>
    -- in the /Amazon Pinpoint User Guide/.
    pinpointDestination :: Prelude.Maybe PinpointDestination,
    -- | An object that defines an Amazon SNS destination for email events. You
    -- can use Amazon SNS to send notification when certain email events occur.
    snsDestination :: Prelude.Maybe SnsDestination,
    -- | If @true@, the event destination is enabled. When the event destination
    -- is enabled, the specified event types are sent to the destinations in
    -- this @EventDestinationDefinition@.
    --
    -- If @false@, the event destination is disabled. When the event
    -- destination is disabled, events aren\'t sent to the specified
    -- destinations.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | An object that defines an Amazon CloudWatch destination for email
    -- events. You can use Amazon CloudWatch to monitor and gain insights on
    -- your email sending metrics.
    cloudWatchDestination :: Prelude.Maybe CloudWatchDestination,
    -- | An object that defines an Amazon Kinesis Data Firehose destination for
    -- email events. You can use Amazon Kinesis Data Firehose to stream data to
    -- other services, such as Amazon S3 and Amazon Redshift.
    kinesisFirehoseDestination :: Prelude.Maybe KinesisFirehoseDestination
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventDestinationDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'matchingEventTypes', 'eventDestinationDefinition_matchingEventTypes' - An array that specifies which events the Amazon SES API v2 should send
-- to the destinations in this @EventDestinationDefinition@.
--
-- 'pinpointDestination', 'eventDestinationDefinition_pinpointDestination' - An object that defines an Amazon Pinpoint project destination for email
-- events. You can send email event data to a Amazon Pinpoint project to
-- view metrics using the Transactional Messaging dashboards that are built
-- in to Amazon Pinpoint. For more information, see
-- <https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html Transactional Messaging Charts>
-- in the /Amazon Pinpoint User Guide/.
--
-- 'snsDestination', 'eventDestinationDefinition_snsDestination' - An object that defines an Amazon SNS destination for email events. You
-- can use Amazon SNS to send notification when certain email events occur.
--
-- 'enabled', 'eventDestinationDefinition_enabled' - If @true@, the event destination is enabled. When the event destination
-- is enabled, the specified event types are sent to the destinations in
-- this @EventDestinationDefinition@.
--
-- If @false@, the event destination is disabled. When the event
-- destination is disabled, events aren\'t sent to the specified
-- destinations.
--
-- 'cloudWatchDestination', 'eventDestinationDefinition_cloudWatchDestination' - An object that defines an Amazon CloudWatch destination for email
-- events. You can use Amazon CloudWatch to monitor and gain insights on
-- your email sending metrics.
--
-- 'kinesisFirehoseDestination', 'eventDestinationDefinition_kinesisFirehoseDestination' - An object that defines an Amazon Kinesis Data Firehose destination for
-- email events. You can use Amazon Kinesis Data Firehose to stream data to
-- other services, such as Amazon S3 and Amazon Redshift.
newEventDestinationDefinition ::
  EventDestinationDefinition
newEventDestinationDefinition =
  EventDestinationDefinition'
    { matchingEventTypes =
        Prelude.Nothing,
      pinpointDestination = Prelude.Nothing,
      snsDestination = Prelude.Nothing,
      enabled = Prelude.Nothing,
      cloudWatchDestination = Prelude.Nothing,
      kinesisFirehoseDestination = Prelude.Nothing
    }

-- | An array that specifies which events the Amazon SES API v2 should send
-- to the destinations in this @EventDestinationDefinition@.
eventDestinationDefinition_matchingEventTypes :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe [EventType])
eventDestinationDefinition_matchingEventTypes = Lens.lens (\EventDestinationDefinition' {matchingEventTypes} -> matchingEventTypes) (\s@EventDestinationDefinition' {} a -> s {matchingEventTypes = a} :: EventDestinationDefinition) Prelude.. Lens.mapping Lens.coerced

-- | An object that defines an Amazon Pinpoint project destination for email
-- events. You can send email event data to a Amazon Pinpoint project to
-- view metrics using the Transactional Messaging dashboards that are built
-- in to Amazon Pinpoint. For more information, see
-- <https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html Transactional Messaging Charts>
-- in the /Amazon Pinpoint User Guide/.
eventDestinationDefinition_pinpointDestination :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe PinpointDestination)
eventDestinationDefinition_pinpointDestination = Lens.lens (\EventDestinationDefinition' {pinpointDestination} -> pinpointDestination) (\s@EventDestinationDefinition' {} a -> s {pinpointDestination = a} :: EventDestinationDefinition)

-- | An object that defines an Amazon SNS destination for email events. You
-- can use Amazon SNS to send notification when certain email events occur.
eventDestinationDefinition_snsDestination :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe SnsDestination)
eventDestinationDefinition_snsDestination = Lens.lens (\EventDestinationDefinition' {snsDestination} -> snsDestination) (\s@EventDestinationDefinition' {} a -> s {snsDestination = a} :: EventDestinationDefinition)

-- | If @true@, the event destination is enabled. When the event destination
-- is enabled, the specified event types are sent to the destinations in
-- this @EventDestinationDefinition@.
--
-- If @false@, the event destination is disabled. When the event
-- destination is disabled, events aren\'t sent to the specified
-- destinations.
eventDestinationDefinition_enabled :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe Prelude.Bool)
eventDestinationDefinition_enabled = Lens.lens (\EventDestinationDefinition' {enabled} -> enabled) (\s@EventDestinationDefinition' {} a -> s {enabled = a} :: EventDestinationDefinition)

-- | An object that defines an Amazon CloudWatch destination for email
-- events. You can use Amazon CloudWatch to monitor and gain insights on
-- your email sending metrics.
eventDestinationDefinition_cloudWatchDestination :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe CloudWatchDestination)
eventDestinationDefinition_cloudWatchDestination = Lens.lens (\EventDestinationDefinition' {cloudWatchDestination} -> cloudWatchDestination) (\s@EventDestinationDefinition' {} a -> s {cloudWatchDestination = a} :: EventDestinationDefinition)

-- | An object that defines an Amazon Kinesis Data Firehose destination for
-- email events. You can use Amazon Kinesis Data Firehose to stream data to
-- other services, such as Amazon S3 and Amazon Redshift.
eventDestinationDefinition_kinesisFirehoseDestination :: Lens.Lens' EventDestinationDefinition (Prelude.Maybe KinesisFirehoseDestination)
eventDestinationDefinition_kinesisFirehoseDestination = Lens.lens (\EventDestinationDefinition' {kinesisFirehoseDestination} -> kinesisFirehoseDestination) (\s@EventDestinationDefinition' {} a -> s {kinesisFirehoseDestination = a} :: EventDestinationDefinition)

instance Prelude.Hashable EventDestinationDefinition where
  hashWithSalt _salt EventDestinationDefinition' {..} =
    _salt `Prelude.hashWithSalt` matchingEventTypes
      `Prelude.hashWithSalt` pinpointDestination
      `Prelude.hashWithSalt` snsDestination
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` cloudWatchDestination
      `Prelude.hashWithSalt` kinesisFirehoseDestination

instance Prelude.NFData EventDestinationDefinition where
  rnf EventDestinationDefinition' {..} =
    Prelude.rnf matchingEventTypes
      `Prelude.seq` Prelude.rnf pinpointDestination
      `Prelude.seq` Prelude.rnf snsDestination
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf cloudWatchDestination
      `Prelude.seq` Prelude.rnf kinesisFirehoseDestination

instance Core.ToJSON EventDestinationDefinition where
  toJSON EventDestinationDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MatchingEventTypes" Core..=)
              Prelude.<$> matchingEventTypes,
            ("PinpointDestination" Core..=)
              Prelude.<$> pinpointDestination,
            ("SnsDestination" Core..=)
              Prelude.<$> snsDestination,
            ("Enabled" Core..=) Prelude.<$> enabled,
            ("CloudWatchDestination" Core..=)
              Prelude.<$> cloudWatchDestination,
            ("KinesisFirehoseDestination" Core..=)
              Prelude.<$> kinesisFirehoseDestination
          ]
      )
