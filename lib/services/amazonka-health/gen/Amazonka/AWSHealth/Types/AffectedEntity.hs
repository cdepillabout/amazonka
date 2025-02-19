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
-- Module      : Amazonka.AWSHealth.Types.AffectedEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AWSHealth.Types.AffectedEntity where

import Amazonka.AWSHealth.Types.EntityStatusCode
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an entity that is affected by a Health event.
--
-- /See:/ 'newAffectedEntity' smart constructor.
data AffectedEntity = AffectedEntity'
  { -- | The 12-digit Amazon Web Services account number that contains the
    -- affected entity.
    awsAccountId :: Prelude.Maybe Prelude.Text,
    -- | A map of entity tags attached to the affected entity.
    --
    -- Currently, the @tags@ property isn\'t supported.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ID of the affected entity.
    entityValue :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the event. The event ARN has the
    -- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @
    -- format.
    --
    -- For example, an event ARN might look like the following:
    --
    -- @arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
    eventArn :: Prelude.Maybe Prelude.Text,
    -- | The URL of the affected entity.
    entityUrl :: Prelude.Maybe Prelude.Text,
    -- | The most recent time that the entity was updated.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | The most recent status of the entity affected by the event. The possible
    -- values are @IMPAIRED@, @UNIMPAIRED@, and @UNKNOWN@.
    statusCode :: Prelude.Maybe EntityStatusCode,
    -- | The unique identifier for the entity. Format:
    -- @arn:aws:health:entity-region:aws-account:entity\/entity-id @. Example:
    -- @arn:aws:health:us-east-1:111222333444:entity\/AVh5GGT7ul1arKr1sE1K@
    entityArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AffectedEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'affectedEntity_awsAccountId' - The 12-digit Amazon Web Services account number that contains the
-- affected entity.
--
-- 'tags', 'affectedEntity_tags' - A map of entity tags attached to the affected entity.
--
-- Currently, the @tags@ property isn\'t supported.
--
-- 'entityValue', 'affectedEntity_entityValue' - The ID of the affected entity.
--
-- 'eventArn', 'affectedEntity_eventArn' - The unique identifier for the event. The event ARN has the
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @
-- format.
--
-- For example, an event ARN might look like the following:
--
-- @arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- 'entityUrl', 'affectedEntity_entityUrl' - The URL of the affected entity.
--
-- 'lastUpdatedTime', 'affectedEntity_lastUpdatedTime' - The most recent time that the entity was updated.
--
-- 'statusCode', 'affectedEntity_statusCode' - The most recent status of the entity affected by the event. The possible
-- values are @IMPAIRED@, @UNIMPAIRED@, and @UNKNOWN@.
--
-- 'entityArn', 'affectedEntity_entityArn' - The unique identifier for the entity. Format:
-- @arn:aws:health:entity-region:aws-account:entity\/entity-id @. Example:
-- @arn:aws:health:us-east-1:111222333444:entity\/AVh5GGT7ul1arKr1sE1K@
newAffectedEntity ::
  AffectedEntity
newAffectedEntity =
  AffectedEntity'
    { awsAccountId = Prelude.Nothing,
      tags = Prelude.Nothing,
      entityValue = Prelude.Nothing,
      eventArn = Prelude.Nothing,
      entityUrl = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      statusCode = Prelude.Nothing,
      entityArn = Prelude.Nothing
    }

-- | The 12-digit Amazon Web Services account number that contains the
-- affected entity.
affectedEntity_awsAccountId :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.Text)
affectedEntity_awsAccountId = Lens.lens (\AffectedEntity' {awsAccountId} -> awsAccountId) (\s@AffectedEntity' {} a -> s {awsAccountId = a} :: AffectedEntity)

-- | A map of entity tags attached to the affected entity.
--
-- Currently, the @tags@ property isn\'t supported.
affectedEntity_tags :: Lens.Lens' AffectedEntity (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
affectedEntity_tags = Lens.lens (\AffectedEntity' {tags} -> tags) (\s@AffectedEntity' {} a -> s {tags = a} :: AffectedEntity) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the affected entity.
affectedEntity_entityValue :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.Text)
affectedEntity_entityValue = Lens.lens (\AffectedEntity' {entityValue} -> entityValue) (\s@AffectedEntity' {} a -> s {entityValue = a} :: AffectedEntity)

-- | The unique identifier for the event. The event ARN has the
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @
-- format.
--
-- For example, an event ARN might look like the following:
--
-- @arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
affectedEntity_eventArn :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.Text)
affectedEntity_eventArn = Lens.lens (\AffectedEntity' {eventArn} -> eventArn) (\s@AffectedEntity' {} a -> s {eventArn = a} :: AffectedEntity)

-- | The URL of the affected entity.
affectedEntity_entityUrl :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.Text)
affectedEntity_entityUrl = Lens.lens (\AffectedEntity' {entityUrl} -> entityUrl) (\s@AffectedEntity' {} a -> s {entityUrl = a} :: AffectedEntity)

-- | The most recent time that the entity was updated.
affectedEntity_lastUpdatedTime :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.UTCTime)
affectedEntity_lastUpdatedTime = Lens.lens (\AffectedEntity' {lastUpdatedTime} -> lastUpdatedTime) (\s@AffectedEntity' {} a -> s {lastUpdatedTime = a} :: AffectedEntity) Prelude.. Lens.mapping Core._Time

-- | The most recent status of the entity affected by the event. The possible
-- values are @IMPAIRED@, @UNIMPAIRED@, and @UNKNOWN@.
affectedEntity_statusCode :: Lens.Lens' AffectedEntity (Prelude.Maybe EntityStatusCode)
affectedEntity_statusCode = Lens.lens (\AffectedEntity' {statusCode} -> statusCode) (\s@AffectedEntity' {} a -> s {statusCode = a} :: AffectedEntity)

-- | The unique identifier for the entity. Format:
-- @arn:aws:health:entity-region:aws-account:entity\/entity-id @. Example:
-- @arn:aws:health:us-east-1:111222333444:entity\/AVh5GGT7ul1arKr1sE1K@
affectedEntity_entityArn :: Lens.Lens' AffectedEntity (Prelude.Maybe Prelude.Text)
affectedEntity_entityArn = Lens.lens (\AffectedEntity' {entityArn} -> entityArn) (\s@AffectedEntity' {} a -> s {entityArn = a} :: AffectedEntity)

instance Core.FromJSON AffectedEntity where
  parseJSON =
    Core.withObject
      "AffectedEntity"
      ( \x ->
          AffectedEntity'
            Prelude.<$> (x Core..:? "awsAccountId")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "entityValue")
            Prelude.<*> (x Core..:? "eventArn")
            Prelude.<*> (x Core..:? "entityUrl")
            Prelude.<*> (x Core..:? "lastUpdatedTime")
            Prelude.<*> (x Core..:? "statusCode")
            Prelude.<*> (x Core..:? "entityArn")
      )

instance Prelude.Hashable AffectedEntity where
  hashWithSalt _salt AffectedEntity' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` entityValue
      `Prelude.hashWithSalt` eventArn
      `Prelude.hashWithSalt` entityUrl
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` statusCode
      `Prelude.hashWithSalt` entityArn

instance Prelude.NFData AffectedEntity where
  rnf AffectedEntity' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf entityValue
      `Prelude.seq` Prelude.rnf eventArn
      `Prelude.seq` Prelude.rnf entityUrl
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf statusCode
      `Prelude.seq` Prelude.rnf entityArn
