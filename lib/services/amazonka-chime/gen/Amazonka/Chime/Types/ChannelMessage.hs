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
-- Module      : Amazonka.Chime.Types.ChannelMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.ChannelMessage where

import Amazonka.Chime.Types.ChannelMessagePersistenceType
import Amazonka.Chime.Types.ChannelMessageType
import Amazonka.Chime.Types.Identity
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of a message in a channel.
--
-- /See:/ 'newChannelMessage' smart constructor.
data ChannelMessage = ChannelMessage'
  { -- | The time at which a message was updated.
    lastUpdatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The message type.
    type' :: Prelude.Maybe ChannelMessageType,
    -- | The message metadata.
    metadata :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The time at which the message was created.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | Hides the content of a message.
    redacted :: Prelude.Maybe Prelude.Bool,
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of a message.
    messageId :: Prelude.Maybe Prelude.Text,
    -- | The time at which a message was edited.
    lastEditedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The message sender.
    sender :: Prelude.Maybe Identity,
    -- | The persistence setting for a channel message.
    persistence :: Prelude.Maybe ChannelMessagePersistenceType,
    -- | The message content.
    content :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'channelMessage_lastUpdatedTimestamp' - The time at which a message was updated.
--
-- 'type'', 'channelMessage_type' - The message type.
--
-- 'metadata', 'channelMessage_metadata' - The message metadata.
--
-- 'createdTimestamp', 'channelMessage_createdTimestamp' - The time at which the message was created.
--
-- 'redacted', 'channelMessage_redacted' - Hides the content of a message.
--
-- 'channelArn', 'channelMessage_channelArn' - The ARN of the channel.
--
-- 'messageId', 'channelMessage_messageId' - The ID of a message.
--
-- 'lastEditedTimestamp', 'channelMessage_lastEditedTimestamp' - The time at which a message was edited.
--
-- 'sender', 'channelMessage_sender' - The message sender.
--
-- 'persistence', 'channelMessage_persistence' - The persistence setting for a channel message.
--
-- 'content', 'channelMessage_content' - The message content.
newChannelMessage ::
  ChannelMessage
newChannelMessage =
  ChannelMessage'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      metadata = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      redacted = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      messageId = Prelude.Nothing,
      lastEditedTimestamp = Prelude.Nothing,
      sender = Prelude.Nothing,
      persistence = Prelude.Nothing,
      content = Prelude.Nothing
    }

-- | The time at which a message was updated.
channelMessage_lastUpdatedTimestamp :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.UTCTime)
channelMessage_lastUpdatedTimestamp = Lens.lens (\ChannelMessage' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@ChannelMessage' {} a -> s {lastUpdatedTimestamp = a} :: ChannelMessage) Prelude.. Lens.mapping Core._Time

-- | The message type.
channelMessage_type :: Lens.Lens' ChannelMessage (Prelude.Maybe ChannelMessageType)
channelMessage_type = Lens.lens (\ChannelMessage' {type'} -> type') (\s@ChannelMessage' {} a -> s {type' = a} :: ChannelMessage)

-- | The message metadata.
channelMessage_metadata :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.Text)
channelMessage_metadata = Lens.lens (\ChannelMessage' {metadata} -> metadata) (\s@ChannelMessage' {} a -> s {metadata = a} :: ChannelMessage) Prelude.. Lens.mapping Core._Sensitive

-- | The time at which the message was created.
channelMessage_createdTimestamp :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.UTCTime)
channelMessage_createdTimestamp = Lens.lens (\ChannelMessage' {createdTimestamp} -> createdTimestamp) (\s@ChannelMessage' {} a -> s {createdTimestamp = a} :: ChannelMessage) Prelude.. Lens.mapping Core._Time

-- | Hides the content of a message.
channelMessage_redacted :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.Bool)
channelMessage_redacted = Lens.lens (\ChannelMessage' {redacted} -> redacted) (\s@ChannelMessage' {} a -> s {redacted = a} :: ChannelMessage)

-- | The ARN of the channel.
channelMessage_channelArn :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.Text)
channelMessage_channelArn = Lens.lens (\ChannelMessage' {channelArn} -> channelArn) (\s@ChannelMessage' {} a -> s {channelArn = a} :: ChannelMessage)

-- | The ID of a message.
channelMessage_messageId :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.Text)
channelMessage_messageId = Lens.lens (\ChannelMessage' {messageId} -> messageId) (\s@ChannelMessage' {} a -> s {messageId = a} :: ChannelMessage)

-- | The time at which a message was edited.
channelMessage_lastEditedTimestamp :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.UTCTime)
channelMessage_lastEditedTimestamp = Lens.lens (\ChannelMessage' {lastEditedTimestamp} -> lastEditedTimestamp) (\s@ChannelMessage' {} a -> s {lastEditedTimestamp = a} :: ChannelMessage) Prelude.. Lens.mapping Core._Time

-- | The message sender.
channelMessage_sender :: Lens.Lens' ChannelMessage (Prelude.Maybe Identity)
channelMessage_sender = Lens.lens (\ChannelMessage' {sender} -> sender) (\s@ChannelMessage' {} a -> s {sender = a} :: ChannelMessage)

-- | The persistence setting for a channel message.
channelMessage_persistence :: Lens.Lens' ChannelMessage (Prelude.Maybe ChannelMessagePersistenceType)
channelMessage_persistence = Lens.lens (\ChannelMessage' {persistence} -> persistence) (\s@ChannelMessage' {} a -> s {persistence = a} :: ChannelMessage)

-- | The message content.
channelMessage_content :: Lens.Lens' ChannelMessage (Prelude.Maybe Prelude.Text)
channelMessage_content = Lens.lens (\ChannelMessage' {content} -> content) (\s@ChannelMessage' {} a -> s {content = a} :: ChannelMessage) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON ChannelMessage where
  parseJSON =
    Core.withObject
      "ChannelMessage"
      ( \x ->
          ChannelMessage'
            Prelude.<$> (x Core..:? "LastUpdatedTimestamp")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Metadata")
            Prelude.<*> (x Core..:? "CreatedTimestamp")
            Prelude.<*> (x Core..:? "Redacted")
            Prelude.<*> (x Core..:? "ChannelArn")
            Prelude.<*> (x Core..:? "MessageId")
            Prelude.<*> (x Core..:? "LastEditedTimestamp")
            Prelude.<*> (x Core..:? "Sender")
            Prelude.<*> (x Core..:? "Persistence")
            Prelude.<*> (x Core..:? "Content")
      )

instance Prelude.Hashable ChannelMessage where
  hashWithSalt _salt ChannelMessage' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimestamp
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` metadata
      `Prelude.hashWithSalt` createdTimestamp
      `Prelude.hashWithSalt` redacted
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` messageId
      `Prelude.hashWithSalt` lastEditedTimestamp
      `Prelude.hashWithSalt` sender
      `Prelude.hashWithSalt` persistence
      `Prelude.hashWithSalt` content

instance Prelude.NFData ChannelMessage where
  rnf ChannelMessage' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf metadata
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf redacted
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf messageId
      `Prelude.seq` Prelude.rnf lastEditedTimestamp
      `Prelude.seq` Prelude.rnf sender
      `Prelude.seq` Prelude.rnf persistence
      `Prelude.seq` Prelude.rnf content
