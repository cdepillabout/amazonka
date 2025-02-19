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
-- Module      : Amazonka.Nimble.Types.StreamConfigurationCreate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Nimble.Types.StreamConfigurationCreate where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types.StreamConfigurationSessionStorage
import Amazonka.Nimble.Types.StreamingClipboardMode
import Amazonka.Nimble.Types.StreamingInstanceType
import qualified Amazonka.Prelude as Prelude

-- | Configuration for streaming workstations created using this launch
-- profile.
--
-- /See:/ 'newStreamConfigurationCreate' smart constructor.
data StreamConfigurationCreate = StreamConfigurationCreate'
  { -- | Integer that determines if you can start and stop your sessions and how
    -- long a session can stay in the STOPPED state. The default value is 0.
    -- The maximum value is 5760.
    --
    -- If the value is missing or set to 0, your sessions can’t be stopped. If
    -- you then call @StopStreamingSession@, the session fails. If the time
    -- that a session stays in the READY state exceeds the
    -- @maxSessionLengthInMinutes@ value, the session will automatically be
    -- terminated (instead of stopped).
    --
    -- If the value is set to a positive number, the session can be stopped.
    -- You can call @StopStreamingSession@ to stop sessions in the READY state.
    -- If the time that a session stays in the READY state exceeds the
    -- @maxSessionLengthInMinutes@ value, the session will automatically be
    -- stopped (instead of terminated).
    maxStoppedSessionLengthInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The length of time, in minutes, that a streaming session can be active
    -- before it is stopped or terminated. After this point, Nimble Studio
    -- automatically terminates or stops the session. The default length of
    -- time is 690 minutes, and the maximum length of time is 30 days.
    maxSessionLengthInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | (Optional) The upload storage for a streaming workstation that is
    -- created using this launch profile.
    sessionStorage :: Prelude.Maybe StreamConfigurationSessionStorage,
    -- | Enable or disable the use of the system clipboard to copy and paste
    -- between the streaming session and streaming client.
    clipboardMode :: StreamingClipboardMode,
    -- | The EC2 instance types that users can select from when launching a
    -- streaming session with this launch profile.
    ec2InstanceTypes :: Prelude.NonEmpty StreamingInstanceType,
    -- | The streaming images that users can select from when launching a
    -- streaming session with this launch profile.
    streamingImageIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamConfigurationCreate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxStoppedSessionLengthInMinutes', 'streamConfigurationCreate_maxStoppedSessionLengthInMinutes' - Integer that determines if you can start and stop your sessions and how
-- long a session can stay in the STOPPED state. The default value is 0.
-- The maximum value is 5760.
--
-- If the value is missing or set to 0, your sessions can’t be stopped. If
-- you then call @StopStreamingSession@, the session fails. If the time
-- that a session stays in the READY state exceeds the
-- @maxSessionLengthInMinutes@ value, the session will automatically be
-- terminated (instead of stopped).
--
-- If the value is set to a positive number, the session can be stopped.
-- You can call @StopStreamingSession@ to stop sessions in the READY state.
-- If the time that a session stays in the READY state exceeds the
-- @maxSessionLengthInMinutes@ value, the session will automatically be
-- stopped (instead of terminated).
--
-- 'maxSessionLengthInMinutes', 'streamConfigurationCreate_maxSessionLengthInMinutes' - The length of time, in minutes, that a streaming session can be active
-- before it is stopped or terminated. After this point, Nimble Studio
-- automatically terminates or stops the session. The default length of
-- time is 690 minutes, and the maximum length of time is 30 days.
--
-- 'sessionStorage', 'streamConfigurationCreate_sessionStorage' - (Optional) The upload storage for a streaming workstation that is
-- created using this launch profile.
--
-- 'clipboardMode', 'streamConfigurationCreate_clipboardMode' - Enable or disable the use of the system clipboard to copy and paste
-- between the streaming session and streaming client.
--
-- 'ec2InstanceTypes', 'streamConfigurationCreate_ec2InstanceTypes' - The EC2 instance types that users can select from when launching a
-- streaming session with this launch profile.
--
-- 'streamingImageIds', 'streamConfigurationCreate_streamingImageIds' - The streaming images that users can select from when launching a
-- streaming session with this launch profile.
newStreamConfigurationCreate ::
  -- | 'clipboardMode'
  StreamingClipboardMode ->
  -- | 'ec2InstanceTypes'
  Prelude.NonEmpty StreamingInstanceType ->
  -- | 'streamingImageIds'
  Prelude.NonEmpty Prelude.Text ->
  StreamConfigurationCreate
newStreamConfigurationCreate
  pClipboardMode_
  pEc2InstanceTypes_
  pStreamingImageIds_ =
    StreamConfigurationCreate'
      { maxStoppedSessionLengthInMinutes =
          Prelude.Nothing,
        maxSessionLengthInMinutes = Prelude.Nothing,
        sessionStorage = Prelude.Nothing,
        clipboardMode = pClipboardMode_,
        ec2InstanceTypes =
          Lens.coerced Lens.# pEc2InstanceTypes_,
        streamingImageIds =
          Lens.coerced Lens.# pStreamingImageIds_
      }

-- | Integer that determines if you can start and stop your sessions and how
-- long a session can stay in the STOPPED state. The default value is 0.
-- The maximum value is 5760.
--
-- If the value is missing or set to 0, your sessions can’t be stopped. If
-- you then call @StopStreamingSession@, the session fails. If the time
-- that a session stays in the READY state exceeds the
-- @maxSessionLengthInMinutes@ value, the session will automatically be
-- terminated (instead of stopped).
--
-- If the value is set to a positive number, the session can be stopped.
-- You can call @StopStreamingSession@ to stop sessions in the READY state.
-- If the time that a session stays in the READY state exceeds the
-- @maxSessionLengthInMinutes@ value, the session will automatically be
-- stopped (instead of terminated).
streamConfigurationCreate_maxStoppedSessionLengthInMinutes :: Lens.Lens' StreamConfigurationCreate (Prelude.Maybe Prelude.Natural)
streamConfigurationCreate_maxStoppedSessionLengthInMinutes = Lens.lens (\StreamConfigurationCreate' {maxStoppedSessionLengthInMinutes} -> maxStoppedSessionLengthInMinutes) (\s@StreamConfigurationCreate' {} a -> s {maxStoppedSessionLengthInMinutes = a} :: StreamConfigurationCreate)

-- | The length of time, in minutes, that a streaming session can be active
-- before it is stopped or terminated. After this point, Nimble Studio
-- automatically terminates or stops the session. The default length of
-- time is 690 minutes, and the maximum length of time is 30 days.
streamConfigurationCreate_maxSessionLengthInMinutes :: Lens.Lens' StreamConfigurationCreate (Prelude.Maybe Prelude.Natural)
streamConfigurationCreate_maxSessionLengthInMinutes = Lens.lens (\StreamConfigurationCreate' {maxSessionLengthInMinutes} -> maxSessionLengthInMinutes) (\s@StreamConfigurationCreate' {} a -> s {maxSessionLengthInMinutes = a} :: StreamConfigurationCreate)

-- | (Optional) The upload storage for a streaming workstation that is
-- created using this launch profile.
streamConfigurationCreate_sessionStorage :: Lens.Lens' StreamConfigurationCreate (Prelude.Maybe StreamConfigurationSessionStorage)
streamConfigurationCreate_sessionStorage = Lens.lens (\StreamConfigurationCreate' {sessionStorage} -> sessionStorage) (\s@StreamConfigurationCreate' {} a -> s {sessionStorage = a} :: StreamConfigurationCreate)

-- | Enable or disable the use of the system clipboard to copy and paste
-- between the streaming session and streaming client.
streamConfigurationCreate_clipboardMode :: Lens.Lens' StreamConfigurationCreate StreamingClipboardMode
streamConfigurationCreate_clipboardMode = Lens.lens (\StreamConfigurationCreate' {clipboardMode} -> clipboardMode) (\s@StreamConfigurationCreate' {} a -> s {clipboardMode = a} :: StreamConfigurationCreate)

-- | The EC2 instance types that users can select from when launching a
-- streaming session with this launch profile.
streamConfigurationCreate_ec2InstanceTypes :: Lens.Lens' StreamConfigurationCreate (Prelude.NonEmpty StreamingInstanceType)
streamConfigurationCreate_ec2InstanceTypes = Lens.lens (\StreamConfigurationCreate' {ec2InstanceTypes} -> ec2InstanceTypes) (\s@StreamConfigurationCreate' {} a -> s {ec2InstanceTypes = a} :: StreamConfigurationCreate) Prelude.. Lens.coerced

-- | The streaming images that users can select from when launching a
-- streaming session with this launch profile.
streamConfigurationCreate_streamingImageIds :: Lens.Lens' StreamConfigurationCreate (Prelude.NonEmpty Prelude.Text)
streamConfigurationCreate_streamingImageIds = Lens.lens (\StreamConfigurationCreate' {streamingImageIds} -> streamingImageIds) (\s@StreamConfigurationCreate' {} a -> s {streamingImageIds = a} :: StreamConfigurationCreate) Prelude.. Lens.coerced

instance Prelude.Hashable StreamConfigurationCreate where
  hashWithSalt _salt StreamConfigurationCreate' {..} =
    _salt
      `Prelude.hashWithSalt` maxStoppedSessionLengthInMinutes
      `Prelude.hashWithSalt` maxSessionLengthInMinutes
      `Prelude.hashWithSalt` sessionStorage
      `Prelude.hashWithSalt` clipboardMode
      `Prelude.hashWithSalt` ec2InstanceTypes
      `Prelude.hashWithSalt` streamingImageIds

instance Prelude.NFData StreamConfigurationCreate where
  rnf StreamConfigurationCreate' {..} =
    Prelude.rnf maxStoppedSessionLengthInMinutes
      `Prelude.seq` Prelude.rnf maxSessionLengthInMinutes
      `Prelude.seq` Prelude.rnf sessionStorage
      `Prelude.seq` Prelude.rnf clipboardMode
      `Prelude.seq` Prelude.rnf ec2InstanceTypes
      `Prelude.seq` Prelude.rnf streamingImageIds

instance Core.ToJSON StreamConfigurationCreate where
  toJSON StreamConfigurationCreate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("maxStoppedSessionLengthInMinutes" Core..=)
              Prelude.<$> maxStoppedSessionLengthInMinutes,
            ("maxSessionLengthInMinutes" Core..=)
              Prelude.<$> maxSessionLengthInMinutes,
            ("sessionStorage" Core..=)
              Prelude.<$> sessionStorage,
            Prelude.Just ("clipboardMode" Core..= clipboardMode),
            Prelude.Just
              ("ec2InstanceTypes" Core..= ec2InstanceTypes),
            Prelude.Just
              ("streamingImageIds" Core..= streamingImageIds)
          ]
      )
