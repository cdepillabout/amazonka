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
-- Module      : Amazonka.SNS.Types.PublishBatchResultEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SNS.Types.PublishBatchResultEntry where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Encloses data related to a successful message in a batch request for
-- topic.
--
-- /See:/ 'newPublishBatchResultEntry' smart constructor.
data PublishBatchResultEntry = PublishBatchResultEntry'
  { -- | An identifier for the message.
    messageId :: Prelude.Maybe Prelude.Text,
    -- | The @Id@ of an entry in a batch request.
    id :: Prelude.Maybe Prelude.Text,
    -- | This parameter applies only to FIFO (first-in-first-out) topics.
    --
    -- The large, non-consecutive number that Amazon SNS assigns to each
    -- message.
    --
    -- The length of @SequenceNumber@ is 128 bits. @SequenceNumber@ continues
    -- to increase for a particular @MessageGroupId@.
    sequenceNumber :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublishBatchResultEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'messageId', 'publishBatchResultEntry_messageId' - An identifier for the message.
--
-- 'id', 'publishBatchResultEntry_id' - The @Id@ of an entry in a batch request.
--
-- 'sequenceNumber', 'publishBatchResultEntry_sequenceNumber' - This parameter applies only to FIFO (first-in-first-out) topics.
--
-- The large, non-consecutive number that Amazon SNS assigns to each
-- message.
--
-- The length of @SequenceNumber@ is 128 bits. @SequenceNumber@ continues
-- to increase for a particular @MessageGroupId@.
newPublishBatchResultEntry ::
  PublishBatchResultEntry
newPublishBatchResultEntry =
  PublishBatchResultEntry'
    { messageId =
        Prelude.Nothing,
      id = Prelude.Nothing,
      sequenceNumber = Prelude.Nothing
    }

-- | An identifier for the message.
publishBatchResultEntry_messageId :: Lens.Lens' PublishBatchResultEntry (Prelude.Maybe Prelude.Text)
publishBatchResultEntry_messageId = Lens.lens (\PublishBatchResultEntry' {messageId} -> messageId) (\s@PublishBatchResultEntry' {} a -> s {messageId = a} :: PublishBatchResultEntry)

-- | The @Id@ of an entry in a batch request.
publishBatchResultEntry_id :: Lens.Lens' PublishBatchResultEntry (Prelude.Maybe Prelude.Text)
publishBatchResultEntry_id = Lens.lens (\PublishBatchResultEntry' {id} -> id) (\s@PublishBatchResultEntry' {} a -> s {id = a} :: PublishBatchResultEntry)

-- | This parameter applies only to FIFO (first-in-first-out) topics.
--
-- The large, non-consecutive number that Amazon SNS assigns to each
-- message.
--
-- The length of @SequenceNumber@ is 128 bits. @SequenceNumber@ continues
-- to increase for a particular @MessageGroupId@.
publishBatchResultEntry_sequenceNumber :: Lens.Lens' PublishBatchResultEntry (Prelude.Maybe Prelude.Text)
publishBatchResultEntry_sequenceNumber = Lens.lens (\PublishBatchResultEntry' {sequenceNumber} -> sequenceNumber) (\s@PublishBatchResultEntry' {} a -> s {sequenceNumber = a} :: PublishBatchResultEntry)

instance Core.FromXML PublishBatchResultEntry where
  parseXML x =
    PublishBatchResultEntry'
      Prelude.<$> (x Core..@? "MessageId")
      Prelude.<*> (x Core..@? "Id")
      Prelude.<*> (x Core..@? "SequenceNumber")

instance Prelude.Hashable PublishBatchResultEntry where
  hashWithSalt _salt PublishBatchResultEntry' {..} =
    _salt `Prelude.hashWithSalt` messageId
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` sequenceNumber

instance Prelude.NFData PublishBatchResultEntry where
  rnf PublishBatchResultEntry' {..} =
    Prelude.rnf messageId
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf sequenceNumber
