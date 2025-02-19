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
-- Module      : Amazonka.ChimeSDKMessaging.ListChannelMembershipsForAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all channels that a particular @AppInstanceUser@ is a part of.
-- Only an @AppInstanceAdmin@ can call the API with a user ARN that is not
-- their own.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Amazonka.ChimeSDKMessaging.ListChannelMembershipsForAppInstanceUser
  ( -- * Creating a Request
    ListChannelMembershipsForAppInstanceUser (..),
    newListChannelMembershipsForAppInstanceUser,

    -- * Request Lenses
    listChannelMembershipsForAppInstanceUser_nextToken,
    listChannelMembershipsForAppInstanceUser_appInstanceUserArn,
    listChannelMembershipsForAppInstanceUser_maxResults,
    listChannelMembershipsForAppInstanceUser_chimeBearer,

    -- * Destructuring the Response
    ListChannelMembershipsForAppInstanceUserResponse (..),
    newListChannelMembershipsForAppInstanceUserResponse,

    -- * Response Lenses
    listChannelMembershipsForAppInstanceUserResponse_nextToken,
    listChannelMembershipsForAppInstanceUserResponse_channelMemberships,
    listChannelMembershipsForAppInstanceUserResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannelMembershipsForAppInstanceUser' smart constructor.
data ListChannelMembershipsForAppInstanceUser = ListChannelMembershipsForAppInstanceUser'
  { -- | The token returned from previous API requests until the number of
    -- channel memberships is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ARN of the @AppInstanceUser@s
    appInstanceUserArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of users that you want returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelMembershipsForAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelMembershipsForAppInstanceUser_nextToken' - The token returned from previous API requests until the number of
-- channel memberships is reached.
--
-- 'appInstanceUserArn', 'listChannelMembershipsForAppInstanceUser_appInstanceUserArn' - The ARN of the @AppInstanceUser@s
--
-- 'maxResults', 'listChannelMembershipsForAppInstanceUser_maxResults' - The maximum number of users that you want returned.
--
-- 'chimeBearer', 'listChannelMembershipsForAppInstanceUser_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newListChannelMembershipsForAppInstanceUser ::
  -- | 'chimeBearer'
  Prelude.Text ->
  ListChannelMembershipsForAppInstanceUser
newListChannelMembershipsForAppInstanceUser
  pChimeBearer_ =
    ListChannelMembershipsForAppInstanceUser'
      { nextToken =
          Prelude.Nothing,
        appInstanceUserArn =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        chimeBearer = pChimeBearer_
      }

-- | The token returned from previous API requests until the number of
-- channel memberships is reached.
listChannelMembershipsForAppInstanceUser_nextToken :: Lens.Lens' ListChannelMembershipsForAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelMembershipsForAppInstanceUser_nextToken = Lens.lens (\ListChannelMembershipsForAppInstanceUser' {nextToken} -> nextToken) (\s@ListChannelMembershipsForAppInstanceUser' {} a -> s {nextToken = a} :: ListChannelMembershipsForAppInstanceUser) Prelude.. Lens.mapping Core._Sensitive

-- | The ARN of the @AppInstanceUser@s
listChannelMembershipsForAppInstanceUser_appInstanceUserArn :: Lens.Lens' ListChannelMembershipsForAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelMembershipsForAppInstanceUser_appInstanceUserArn = Lens.lens (\ListChannelMembershipsForAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@ListChannelMembershipsForAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: ListChannelMembershipsForAppInstanceUser)

-- | The maximum number of users that you want returned.
listChannelMembershipsForAppInstanceUser_maxResults :: Lens.Lens' ListChannelMembershipsForAppInstanceUser (Prelude.Maybe Prelude.Natural)
listChannelMembershipsForAppInstanceUser_maxResults = Lens.lens (\ListChannelMembershipsForAppInstanceUser' {maxResults} -> maxResults) (\s@ListChannelMembershipsForAppInstanceUser' {} a -> s {maxResults = a} :: ListChannelMembershipsForAppInstanceUser)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelMembershipsForAppInstanceUser_chimeBearer :: Lens.Lens' ListChannelMembershipsForAppInstanceUser Prelude.Text
listChannelMembershipsForAppInstanceUser_chimeBearer = Lens.lens (\ListChannelMembershipsForAppInstanceUser' {chimeBearer} -> chimeBearer) (\s@ListChannelMembershipsForAppInstanceUser' {} a -> s {chimeBearer = a} :: ListChannelMembershipsForAppInstanceUser)

instance
  Core.AWSRequest
    ListChannelMembershipsForAppInstanceUser
  where
  type
    AWSResponse
      ListChannelMembershipsForAppInstanceUser =
      ListChannelMembershipsForAppInstanceUserResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelMembershipsForAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "ChannelMemberships"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListChannelMembershipsForAppInstanceUser
  where
  hashWithSalt
    _salt
    ListChannelMembershipsForAppInstanceUser' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` appInstanceUserArn
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` chimeBearer

instance
  Prelude.NFData
    ListChannelMembershipsForAppInstanceUser
  where
  rnf ListChannelMembershipsForAppInstanceUser' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf appInstanceUserArn
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf chimeBearer

instance
  Core.ToHeaders
    ListChannelMembershipsForAppInstanceUser
  where
  toHeaders
    ListChannelMembershipsForAppInstanceUser' {..} =
      Prelude.mconcat
        ["x-amz-chime-bearer" Core.=# chimeBearer]

instance
  Core.ToPath
    ListChannelMembershipsForAppInstanceUser
  where
  toPath = Prelude.const "/channels"

instance
  Core.ToQuery
    ListChannelMembershipsForAppInstanceUser
  where
  toQuery ListChannelMembershipsForAppInstanceUser' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "app-instance-user-arn" Core.=: appInstanceUserArn,
        "max-results" Core.=: maxResults,
        "scope=app-instance-user-memberships"
      ]

-- | /See:/ 'newListChannelMembershipsForAppInstanceUserResponse' smart constructor.
data ListChannelMembershipsForAppInstanceUserResponse = ListChannelMembershipsForAppInstanceUserResponse'
  { -- | The token passed by previous API calls until all requested users are
    -- returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The information for the requested channel memberships.
    channelMemberships :: Prelude.Maybe [ChannelMembershipForAppInstanceUserSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelMembershipsForAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelMembershipsForAppInstanceUserResponse_nextToken' - The token passed by previous API calls until all requested users are
-- returned.
--
-- 'channelMemberships', 'listChannelMembershipsForAppInstanceUserResponse_channelMemberships' - The information for the requested channel memberships.
--
-- 'httpStatus', 'listChannelMembershipsForAppInstanceUserResponse_httpStatus' - The response's http status code.
newListChannelMembershipsForAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelMembershipsForAppInstanceUserResponse
newListChannelMembershipsForAppInstanceUserResponse
  pHttpStatus_ =
    ListChannelMembershipsForAppInstanceUserResponse'
      { nextToken =
          Prelude.Nothing,
        channelMemberships =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token passed by previous API calls until all requested users are
-- returned.
listChannelMembershipsForAppInstanceUserResponse_nextToken :: Lens.Lens' ListChannelMembershipsForAppInstanceUserResponse (Prelude.Maybe Prelude.Text)
listChannelMembershipsForAppInstanceUserResponse_nextToken = Lens.lens (\ListChannelMembershipsForAppInstanceUserResponse' {nextToken} -> nextToken) (\s@ListChannelMembershipsForAppInstanceUserResponse' {} a -> s {nextToken = a} :: ListChannelMembershipsForAppInstanceUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The information for the requested channel memberships.
listChannelMembershipsForAppInstanceUserResponse_channelMemberships :: Lens.Lens' ListChannelMembershipsForAppInstanceUserResponse (Prelude.Maybe [ChannelMembershipForAppInstanceUserSummary])
listChannelMembershipsForAppInstanceUserResponse_channelMemberships = Lens.lens (\ListChannelMembershipsForAppInstanceUserResponse' {channelMemberships} -> channelMemberships) (\s@ListChannelMembershipsForAppInstanceUserResponse' {} a -> s {channelMemberships = a} :: ListChannelMembershipsForAppInstanceUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listChannelMembershipsForAppInstanceUserResponse_httpStatus :: Lens.Lens' ListChannelMembershipsForAppInstanceUserResponse Prelude.Int
listChannelMembershipsForAppInstanceUserResponse_httpStatus = Lens.lens (\ListChannelMembershipsForAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@ListChannelMembershipsForAppInstanceUserResponse' {} a -> s {httpStatus = a} :: ListChannelMembershipsForAppInstanceUserResponse)

instance
  Prelude.NFData
    ListChannelMembershipsForAppInstanceUserResponse
  where
  rnf
    ListChannelMembershipsForAppInstanceUserResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf channelMemberships
        `Prelude.seq` Prelude.rnf httpStatus
