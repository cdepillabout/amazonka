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
-- Module      : Amazonka.DirectoryService.Types.EventTopic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectoryService.Types.EventTopic where

import qualified Amazonka.Core as Core
import Amazonka.DirectoryService.Types.TopicStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about Amazon SNS topic and Directory Service directory
-- associations.
--
-- /See:/ 'newEventTopic' smart constructor.
data EventTopic = EventTopic'
  { -- | The Directory ID of an Directory Service directory that will publish
    -- status messages to an Amazon SNS topic.
    directoryId :: Prelude.Maybe Prelude.Text,
    -- | The date and time of when you associated your directory with the Amazon
    -- SNS topic.
    createdDateTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon SNS topic ARN (Amazon Resource Name).
    topicArn :: Prelude.Maybe Prelude.Text,
    -- | The topic registration status.
    status :: Prelude.Maybe TopicStatus,
    -- | The name of an Amazon SNS topic the receives status messages from the
    -- directory.
    topicName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventTopic' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryId', 'eventTopic_directoryId' - The Directory ID of an Directory Service directory that will publish
-- status messages to an Amazon SNS topic.
--
-- 'createdDateTime', 'eventTopic_createdDateTime' - The date and time of when you associated your directory with the Amazon
-- SNS topic.
--
-- 'topicArn', 'eventTopic_topicArn' - The Amazon SNS topic ARN (Amazon Resource Name).
--
-- 'status', 'eventTopic_status' - The topic registration status.
--
-- 'topicName', 'eventTopic_topicName' - The name of an Amazon SNS topic the receives status messages from the
-- directory.
newEventTopic ::
  EventTopic
newEventTopic =
  EventTopic'
    { directoryId = Prelude.Nothing,
      createdDateTime = Prelude.Nothing,
      topicArn = Prelude.Nothing,
      status = Prelude.Nothing,
      topicName = Prelude.Nothing
    }

-- | The Directory ID of an Directory Service directory that will publish
-- status messages to an Amazon SNS topic.
eventTopic_directoryId :: Lens.Lens' EventTopic (Prelude.Maybe Prelude.Text)
eventTopic_directoryId = Lens.lens (\EventTopic' {directoryId} -> directoryId) (\s@EventTopic' {} a -> s {directoryId = a} :: EventTopic)

-- | The date and time of when you associated your directory with the Amazon
-- SNS topic.
eventTopic_createdDateTime :: Lens.Lens' EventTopic (Prelude.Maybe Prelude.UTCTime)
eventTopic_createdDateTime = Lens.lens (\EventTopic' {createdDateTime} -> createdDateTime) (\s@EventTopic' {} a -> s {createdDateTime = a} :: EventTopic) Prelude.. Lens.mapping Core._Time

-- | The Amazon SNS topic ARN (Amazon Resource Name).
eventTopic_topicArn :: Lens.Lens' EventTopic (Prelude.Maybe Prelude.Text)
eventTopic_topicArn = Lens.lens (\EventTopic' {topicArn} -> topicArn) (\s@EventTopic' {} a -> s {topicArn = a} :: EventTopic)

-- | The topic registration status.
eventTopic_status :: Lens.Lens' EventTopic (Prelude.Maybe TopicStatus)
eventTopic_status = Lens.lens (\EventTopic' {status} -> status) (\s@EventTopic' {} a -> s {status = a} :: EventTopic)

-- | The name of an Amazon SNS topic the receives status messages from the
-- directory.
eventTopic_topicName :: Lens.Lens' EventTopic (Prelude.Maybe Prelude.Text)
eventTopic_topicName = Lens.lens (\EventTopic' {topicName} -> topicName) (\s@EventTopic' {} a -> s {topicName = a} :: EventTopic)

instance Core.FromJSON EventTopic where
  parseJSON =
    Core.withObject
      "EventTopic"
      ( \x ->
          EventTopic'
            Prelude.<$> (x Core..:? "DirectoryId")
            Prelude.<*> (x Core..:? "CreatedDateTime")
            Prelude.<*> (x Core..:? "TopicArn")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "TopicName")
      )

instance Prelude.Hashable EventTopic where
  hashWithSalt _salt EventTopic' {..} =
    _salt `Prelude.hashWithSalt` directoryId
      `Prelude.hashWithSalt` createdDateTime
      `Prelude.hashWithSalt` topicArn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` topicName

instance Prelude.NFData EventTopic where
  rnf EventTopic' {..} =
    Prelude.rnf directoryId
      `Prelude.seq` Prelude.rnf createdDateTime
      `Prelude.seq` Prelude.rnf topicArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf topicName
