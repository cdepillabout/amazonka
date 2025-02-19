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
-- Module      : Amazonka.CloudWatchEvents.DescribeReplay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a replay. Use @DescribeReplay@ to determine the
-- progress of a running replay. A replay processes events to replay based
-- on the time in the event, and replays them using 1 minute intervals. If
-- you use @StartReplay@ and specify an @EventStartTime@ and an
-- @EventEndTime@ that covers a 20 minute time range, the events are
-- replayed from the first minute of that 20 minute range first. Then the
-- events from the second minute are replayed. You can use @DescribeReplay@
-- to determine the progress of a replay. The value returned for
-- @EventLastReplayedTime@ indicates the time within the specified time
-- range associated with the last event replayed.
module Amazonka.CloudWatchEvents.DescribeReplay
  ( -- * Creating a Request
    DescribeReplay (..),
    newDescribeReplay,

    -- * Request Lenses
    describeReplay_replayName,

    -- * Destructuring the Response
    DescribeReplayResponse (..),
    newDescribeReplayResponse,

    -- * Response Lenses
    describeReplayResponse_destination,
    describeReplayResponse_replayArn,
    describeReplayResponse_state,
    describeReplayResponse_eventLastReplayedTime,
    describeReplayResponse_eventEndTime,
    describeReplayResponse_description,
    describeReplayResponse_eventSourceArn,
    describeReplayResponse_replayEndTime,
    describeReplayResponse_replayName,
    describeReplayResponse_replayStartTime,
    describeReplayResponse_stateReason,
    describeReplayResponse_eventStartTime,
    describeReplayResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeReplay' smart constructor.
data DescribeReplay = DescribeReplay'
  { -- | The name of the replay to retrieve.
    replayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplay' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replayName', 'describeReplay_replayName' - The name of the replay to retrieve.
newDescribeReplay ::
  -- | 'replayName'
  Prelude.Text ->
  DescribeReplay
newDescribeReplay pReplayName_ =
  DescribeReplay' {replayName = pReplayName_}

-- | The name of the replay to retrieve.
describeReplay_replayName :: Lens.Lens' DescribeReplay Prelude.Text
describeReplay_replayName = Lens.lens (\DescribeReplay' {replayName} -> replayName) (\s@DescribeReplay' {} a -> s {replayName = a} :: DescribeReplay)

instance Core.AWSRequest DescribeReplay where
  type
    AWSResponse DescribeReplay =
      DescribeReplayResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplayResponse'
            Prelude.<$> (x Core..?> "Destination")
            Prelude.<*> (x Core..?> "ReplayArn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (x Core..?> "EventLastReplayedTime")
            Prelude.<*> (x Core..?> "EventEndTime")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "EventSourceArn")
            Prelude.<*> (x Core..?> "ReplayEndTime")
            Prelude.<*> (x Core..?> "ReplayName")
            Prelude.<*> (x Core..?> "ReplayStartTime")
            Prelude.<*> (x Core..?> "StateReason")
            Prelude.<*> (x Core..?> "EventStartTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeReplay where
  hashWithSalt _salt DescribeReplay' {..} =
    _salt `Prelude.hashWithSalt` replayName

instance Prelude.NFData DescribeReplay where
  rnf DescribeReplay' {..} = Prelude.rnf replayName

instance Core.ToHeaders DescribeReplay where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.DescribeReplay" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeReplay where
  toJSON DescribeReplay' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ReplayName" Core..= replayName)]
      )

instance Core.ToPath DescribeReplay where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeReplay where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeReplayResponse' smart constructor.
data DescribeReplayResponse = DescribeReplayResponse'
  { -- | A @ReplayDestination@ object that contains details about the replay.
    destination :: Prelude.Maybe ReplayDestination,
    -- | The ARN of the replay.
    replayArn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the replay.
    state :: Prelude.Maybe ReplayState,
    -- | The time that the event was last replayed.
    eventLastReplayedTime :: Prelude.Maybe Core.POSIX,
    -- | The time stamp for the last event that was replayed from the archive.
    eventEndTime :: Prelude.Maybe Core.POSIX,
    -- | The description of the replay.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the archive events were replayed from.
    eventSourceArn :: Prelude.Maybe Prelude.Text,
    -- | A time stamp for the time that the replay stopped.
    replayEndTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the replay.
    replayName :: Prelude.Maybe Prelude.Text,
    -- | A time stamp for the time that the replay started.
    replayStartTime :: Prelude.Maybe Core.POSIX,
    -- | The reason that the replay is in the current state.
    stateReason :: Prelude.Maybe Prelude.Text,
    -- | The time stamp of the first event that was last replayed from the
    -- archive.
    eventStartTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destination', 'describeReplayResponse_destination' - A @ReplayDestination@ object that contains details about the replay.
--
-- 'replayArn', 'describeReplayResponse_replayArn' - The ARN of the replay.
--
-- 'state', 'describeReplayResponse_state' - The current state of the replay.
--
-- 'eventLastReplayedTime', 'describeReplayResponse_eventLastReplayedTime' - The time that the event was last replayed.
--
-- 'eventEndTime', 'describeReplayResponse_eventEndTime' - The time stamp for the last event that was replayed from the archive.
--
-- 'description', 'describeReplayResponse_description' - The description of the replay.
--
-- 'eventSourceArn', 'describeReplayResponse_eventSourceArn' - The ARN of the archive events were replayed from.
--
-- 'replayEndTime', 'describeReplayResponse_replayEndTime' - A time stamp for the time that the replay stopped.
--
-- 'replayName', 'describeReplayResponse_replayName' - The name of the replay.
--
-- 'replayStartTime', 'describeReplayResponse_replayStartTime' - A time stamp for the time that the replay started.
--
-- 'stateReason', 'describeReplayResponse_stateReason' - The reason that the replay is in the current state.
--
-- 'eventStartTime', 'describeReplayResponse_eventStartTime' - The time stamp of the first event that was last replayed from the
-- archive.
--
-- 'httpStatus', 'describeReplayResponse_httpStatus' - The response's http status code.
newDescribeReplayResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReplayResponse
newDescribeReplayResponse pHttpStatus_ =
  DescribeReplayResponse'
    { destination =
        Prelude.Nothing,
      replayArn = Prelude.Nothing,
      state = Prelude.Nothing,
      eventLastReplayedTime = Prelude.Nothing,
      eventEndTime = Prelude.Nothing,
      description = Prelude.Nothing,
      eventSourceArn = Prelude.Nothing,
      replayEndTime = Prelude.Nothing,
      replayName = Prelude.Nothing,
      replayStartTime = Prelude.Nothing,
      stateReason = Prelude.Nothing,
      eventStartTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @ReplayDestination@ object that contains details about the replay.
describeReplayResponse_destination :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe ReplayDestination)
describeReplayResponse_destination = Lens.lens (\DescribeReplayResponse' {destination} -> destination) (\s@DescribeReplayResponse' {} a -> s {destination = a} :: DescribeReplayResponse)

-- | The ARN of the replay.
describeReplayResponse_replayArn :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.Text)
describeReplayResponse_replayArn = Lens.lens (\DescribeReplayResponse' {replayArn} -> replayArn) (\s@DescribeReplayResponse' {} a -> s {replayArn = a} :: DescribeReplayResponse)

-- | The current state of the replay.
describeReplayResponse_state :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe ReplayState)
describeReplayResponse_state = Lens.lens (\DescribeReplayResponse' {state} -> state) (\s@DescribeReplayResponse' {} a -> s {state = a} :: DescribeReplayResponse)

-- | The time that the event was last replayed.
describeReplayResponse_eventLastReplayedTime :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.UTCTime)
describeReplayResponse_eventLastReplayedTime = Lens.lens (\DescribeReplayResponse' {eventLastReplayedTime} -> eventLastReplayedTime) (\s@DescribeReplayResponse' {} a -> s {eventLastReplayedTime = a} :: DescribeReplayResponse) Prelude.. Lens.mapping Core._Time

-- | The time stamp for the last event that was replayed from the archive.
describeReplayResponse_eventEndTime :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.UTCTime)
describeReplayResponse_eventEndTime = Lens.lens (\DescribeReplayResponse' {eventEndTime} -> eventEndTime) (\s@DescribeReplayResponse' {} a -> s {eventEndTime = a} :: DescribeReplayResponse) Prelude.. Lens.mapping Core._Time

-- | The description of the replay.
describeReplayResponse_description :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.Text)
describeReplayResponse_description = Lens.lens (\DescribeReplayResponse' {description} -> description) (\s@DescribeReplayResponse' {} a -> s {description = a} :: DescribeReplayResponse)

-- | The ARN of the archive events were replayed from.
describeReplayResponse_eventSourceArn :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.Text)
describeReplayResponse_eventSourceArn = Lens.lens (\DescribeReplayResponse' {eventSourceArn} -> eventSourceArn) (\s@DescribeReplayResponse' {} a -> s {eventSourceArn = a} :: DescribeReplayResponse)

-- | A time stamp for the time that the replay stopped.
describeReplayResponse_replayEndTime :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.UTCTime)
describeReplayResponse_replayEndTime = Lens.lens (\DescribeReplayResponse' {replayEndTime} -> replayEndTime) (\s@DescribeReplayResponse' {} a -> s {replayEndTime = a} :: DescribeReplayResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the replay.
describeReplayResponse_replayName :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.Text)
describeReplayResponse_replayName = Lens.lens (\DescribeReplayResponse' {replayName} -> replayName) (\s@DescribeReplayResponse' {} a -> s {replayName = a} :: DescribeReplayResponse)

-- | A time stamp for the time that the replay started.
describeReplayResponse_replayStartTime :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.UTCTime)
describeReplayResponse_replayStartTime = Lens.lens (\DescribeReplayResponse' {replayStartTime} -> replayStartTime) (\s@DescribeReplayResponse' {} a -> s {replayStartTime = a} :: DescribeReplayResponse) Prelude.. Lens.mapping Core._Time

-- | The reason that the replay is in the current state.
describeReplayResponse_stateReason :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.Text)
describeReplayResponse_stateReason = Lens.lens (\DescribeReplayResponse' {stateReason} -> stateReason) (\s@DescribeReplayResponse' {} a -> s {stateReason = a} :: DescribeReplayResponse)

-- | The time stamp of the first event that was last replayed from the
-- archive.
describeReplayResponse_eventStartTime :: Lens.Lens' DescribeReplayResponse (Prelude.Maybe Prelude.UTCTime)
describeReplayResponse_eventStartTime = Lens.lens (\DescribeReplayResponse' {eventStartTime} -> eventStartTime) (\s@DescribeReplayResponse' {} a -> s {eventStartTime = a} :: DescribeReplayResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeReplayResponse_httpStatus :: Lens.Lens' DescribeReplayResponse Prelude.Int
describeReplayResponse_httpStatus = Lens.lens (\DescribeReplayResponse' {httpStatus} -> httpStatus) (\s@DescribeReplayResponse' {} a -> s {httpStatus = a} :: DescribeReplayResponse)

instance Prelude.NFData DescribeReplayResponse where
  rnf DescribeReplayResponse' {..} =
    Prelude.rnf destination
      `Prelude.seq` Prelude.rnf replayArn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf eventLastReplayedTime
      `Prelude.seq` Prelude.rnf eventEndTime
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf eventSourceArn
      `Prelude.seq` Prelude.rnf replayEndTime
      `Prelude.seq` Prelude.rnf replayName
      `Prelude.seq` Prelude.rnf replayStartTime
      `Prelude.seq` Prelude.rnf stateReason
      `Prelude.seq` Prelude.rnf eventStartTime
      `Prelude.seq` Prelude.rnf httpStatus
