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
-- Module      : Amazonka.ChimeSDKIdentity.Types.AppInstanceUserEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSDKIdentity.Types.AppInstanceUserEndpoint where

import Amazonka.ChimeSDKIdentity.Types.AllowMessages
import Amazonka.ChimeSDKIdentity.Types.AppInstanceUserEndpointType
import Amazonka.ChimeSDKIdentity.Types.EndpointAttributes
import Amazonka.ChimeSDKIdentity.Types.EndpointState
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An endpoint under an Amazon Chime @AppInstanceUser@ that receives
-- messages for a user. For push notifications, the endpoint is a mobile
-- device used to receive mobile push notifications for a user.
--
-- /See:/ 'newAppInstanceUserEndpoint' smart constructor.
data AppInstanceUserEndpoint = AppInstanceUserEndpoint'
  { -- | The time at which an @AppInstanceUserEndpoint@ was last updated.
    lastUpdatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The name of the @AppInstanceUserEndpoint@.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The type of the @AppInstanceUserEndpoint@.
    type' :: Prelude.Maybe AppInstanceUserEndpointType,
    -- | The unique identifier of the @AppInstanceUserEndpoint@.
    endpointId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ARN of the @AppInstanceUser@.
    appInstanceUserArn :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The time at which an @AppInstanceUserEndpoint@ was created.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The attributes of an @Endpoint@.
    endpointAttributes :: Prelude.Maybe EndpointAttributes,
    -- | A read-only field that represents the state of an
    -- @AppInstanceUserEndpoint@. Supported values:
    --
    -- -   @ACTIVE@: The @AppInstanceUserEndpoint@ is active and able to
    --     receive messages. When @ACTIVE@, the @EndpointStatusReason@ remains
    --     empty.
    --
    -- -   @INACTIVE@: The @AppInstanceUserEndpoint@ is inactive and can\'t
    --     receive message. When @INACTIVE@, the corresponding reason will be
    --     conveyed through @EndpointStatusReason@.
    --
    -- -   @INVALID_DEVICE_TOKEN@ indicates that an @AppInstanceUserEndpoint@
    --     is @INACTIVE@ due to invalid device token
    --
    -- -   @INVALID_PINPOINT_ARN@ indicates that an @AppInstanceUserEndpoint@
    --     is @INACTIVE@ due to an invalid pinpoint ARN that was input through
    --     the @ResourceArn@ field.
    endpointState :: Prelude.Maybe EndpointState,
    -- | The ARN of the resource to which the endpoint belongs.
    resourceArn :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Boolean that controls whether the @AppInstanceUserEndpoint@ is opted in
    -- to receive messages. @ALL@ indicates the endpoint will receive all
    -- messages. @NONE@ indicates the endpoint will receive no messages.
    allowMessages :: Prelude.Maybe AllowMessages
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppInstanceUserEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'appInstanceUserEndpoint_lastUpdatedTimestamp' - The time at which an @AppInstanceUserEndpoint@ was last updated.
--
-- 'name', 'appInstanceUserEndpoint_name' - The name of the @AppInstanceUserEndpoint@.
--
-- 'type'', 'appInstanceUserEndpoint_type' - The type of the @AppInstanceUserEndpoint@.
--
-- 'endpointId', 'appInstanceUserEndpoint_endpointId' - The unique identifier of the @AppInstanceUserEndpoint@.
--
-- 'appInstanceUserArn', 'appInstanceUserEndpoint_appInstanceUserArn' - The ARN of the @AppInstanceUser@.
--
-- 'createdTimestamp', 'appInstanceUserEndpoint_createdTimestamp' - The time at which an @AppInstanceUserEndpoint@ was created.
--
-- 'endpointAttributes', 'appInstanceUserEndpoint_endpointAttributes' - The attributes of an @Endpoint@.
--
-- 'endpointState', 'appInstanceUserEndpoint_endpointState' - A read-only field that represents the state of an
-- @AppInstanceUserEndpoint@. Supported values:
--
-- -   @ACTIVE@: The @AppInstanceUserEndpoint@ is active and able to
--     receive messages. When @ACTIVE@, the @EndpointStatusReason@ remains
--     empty.
--
-- -   @INACTIVE@: The @AppInstanceUserEndpoint@ is inactive and can\'t
--     receive message. When @INACTIVE@, the corresponding reason will be
--     conveyed through @EndpointStatusReason@.
--
-- -   @INVALID_DEVICE_TOKEN@ indicates that an @AppInstanceUserEndpoint@
--     is @INACTIVE@ due to invalid device token
--
-- -   @INVALID_PINPOINT_ARN@ indicates that an @AppInstanceUserEndpoint@
--     is @INACTIVE@ due to an invalid pinpoint ARN that was input through
--     the @ResourceArn@ field.
--
-- 'resourceArn', 'appInstanceUserEndpoint_resourceArn' - The ARN of the resource to which the endpoint belongs.
--
-- 'allowMessages', 'appInstanceUserEndpoint_allowMessages' - Boolean that controls whether the @AppInstanceUserEndpoint@ is opted in
-- to receive messages. @ALL@ indicates the endpoint will receive all
-- messages. @NONE@ indicates the endpoint will receive no messages.
newAppInstanceUserEndpoint ::
  AppInstanceUserEndpoint
newAppInstanceUserEndpoint =
  AppInstanceUserEndpoint'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      endpointId = Prelude.Nothing,
      appInstanceUserArn = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      endpointAttributes = Prelude.Nothing,
      endpointState = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      allowMessages = Prelude.Nothing
    }

-- | The time at which an @AppInstanceUserEndpoint@ was last updated.
appInstanceUserEndpoint_lastUpdatedTimestamp :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.UTCTime)
appInstanceUserEndpoint_lastUpdatedTimestamp = Lens.lens (\AppInstanceUserEndpoint' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@AppInstanceUserEndpoint' {} a -> s {lastUpdatedTimestamp = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Time

-- | The name of the @AppInstanceUserEndpoint@.
appInstanceUserEndpoint_name :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.Text)
appInstanceUserEndpoint_name = Lens.lens (\AppInstanceUserEndpoint' {name} -> name) (\s@AppInstanceUserEndpoint' {} a -> s {name = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Sensitive

-- | The type of the @AppInstanceUserEndpoint@.
appInstanceUserEndpoint_type :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe AppInstanceUserEndpointType)
appInstanceUserEndpoint_type = Lens.lens (\AppInstanceUserEndpoint' {type'} -> type') (\s@AppInstanceUserEndpoint' {} a -> s {type' = a} :: AppInstanceUserEndpoint)

-- | The unique identifier of the @AppInstanceUserEndpoint@.
appInstanceUserEndpoint_endpointId :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.Text)
appInstanceUserEndpoint_endpointId = Lens.lens (\AppInstanceUserEndpoint' {endpointId} -> endpointId) (\s@AppInstanceUserEndpoint' {} a -> s {endpointId = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Sensitive

-- | The ARN of the @AppInstanceUser@.
appInstanceUserEndpoint_appInstanceUserArn :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.Text)
appInstanceUserEndpoint_appInstanceUserArn = Lens.lens (\AppInstanceUserEndpoint' {appInstanceUserArn} -> appInstanceUserArn) (\s@AppInstanceUserEndpoint' {} a -> s {appInstanceUserArn = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Sensitive

-- | The time at which an @AppInstanceUserEndpoint@ was created.
appInstanceUserEndpoint_createdTimestamp :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.UTCTime)
appInstanceUserEndpoint_createdTimestamp = Lens.lens (\AppInstanceUserEndpoint' {createdTimestamp} -> createdTimestamp) (\s@AppInstanceUserEndpoint' {} a -> s {createdTimestamp = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Time

-- | The attributes of an @Endpoint@.
appInstanceUserEndpoint_endpointAttributes :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe EndpointAttributes)
appInstanceUserEndpoint_endpointAttributes = Lens.lens (\AppInstanceUserEndpoint' {endpointAttributes} -> endpointAttributes) (\s@AppInstanceUserEndpoint' {} a -> s {endpointAttributes = a} :: AppInstanceUserEndpoint)

-- | A read-only field that represents the state of an
-- @AppInstanceUserEndpoint@. Supported values:
--
-- -   @ACTIVE@: The @AppInstanceUserEndpoint@ is active and able to
--     receive messages. When @ACTIVE@, the @EndpointStatusReason@ remains
--     empty.
--
-- -   @INACTIVE@: The @AppInstanceUserEndpoint@ is inactive and can\'t
--     receive message. When @INACTIVE@, the corresponding reason will be
--     conveyed through @EndpointStatusReason@.
--
-- -   @INVALID_DEVICE_TOKEN@ indicates that an @AppInstanceUserEndpoint@
--     is @INACTIVE@ due to invalid device token
--
-- -   @INVALID_PINPOINT_ARN@ indicates that an @AppInstanceUserEndpoint@
--     is @INACTIVE@ due to an invalid pinpoint ARN that was input through
--     the @ResourceArn@ field.
appInstanceUserEndpoint_endpointState :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe EndpointState)
appInstanceUserEndpoint_endpointState = Lens.lens (\AppInstanceUserEndpoint' {endpointState} -> endpointState) (\s@AppInstanceUserEndpoint' {} a -> s {endpointState = a} :: AppInstanceUserEndpoint)

-- | The ARN of the resource to which the endpoint belongs.
appInstanceUserEndpoint_resourceArn :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe Prelude.Text)
appInstanceUserEndpoint_resourceArn = Lens.lens (\AppInstanceUserEndpoint' {resourceArn} -> resourceArn) (\s@AppInstanceUserEndpoint' {} a -> s {resourceArn = a} :: AppInstanceUserEndpoint) Prelude.. Lens.mapping Core._Sensitive

-- | Boolean that controls whether the @AppInstanceUserEndpoint@ is opted in
-- to receive messages. @ALL@ indicates the endpoint will receive all
-- messages. @NONE@ indicates the endpoint will receive no messages.
appInstanceUserEndpoint_allowMessages :: Lens.Lens' AppInstanceUserEndpoint (Prelude.Maybe AllowMessages)
appInstanceUserEndpoint_allowMessages = Lens.lens (\AppInstanceUserEndpoint' {allowMessages} -> allowMessages) (\s@AppInstanceUserEndpoint' {} a -> s {allowMessages = a} :: AppInstanceUserEndpoint)

instance Core.FromJSON AppInstanceUserEndpoint where
  parseJSON =
    Core.withObject
      "AppInstanceUserEndpoint"
      ( \x ->
          AppInstanceUserEndpoint'
            Prelude.<$> (x Core..:? "LastUpdatedTimestamp")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "EndpointId")
            Prelude.<*> (x Core..:? "AppInstanceUserArn")
            Prelude.<*> (x Core..:? "CreatedTimestamp")
            Prelude.<*> (x Core..:? "EndpointAttributes")
            Prelude.<*> (x Core..:? "EndpointState")
            Prelude.<*> (x Core..:? "ResourceArn")
            Prelude.<*> (x Core..:? "AllowMessages")
      )

instance Prelude.Hashable AppInstanceUserEndpoint where
  hashWithSalt _salt AppInstanceUserEndpoint' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimestamp
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` endpointId
      `Prelude.hashWithSalt` appInstanceUserArn
      `Prelude.hashWithSalt` createdTimestamp
      `Prelude.hashWithSalt` endpointAttributes
      `Prelude.hashWithSalt` endpointState
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` allowMessages

instance Prelude.NFData AppInstanceUserEndpoint where
  rnf AppInstanceUserEndpoint' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf endpointId
      `Prelude.seq` Prelude.rnf appInstanceUserArn
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf endpointAttributes
      `Prelude.seq` Prelude.rnf endpointState
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf allowMessages
