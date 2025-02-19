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
-- Module      : Amazonka.ChimeSDKMessaging.SearchChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows an @AppInstanceUser@ to search the channels that they belong to.
-- The @AppInstanceUser@ can search by membership or external ID. An
-- @AppInstanceAdmin@ can search across all channels within the
-- @AppInstance@.
module Amazonka.ChimeSDKMessaging.SearchChannels
  ( -- * Creating a Request
    SearchChannels (..),
    newSearchChannels,

    -- * Request Lenses
    searchChannels_nextToken,
    searchChannels_chimeBearer,
    searchChannels_maxResults,
    searchChannels_fields,

    -- * Destructuring the Response
    SearchChannelsResponse (..),
    newSearchChannelsResponse,

    -- * Response Lenses
    searchChannelsResponse_nextToken,
    searchChannelsResponse_channels,
    searchChannelsResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKMessaging.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSearchChannels' smart constructor.
data SearchChannels = SearchChannels'
  { -- | The token returned from previous API requests until the number of
    -- channels is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The @AppInstanceUserArn@ of the user making the API call.
    chimeBearer :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of channels that you want returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A list of the @Field@ objects in the channel being searched.
    fields :: Prelude.NonEmpty SearchField
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchChannels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchChannels_nextToken' - The token returned from previous API requests until the number of
-- channels is reached.
--
-- 'chimeBearer', 'searchChannels_chimeBearer' - The @AppInstanceUserArn@ of the user making the API call.
--
-- 'maxResults', 'searchChannels_maxResults' - The maximum number of channels that you want returned.
--
-- 'fields', 'searchChannels_fields' - A list of the @Field@ objects in the channel being searched.
newSearchChannels ::
  -- | 'fields'
  Prelude.NonEmpty SearchField ->
  SearchChannels
newSearchChannels pFields_ =
  SearchChannels'
    { nextToken = Prelude.Nothing,
      chimeBearer = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      fields = Lens.coerced Lens.# pFields_
    }

-- | The token returned from previous API requests until the number of
-- channels is reached.
searchChannels_nextToken :: Lens.Lens' SearchChannels (Prelude.Maybe Prelude.Text)
searchChannels_nextToken = Lens.lens (\SearchChannels' {nextToken} -> nextToken) (\s@SearchChannels' {} a -> s {nextToken = a} :: SearchChannels) Prelude.. Lens.mapping Core._Sensitive

-- | The @AppInstanceUserArn@ of the user making the API call.
searchChannels_chimeBearer :: Lens.Lens' SearchChannels (Prelude.Maybe Prelude.Text)
searchChannels_chimeBearer = Lens.lens (\SearchChannels' {chimeBearer} -> chimeBearer) (\s@SearchChannels' {} a -> s {chimeBearer = a} :: SearchChannels)

-- | The maximum number of channels that you want returned.
searchChannels_maxResults :: Lens.Lens' SearchChannels (Prelude.Maybe Prelude.Natural)
searchChannels_maxResults = Lens.lens (\SearchChannels' {maxResults} -> maxResults) (\s@SearchChannels' {} a -> s {maxResults = a} :: SearchChannels)

-- | A list of the @Field@ objects in the channel being searched.
searchChannels_fields :: Lens.Lens' SearchChannels (Prelude.NonEmpty SearchField)
searchChannels_fields = Lens.lens (\SearchChannels' {fields} -> fields) (\s@SearchChannels' {} a -> s {fields = a} :: SearchChannels) Prelude.. Lens.coerced

instance Core.AWSRequest SearchChannels where
  type
    AWSResponse SearchChannels =
      SearchChannelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchChannelsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Channels" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchChannels where
  hashWithSalt _salt SearchChannels' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` chimeBearer
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` fields

instance Prelude.NFData SearchChannels where
  rnf SearchChannels' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf chimeBearer
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf fields

instance Core.ToHeaders SearchChannels where
  toHeaders SearchChannels' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToJSON SearchChannels where
  toJSON SearchChannels' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Fields" Core..= fields)]
      )

instance Core.ToPath SearchChannels where
  toPath = Prelude.const "/channels"

instance Core.ToQuery SearchChannels where
  toQuery SearchChannels' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults,
        "operation=search"
      ]

-- | /See:/ 'newSearchChannelsResponse' smart constructor.
data SearchChannelsResponse = SearchChannelsResponse'
  { -- | The token returned from previous API responses until the number of
    -- channels is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A list of the channels in the request.
    channels :: Prelude.Maybe [ChannelSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchChannelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchChannelsResponse_nextToken' - The token returned from previous API responses until the number of
-- channels is reached.
--
-- 'channels', 'searchChannelsResponse_channels' - A list of the channels in the request.
--
-- 'httpStatus', 'searchChannelsResponse_httpStatus' - The response's http status code.
newSearchChannelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchChannelsResponse
newSearchChannelsResponse pHttpStatus_ =
  SearchChannelsResponse'
    { nextToken =
        Prelude.Nothing,
      channels = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token returned from previous API responses until the number of
-- channels is reached.
searchChannelsResponse_nextToken :: Lens.Lens' SearchChannelsResponse (Prelude.Maybe Prelude.Text)
searchChannelsResponse_nextToken = Lens.lens (\SearchChannelsResponse' {nextToken} -> nextToken) (\s@SearchChannelsResponse' {} a -> s {nextToken = a} :: SearchChannelsResponse) Prelude.. Lens.mapping Core._Sensitive

-- | A list of the channels in the request.
searchChannelsResponse_channels :: Lens.Lens' SearchChannelsResponse (Prelude.Maybe [ChannelSummary])
searchChannelsResponse_channels = Lens.lens (\SearchChannelsResponse' {channels} -> channels) (\s@SearchChannelsResponse' {} a -> s {channels = a} :: SearchChannelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
searchChannelsResponse_httpStatus :: Lens.Lens' SearchChannelsResponse Prelude.Int
searchChannelsResponse_httpStatus = Lens.lens (\SearchChannelsResponse' {httpStatus} -> httpStatus) (\s@SearchChannelsResponse' {} a -> s {httpStatus = a} :: SearchChannelsResponse)

instance Prelude.NFData SearchChannelsResponse where
  rnf SearchChannelsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf channels
      `Prelude.seq` Prelude.rnf httpStatus
