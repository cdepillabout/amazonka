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
-- Module      : Amazonka.IVS.ListChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about all channels in your account, in the
-- Amazon Web Services region where the API request is processed. This list
-- can be filtered to match a specified name or recording-configuration
-- ARN. Filters are mutually exclusive and cannot be used together. If you
-- try to use both filters, you will get an error (409 ConflictException).
--
-- This operation returns paginated results.
module Amazonka.IVS.ListChannels
  ( -- * Creating a Request
    ListChannels (..),
    newListChannels,

    -- * Request Lenses
    listChannels_nextToken,
    listChannels_filterByName,
    listChannels_maxResults,
    listChannels_filterByRecordingConfigurationArn,

    -- * Destructuring the Response
    ListChannelsResponse (..),
    newListChannelsResponse,

    -- * Response Lenses
    listChannelsResponse_nextToken,
    listChannelsResponse_httpStatus,
    listChannelsResponse_channels,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListChannels' smart constructor.
data ListChannels = ListChannels'
  { -- | The first channel to retrieve. This is used for pagination; see the
    -- @nextToken@ response field.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the channel list to match the specified name.
    filterByName :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of channels to return. Default: 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Filters the channel list to match the specified recording-configuration
    -- ARN.
    filterByRecordingConfigurationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannels_nextToken' - The first channel to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
--
-- 'filterByName', 'listChannels_filterByName' - Filters the channel list to match the specified name.
--
-- 'maxResults', 'listChannels_maxResults' - Maximum number of channels to return. Default: 100.
--
-- 'filterByRecordingConfigurationArn', 'listChannels_filterByRecordingConfigurationArn' - Filters the channel list to match the specified recording-configuration
-- ARN.
newListChannels ::
  ListChannels
newListChannels =
  ListChannels'
    { nextToken = Prelude.Nothing,
      filterByName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filterByRecordingConfigurationArn = Prelude.Nothing
    }

-- | The first channel to retrieve. This is used for pagination; see the
-- @nextToken@ response field.
listChannels_nextToken :: Lens.Lens' ListChannels (Prelude.Maybe Prelude.Text)
listChannels_nextToken = Lens.lens (\ListChannels' {nextToken} -> nextToken) (\s@ListChannels' {} a -> s {nextToken = a} :: ListChannels)

-- | Filters the channel list to match the specified name.
listChannels_filterByName :: Lens.Lens' ListChannels (Prelude.Maybe Prelude.Text)
listChannels_filterByName = Lens.lens (\ListChannels' {filterByName} -> filterByName) (\s@ListChannels' {} a -> s {filterByName = a} :: ListChannels)

-- | Maximum number of channels to return. Default: 100.
listChannels_maxResults :: Lens.Lens' ListChannels (Prelude.Maybe Prelude.Natural)
listChannels_maxResults = Lens.lens (\ListChannels' {maxResults} -> maxResults) (\s@ListChannels' {} a -> s {maxResults = a} :: ListChannels)

-- | Filters the channel list to match the specified recording-configuration
-- ARN.
listChannels_filterByRecordingConfigurationArn :: Lens.Lens' ListChannels (Prelude.Maybe Prelude.Text)
listChannels_filterByRecordingConfigurationArn = Lens.lens (\ListChannels' {filterByRecordingConfigurationArn} -> filterByRecordingConfigurationArn) (\s@ListChannels' {} a -> s {filterByRecordingConfigurationArn = a} :: ListChannels)

instance Core.AWSPager ListChannels where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listChannelsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listChannelsResponse_channels) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listChannels_nextToken
          Lens..~ rs
          Lens.^? listChannelsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListChannels where
  type AWSResponse ListChannels = ListChannelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "channels" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListChannels where
  hashWithSalt _salt ListChannels' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filterByName
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` filterByRecordingConfigurationArn

instance Prelude.NFData ListChannels where
  rnf ListChannels' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filterByName
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf filterByRecordingConfigurationArn

instance Core.ToHeaders ListChannels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListChannels where
  toJSON ListChannels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("filterByName" Core..=) Prelude.<$> filterByName,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("filterByRecordingConfigurationArn" Core..=)
              Prelude.<$> filterByRecordingConfigurationArn
          ]
      )

instance Core.ToPath ListChannels where
  toPath = Prelude.const "/ListChannels"

instance Core.ToQuery ListChannels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListChannelsResponse' smart constructor.
data ListChannelsResponse = ListChannelsResponse'
  { -- | If there are more channels than @maxResults@, use @nextToken@ in the
    -- request to get the next set.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of the matching channels.
    channels :: [ChannelSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelsResponse_nextToken' - If there are more channels than @maxResults@, use @nextToken@ in the
-- request to get the next set.
--
-- 'httpStatus', 'listChannelsResponse_httpStatus' - The response's http status code.
--
-- 'channels', 'listChannelsResponse_channels' - List of the matching channels.
newListChannelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelsResponse
newListChannelsResponse pHttpStatus_ =
  ListChannelsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      channels = Prelude.mempty
    }

-- | If there are more channels than @maxResults@, use @nextToken@ in the
-- request to get the next set.
listChannelsResponse_nextToken :: Lens.Lens' ListChannelsResponse (Prelude.Maybe Prelude.Text)
listChannelsResponse_nextToken = Lens.lens (\ListChannelsResponse' {nextToken} -> nextToken) (\s@ListChannelsResponse' {} a -> s {nextToken = a} :: ListChannelsResponse)

-- | The response's http status code.
listChannelsResponse_httpStatus :: Lens.Lens' ListChannelsResponse Prelude.Int
listChannelsResponse_httpStatus = Lens.lens (\ListChannelsResponse' {httpStatus} -> httpStatus) (\s@ListChannelsResponse' {} a -> s {httpStatus = a} :: ListChannelsResponse)

-- | List of the matching channels.
listChannelsResponse_channels :: Lens.Lens' ListChannelsResponse [ChannelSummary]
listChannelsResponse_channels = Lens.lens (\ListChannelsResponse' {channels} -> channels) (\s@ListChannelsResponse' {} a -> s {channels = a} :: ListChannelsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListChannelsResponse where
  rnf ListChannelsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf channels
