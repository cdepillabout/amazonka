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
-- Module      : Amazonka.ChimeSDKMessaging.ListChannelMemberships
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all channel memberships in a channel.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
--
-- If you want to list the channels to which a specific app instance user
-- belongs, see the
-- <https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html ListChannelMembershipsForAppInstanceUser>
-- API.
module Amazonka.ChimeSDKMessaging.ListChannelMemberships
  ( -- * Creating a Request
    ListChannelMemberships (..),
    newListChannelMemberships,

    -- * Request Lenses
    listChannelMemberships_nextToken,
    listChannelMemberships_type,
    listChannelMemberships_subChannelId,
    listChannelMemberships_maxResults,
    listChannelMemberships_channelArn,
    listChannelMemberships_chimeBearer,

    -- * Destructuring the Response
    ListChannelMembershipsResponse (..),
    newListChannelMembershipsResponse,

    -- * Response Lenses
    listChannelMembershipsResponse_nextToken,
    listChannelMembershipsResponse_channelArn,
    listChannelMembershipsResponse_channelMemberships,
    listChannelMembershipsResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannelMemberships' smart constructor.
data ListChannelMemberships = ListChannelMemberships'
  { -- | The token passed by previous API calls until all requested channel
    -- memberships are returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
    -- are returned as part of @ListChannelMemberships@ if no type is
    -- specified. Hidden members are only returned if the type filter in
    -- @ListChannelMemberships@ equals @HIDDEN@.
    type' :: Prelude.Maybe ChannelMembershipType,
    -- | The ID of the SubChannel in the request.
    --
    -- Only required when listing a user\'s memberships in a particular
    -- sub-channel of an elastic channel.
    subChannelId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of channel memberships that you want returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The maximum number of channel memberships that you want returned.
    channelArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelMemberships' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelMemberships_nextToken' - The token passed by previous API calls until all requested channel
-- memberships are returned.
--
-- 'type'', 'listChannelMemberships_type' - The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
-- are returned as part of @ListChannelMemberships@ if no type is
-- specified. Hidden members are only returned if the type filter in
-- @ListChannelMemberships@ equals @HIDDEN@.
--
-- 'subChannelId', 'listChannelMemberships_subChannelId' - The ID of the SubChannel in the request.
--
-- Only required when listing a user\'s memberships in a particular
-- sub-channel of an elastic channel.
--
-- 'maxResults', 'listChannelMemberships_maxResults' - The maximum number of channel memberships that you want returned.
--
-- 'channelArn', 'listChannelMemberships_channelArn' - The maximum number of channel memberships that you want returned.
--
-- 'chimeBearer', 'listChannelMemberships_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newListChannelMemberships ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  ListChannelMemberships
newListChannelMemberships pChannelArn_ pChimeBearer_ =
  ListChannelMemberships'
    { nextToken =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      subChannelId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      channelArn = pChannelArn_,
      chimeBearer = pChimeBearer_
    }

-- | The token passed by previous API calls until all requested channel
-- memberships are returned.
listChannelMemberships_nextToken :: Lens.Lens' ListChannelMemberships (Prelude.Maybe Prelude.Text)
listChannelMemberships_nextToken = Lens.lens (\ListChannelMemberships' {nextToken} -> nextToken) (\s@ListChannelMemberships' {} a -> s {nextToken = a} :: ListChannelMemberships) Prelude.. Lens.mapping Core._Sensitive

-- | The membership type of a user, @DEFAULT@ or @HIDDEN@. Default members
-- are returned as part of @ListChannelMemberships@ if no type is
-- specified. Hidden members are only returned if the type filter in
-- @ListChannelMemberships@ equals @HIDDEN@.
listChannelMemberships_type :: Lens.Lens' ListChannelMemberships (Prelude.Maybe ChannelMembershipType)
listChannelMemberships_type = Lens.lens (\ListChannelMemberships' {type'} -> type') (\s@ListChannelMemberships' {} a -> s {type' = a} :: ListChannelMemberships)

-- | The ID of the SubChannel in the request.
--
-- Only required when listing a user\'s memberships in a particular
-- sub-channel of an elastic channel.
listChannelMemberships_subChannelId :: Lens.Lens' ListChannelMemberships (Prelude.Maybe Prelude.Text)
listChannelMemberships_subChannelId = Lens.lens (\ListChannelMemberships' {subChannelId} -> subChannelId) (\s@ListChannelMemberships' {} a -> s {subChannelId = a} :: ListChannelMemberships)

-- | The maximum number of channel memberships that you want returned.
listChannelMemberships_maxResults :: Lens.Lens' ListChannelMemberships (Prelude.Maybe Prelude.Natural)
listChannelMemberships_maxResults = Lens.lens (\ListChannelMemberships' {maxResults} -> maxResults) (\s@ListChannelMemberships' {} a -> s {maxResults = a} :: ListChannelMemberships)

-- | The maximum number of channel memberships that you want returned.
listChannelMemberships_channelArn :: Lens.Lens' ListChannelMemberships Prelude.Text
listChannelMemberships_channelArn = Lens.lens (\ListChannelMemberships' {channelArn} -> channelArn) (\s@ListChannelMemberships' {} a -> s {channelArn = a} :: ListChannelMemberships)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelMemberships_chimeBearer :: Lens.Lens' ListChannelMemberships Prelude.Text
listChannelMemberships_chimeBearer = Lens.lens (\ListChannelMemberships' {chimeBearer} -> chimeBearer) (\s@ListChannelMemberships' {} a -> s {chimeBearer = a} :: ListChannelMemberships)

instance Core.AWSRequest ListChannelMemberships where
  type
    AWSResponse ListChannelMemberships =
      ListChannelMembershipsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelMembershipsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ChannelArn")
            Prelude.<*> ( x Core..?> "ChannelMemberships"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListChannelMemberships where
  hashWithSalt _salt ListChannelMemberships' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` subChannelId
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` chimeBearer

instance Prelude.NFData ListChannelMemberships where
  rnf ListChannelMemberships' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf subChannelId
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf chimeBearer

instance Core.ToHeaders ListChannelMemberships where
  toHeaders ListChannelMemberships' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath ListChannelMemberships where
  toPath ListChannelMemberships' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn, "/memberships"]

instance Core.ToQuery ListChannelMemberships where
  toQuery ListChannelMemberships' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "type" Core.=: type',
        "sub-channel-id" Core.=: subChannelId,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListChannelMembershipsResponse' smart constructor.
data ListChannelMembershipsResponse = ListChannelMembershipsResponse'
  { -- | The token passed by previous API calls until all requested channel
    -- memberships are returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The information for the requested channel memberships.
    channelMemberships :: Prelude.Maybe [ChannelMembershipSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelMembershipsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelMembershipsResponse_nextToken' - The token passed by previous API calls until all requested channel
-- memberships are returned.
--
-- 'channelArn', 'listChannelMembershipsResponse_channelArn' - The ARN of the channel.
--
-- 'channelMemberships', 'listChannelMembershipsResponse_channelMemberships' - The information for the requested channel memberships.
--
-- 'httpStatus', 'listChannelMembershipsResponse_httpStatus' - The response's http status code.
newListChannelMembershipsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelMembershipsResponse
newListChannelMembershipsResponse pHttpStatus_ =
  ListChannelMembershipsResponse'
    { nextToken =
        Prelude.Nothing,
      channelArn = Prelude.Nothing,
      channelMemberships = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token passed by previous API calls until all requested channel
-- memberships are returned.
listChannelMembershipsResponse_nextToken :: Lens.Lens' ListChannelMembershipsResponse (Prelude.Maybe Prelude.Text)
listChannelMembershipsResponse_nextToken = Lens.lens (\ListChannelMembershipsResponse' {nextToken} -> nextToken) (\s@ListChannelMembershipsResponse' {} a -> s {nextToken = a} :: ListChannelMembershipsResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The ARN of the channel.
listChannelMembershipsResponse_channelArn :: Lens.Lens' ListChannelMembershipsResponse (Prelude.Maybe Prelude.Text)
listChannelMembershipsResponse_channelArn = Lens.lens (\ListChannelMembershipsResponse' {channelArn} -> channelArn) (\s@ListChannelMembershipsResponse' {} a -> s {channelArn = a} :: ListChannelMembershipsResponse)

-- | The information for the requested channel memberships.
listChannelMembershipsResponse_channelMemberships :: Lens.Lens' ListChannelMembershipsResponse (Prelude.Maybe [ChannelMembershipSummary])
listChannelMembershipsResponse_channelMemberships = Lens.lens (\ListChannelMembershipsResponse' {channelMemberships} -> channelMemberships) (\s@ListChannelMembershipsResponse' {} a -> s {channelMemberships = a} :: ListChannelMembershipsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listChannelMembershipsResponse_httpStatus :: Lens.Lens' ListChannelMembershipsResponse Prelude.Int
listChannelMembershipsResponse_httpStatus = Lens.lens (\ListChannelMembershipsResponse' {httpStatus} -> httpStatus) (\s@ListChannelMembershipsResponse' {} a -> s {httpStatus = a} :: ListChannelMembershipsResponse)

instance
  Prelude.NFData
    ListChannelMembershipsResponse
  where
  rnf ListChannelMembershipsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf channelMemberships
      `Prelude.seq` Prelude.rnf httpStatus
