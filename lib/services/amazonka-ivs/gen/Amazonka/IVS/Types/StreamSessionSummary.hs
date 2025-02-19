{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IVS.Types.StreamSessionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.StreamSessionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information about a stream session.
--
-- /See:/ 'newStreamSessionSummary' smart constructor.
data StreamSessionSummary = StreamSessionSummary'
  { -- | Unique identifier for a live or previously live stream in the specified
    -- channel.
    streamId :: Prelude.Maybe Prelude.Text,
    -- | Time when the channel went offline. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/. For live streams, this is @NULL@.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | If @true@, this stream encountered a quota breach or failure.
    hasErrorEvent :: Prelude.Maybe Prelude.Bool,
    -- | Time when the channel went live. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamSessionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamId', 'streamSessionSummary_streamId' - Unique identifier for a live or previously live stream in the specified
-- channel.
--
-- 'endTime', 'streamSessionSummary_endTime' - Time when the channel went offline. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/. For live streams, this is @NULL@.
--
-- 'hasErrorEvent', 'streamSessionSummary_hasErrorEvent' - If @true@, this stream encountered a quota breach or failure.
--
-- 'startTime', 'streamSessionSummary_startTime' - Time when the channel went live. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
newStreamSessionSummary ::
  StreamSessionSummary
newStreamSessionSummary =
  StreamSessionSummary'
    { streamId = Prelude.Nothing,
      endTime = Prelude.Nothing,
      hasErrorEvent = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | Unique identifier for a live or previously live stream in the specified
-- channel.
streamSessionSummary_streamId :: Lens.Lens' StreamSessionSummary (Prelude.Maybe Prelude.Text)
streamSessionSummary_streamId = Lens.lens (\StreamSessionSummary' {streamId} -> streamId) (\s@StreamSessionSummary' {} a -> s {streamId = a} :: StreamSessionSummary)

-- | Time when the channel went offline. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/. For live streams, this is @NULL@.
streamSessionSummary_endTime :: Lens.Lens' StreamSessionSummary (Prelude.Maybe Prelude.UTCTime)
streamSessionSummary_endTime = Lens.lens (\StreamSessionSummary' {endTime} -> endTime) (\s@StreamSessionSummary' {} a -> s {endTime = a} :: StreamSessionSummary) Prelude.. Lens.mapping Core._Time

-- | If @true@, this stream encountered a quota breach or failure.
streamSessionSummary_hasErrorEvent :: Lens.Lens' StreamSessionSummary (Prelude.Maybe Prelude.Bool)
streamSessionSummary_hasErrorEvent = Lens.lens (\StreamSessionSummary' {hasErrorEvent} -> hasErrorEvent) (\s@StreamSessionSummary' {} a -> s {hasErrorEvent = a} :: StreamSessionSummary)

-- | Time when the channel went live. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
streamSessionSummary_startTime :: Lens.Lens' StreamSessionSummary (Prelude.Maybe Prelude.UTCTime)
streamSessionSummary_startTime = Lens.lens (\StreamSessionSummary' {startTime} -> startTime) (\s@StreamSessionSummary' {} a -> s {startTime = a} :: StreamSessionSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON StreamSessionSummary where
  parseJSON =
    Core.withObject
      "StreamSessionSummary"
      ( \x ->
          StreamSessionSummary'
            Prelude.<$> (x Core..:? "streamId")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "hasErrorEvent")
            Prelude.<*> (x Core..:? "startTime")
      )

instance Prelude.Hashable StreamSessionSummary where
  hashWithSalt _salt StreamSessionSummary' {..} =
    _salt `Prelude.hashWithSalt` streamId
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` hasErrorEvent
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData StreamSessionSummary where
  rnf StreamSessionSummary' {..} =
    Prelude.rnf streamId
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf hasErrorEvent
      `Prelude.seq` Prelude.rnf startTime
