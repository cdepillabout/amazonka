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
-- Module      : Amazonka.DynamoDBStreams.Types.Record
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDBStreams.Types.Record where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDBStreams.Internal
import Amazonka.DynamoDBStreams.Types.Identity
import Amazonka.DynamoDBStreams.Types.OperationType
import Amazonka.DynamoDBStreams.Types.StreamRecord
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A description of a unique event within a stream.
--
-- /See:/ 'newRecord' smart constructor.
data Record = Record'
  { -- | Items that are deleted by the Time to Live process after expiration have
    -- the following fields:
    --
    -- -   Records[].userIdentity.type
    --
    --     \"Service\"
    --
    -- -   Records[].userIdentity.principalId
    --
    --     \"dynamodb.amazonaws.com\"
    userIdentity :: Prelude.Maybe Identity,
    -- | The main body of the stream record, containing all of the
    -- DynamoDB-specific fields.
    dynamodb :: Prelude.Maybe StreamRecord,
    -- | The version number of the stream record format. This number is updated
    -- whenever the structure of @Record@ is modified.
    --
    -- Client applications must not assume that @eventVersion@ will remain at a
    -- particular value, as this number is subject to change at any time. In
    -- general, @eventVersion@ will only increase as the low-level DynamoDB
    -- Streams API evolves.
    eventVersion :: Prelude.Maybe Prelude.Text,
    -- | The type of data modification that was performed on the DynamoDB table:
    --
    -- -   @INSERT@ - a new item was added to the table.
    --
    -- -   @MODIFY@ - one or more of an existing item\'s attributes were
    --     modified.
    --
    -- -   @REMOVE@ - the item was deleted from the table
    eventName :: Prelude.Maybe OperationType,
    -- | A globally unique identifier for the event that was recorded in this
    -- stream record.
    eventID :: Prelude.Maybe Prelude.Text,
    -- | The region in which the @GetRecords@ request was received.
    awsRegion :: Prelude.Maybe Prelude.Text,
    -- | The AWS service from which the stream record originated. For DynamoDB
    -- Streams, this is @aws:dynamodb@.
    eventSource :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Record' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userIdentity', 'record_userIdentity' - Items that are deleted by the Time to Live process after expiration have
-- the following fields:
--
-- -   Records[].userIdentity.type
--
--     \"Service\"
--
-- -   Records[].userIdentity.principalId
--
--     \"dynamodb.amazonaws.com\"
--
-- 'dynamodb', 'record_dynamodb' - The main body of the stream record, containing all of the
-- DynamoDB-specific fields.
--
-- 'eventVersion', 'record_eventVersion' - The version number of the stream record format. This number is updated
-- whenever the structure of @Record@ is modified.
--
-- Client applications must not assume that @eventVersion@ will remain at a
-- particular value, as this number is subject to change at any time. In
-- general, @eventVersion@ will only increase as the low-level DynamoDB
-- Streams API evolves.
--
-- 'eventName', 'record_eventName' - The type of data modification that was performed on the DynamoDB table:
--
-- -   @INSERT@ - a new item was added to the table.
--
-- -   @MODIFY@ - one or more of an existing item\'s attributes were
--     modified.
--
-- -   @REMOVE@ - the item was deleted from the table
--
-- 'eventID', 'record_eventID' - A globally unique identifier for the event that was recorded in this
-- stream record.
--
-- 'awsRegion', 'record_awsRegion' - The region in which the @GetRecords@ request was received.
--
-- 'eventSource', 'record_eventSource' - The AWS service from which the stream record originated. For DynamoDB
-- Streams, this is @aws:dynamodb@.
newRecord ::
  Record
newRecord =
  Record'
    { userIdentity = Prelude.Nothing,
      dynamodb = Prelude.Nothing,
      eventVersion = Prelude.Nothing,
      eventName = Prelude.Nothing,
      eventID = Prelude.Nothing,
      awsRegion = Prelude.Nothing,
      eventSource = Prelude.Nothing
    }

-- | Items that are deleted by the Time to Live process after expiration have
-- the following fields:
--
-- -   Records[].userIdentity.type
--
--     \"Service\"
--
-- -   Records[].userIdentity.principalId
--
--     \"dynamodb.amazonaws.com\"
record_userIdentity :: Lens.Lens' Record (Prelude.Maybe Identity)
record_userIdentity = Lens.lens (\Record' {userIdentity} -> userIdentity) (\s@Record' {} a -> s {userIdentity = a} :: Record)

-- | The main body of the stream record, containing all of the
-- DynamoDB-specific fields.
record_dynamodb :: Lens.Lens' Record (Prelude.Maybe StreamRecord)
record_dynamodb = Lens.lens (\Record' {dynamodb} -> dynamodb) (\s@Record' {} a -> s {dynamodb = a} :: Record)

-- | The version number of the stream record format. This number is updated
-- whenever the structure of @Record@ is modified.
--
-- Client applications must not assume that @eventVersion@ will remain at a
-- particular value, as this number is subject to change at any time. In
-- general, @eventVersion@ will only increase as the low-level DynamoDB
-- Streams API evolves.
record_eventVersion :: Lens.Lens' Record (Prelude.Maybe Prelude.Text)
record_eventVersion = Lens.lens (\Record' {eventVersion} -> eventVersion) (\s@Record' {} a -> s {eventVersion = a} :: Record)

-- | The type of data modification that was performed on the DynamoDB table:
--
-- -   @INSERT@ - a new item was added to the table.
--
-- -   @MODIFY@ - one or more of an existing item\'s attributes were
--     modified.
--
-- -   @REMOVE@ - the item was deleted from the table
record_eventName :: Lens.Lens' Record (Prelude.Maybe OperationType)
record_eventName = Lens.lens (\Record' {eventName} -> eventName) (\s@Record' {} a -> s {eventName = a} :: Record)

-- | A globally unique identifier for the event that was recorded in this
-- stream record.
record_eventID :: Lens.Lens' Record (Prelude.Maybe Prelude.Text)
record_eventID = Lens.lens (\Record' {eventID} -> eventID) (\s@Record' {} a -> s {eventID = a} :: Record)

-- | The region in which the @GetRecords@ request was received.
record_awsRegion :: Lens.Lens' Record (Prelude.Maybe Prelude.Text)
record_awsRegion = Lens.lens (\Record' {awsRegion} -> awsRegion) (\s@Record' {} a -> s {awsRegion = a} :: Record)

-- | The AWS service from which the stream record originated. For DynamoDB
-- Streams, this is @aws:dynamodb@.
record_eventSource :: Lens.Lens' Record (Prelude.Maybe Prelude.Text)
record_eventSource = Lens.lens (\Record' {eventSource} -> eventSource) (\s@Record' {} a -> s {eventSource = a} :: Record)

instance Core.FromJSON Record where
  parseJSON =
    Core.withObject
      "Record"
      ( \x ->
          Record'
            Prelude.<$> (x Core..:? "userIdentity")
            Prelude.<*> (x Core..:? "dynamodb")
            Prelude.<*> (x Core..:? "eventVersion")
            Prelude.<*> (x Core..:? "eventName")
            Prelude.<*> (x Core..:? "eventID")
            Prelude.<*> (x Core..:? "awsRegion")
            Prelude.<*> (x Core..:? "eventSource")
      )

instance Prelude.Hashable Record where
  hashWithSalt _salt Record' {..} =
    _salt `Prelude.hashWithSalt` userIdentity
      `Prelude.hashWithSalt` dynamodb
      `Prelude.hashWithSalt` eventVersion
      `Prelude.hashWithSalt` eventName
      `Prelude.hashWithSalt` eventID
      `Prelude.hashWithSalt` awsRegion
      `Prelude.hashWithSalt` eventSource

instance Prelude.NFData Record where
  rnf Record' {..} =
    Prelude.rnf userIdentity
      `Prelude.seq` Prelude.rnf dynamodb
      `Prelude.seq` Prelude.rnf eventVersion
      `Prelude.seq` Prelude.rnf eventName
      `Prelude.seq` Prelude.rnf eventID
      `Prelude.seq` Prelude.rnf awsRegion
      `Prelude.seq` Prelude.rnf eventSource
