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
-- Module      : Amazonka.ChimeSDKMessaging.ListChannelBans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the users banned from a particular channel.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Amazonka.ChimeSDKMessaging.ListChannelBans
  ( -- * Creating a Request
    ListChannelBans (..),
    newListChannelBans,

    -- * Request Lenses
    listChannelBans_nextToken,
    listChannelBans_maxResults,
    listChannelBans_channelArn,
    listChannelBans_chimeBearer,

    -- * Destructuring the Response
    ListChannelBansResponse (..),
    newListChannelBansResponse,

    -- * Response Lenses
    listChannelBansResponse_nextToken,
    listChannelBansResponse_channelBans,
    listChannelBansResponse_channelArn,
    listChannelBansResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannelBans' smart constructor.
data ListChannelBans = ListChannelBans'
  { -- | The token passed by previous API calls until all requested bans are
    -- returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum number of bans that you want returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelBans' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelBans_nextToken' - The token passed by previous API calls until all requested bans are
-- returned.
--
-- 'maxResults', 'listChannelBans_maxResults' - The maximum number of bans that you want returned.
--
-- 'channelArn', 'listChannelBans_channelArn' - The ARN of the channel.
--
-- 'chimeBearer', 'listChannelBans_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newListChannelBans ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  ListChannelBans
newListChannelBans pChannelArn_ pChimeBearer_ =
  ListChannelBans'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      channelArn = pChannelArn_,
      chimeBearer = pChimeBearer_
    }

-- | The token passed by previous API calls until all requested bans are
-- returned.
listChannelBans_nextToken :: Lens.Lens' ListChannelBans (Prelude.Maybe Prelude.Text)
listChannelBans_nextToken = Lens.lens (\ListChannelBans' {nextToken} -> nextToken) (\s@ListChannelBans' {} a -> s {nextToken = a} :: ListChannelBans) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum number of bans that you want returned.
listChannelBans_maxResults :: Lens.Lens' ListChannelBans (Prelude.Maybe Prelude.Natural)
listChannelBans_maxResults = Lens.lens (\ListChannelBans' {maxResults} -> maxResults) (\s@ListChannelBans' {} a -> s {maxResults = a} :: ListChannelBans)

-- | The ARN of the channel.
listChannelBans_channelArn :: Lens.Lens' ListChannelBans Prelude.Text
listChannelBans_channelArn = Lens.lens (\ListChannelBans' {channelArn} -> channelArn) (\s@ListChannelBans' {} a -> s {channelArn = a} :: ListChannelBans)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelBans_chimeBearer :: Lens.Lens' ListChannelBans Prelude.Text
listChannelBans_chimeBearer = Lens.lens (\ListChannelBans' {chimeBearer} -> chimeBearer) (\s@ListChannelBans' {} a -> s {chimeBearer = a} :: ListChannelBans)

instance Core.AWSRequest ListChannelBans where
  type
    AWSResponse ListChannelBans =
      ListChannelBansResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelBansResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ChannelBans" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ChannelArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListChannelBans where
  hashWithSalt _salt ListChannelBans' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` channelArn
      `Prelude.hashWithSalt` chimeBearer

instance Prelude.NFData ListChannelBans where
  rnf ListChannelBans' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf chimeBearer

instance Core.ToHeaders ListChannelBans where
  toHeaders ListChannelBans' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath ListChannelBans where
  toPath ListChannelBans' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn, "/bans"]

instance Core.ToQuery ListChannelBans where
  toQuery ListChannelBans' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListChannelBansResponse' smart constructor.
data ListChannelBansResponse = ListChannelBansResponse'
  { -- | The token passed by previous API calls until all requested bans are
    -- returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The information for each requested ban.
    channelBans :: Prelude.Maybe [ChannelBanSummary],
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelBansResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelBansResponse_nextToken' - The token passed by previous API calls until all requested bans are
-- returned.
--
-- 'channelBans', 'listChannelBansResponse_channelBans' - The information for each requested ban.
--
-- 'channelArn', 'listChannelBansResponse_channelArn' - The ARN of the channel.
--
-- 'httpStatus', 'listChannelBansResponse_httpStatus' - The response's http status code.
newListChannelBansResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelBansResponse
newListChannelBansResponse pHttpStatus_ =
  ListChannelBansResponse'
    { nextToken =
        Prelude.Nothing,
      channelBans = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token passed by previous API calls until all requested bans are
-- returned.
listChannelBansResponse_nextToken :: Lens.Lens' ListChannelBansResponse (Prelude.Maybe Prelude.Text)
listChannelBansResponse_nextToken = Lens.lens (\ListChannelBansResponse' {nextToken} -> nextToken) (\s@ListChannelBansResponse' {} a -> s {nextToken = a} :: ListChannelBansResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The information for each requested ban.
listChannelBansResponse_channelBans :: Lens.Lens' ListChannelBansResponse (Prelude.Maybe [ChannelBanSummary])
listChannelBansResponse_channelBans = Lens.lens (\ListChannelBansResponse' {channelBans} -> channelBans) (\s@ListChannelBansResponse' {} a -> s {channelBans = a} :: ListChannelBansResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the channel.
listChannelBansResponse_channelArn :: Lens.Lens' ListChannelBansResponse (Prelude.Maybe Prelude.Text)
listChannelBansResponse_channelArn = Lens.lens (\ListChannelBansResponse' {channelArn} -> channelArn) (\s@ListChannelBansResponse' {} a -> s {channelArn = a} :: ListChannelBansResponse)

-- | The response's http status code.
listChannelBansResponse_httpStatus :: Lens.Lens' ListChannelBansResponse Prelude.Int
listChannelBansResponse_httpStatus = Lens.lens (\ListChannelBansResponse' {httpStatus} -> httpStatus) (\s@ListChannelBansResponse' {} a -> s {httpStatus = a} :: ListChannelBansResponse)

instance Prelude.NFData ListChannelBansResponse where
  rnf ListChannelBansResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf channelBans
      `Prelude.seq` Prelude.rnf channelArn
      `Prelude.seq` Prelude.rnf httpStatus
