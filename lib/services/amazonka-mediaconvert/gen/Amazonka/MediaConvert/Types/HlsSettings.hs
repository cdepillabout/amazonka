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
-- Module      : Amazonka.MediaConvert.Types.HlsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.HlsSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.HlsAudioOnlyContainer
import Amazonka.MediaConvert.Types.HlsAudioTrackType
import Amazonka.MediaConvert.Types.HlsDescriptiveVideoServiceFlag
import Amazonka.MediaConvert.Types.HlsIFrameOnlyManifest
import qualified Amazonka.Prelude as Prelude

-- | Settings for HLS output groups
--
-- /See:/ 'newHlsSettings' smart constructor.
data HlsSettings = HlsSettings'
  { -- | Specify whether to flag this audio track as descriptive video service
    -- (DVS) in your HLS parent manifest. When you choose Flag (FLAG),
    -- MediaConvert includes the parameter
    -- CHARACTERISTICS=\"public.accessibility.describes-video\" in the
    -- EXT-X-MEDIA entry for this track. When you keep the default choice,
    -- Don\'t flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS
    -- flag can help with accessibility on Apple devices. For more information,
    -- see the Apple documentation.
    descriptiveVideoServiceFlag :: Prelude.Maybe HlsDescriptiveVideoServiceFlag,
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
    audioTrackType :: Prelude.Maybe HlsAudioTrackType,
    -- | Choose Include (INCLUDE) to have MediaConvert generate a child manifest
    -- that lists only the I-frames for this rendition, in addition to your
    -- regular manifest for this rendition. You might use this manifest as part
    -- of a workflow that creates preview functions for your video.
    -- MediaConvert adds both the I-frame only child manifest and the regular
    -- child manifest to the parent manifest. When you don\'t need the I-frame
    -- only child manifest, keep the default value Exclude (EXCLUDE).
    iFrameOnlyManifest :: Prelude.Maybe HlsIFrameOnlyManifest,
    -- | List all the audio groups that are used with the video output stream.
    -- Input all the audio GROUP-IDs that are associated to the video, separate
    -- by \',\'.
    audioRenditionSets :: Prelude.Maybe Prelude.Text,
    -- | Use this setting only in audio-only outputs. Choose MPEG-2 Transport
    -- Stream (M2TS) to create a file in an MPEG2-TS container. Keep the
    -- default value Automatic (AUTOMATIC) to create an audio-only file in a
    -- raw container. Regardless of the value that you specify here, if this
    -- output has video, the service will place the output into an MPEG2-TS
    -- container.
    audioOnlyContainer :: Prelude.Maybe HlsAudioOnlyContainer,
    -- | Use this setting to add an identifying string to the filename of each
    -- segment. The service adds this string between the name modifier and
    -- segment index number. You can use format identifiers in the string. For
    -- more information, see
    -- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/using-variables-in-your-job-settings.html
    segmentModifier :: Prelude.Maybe Prelude.Text,
    -- | Specifies the group to which the audio rendition belongs.
    audioGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HlsSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'descriptiveVideoServiceFlag', 'hlsSettings_descriptiveVideoServiceFlag' - Specify whether to flag this audio track as descriptive video service
-- (DVS) in your HLS parent manifest. When you choose Flag (FLAG),
-- MediaConvert includes the parameter
-- CHARACTERISTICS=\"public.accessibility.describes-video\" in the
-- EXT-X-MEDIA entry for this track. When you keep the default choice,
-- Don\'t flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS
-- flag can help with accessibility on Apple devices. For more information,
-- see the Apple documentation.
--
-- 'audioTrackType', 'hlsSettings_audioTrackType' - Four types of audio-only tracks are supported: Audio-Only Variant Stream
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
-- 'iFrameOnlyManifest', 'hlsSettings_iFrameOnlyManifest' - Choose Include (INCLUDE) to have MediaConvert generate a child manifest
-- that lists only the I-frames for this rendition, in addition to your
-- regular manifest for this rendition. You might use this manifest as part
-- of a workflow that creates preview functions for your video.
-- MediaConvert adds both the I-frame only child manifest and the regular
-- child manifest to the parent manifest. When you don\'t need the I-frame
-- only child manifest, keep the default value Exclude (EXCLUDE).
--
-- 'audioRenditionSets', 'hlsSettings_audioRenditionSets' - List all the audio groups that are used with the video output stream.
-- Input all the audio GROUP-IDs that are associated to the video, separate
-- by \',\'.
--
-- 'audioOnlyContainer', 'hlsSettings_audioOnlyContainer' - Use this setting only in audio-only outputs. Choose MPEG-2 Transport
-- Stream (M2TS) to create a file in an MPEG2-TS container. Keep the
-- default value Automatic (AUTOMATIC) to create an audio-only file in a
-- raw container. Regardless of the value that you specify here, if this
-- output has video, the service will place the output into an MPEG2-TS
-- container.
--
-- 'segmentModifier', 'hlsSettings_segmentModifier' - Use this setting to add an identifying string to the filename of each
-- segment. The service adds this string between the name modifier and
-- segment index number. You can use format identifiers in the string. For
-- more information, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/using-variables-in-your-job-settings.html
--
-- 'audioGroupId', 'hlsSettings_audioGroupId' - Specifies the group to which the audio rendition belongs.
newHlsSettings ::
  HlsSettings
newHlsSettings =
  HlsSettings'
    { descriptiveVideoServiceFlag =
        Prelude.Nothing,
      audioTrackType = Prelude.Nothing,
      iFrameOnlyManifest = Prelude.Nothing,
      audioRenditionSets = Prelude.Nothing,
      audioOnlyContainer = Prelude.Nothing,
      segmentModifier = Prelude.Nothing,
      audioGroupId = Prelude.Nothing
    }

-- | Specify whether to flag this audio track as descriptive video service
-- (DVS) in your HLS parent manifest. When you choose Flag (FLAG),
-- MediaConvert includes the parameter
-- CHARACTERISTICS=\"public.accessibility.describes-video\" in the
-- EXT-X-MEDIA entry for this track. When you keep the default choice,
-- Don\'t flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS
-- flag can help with accessibility on Apple devices. For more information,
-- see the Apple documentation.
hlsSettings_descriptiveVideoServiceFlag :: Lens.Lens' HlsSettings (Prelude.Maybe HlsDescriptiveVideoServiceFlag)
hlsSettings_descriptiveVideoServiceFlag = Lens.lens (\HlsSettings' {descriptiveVideoServiceFlag} -> descriptiveVideoServiceFlag) (\s@HlsSettings' {} a -> s {descriptiveVideoServiceFlag = a} :: HlsSettings)

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
hlsSettings_audioTrackType :: Lens.Lens' HlsSettings (Prelude.Maybe HlsAudioTrackType)
hlsSettings_audioTrackType = Lens.lens (\HlsSettings' {audioTrackType} -> audioTrackType) (\s@HlsSettings' {} a -> s {audioTrackType = a} :: HlsSettings)

-- | Choose Include (INCLUDE) to have MediaConvert generate a child manifest
-- that lists only the I-frames for this rendition, in addition to your
-- regular manifest for this rendition. You might use this manifest as part
-- of a workflow that creates preview functions for your video.
-- MediaConvert adds both the I-frame only child manifest and the regular
-- child manifest to the parent manifest. When you don\'t need the I-frame
-- only child manifest, keep the default value Exclude (EXCLUDE).
hlsSettings_iFrameOnlyManifest :: Lens.Lens' HlsSettings (Prelude.Maybe HlsIFrameOnlyManifest)
hlsSettings_iFrameOnlyManifest = Lens.lens (\HlsSettings' {iFrameOnlyManifest} -> iFrameOnlyManifest) (\s@HlsSettings' {} a -> s {iFrameOnlyManifest = a} :: HlsSettings)

-- | List all the audio groups that are used with the video output stream.
-- Input all the audio GROUP-IDs that are associated to the video, separate
-- by \',\'.
hlsSettings_audioRenditionSets :: Lens.Lens' HlsSettings (Prelude.Maybe Prelude.Text)
hlsSettings_audioRenditionSets = Lens.lens (\HlsSettings' {audioRenditionSets} -> audioRenditionSets) (\s@HlsSettings' {} a -> s {audioRenditionSets = a} :: HlsSettings)

-- | Use this setting only in audio-only outputs. Choose MPEG-2 Transport
-- Stream (M2TS) to create a file in an MPEG2-TS container. Keep the
-- default value Automatic (AUTOMATIC) to create an audio-only file in a
-- raw container. Regardless of the value that you specify here, if this
-- output has video, the service will place the output into an MPEG2-TS
-- container.
hlsSettings_audioOnlyContainer :: Lens.Lens' HlsSettings (Prelude.Maybe HlsAudioOnlyContainer)
hlsSettings_audioOnlyContainer = Lens.lens (\HlsSettings' {audioOnlyContainer} -> audioOnlyContainer) (\s@HlsSettings' {} a -> s {audioOnlyContainer = a} :: HlsSettings)

-- | Use this setting to add an identifying string to the filename of each
-- segment. The service adds this string between the name modifier and
-- segment index number. You can use format identifiers in the string. For
-- more information, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/using-variables-in-your-job-settings.html
hlsSettings_segmentModifier :: Lens.Lens' HlsSettings (Prelude.Maybe Prelude.Text)
hlsSettings_segmentModifier = Lens.lens (\HlsSettings' {segmentModifier} -> segmentModifier) (\s@HlsSettings' {} a -> s {segmentModifier = a} :: HlsSettings)

-- | Specifies the group to which the audio rendition belongs.
hlsSettings_audioGroupId :: Lens.Lens' HlsSettings (Prelude.Maybe Prelude.Text)
hlsSettings_audioGroupId = Lens.lens (\HlsSettings' {audioGroupId} -> audioGroupId) (\s@HlsSettings' {} a -> s {audioGroupId = a} :: HlsSettings)

instance Core.FromJSON HlsSettings where
  parseJSON =
    Core.withObject
      "HlsSettings"
      ( \x ->
          HlsSettings'
            Prelude.<$> (x Core..:? "descriptiveVideoServiceFlag")
            Prelude.<*> (x Core..:? "audioTrackType")
            Prelude.<*> (x Core..:? "iFrameOnlyManifest")
            Prelude.<*> (x Core..:? "audioRenditionSets")
            Prelude.<*> (x Core..:? "audioOnlyContainer")
            Prelude.<*> (x Core..:? "segmentModifier")
            Prelude.<*> (x Core..:? "audioGroupId")
      )

instance Prelude.Hashable HlsSettings where
  hashWithSalt _salt HlsSettings' {..} =
    _salt
      `Prelude.hashWithSalt` descriptiveVideoServiceFlag
      `Prelude.hashWithSalt` audioTrackType
      `Prelude.hashWithSalt` iFrameOnlyManifest
      `Prelude.hashWithSalt` audioRenditionSets
      `Prelude.hashWithSalt` audioOnlyContainer
      `Prelude.hashWithSalt` segmentModifier
      `Prelude.hashWithSalt` audioGroupId

instance Prelude.NFData HlsSettings where
  rnf HlsSettings' {..} =
    Prelude.rnf descriptiveVideoServiceFlag
      `Prelude.seq` Prelude.rnf audioTrackType
      `Prelude.seq` Prelude.rnf iFrameOnlyManifest
      `Prelude.seq` Prelude.rnf audioRenditionSets
      `Prelude.seq` Prelude.rnf audioOnlyContainer
      `Prelude.seq` Prelude.rnf segmentModifier
      `Prelude.seq` Prelude.rnf audioGroupId

instance Core.ToJSON HlsSettings where
  toJSON HlsSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("descriptiveVideoServiceFlag" Core..=)
              Prelude.<$> descriptiveVideoServiceFlag,
            ("audioTrackType" Core..=)
              Prelude.<$> audioTrackType,
            ("iFrameOnlyManifest" Core..=)
              Prelude.<$> iFrameOnlyManifest,
            ("audioRenditionSets" Core..=)
              Prelude.<$> audioRenditionSets,
            ("audioOnlyContainer" Core..=)
              Prelude.<$> audioOnlyContainer,
            ("segmentModifier" Core..=)
              Prelude.<$> segmentModifier,
            ("audioGroupId" Core..=) Prelude.<$> audioGroupId
          ]
      )
