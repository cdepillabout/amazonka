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
-- Module      : Amazonka.MediaLive.Types.AudioOnlyHlsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.AudioOnlyHlsSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.AudioOnlyHlsSegmentType
import Amazonka.MediaLive.Types.AudioOnlyHlsTrackType
import Amazonka.MediaLive.Types.InputLocation
import qualified Amazonka.Prelude as Prelude

-- | Audio Only Hls Settings
--
-- /See:/ 'newAudioOnlyHlsSettings' smart constructor.
data AudioOnlyHlsSettings = AudioOnlyHlsSettings'
  { -- | Optional. Specifies the .jpg or .png image to use as the cover art for
    -- an audio-only output. We recommend a low bit-size file because the image
    -- increases the output audio bandwidth. The image is attached to the audio
    -- as an ID3 tag, frame type APIC, picture type 0x10, as per the \"ID3 tag
    -- version 2.4.0 - Native Frames\" standard.
    audioOnlyImage :: Prelude.Maybe InputLocation,
    -- | Four types of audio-only tracks are supported: Audio-Only Variant Stream
    -- The client can play back this audio-only stream instead of video in
    -- low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS
    -- manifest. Alternate Audio, Auto Select, Default Alternate rendition that
    -- the client should try to play back by default. Represented as an
    -- EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
    -- Alternate Audio, Auto Select, Not Default Alternate rendition that the
    -- client may try to play back by default. Represented as an EXT-X-MEDIA in
    -- the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not
    -- Auto Select Alternate rendition that the client will not try to play
    -- back by default. Represented as an EXT-X-MEDIA in the HLS manifest with
    -- DEFAULT=NO, AUTOSELECT=NO
    audioTrackType :: Prelude.Maybe AudioOnlyHlsTrackType,
    -- | Specifies the segment type.
    segmentType :: Prelude.Maybe AudioOnlyHlsSegmentType,
    -- | Specifies the group to which the audio Rendition belongs.
    audioGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioOnlyHlsSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'audioOnlyImage', 'audioOnlyHlsSettings_audioOnlyImage' - Optional. Specifies the .jpg or .png image to use as the cover art for
-- an audio-only output. We recommend a low bit-size file because the image
-- increases the output audio bandwidth. The image is attached to the audio
-- as an ID3 tag, frame type APIC, picture type 0x10, as per the \"ID3 tag
-- version 2.4.0 - Native Frames\" standard.
--
-- 'audioTrackType', 'audioOnlyHlsSettings_audioTrackType' - Four types of audio-only tracks are supported: Audio-Only Variant Stream
-- The client can play back this audio-only stream instead of video in
-- low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS
-- manifest. Alternate Audio, Auto Select, Default Alternate rendition that
-- the client should try to play back by default. Represented as an
-- EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
-- Alternate Audio, Auto Select, Not Default Alternate rendition that the
-- client may try to play back by default. Represented as an EXT-X-MEDIA in
-- the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not
-- Auto Select Alternate rendition that the client will not try to play
-- back by default. Represented as an EXT-X-MEDIA in the HLS manifest with
-- DEFAULT=NO, AUTOSELECT=NO
--
-- 'segmentType', 'audioOnlyHlsSettings_segmentType' - Specifies the segment type.
--
-- 'audioGroupId', 'audioOnlyHlsSettings_audioGroupId' - Specifies the group to which the audio Rendition belongs.
newAudioOnlyHlsSettings ::
  AudioOnlyHlsSettings
newAudioOnlyHlsSettings =
  AudioOnlyHlsSettings'
    { audioOnlyImage =
        Prelude.Nothing,
      audioTrackType = Prelude.Nothing,
      segmentType = Prelude.Nothing,
      audioGroupId = Prelude.Nothing
    }

-- | Optional. Specifies the .jpg or .png image to use as the cover art for
-- an audio-only output. We recommend a low bit-size file because the image
-- increases the output audio bandwidth. The image is attached to the audio
-- as an ID3 tag, frame type APIC, picture type 0x10, as per the \"ID3 tag
-- version 2.4.0 - Native Frames\" standard.
audioOnlyHlsSettings_audioOnlyImage :: Lens.Lens' AudioOnlyHlsSettings (Prelude.Maybe InputLocation)
audioOnlyHlsSettings_audioOnlyImage = Lens.lens (\AudioOnlyHlsSettings' {audioOnlyImage} -> audioOnlyImage) (\s@AudioOnlyHlsSettings' {} a -> s {audioOnlyImage = a} :: AudioOnlyHlsSettings)

-- | Four types of audio-only tracks are supported: Audio-Only Variant Stream
-- The client can play back this audio-only stream instead of video in
-- low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS
-- manifest. Alternate Audio, Auto Select, Default Alternate rendition that
-- the client should try to play back by default. Represented as an
-- EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
-- Alternate Audio, Auto Select, Not Default Alternate rendition that the
-- client may try to play back by default. Represented as an EXT-X-MEDIA in
-- the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not
-- Auto Select Alternate rendition that the client will not try to play
-- back by default. Represented as an EXT-X-MEDIA in the HLS manifest with
-- DEFAULT=NO, AUTOSELECT=NO
audioOnlyHlsSettings_audioTrackType :: Lens.Lens' AudioOnlyHlsSettings (Prelude.Maybe AudioOnlyHlsTrackType)
audioOnlyHlsSettings_audioTrackType = Lens.lens (\AudioOnlyHlsSettings' {audioTrackType} -> audioTrackType) (\s@AudioOnlyHlsSettings' {} a -> s {audioTrackType = a} :: AudioOnlyHlsSettings)

-- | Specifies the segment type.
audioOnlyHlsSettings_segmentType :: Lens.Lens' AudioOnlyHlsSettings (Prelude.Maybe AudioOnlyHlsSegmentType)
audioOnlyHlsSettings_segmentType = Lens.lens (\AudioOnlyHlsSettings' {segmentType} -> segmentType) (\s@AudioOnlyHlsSettings' {} a -> s {segmentType = a} :: AudioOnlyHlsSettings)

-- | Specifies the group to which the audio Rendition belongs.
audioOnlyHlsSettings_audioGroupId :: Lens.Lens' AudioOnlyHlsSettings (Prelude.Maybe Prelude.Text)
audioOnlyHlsSettings_audioGroupId = Lens.lens (\AudioOnlyHlsSettings' {audioGroupId} -> audioGroupId) (\s@AudioOnlyHlsSettings' {} a -> s {audioGroupId = a} :: AudioOnlyHlsSettings)

instance Core.FromJSON AudioOnlyHlsSettings where
  parseJSON =
    Core.withObject
      "AudioOnlyHlsSettings"
      ( \x ->
          AudioOnlyHlsSettings'
            Prelude.<$> (x Core..:? "audioOnlyImage")
            Prelude.<*> (x Core..:? "audioTrackType")
            Prelude.<*> (x Core..:? "segmentType")
            Prelude.<*> (x Core..:? "audioGroupId")
      )

instance Prelude.Hashable AudioOnlyHlsSettings where
  hashWithSalt _salt AudioOnlyHlsSettings' {..} =
    _salt `Prelude.hashWithSalt` audioOnlyImage
      `Prelude.hashWithSalt` audioTrackType
      `Prelude.hashWithSalt` segmentType
      `Prelude.hashWithSalt` audioGroupId

instance Prelude.NFData AudioOnlyHlsSettings where
  rnf AudioOnlyHlsSettings' {..} =
    Prelude.rnf audioOnlyImage
      `Prelude.seq` Prelude.rnf audioTrackType
      `Prelude.seq` Prelude.rnf segmentType
      `Prelude.seq` Prelude.rnf audioGroupId

instance Core.ToJSON AudioOnlyHlsSettings where
  toJSON AudioOnlyHlsSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("audioOnlyImage" Core..=)
              Prelude.<$> audioOnlyImage,
            ("audioTrackType" Core..=)
              Prelude.<$> audioTrackType,
            ("segmentType" Core..=) Prelude.<$> segmentType,
            ("audioGroupId" Core..=) Prelude.<$> audioGroupId
          ]
      )
