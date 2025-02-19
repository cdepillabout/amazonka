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
-- Module      : Amazonka.CloudWatchEvents.ListArchives
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your archives. You can either list all the archives or you can
-- provide a prefix to match to the archive names. Filter parameters are
-- exclusive.
module Amazonka.CloudWatchEvents.ListArchives
  ( -- * Creating a Request
    ListArchives (..),
    newListArchives,

    -- * Request Lenses
    listArchives_nextToken,
    listArchives_state,
    listArchives_limit,
    listArchives_eventSourceArn,
    listArchives_namePrefix,

    -- * Destructuring the Response
    ListArchivesResponse (..),
    newListArchivesResponse,

    -- * Response Lenses
    listArchivesResponse_nextToken,
    listArchivesResponse_archives,
    listArchivesResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListArchives' smart constructor.
data ListArchives = ListArchives'
  { -- | The token returned by a previous call to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The state of the archive.
    state :: Prelude.Maybe ArchiveState,
    -- | The maximum number of results to return.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the event source associated with the archive.
    eventSourceArn :: Prelude.Maybe Prelude.Text,
    -- | A name prefix to filter the archives returned. Only archives with name
    -- that match the prefix are returned.
    namePrefix :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListArchives' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listArchives_nextToken' - The token returned by a previous call to retrieve the next set of
-- results.
--
-- 'state', 'listArchives_state' - The state of the archive.
--
-- 'limit', 'listArchives_limit' - The maximum number of results to return.
--
-- 'eventSourceArn', 'listArchives_eventSourceArn' - The ARN of the event source associated with the archive.
--
-- 'namePrefix', 'listArchives_namePrefix' - A name prefix to filter the archives returned. Only archives with name
-- that match the prefix are returned.
newListArchives ::
  ListArchives
newListArchives =
  ListArchives'
    { nextToken = Prelude.Nothing,
      state = Prelude.Nothing,
      limit = Prelude.Nothing,
      eventSourceArn = Prelude.Nothing,
      namePrefix = Prelude.Nothing
    }

-- | The token returned by a previous call to retrieve the next set of
-- results.
listArchives_nextToken :: Lens.Lens' ListArchives (Prelude.Maybe Prelude.Text)
listArchives_nextToken = Lens.lens (\ListArchives' {nextToken} -> nextToken) (\s@ListArchives' {} a -> s {nextToken = a} :: ListArchives)

-- | The state of the archive.
listArchives_state :: Lens.Lens' ListArchives (Prelude.Maybe ArchiveState)
listArchives_state = Lens.lens (\ListArchives' {state} -> state) (\s@ListArchives' {} a -> s {state = a} :: ListArchives)

-- | The maximum number of results to return.
listArchives_limit :: Lens.Lens' ListArchives (Prelude.Maybe Prelude.Natural)
listArchives_limit = Lens.lens (\ListArchives' {limit} -> limit) (\s@ListArchives' {} a -> s {limit = a} :: ListArchives)

-- | The ARN of the event source associated with the archive.
listArchives_eventSourceArn :: Lens.Lens' ListArchives (Prelude.Maybe Prelude.Text)
listArchives_eventSourceArn = Lens.lens (\ListArchives' {eventSourceArn} -> eventSourceArn) (\s@ListArchives' {} a -> s {eventSourceArn = a} :: ListArchives)

-- | A name prefix to filter the archives returned. Only archives with name
-- that match the prefix are returned.
listArchives_namePrefix :: Lens.Lens' ListArchives (Prelude.Maybe Prelude.Text)
listArchives_namePrefix = Lens.lens (\ListArchives' {namePrefix} -> namePrefix) (\s@ListArchives' {} a -> s {namePrefix = a} :: ListArchives)

instance Core.AWSRequest ListArchives where
  type AWSResponse ListArchives = ListArchivesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListArchivesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Archives" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListArchives where
  hashWithSalt _salt ListArchives' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` eventSourceArn
      `Prelude.hashWithSalt` namePrefix

instance Prelude.NFData ListArchives where
  rnf ListArchives' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf eventSourceArn
      `Prelude.seq` Prelude.rnf namePrefix

instance Core.ToHeaders ListArchives where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.ListArchives" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListArchives where
  toJSON ListArchives' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("State" Core..=) Prelude.<$> state,
            ("Limit" Core..=) Prelude.<$> limit,
            ("EventSourceArn" Core..=)
              Prelude.<$> eventSourceArn,
            ("NamePrefix" Core..=) Prelude.<$> namePrefix
          ]
      )

instance Core.ToPath ListArchives where
  toPath = Prelude.const "/"

instance Core.ToQuery ListArchives where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListArchivesResponse' smart constructor.
data ListArchivesResponse = ListArchivesResponse'
  { -- | The token returned by a previous call to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of @Archive@ objects that include details about an archive.
    archives :: Prelude.Maybe [Archive],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListArchivesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listArchivesResponse_nextToken' - The token returned by a previous call to retrieve the next set of
-- results.
--
-- 'archives', 'listArchivesResponse_archives' - An array of @Archive@ objects that include details about an archive.
--
-- 'httpStatus', 'listArchivesResponse_httpStatus' - The response's http status code.
newListArchivesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListArchivesResponse
newListArchivesResponse pHttpStatus_ =
  ListArchivesResponse'
    { nextToken = Prelude.Nothing,
      archives = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token returned by a previous call to retrieve the next set of
-- results.
listArchivesResponse_nextToken :: Lens.Lens' ListArchivesResponse (Prelude.Maybe Prelude.Text)
listArchivesResponse_nextToken = Lens.lens (\ListArchivesResponse' {nextToken} -> nextToken) (\s@ListArchivesResponse' {} a -> s {nextToken = a} :: ListArchivesResponse)

-- | An array of @Archive@ objects that include details about an archive.
listArchivesResponse_archives :: Lens.Lens' ListArchivesResponse (Prelude.Maybe [Archive])
listArchivesResponse_archives = Lens.lens (\ListArchivesResponse' {archives} -> archives) (\s@ListArchivesResponse' {} a -> s {archives = a} :: ListArchivesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listArchivesResponse_httpStatus :: Lens.Lens' ListArchivesResponse Prelude.Int
listArchivesResponse_httpStatus = Lens.lens (\ListArchivesResponse' {httpStatus} -> httpStatus) (\s@ListArchivesResponse' {} a -> s {httpStatus = a} :: ListArchivesResponse)

instance Prelude.NFData ListArchivesResponse where
  rnf ListArchivesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf archives
      `Prelude.seq` Prelude.rnf httpStatus
