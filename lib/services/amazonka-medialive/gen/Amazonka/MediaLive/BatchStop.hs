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
-- Module      : Amazonka.MediaLive.BatchStop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops running resources
module Amazonka.MediaLive.BatchStop
  ( -- * Creating a Request
    BatchStop' (..),
    newBatchStop',

    -- * Request Lenses
    batchStop'_multiplexIds,
    batchStop'_channelIds,

    -- * Destructuring the Response
    BatchStopResponse (..),
    newBatchStopResponse,

    -- * Response Lenses
    batchStopResponse_failed,
    batchStopResponse_successful,
    batchStopResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to stop resources
--
-- /See:/ 'newBatchStop'' smart constructor.
data BatchStop' = BatchStop''
  { -- | List of multiplex IDs
    multiplexIds :: Prelude.Maybe [Prelude.Text],
    -- | List of channel IDs
    channelIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchStop'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiplexIds', 'batchStop'_multiplexIds' - List of multiplex IDs
--
-- 'channelIds', 'batchStop'_channelIds' - List of channel IDs
newBatchStop' ::
  BatchStop'
newBatchStop' =
  BatchStop''
    { multiplexIds = Prelude.Nothing,
      channelIds = Prelude.Nothing
    }

-- | List of multiplex IDs
batchStop'_multiplexIds :: Lens.Lens' BatchStop' (Prelude.Maybe [Prelude.Text])
batchStop'_multiplexIds = Lens.lens (\BatchStop'' {multiplexIds} -> multiplexIds) (\s@BatchStop'' {} a -> s {multiplexIds = a} :: BatchStop') Prelude.. Lens.mapping Lens.coerced

-- | List of channel IDs
batchStop'_channelIds :: Lens.Lens' BatchStop' (Prelude.Maybe [Prelude.Text])
batchStop'_channelIds = Lens.lens (\BatchStop'' {channelIds} -> channelIds) (\s@BatchStop'' {} a -> s {channelIds = a} :: BatchStop') Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest BatchStop' where
  type AWSResponse BatchStop' = BatchStopResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchStopResponse'
            Prelude.<$> (x Core..?> "failed" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "successful" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchStop' where
  hashWithSalt _salt BatchStop'' {..} =
    _salt `Prelude.hashWithSalt` multiplexIds
      `Prelude.hashWithSalt` channelIds

instance Prelude.NFData BatchStop' where
  rnf BatchStop'' {..} =
    Prelude.rnf multiplexIds
      `Prelude.seq` Prelude.rnf channelIds

instance Core.ToHeaders BatchStop' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchStop' where
  toJSON BatchStop'' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("multiplexIds" Core..=) Prelude.<$> multiplexIds,
            ("channelIds" Core..=) Prelude.<$> channelIds
          ]
      )

instance Core.ToPath BatchStop' where
  toPath = Prelude.const "/prod/batch/stop"

instance Core.ToQuery BatchStop' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for BatchStopResponse
--
-- /See:/ 'newBatchStopResponse' smart constructor.
data BatchStopResponse = BatchStopResponse'
  { -- | List of failed operations
    failed :: Prelude.Maybe [BatchFailedResultModel],
    -- | List of successful operations
    successful :: Prelude.Maybe [BatchSuccessfulResultModel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchStopResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failed', 'batchStopResponse_failed' - List of failed operations
--
-- 'successful', 'batchStopResponse_successful' - List of successful operations
--
-- 'httpStatus', 'batchStopResponse_httpStatus' - The response's http status code.
newBatchStopResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchStopResponse
newBatchStopResponse pHttpStatus_ =
  BatchStopResponse'
    { failed = Prelude.Nothing,
      successful = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of failed operations
batchStopResponse_failed :: Lens.Lens' BatchStopResponse (Prelude.Maybe [BatchFailedResultModel])
batchStopResponse_failed = Lens.lens (\BatchStopResponse' {failed} -> failed) (\s@BatchStopResponse' {} a -> s {failed = a} :: BatchStopResponse) Prelude.. Lens.mapping Lens.coerced

-- | List of successful operations
batchStopResponse_successful :: Lens.Lens' BatchStopResponse (Prelude.Maybe [BatchSuccessfulResultModel])
batchStopResponse_successful = Lens.lens (\BatchStopResponse' {successful} -> successful) (\s@BatchStopResponse' {} a -> s {successful = a} :: BatchStopResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchStopResponse_httpStatus :: Lens.Lens' BatchStopResponse Prelude.Int
batchStopResponse_httpStatus = Lens.lens (\BatchStopResponse' {httpStatus} -> httpStatus) (\s@BatchStopResponse' {} a -> s {httpStatus = a} :: BatchStopResponse)

instance Prelude.NFData BatchStopResponse where
  rnf BatchStopResponse' {..} =
    Prelude.rnf failed
      `Prelude.seq` Prelude.rnf successful
      `Prelude.seq` Prelude.rnf httpStatus
