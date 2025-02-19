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
-- Module      : Amazonka.DocumentDB.Types.EventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DocumentDB.Types.EventSubscription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Detailed information about an event to which you have subscribed.
--
-- /See:/ 'newEventSubscription' smart constructor.
data EventSubscription = EventSubscription'
  { -- | The time at which the Amazon DocumentDB event notification subscription
    -- was created.
    subscriptionCreationTime :: Prelude.Maybe Prelude.Text,
    -- | The Amazon DocumentDB event notification subscription ID.
    custSubscriptionId :: Prelude.Maybe Prelude.Text,
    -- | A list of source IDs for the Amazon DocumentDB event notification
    -- subscription.
    sourceIdsList :: Prelude.Maybe [Prelude.Text],
    -- | The status of the Amazon DocumentDB event notification subscription.
    --
    -- Constraints:
    --
    -- Can be one of the following: @creating@, @modifying@, @deleting@,
    -- @active@, @no-permission@, @topic-not-exist@
    --
    -- The @no-permission@ status indicates that Amazon DocumentDB no longer
    -- has permission to post to the SNS topic. The @topic-not-exist@ status
    -- indicates that the topic was deleted after the subscription was created.
    status :: Prelude.Maybe Prelude.Text,
    -- | The source type for the Amazon DocumentDB event notification
    -- subscription.
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value indicating whether the subscription is enabled. A value
    -- of @true@ indicates that the subscription is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The topic ARN of the Amazon DocumentDB event notification subscription.
    snsTopicArn :: Prelude.Maybe Prelude.Text,
    -- | A list of event categories for the Amazon DocumentDB event notification
    -- subscription.
    eventCategoriesList :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) for the event subscription.
    eventSubscriptionArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services customer account that is associated with the
    -- Amazon DocumentDB event notification subscription.
    customerAwsId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subscriptionCreationTime', 'eventSubscription_subscriptionCreationTime' - The time at which the Amazon DocumentDB event notification subscription
-- was created.
--
-- 'custSubscriptionId', 'eventSubscription_custSubscriptionId' - The Amazon DocumentDB event notification subscription ID.
--
-- 'sourceIdsList', 'eventSubscription_sourceIdsList' - A list of source IDs for the Amazon DocumentDB event notification
-- subscription.
--
-- 'status', 'eventSubscription_status' - The status of the Amazon DocumentDB event notification subscription.
--
-- Constraints:
--
-- Can be one of the following: @creating@, @modifying@, @deleting@,
-- @active@, @no-permission@, @topic-not-exist@
--
-- The @no-permission@ status indicates that Amazon DocumentDB no longer
-- has permission to post to the SNS topic. The @topic-not-exist@ status
-- indicates that the topic was deleted after the subscription was created.
--
-- 'sourceType', 'eventSubscription_sourceType' - The source type for the Amazon DocumentDB event notification
-- subscription.
--
-- 'enabled', 'eventSubscription_enabled' - A Boolean value indicating whether the subscription is enabled. A value
-- of @true@ indicates that the subscription is enabled.
--
-- 'snsTopicArn', 'eventSubscription_snsTopicArn' - The topic ARN of the Amazon DocumentDB event notification subscription.
--
-- 'eventCategoriesList', 'eventSubscription_eventCategoriesList' - A list of event categories for the Amazon DocumentDB event notification
-- subscription.
--
-- 'eventSubscriptionArn', 'eventSubscription_eventSubscriptionArn' - The Amazon Resource Name (ARN) for the event subscription.
--
-- 'customerAwsId', 'eventSubscription_customerAwsId' - The Amazon Web Services customer account that is associated with the
-- Amazon DocumentDB event notification subscription.
newEventSubscription ::
  EventSubscription
newEventSubscription =
  EventSubscription'
    { subscriptionCreationTime =
        Prelude.Nothing,
      custSubscriptionId = Prelude.Nothing,
      sourceIdsList = Prelude.Nothing,
      status = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      enabled = Prelude.Nothing,
      snsTopicArn = Prelude.Nothing,
      eventCategoriesList = Prelude.Nothing,
      eventSubscriptionArn = Prelude.Nothing,
      customerAwsId = Prelude.Nothing
    }

-- | The time at which the Amazon DocumentDB event notification subscription
-- was created.
eventSubscription_subscriptionCreationTime :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_subscriptionCreationTime = Lens.lens (\EventSubscription' {subscriptionCreationTime} -> subscriptionCreationTime) (\s@EventSubscription' {} a -> s {subscriptionCreationTime = a} :: EventSubscription)

-- | The Amazon DocumentDB event notification subscription ID.
eventSubscription_custSubscriptionId :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_custSubscriptionId = Lens.lens (\EventSubscription' {custSubscriptionId} -> custSubscriptionId) (\s@EventSubscription' {} a -> s {custSubscriptionId = a} :: EventSubscription)

-- | A list of source IDs for the Amazon DocumentDB event notification
-- subscription.
eventSubscription_sourceIdsList :: Lens.Lens' EventSubscription (Prelude.Maybe [Prelude.Text])
eventSubscription_sourceIdsList = Lens.lens (\EventSubscription' {sourceIdsList} -> sourceIdsList) (\s@EventSubscription' {} a -> s {sourceIdsList = a} :: EventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The status of the Amazon DocumentDB event notification subscription.
--
-- Constraints:
--
-- Can be one of the following: @creating@, @modifying@, @deleting@,
-- @active@, @no-permission@, @topic-not-exist@
--
-- The @no-permission@ status indicates that Amazon DocumentDB no longer
-- has permission to post to the SNS topic. The @topic-not-exist@ status
-- indicates that the topic was deleted after the subscription was created.
eventSubscription_status :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_status = Lens.lens (\EventSubscription' {status} -> status) (\s@EventSubscription' {} a -> s {status = a} :: EventSubscription)

-- | The source type for the Amazon DocumentDB event notification
-- subscription.
eventSubscription_sourceType :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_sourceType = Lens.lens (\EventSubscription' {sourceType} -> sourceType) (\s@EventSubscription' {} a -> s {sourceType = a} :: EventSubscription)

-- | A Boolean value indicating whether the subscription is enabled. A value
-- of @true@ indicates that the subscription is enabled.
eventSubscription_enabled :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Bool)
eventSubscription_enabled = Lens.lens (\EventSubscription' {enabled} -> enabled) (\s@EventSubscription' {} a -> s {enabled = a} :: EventSubscription)

-- | The topic ARN of the Amazon DocumentDB event notification subscription.
eventSubscription_snsTopicArn :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_snsTopicArn = Lens.lens (\EventSubscription' {snsTopicArn} -> snsTopicArn) (\s@EventSubscription' {} a -> s {snsTopicArn = a} :: EventSubscription)

-- | A list of event categories for the Amazon DocumentDB event notification
-- subscription.
eventSubscription_eventCategoriesList :: Lens.Lens' EventSubscription (Prelude.Maybe [Prelude.Text])
eventSubscription_eventCategoriesList = Lens.lens (\EventSubscription' {eventCategoriesList} -> eventCategoriesList) (\s@EventSubscription' {} a -> s {eventCategoriesList = a} :: EventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) for the event subscription.
eventSubscription_eventSubscriptionArn :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_eventSubscriptionArn = Lens.lens (\EventSubscription' {eventSubscriptionArn} -> eventSubscriptionArn) (\s@EventSubscription' {} a -> s {eventSubscriptionArn = a} :: EventSubscription)

-- | The Amazon Web Services customer account that is associated with the
-- Amazon DocumentDB event notification subscription.
eventSubscription_customerAwsId :: Lens.Lens' EventSubscription (Prelude.Maybe Prelude.Text)
eventSubscription_customerAwsId = Lens.lens (\EventSubscription' {customerAwsId} -> customerAwsId) (\s@EventSubscription' {} a -> s {customerAwsId = a} :: EventSubscription)

instance Core.FromXML EventSubscription where
  parseXML x =
    EventSubscription'
      Prelude.<$> (x Core..@? "SubscriptionCreationTime")
      Prelude.<*> (x Core..@? "CustSubscriptionId")
      Prelude.<*> ( x Core..@? "SourceIdsList" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "SourceId")
                  )
      Prelude.<*> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "SourceType")
      Prelude.<*> (x Core..@? "Enabled")
      Prelude.<*> (x Core..@? "SnsTopicArn")
      Prelude.<*> ( x Core..@? "EventCategoriesList"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "EventCategory")
                  )
      Prelude.<*> (x Core..@? "EventSubscriptionArn")
      Prelude.<*> (x Core..@? "CustomerAwsId")

instance Prelude.Hashable EventSubscription where
  hashWithSalt _salt EventSubscription' {..} =
    _salt
      `Prelude.hashWithSalt` subscriptionCreationTime
      `Prelude.hashWithSalt` custSubscriptionId
      `Prelude.hashWithSalt` sourceIdsList
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` snsTopicArn
      `Prelude.hashWithSalt` eventCategoriesList
      `Prelude.hashWithSalt` eventSubscriptionArn
      `Prelude.hashWithSalt` customerAwsId

instance Prelude.NFData EventSubscription where
  rnf EventSubscription' {..} =
    Prelude.rnf subscriptionCreationTime
      `Prelude.seq` Prelude.rnf custSubscriptionId
      `Prelude.seq` Prelude.rnf sourceIdsList
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf snsTopicArn
      `Prelude.seq` Prelude.rnf eventCategoriesList
      `Prelude.seq` Prelude.rnf eventSubscriptionArn
      `Prelude.seq` Prelude.rnf customerAwsId
