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
-- Module      : Amazonka.Chime.ListChannelsModeratedByAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of the channels moderated by an @AppInstanceUser@.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Amazonka.Chime.ListChannelsModeratedByAppInstanceUser
  ( -- * Creating a Request
    ListChannelsModeratedByAppInstanceUser (..),
    newListChannelsModeratedByAppInstanceUser,

    -- * Request Lenses
    listChannelsModeratedByAppInstanceUser_nextToken,
    listChannelsModeratedByAppInstanceUser_chimeBearer,
    listChannelsModeratedByAppInstanceUser_appInstanceUserArn,
    listChannelsModeratedByAppInstanceUser_maxResults,

    -- * Destructuring the Response
    ListChannelsModeratedByAppInstanceUserResponse (..),
    newListChannelsModeratedByAppInstanceUserResponse,

    -- * Response Lenses
    listChannelsModeratedByAppInstanceUserResponse_nextToken,
    listChannelsModeratedByAppInstanceUserResponse_channels,
    listChannelsModeratedByAppInstanceUserResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannelsModeratedByAppInstanceUser' smart constructor.
data ListChannelsModeratedByAppInstanceUser = ListChannelsModeratedByAppInstanceUser'
  { -- | The token returned from previous API requests until the number of
    -- channels moderated by the user is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the user in the moderated channel.
    appInstanceUserArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of channels in the request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelsModeratedByAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelsModeratedByAppInstanceUser_nextToken' - The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
--
-- 'chimeBearer', 'listChannelsModeratedByAppInstanceUser_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
--
-- 'appInstanceUserArn', 'listChannelsModeratedByAppInstanceUser_appInstanceUserArn' - The ARN of the user in the moderated channel.
--
-- 'maxResults', 'listChannelsModeratedByAppInstanceUser_maxResults' - The maximum number of channels in the request.
newListChannelsModeratedByAppInstanceUser ::
  ListChannelsModeratedByAppInstanceUser
newListChannelsModeratedByAppInstanceUser =
  ListChannelsModeratedByAppInstanceUser'
    { nextToken =
        Prelude.Nothing,
      chimeBearer = Prelude.Nothing,
      appInstanceUserArn =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
listChannelsModeratedByAppInstanceUser_nextToken :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_nextToken = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {nextToken} -> nextToken) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {nextToken = a} :: ListChannelsModeratedByAppInstanceUser) Prelude.. Lens.mapping Core._Sensitive

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelsModeratedByAppInstanceUser_chimeBearer :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_chimeBearer = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {chimeBearer} -> chimeBearer) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {chimeBearer = a} :: ListChannelsModeratedByAppInstanceUser)

-- | The ARN of the user in the moderated channel.
listChannelsModeratedByAppInstanceUser_appInstanceUserArn :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_appInstanceUserArn = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: ListChannelsModeratedByAppInstanceUser)

-- | The maximum number of channels in the request.
listChannelsModeratedByAppInstanceUser_maxResults :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Natural)
listChannelsModeratedByAppInstanceUser_maxResults = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {maxResults} -> maxResults) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {maxResults = a} :: ListChannelsModeratedByAppInstanceUser)

instance
  Core.AWSRequest
    ListChannelsModeratedByAppInstanceUser
  where
  type
    AWSResponse
      ListChannelsModeratedByAppInstanceUser =
      ListChannelsModeratedByAppInstanceUserResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelsModeratedByAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> (x Core..?> "Channels" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListChannelsModeratedByAppInstanceUser
  where
  hashWithSalt
    _salt
    ListChannelsModeratedByAppInstanceUser' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` chimeBearer
        `Prelude.hashWithSalt` appInstanceUserArn
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    ListChannelsModeratedByAppInstanceUser
  where
  rnf ListChannelsModeratedByAppInstanceUser' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf chimeBearer
      `Prelude.seq` Prelude.rnf appInstanceUserArn
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    ListChannelsModeratedByAppInstanceUser
  where
  toHeaders ListChannelsModeratedByAppInstanceUser' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance
  Core.ToPath
    ListChannelsModeratedByAppInstanceUser
  where
  toPath = Prelude.const "/channels"

instance
  Core.ToQuery
    ListChannelsModeratedByAppInstanceUser
  where
  toQuery ListChannelsModeratedByAppInstanceUser' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "app-instance-user-arn" Core.=: appInstanceUserArn,
        "max-results" Core.=: maxResults,
        "scope=app-instance-user-moderated-channels"
      ]

-- | /See:/ 'newListChannelsModeratedByAppInstanceUserResponse' smart constructor.
data ListChannelsModeratedByAppInstanceUserResponse = ListChannelsModeratedByAppInstanceUserResponse'
  { -- | The token returned from previous API requests until the number of
    -- channels moderated by the user is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The moderated channels in the request.
    channels :: Prelude.Maybe [ChannelModeratedByAppInstanceUserSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelsModeratedByAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelsModeratedByAppInstanceUserResponse_nextToken' - The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
--
-- 'channels', 'listChannelsModeratedByAppInstanceUserResponse_channels' - The moderated channels in the request.
--
-- 'httpStatus', 'listChannelsModeratedByAppInstanceUserResponse_httpStatus' - The response's http status code.
newListChannelsModeratedByAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelsModeratedByAppInstanceUserResponse
newListChannelsModeratedByAppInstanceUserResponse
  pHttpStatus_ =
    ListChannelsModeratedByAppInstanceUserResponse'
      { nextToken =
          Prelude.Nothing,
        channels = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
listChannelsModeratedByAppInstanceUserResponse_nextToken :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUserResponse_nextToken = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {nextToken} -> nextToken) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {nextToken = a} :: ListChannelsModeratedByAppInstanceUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The moderated channels in the request.
listChannelsModeratedByAppInstanceUserResponse_channels :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse (Prelude.Maybe [ChannelModeratedByAppInstanceUserSummary])
listChannelsModeratedByAppInstanceUserResponse_channels = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {channels} -> channels) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {channels = a} :: ListChannelsModeratedByAppInstanceUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listChannelsModeratedByAppInstanceUserResponse_httpStatus :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse Prelude.Int
listChannelsModeratedByAppInstanceUserResponse_httpStatus = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {httpStatus = a} :: ListChannelsModeratedByAppInstanceUserResponse)

instance
  Prelude.NFData
    ListChannelsModeratedByAppInstanceUserResponse
  where
  rnf
    ListChannelsModeratedByAppInstanceUserResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf channels
        `Prelude.seq` Prelude.rnf httpStatus
