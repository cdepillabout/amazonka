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
-- Module      : Amazonka.ChimeSDKMessaging.UpdateChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a channel\'s attributes.
--
-- __Restriction__: You can\'t change a channel\'s privacy.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Amazonka.ChimeSDKMessaging.UpdateChannel
  ( -- * Creating a Request
    UpdateChannel (..),
    newUpdateChannel,

    -- * Request Lenses
    updateChannel_name,
    updateChannel_metadata,
    updateChannel_mode,
    updateChannel_channelArn,
    updateChannel_chimeBearer,

    -- * Destructuring the Response
    UpdateChannelResponse (..),
    newUpdateChannelResponse,

    -- * Response Lenses
    updateChannelResponse_channelArn,
    updateChannelResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateChannel' smart constructor.
data UpdateChannel = UpdateChannel'
  { -- | The name of the channel.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The metadata for the update request.
    metadata :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The mode of the update request.
    mode :: Prelude.Maybe ChannelMode,
    -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateChannel_name' - The name of the channel.
--
-- 'metadata', 'updateChannel_metadata' - The metadata for the update request.
--
-- 'mode', 'updateChannel_mode' - The mode of the update request.
--
-- 'channelArn', 'updateChannel_channelArn' - The ARN of the channel.
--
-- 'chimeBearer', 'updateChannel_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newUpdateChannel ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  UpdateChannel
newUpdateChannel pChannelArn_ pChimeBearer_ =
  UpdateChannel'
    { name = Prelude.Nothing,
      metadata = Prelude.Nothing,
      mode = Prelude.Nothing,
      channelArn = pChannelArn_,
      chimeBearer = pChimeBearer_
    }

-- | The name of the channel.
updateChannel_name :: Lens.Lens' UpdateChannel (Prelude.Maybe Prelude.Text)
updateChannel_name = Lens.lens (\UpdateChannel' {name} -> name) (\s@UpdateChannel' {} a -> s {name = a} :: UpdateChannel) Prelude.. Lens.mapping Core._Sensitive

-- | The metadata for the update request.
updateChannel_metadata :: Lens.Lens' UpdateChannel (Prelude.Maybe Prelude.Text)
updateChannel_metadata = Lens.lens (\UpdateChannel' {metadata} -> metadata) (\s@UpdateChannel' {} a -> s {metadata = a} :: UpdateChannel) Prelude.. Lens.mapping Core._Sensitive

-- | The mode of the update request.
updateChannel_mode :: Lens.Lens' UpdateChannel (Prelude.Maybe ChannelMode)
updateChannel_mode = Lens.lens (\UpdateChannel' {mode} -> mode) (\s@UpdateChannel' {} a -> s {mode = a} :: UpdateChannel)

-- | The ARN of the channel.
updateChannel_channelArn :: Lens.Lens' UpdateChannel Prelude.Text
updateChannel_channelArn = Lens.lens (\UpdateChannel' {channelArn} -> channelArn) (\s@UpdateChannel' {} a -> s {channelArn = a} :: UpdateChannel)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
updateChannel_chimeBearer :: Lens.Lens' UpdateChannel Prelude.Text
updateChannel_chimeBearer = Lens.lens (\UpdateChannel' {chimeBearer} -> chimeBearer) (\s@UpdateChannel' {} a -> s {chimeBearer = a} :: UpdateChannel)

instance Core.AWSRequest UpdateChannel where
  type
    AWSResponse UpdateChannel =
      UpdateChannelResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            Prelude.<$> (x Core..?> "ChannelArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateChannel where
  hashWithSalt _salt UpdateChannel' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` metadata
      `Prelude.hashWithSalt` mode
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` chimeBearer

instance Prelude.NFData UpdateChannel where
  rnf UpdateChannel' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf metadata
      `Prelude.seq` Prelude.rnf mode
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf chimeBearer

instance Core.ToHeaders UpdateChannel where
  toHeaders UpdateChannel' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToJSON UpdateChannel where
  toJSON UpdateChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Metadata" Core..=) Prelude.<$> metadata,
            ("Mode" Core..=) Prelude.<$> mode
          ]
      )

instance Core.ToPath UpdateChannel where
  toPath UpdateChannel' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn]

instance Core.ToQuery UpdateChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateChannelResponse' smart constructor.
data UpdateChannelResponse = UpdateChannelResponse'
  { -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelArn', 'updateChannelResponse_channelArn' - The ARN of the channel.
--
-- 'httpStatus', 'updateChannelResponse_httpStatus' - The response's http status code.
newUpdateChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateChannelResponse
newUpdateChannelResponse pHttpStatus_ =
  UpdateChannelResponse'
    { channelArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the channel.
updateChannelResponse_channelArn :: Lens.Lens' UpdateChannelResponse (Prelude.Maybe Prelude.Text)
updateChannelResponse_channelArn = Lens.lens (\UpdateChannelResponse' {channelArn} -> channelArn) (\s@UpdateChannelResponse' {} a -> s {channelArn = a} :: UpdateChannelResponse)

-- | The response's http status code.
updateChannelResponse_httpStatus :: Lens.Lens' UpdateChannelResponse Prelude.Int
updateChannelResponse_httpStatus = Lens.lens (\UpdateChannelResponse' {httpStatus} -> httpStatus) (\s@UpdateChannelResponse' {} a -> s {httpStatus = a} :: UpdateChannelResponse)

instance Prelude.NFData UpdateChannelResponse where
  rnf UpdateChannelResponse' {..} =
    Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf httpStatus
