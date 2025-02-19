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
-- Module      : Amazonka.ChimeSDKMessaging.ListChannelModerators
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the moderators for a channel.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Amazonka.ChimeSDKMessaging.ListChannelModerators
  ( -- * Creating a Request
    ListChannelModerators (..),
    newListChannelModerators,

    -- * Request Lenses
    listChannelModerators_nextToken,
    listChannelModerators_maxResults,
    listChannelModerators_channelArn,
    listChannelModerators_chimeBearer,

    -- * Destructuring the Response
    ListChannelModeratorsResponse (..),
    newListChannelModeratorsResponse,

    -- * Response Lenses
    listChannelModeratorsResponse_nextToken,
    listChannelModeratorsResponse_channelModerators,
    listChannelModeratorsResponse_channelArn,
    listChannelModeratorsResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannelModerators' smart constructor.
data ListChannelModerators = ListChannelModerators'
  { -- | The token passed by previous API calls until all requested moderators
    -- are returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum number of moderators that you want returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelModerators' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelModerators_nextToken' - The token passed by previous API calls until all requested moderators
-- are returned.
--
-- 'maxResults', 'listChannelModerators_maxResults' - The maximum number of moderators that you want returned.
--
-- 'channelArn', 'listChannelModerators_channelArn' - The ARN of the channel.
--
-- 'chimeBearer', 'listChannelModerators_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newListChannelModerators ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  ListChannelModerators
newListChannelModerators pChannelArn_ pChimeBearer_ =
  ListChannelModerators'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      channelArn = pChannelArn_,
      chimeBearer = pChimeBearer_
    }

-- | The token passed by previous API calls until all requested moderators
-- are returned.
listChannelModerators_nextToken :: Lens.Lens' ListChannelModerators (Prelude.Maybe Prelude.Text)
listChannelModerators_nextToken = Lens.lens (\ListChannelModerators' {nextToken} -> nextToken) (\s@ListChannelModerators' {} a -> s {nextToken = a} :: ListChannelModerators) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum number of moderators that you want returned.
listChannelModerators_maxResults :: Lens.Lens' ListChannelModerators (Prelude.Maybe Prelude.Natural)
listChannelModerators_maxResults = Lens.lens (\ListChannelModerators' {maxResults} -> maxResults) (\s@ListChannelModerators' {} a -> s {maxResults = a} :: ListChannelModerators)

-- | The ARN of the channel.
listChannelModerators_channelArn :: Lens.Lens' ListChannelModerators Prelude.Text
listChannelModerators_channelArn = Lens.lens (\ListChannelModerators' {channelArn} -> channelArn) (\s@ListChannelModerators' {} a -> s {channelArn = a} :: ListChannelModerators)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelModerators_chimeBearer :: Lens.Lens' ListChannelModerators Prelude.Text
listChannelModerators_chimeBearer = Lens.lens (\ListChannelModerators' {chimeBearer} -> chimeBearer) (\s@ListChannelModerators' {} a -> s {chimeBearer = a} :: ListChannelModerators)

instance Core.AWSRequest ListChannelModerators where
  type
    AWSResponse ListChannelModerators =
      ListChannelModeratorsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelModeratorsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ChannelModerators"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "ChannelArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListChannelModerators where
  hashWithSalt _salt ListChannelModerators' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` chimeBearer

instance Prelude.NFData ListChannelModerators where
  rnf ListChannelModerators' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf chimeBearer

instance Core.ToHeaders ListChannelModerators where
  toHeaders ListChannelModerators' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath ListChannelModerators where
  toPath ListChannelModerators' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn, "/moderators"]

instance Core.ToQuery ListChannelModerators where
  toQuery ListChannelModerators' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListChannelModeratorsResponse' smart constructor.
data ListChannelModeratorsResponse = ListChannelModeratorsResponse'
  { -- | The token passed by previous API calls until all requested moderators
    -- are returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The information about and names of each moderator.
    channelModerators :: Prelude.Maybe [ChannelModeratorSummary],
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelModeratorsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelModeratorsResponse_nextToken' - The token passed by previous API calls until all requested moderators
-- are returned.
--
-- 'channelModerators', 'listChannelModeratorsResponse_channelModerators' - The information about and names of each moderator.
--
-- 'channelArn', 'listChannelModeratorsResponse_channelArn' - The ARN of the channel.
--
-- 'httpStatus', 'listChannelModeratorsResponse_httpStatus' - The response's http status code.
newListChannelModeratorsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelModeratorsResponse
newListChannelModeratorsResponse pHttpStatus_ =
  ListChannelModeratorsResponse'
    { nextToken =
        Prelude.Nothing,
      channelModerators = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token passed by previous API calls until all requested moderators
-- are returned.
listChannelModeratorsResponse_nextToken :: Lens.Lens' ListChannelModeratorsResponse (Prelude.Maybe Prelude.Text)
listChannelModeratorsResponse_nextToken = Lens.lens (\ListChannelModeratorsResponse' {nextToken} -> nextToken) (\s@ListChannelModeratorsResponse' {} a -> s {nextToken = a} :: ListChannelModeratorsResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The information about and names of each moderator.
listChannelModeratorsResponse_channelModerators :: Lens.Lens' ListChannelModeratorsResponse (Prelude.Maybe [ChannelModeratorSummary])
listChannelModeratorsResponse_channelModerators = Lens.lens (\ListChannelModeratorsResponse' {channelModerators} -> channelModerators) (\s@ListChannelModeratorsResponse' {} a -> s {channelModerators = a} :: ListChannelModeratorsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the channel.
listChannelModeratorsResponse_channelArn :: Lens.Lens' ListChannelModeratorsResponse (Prelude.Maybe Prelude.Text)
listChannelModeratorsResponse_channelArn = Lens.lens (\ListChannelModeratorsResponse' {channelArn} -> channelArn) (\s@ListChannelModeratorsResponse' {} a -> s {channelArn = a} :: ListChannelModeratorsResponse)

-- | The response's http status code.
listChannelModeratorsResponse_httpStatus :: Lens.Lens' ListChannelModeratorsResponse Prelude.Int
listChannelModeratorsResponse_httpStatus = Lens.lens (\ListChannelModeratorsResponse' {httpStatus} -> httpStatus) (\s@ListChannelModeratorsResponse' {} a -> s {httpStatus = a} :: ListChannelModeratorsResponse)

instance Prelude.NFData ListChannelModeratorsResponse where
  rnf ListChannelModeratorsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf channelModerators
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf httpStatus
