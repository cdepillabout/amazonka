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
-- Module      : Amazonka.MediaConvert.Types.ProresSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.ProresSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.ProresChromaSampling
import Amazonka.MediaConvert.Types.ProresCodecProfile
import Amazonka.MediaConvert.Types.ProresFramerateControl
import Amazonka.MediaConvert.Types.ProresFramerateConversionAlgorithm
import Amazonka.MediaConvert.Types.ProresInterlaceMode
import Amazonka.MediaConvert.Types.ProresParControl
import Amazonka.MediaConvert.Types.ProresScanTypeConversionMode
import Amazonka.MediaConvert.Types.ProresSlowPal
import Amazonka.MediaConvert.Types.ProresTelecine
import qualified Amazonka.Prelude as Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings)
-- to the value PRORES.
--
-- /See:/ 'newProresSettings' smart constructor.
data ProresSettings = ProresSettings'
  { -- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
    -- the console, this corresponds to any value other than Follow source.
    -- When you specify an output pixel aspect ratio (PAR) that is different
    -- from your input video PAR, provide your output PAR as a ratio. For
    -- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
    -- In this example, the value for parNumerator is 40.
    parNumerator :: Prelude.Maybe Prelude.Natural,
    -- | When you do frame rate conversion from 23.976 frames per second (fps) to
    -- 29.97 fps, and your output scan type is interlaced, you can optionally
    -- enable hard telecine (HARD) to create a smoother picture. When you keep
    -- the default value, None (NONE), MediaConvert does a standard frame rate
    -- conversion to 29.97 without doing anything with the field polarity to
    -- create a smoother picture.
    telecine :: Prelude.Maybe ProresTelecine,
    -- | When you use the API for transcode jobs that use frame rate conversion,
    -- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
    -- 23.976 fps. Use FramerateDenominator to specify the denominator of this
    -- fraction. In this example, use 1001 for the value of
    -- FramerateDenominator. When you use the console for transcode jobs that
    -- use frame rate conversion, provide the value as a decimal number for
    -- Framerate. In this example, specify 23.976.
    framerateDenominator :: Prelude.Maybe Prelude.Natural,
    -- | Use this setting for interlaced outputs, when your output frame rate is
    -- half of your input frame rate. In this situation, choose Optimized
    -- interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced
    -- output. In this case, each progressive frame from the input corresponds
    -- to an interlaced field in the output. Keep the default value, Basic
    -- interlacing (INTERLACED), for all other output frame rates. With basic
    -- interlacing, MediaConvert performs any frame rate conversion first and
    -- then interlaces the frames. When you choose Optimized interlacing and
    -- you set your output frame rate to a value that isn\'t suitable for
    -- optimized interlacing, MediaConvert automatically falls back to basic
    -- interlacing. Required settings: To use optimized interlacing, you must
    -- set Telecine (telecine) to None (NONE) or Soft (SOFT). You can\'t use
    -- optimized interlacing for hard telecine outputs. You must also set
    -- Interlace mode (interlaceMode) to a value other than Progressive
    -- (PROGRESSIVE).
    scanTypeConversionMode :: Prelude.Maybe ProresScanTypeConversionMode,
    -- | If you are using the console, use the Framerate setting to specify the
    -- frame rate for this output. If you want to keep the same frame rate as
    -- the input video, choose Follow source. If you want to do frame rate
    -- conversion, choose a frame rate from the dropdown list or choose Custom.
    -- The framerates shown in the dropdown list are decimal approximations of
    -- fractions. If you choose Custom, specify your frame rate as a fraction.
    -- If you are creating your transcoding job specification as a JSON file
    -- without the console, use FramerateControl to specify which value the
    -- service uses for the frame rate for this output. Choose
    -- INITIALIZE_FROM_SOURCE if you want the service to use the frame rate
    -- from the input. Choose SPECIFIED if you want the service to use the
    -- frame rate you specify in the settings FramerateNumerator and
    -- FramerateDenominator.
    framerateControl :: Prelude.Maybe ProresFramerateControl,
    -- | Optional. Specify how the service determines the pixel aspect ratio
    -- (PAR) for this output. The default behavior, Follow source
    -- (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your
    -- output. To specify a different PAR in the console, choose any value
    -- other than Follow source. To specify a different PAR by editing the JSON
    -- job specification, choose SPECIFIED. When you choose SPECIFIED for this
    -- setting, you must also specify values for the parNumerator and
    -- parDenominator settings.
    parControl :: Prelude.Maybe ProresParControl,
    -- | When you use the API for transcode jobs that use frame rate conversion,
    -- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
    -- 23.976 fps. Use FramerateNumerator to specify the numerator of this
    -- fraction. In this example, use 24000 for the value of
    -- FramerateNumerator. When you use the console for transcode jobs that use
    -- frame rate conversion, provide the value as a decimal number for
    -- Framerate. In this example, specify 23.976.
    framerateNumerator :: Prelude.Maybe Prelude.Natural,
    -- | Use Profile (ProResCodecProfile) to specify the type of Apple ProRes
    -- codec to use for this output.
    codecProfile :: Prelude.Maybe ProresCodecProfile,
    -- | Ignore this setting unless your input frame rate is 23.976 or 24 frames
    -- per second (fps). Enable slow PAL to create a 25 fps output. When you
    -- enable slow PAL, MediaConvert relabels the video frames to 25 fps and
    -- resamples your audio to keep it synchronized with the video. Note that
    -- enabling this setting will slightly reduce the duration of your video.
    -- Required settings: You must also set Framerate to 25. In your JSON job
    -- specification, set (framerateControl) to (SPECIFIED),
    -- (framerateNumerator) to 25 and (framerateDenominator) to 1.
    slowPal :: Prelude.Maybe ProresSlowPal,
    -- | This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that
    -- you create from inputs that use 4:4:4 chroma sampling. Set Preserve
    -- 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use
    -- 4:4:4 chroma sampling. You must specify a value for this setting when
    -- your output codec profile supports 4:4:4 chroma sampling. Related
    -- Settings: When you set Chroma sampling to Preserve 4:4:4 sampling
    -- (PRESERVE_444_SAMPLING), you must choose an output codec profile that
    -- supports 4:4:4 chroma sampling. These values for Profile (CodecProfile)
    -- support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or
    -- Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma
    -- sampling to Preserve 4:4:4 sampling, you must disable all video
    -- preprocessors except for Nexguard file marker (PartnerWatermarking).
    -- When you set Chroma sampling to Preserve 4:4:4 sampling and use
    -- framerate conversion, you must set Frame rate conversion algorithm
    -- (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP).
    chromaSampling :: Prelude.Maybe ProresChromaSampling,
    -- | Choose the scan line type for the output. Keep the default value,
    -- Progressive (PROGRESSIVE) to create a progressive output, regardless of
    -- the scan type of your input. Use Top field first (TOP_FIELD) or Bottom
    -- field first (BOTTOM_FIELD) to create an output that\'s interlaced with
    -- the same field polarity throughout. Use Follow, default top
    -- (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to
    -- produce outputs with the same field polarity as the source. For jobs
    -- that have multiple inputs, the output field polarity might change over
    -- the course of the output. Follow behavior depends on the input scan
    -- type. If the source is interlaced, the output will be interlaced with
    -- the same polarity as the source. If the source is progressive, the
    -- output will be interlaced with top field bottom field first, depending
    -- on which of the Follow options you choose.
    interlaceMode :: Prelude.Maybe ProresInterlaceMode,
    -- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
    -- the console, this corresponds to any value other than Follow source.
    -- When you specify an output pixel aspect ratio (PAR) that is different
    -- from your input video PAR, provide your output PAR as a ratio. For
    -- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
    -- In this example, the value for parDenominator is 33.
    parDenominator :: Prelude.Maybe Prelude.Natural,
    -- | Choose the method that you want MediaConvert to use when increasing or
    -- decreasing the frame rate. We recommend using drop duplicate
    -- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
    -- 30 fps. For numerically complex conversions, you can use interpolate
    -- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
    -- might introduce undesirable video artifacts. For complex frame rate
    -- conversions, especially if your source video has already been converted
    -- from its original cadence, use FrameFormer (FRAMEFORMER) to do
    -- motion-compensated interpolation. FrameFormer chooses the best
    -- conversion method frame by frame. Note that using FrameFormer increases
    -- the transcoding time and incurs a significant add-on cost.
    framerateConversionAlgorithm :: Prelude.Maybe ProresFramerateConversionAlgorithm
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProresSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parNumerator', 'proresSettings_parNumerator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
-- the console, this corresponds to any value other than Follow source.
-- When you specify an output pixel aspect ratio (PAR) that is different
-- from your input video PAR, provide your output PAR as a ratio. For
-- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
-- In this example, the value for parNumerator is 40.
--
-- 'telecine', 'proresSettings_telecine' - When you do frame rate conversion from 23.976 frames per second (fps) to
-- 29.97 fps, and your output scan type is interlaced, you can optionally
-- enable hard telecine (HARD) to create a smoother picture. When you keep
-- the default value, None (NONE), MediaConvert does a standard frame rate
-- conversion to 29.97 without doing anything with the field polarity to
-- create a smoother picture.
--
-- 'framerateDenominator', 'proresSettings_framerateDenominator' - When you use the API for transcode jobs that use frame rate conversion,
-- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
-- 23.976 fps. Use FramerateDenominator to specify the denominator of this
-- fraction. In this example, use 1001 for the value of
-- FramerateDenominator. When you use the console for transcode jobs that
-- use frame rate conversion, provide the value as a decimal number for
-- Framerate. In this example, specify 23.976.
--
-- 'scanTypeConversionMode', 'proresSettings_scanTypeConversionMode' - Use this setting for interlaced outputs, when your output frame rate is
-- half of your input frame rate. In this situation, choose Optimized
-- interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced
-- output. In this case, each progressive frame from the input corresponds
-- to an interlaced field in the output. Keep the default value, Basic
-- interlacing (INTERLACED), for all other output frame rates. With basic
-- interlacing, MediaConvert performs any frame rate conversion first and
-- then interlaces the frames. When you choose Optimized interlacing and
-- you set your output frame rate to a value that isn\'t suitable for
-- optimized interlacing, MediaConvert automatically falls back to basic
-- interlacing. Required settings: To use optimized interlacing, you must
-- set Telecine (telecine) to None (NONE) or Soft (SOFT). You can\'t use
-- optimized interlacing for hard telecine outputs. You must also set
-- Interlace mode (interlaceMode) to a value other than Progressive
-- (PROGRESSIVE).
--
-- 'framerateControl', 'proresSettings_framerateControl' - If you are using the console, use the Framerate setting to specify the
-- frame rate for this output. If you want to keep the same frame rate as
-- the input video, choose Follow source. If you want to do frame rate
-- conversion, choose a frame rate from the dropdown list or choose Custom.
-- The framerates shown in the dropdown list are decimal approximations of
-- fractions. If you choose Custom, specify your frame rate as a fraction.
-- If you are creating your transcoding job specification as a JSON file
-- without the console, use FramerateControl to specify which value the
-- service uses for the frame rate for this output. Choose
-- INITIALIZE_FROM_SOURCE if you want the service to use the frame rate
-- from the input. Choose SPECIFIED if you want the service to use the
-- frame rate you specify in the settings FramerateNumerator and
-- FramerateDenominator.
--
-- 'parControl', 'proresSettings_parControl' - Optional. Specify how the service determines the pixel aspect ratio
-- (PAR) for this output. The default behavior, Follow source
-- (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your
-- output. To specify a different PAR in the console, choose any value
-- other than Follow source. To specify a different PAR by editing the JSON
-- job specification, choose SPECIFIED. When you choose SPECIFIED for this
-- setting, you must also specify values for the parNumerator and
-- parDenominator settings.
--
-- 'framerateNumerator', 'proresSettings_framerateNumerator' - When you use the API for transcode jobs that use frame rate conversion,
-- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
-- 23.976 fps. Use FramerateNumerator to specify the numerator of this
-- fraction. In this example, use 24000 for the value of
-- FramerateNumerator. When you use the console for transcode jobs that use
-- frame rate conversion, provide the value as a decimal number for
-- Framerate. In this example, specify 23.976.
--
-- 'codecProfile', 'proresSettings_codecProfile' - Use Profile (ProResCodecProfile) to specify the type of Apple ProRes
-- codec to use for this output.
--
-- 'slowPal', 'proresSettings_slowPal' - Ignore this setting unless your input frame rate is 23.976 or 24 frames
-- per second (fps). Enable slow PAL to create a 25 fps output. When you
-- enable slow PAL, MediaConvert relabels the video frames to 25 fps and
-- resamples your audio to keep it synchronized with the video. Note that
-- enabling this setting will slightly reduce the duration of your video.
-- Required settings: You must also set Framerate to 25. In your JSON job
-- specification, set (framerateControl) to (SPECIFIED),
-- (framerateNumerator) to 25 and (framerateDenominator) to 1.
--
-- 'chromaSampling', 'proresSettings_chromaSampling' - This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that
-- you create from inputs that use 4:4:4 chroma sampling. Set Preserve
-- 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use
-- 4:4:4 chroma sampling. You must specify a value for this setting when
-- your output codec profile supports 4:4:4 chroma sampling. Related
-- Settings: When you set Chroma sampling to Preserve 4:4:4 sampling
-- (PRESERVE_444_SAMPLING), you must choose an output codec profile that
-- supports 4:4:4 chroma sampling. These values for Profile (CodecProfile)
-- support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or
-- Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma
-- sampling to Preserve 4:4:4 sampling, you must disable all video
-- preprocessors except for Nexguard file marker (PartnerWatermarking).
-- When you set Chroma sampling to Preserve 4:4:4 sampling and use
-- framerate conversion, you must set Frame rate conversion algorithm
-- (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP).
--
-- 'interlaceMode', 'proresSettings_interlaceMode' - Choose the scan line type for the output. Keep the default value,
-- Progressive (PROGRESSIVE) to create a progressive output, regardless of
-- the scan type of your input. Use Top field first (TOP_FIELD) or Bottom
-- field first (BOTTOM_FIELD) to create an output that\'s interlaced with
-- the same field polarity throughout. Use Follow, default top
-- (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to
-- produce outputs with the same field polarity as the source. For jobs
-- that have multiple inputs, the output field polarity might change over
-- the course of the output. Follow behavior depends on the input scan
-- type. If the source is interlaced, the output will be interlaced with
-- the same polarity as the source. If the source is progressive, the
-- output will be interlaced with top field bottom field first, depending
-- on which of the Follow options you choose.
--
-- 'parDenominator', 'proresSettings_parDenominator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
-- the console, this corresponds to any value other than Follow source.
-- When you specify an output pixel aspect ratio (PAR) that is different
-- from your input video PAR, provide your output PAR as a ratio. For
-- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
-- In this example, the value for parDenominator is 33.
--
-- 'framerateConversionAlgorithm', 'proresSettings_framerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or
-- decreasing the frame rate. We recommend using drop duplicate
-- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
-- 30 fps. For numerically complex conversions, you can use interpolate
-- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
-- might introduce undesirable video artifacts. For complex frame rate
-- conversions, especially if your source video has already been converted
-- from its original cadence, use FrameFormer (FRAMEFORMER) to do
-- motion-compensated interpolation. FrameFormer chooses the best
-- conversion method frame by frame. Note that using FrameFormer increases
-- the transcoding time and incurs a significant add-on cost.
newProresSettings ::
  ProresSettings
newProresSettings =
  ProresSettings'
    { parNumerator = Prelude.Nothing,
      telecine = Prelude.Nothing,
      framerateDenominator = Prelude.Nothing,
      scanTypeConversionMode = Prelude.Nothing,
      framerateControl = Prelude.Nothing,
      parControl = Prelude.Nothing,
      framerateNumerator = Prelude.Nothing,
      codecProfile = Prelude.Nothing,
      slowPal = Prelude.Nothing,
      chromaSampling = Prelude.Nothing,
      interlaceMode = Prelude.Nothing,
      parDenominator = Prelude.Nothing,
      framerateConversionAlgorithm = Prelude.Nothing
    }

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
-- the console, this corresponds to any value other than Follow source.
-- When you specify an output pixel aspect ratio (PAR) that is different
-- from your input video PAR, provide your output PAR as a ratio. For
-- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
-- In this example, the value for parNumerator is 40.
proresSettings_parNumerator :: Lens.Lens' ProresSettings (Prelude.Maybe Prelude.Natural)
proresSettings_parNumerator = Lens.lens (\ProresSettings' {parNumerator} -> parNumerator) (\s@ProresSettings' {} a -> s {parNumerator = a} :: ProresSettings)

-- | When you do frame rate conversion from 23.976 frames per second (fps) to
-- 29.97 fps, and your output scan type is interlaced, you can optionally
-- enable hard telecine (HARD) to create a smoother picture. When you keep
-- the default value, None (NONE), MediaConvert does a standard frame rate
-- conversion to 29.97 without doing anything with the field polarity to
-- create a smoother picture.
proresSettings_telecine :: Lens.Lens' ProresSettings (Prelude.Maybe ProresTelecine)
proresSettings_telecine = Lens.lens (\ProresSettings' {telecine} -> telecine) (\s@ProresSettings' {} a -> s {telecine = a} :: ProresSettings)

-- | When you use the API for transcode jobs that use frame rate conversion,
-- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
-- 23.976 fps. Use FramerateDenominator to specify the denominator of this
-- fraction. In this example, use 1001 for the value of
-- FramerateDenominator. When you use the console for transcode jobs that
-- use frame rate conversion, provide the value as a decimal number for
-- Framerate. In this example, specify 23.976.
proresSettings_framerateDenominator :: Lens.Lens' ProresSettings (Prelude.Maybe Prelude.Natural)
proresSettings_framerateDenominator = Lens.lens (\ProresSettings' {framerateDenominator} -> framerateDenominator) (\s@ProresSettings' {} a -> s {framerateDenominator = a} :: ProresSettings)

-- | Use this setting for interlaced outputs, when your output frame rate is
-- half of your input frame rate. In this situation, choose Optimized
-- interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced
-- output. In this case, each progressive frame from the input corresponds
-- to an interlaced field in the output. Keep the default value, Basic
-- interlacing (INTERLACED), for all other output frame rates. With basic
-- interlacing, MediaConvert performs any frame rate conversion first and
-- then interlaces the frames. When you choose Optimized interlacing and
-- you set your output frame rate to a value that isn\'t suitable for
-- optimized interlacing, MediaConvert automatically falls back to basic
-- interlacing. Required settings: To use optimized interlacing, you must
-- set Telecine (telecine) to None (NONE) or Soft (SOFT). You can\'t use
-- optimized interlacing for hard telecine outputs. You must also set
-- Interlace mode (interlaceMode) to a value other than Progressive
-- (PROGRESSIVE).
proresSettings_scanTypeConversionMode :: Lens.Lens' ProresSettings (Prelude.Maybe ProresScanTypeConversionMode)
proresSettings_scanTypeConversionMode = Lens.lens (\ProresSettings' {scanTypeConversionMode} -> scanTypeConversionMode) (\s@ProresSettings' {} a -> s {scanTypeConversionMode = a} :: ProresSettings)

-- | If you are using the console, use the Framerate setting to specify the
-- frame rate for this output. If you want to keep the same frame rate as
-- the input video, choose Follow source. If you want to do frame rate
-- conversion, choose a frame rate from the dropdown list or choose Custom.
-- The framerates shown in the dropdown list are decimal approximations of
-- fractions. If you choose Custom, specify your frame rate as a fraction.
-- If you are creating your transcoding job specification as a JSON file
-- without the console, use FramerateControl to specify which value the
-- service uses for the frame rate for this output. Choose
-- INITIALIZE_FROM_SOURCE if you want the service to use the frame rate
-- from the input. Choose SPECIFIED if you want the service to use the
-- frame rate you specify in the settings FramerateNumerator and
-- FramerateDenominator.
proresSettings_framerateControl :: Lens.Lens' ProresSettings (Prelude.Maybe ProresFramerateControl)
proresSettings_framerateControl = Lens.lens (\ProresSettings' {framerateControl} -> framerateControl) (\s@ProresSettings' {} a -> s {framerateControl = a} :: ProresSettings)

-- | Optional. Specify how the service determines the pixel aspect ratio
-- (PAR) for this output. The default behavior, Follow source
-- (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your
-- output. To specify a different PAR in the console, choose any value
-- other than Follow source. To specify a different PAR by editing the JSON
-- job specification, choose SPECIFIED. When you choose SPECIFIED for this
-- setting, you must also specify values for the parNumerator and
-- parDenominator settings.
proresSettings_parControl :: Lens.Lens' ProresSettings (Prelude.Maybe ProresParControl)
proresSettings_parControl = Lens.lens (\ProresSettings' {parControl} -> parControl) (\s@ProresSettings' {} a -> s {parControl = a} :: ProresSettings)

-- | When you use the API for transcode jobs that use frame rate conversion,
-- specify the frame rate as a fraction. For example, 24000 \/ 1001 =
-- 23.976 fps. Use FramerateNumerator to specify the numerator of this
-- fraction. In this example, use 24000 for the value of
-- FramerateNumerator. When you use the console for transcode jobs that use
-- frame rate conversion, provide the value as a decimal number for
-- Framerate. In this example, specify 23.976.
proresSettings_framerateNumerator :: Lens.Lens' ProresSettings (Prelude.Maybe Prelude.Natural)
proresSettings_framerateNumerator = Lens.lens (\ProresSettings' {framerateNumerator} -> framerateNumerator) (\s@ProresSettings' {} a -> s {framerateNumerator = a} :: ProresSettings)

-- | Use Profile (ProResCodecProfile) to specify the type of Apple ProRes
-- codec to use for this output.
proresSettings_codecProfile :: Lens.Lens' ProresSettings (Prelude.Maybe ProresCodecProfile)
proresSettings_codecProfile = Lens.lens (\ProresSettings' {codecProfile} -> codecProfile) (\s@ProresSettings' {} a -> s {codecProfile = a} :: ProresSettings)

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames
-- per second (fps). Enable slow PAL to create a 25 fps output. When you
-- enable slow PAL, MediaConvert relabels the video frames to 25 fps and
-- resamples your audio to keep it synchronized with the video. Note that
-- enabling this setting will slightly reduce the duration of your video.
-- Required settings: You must also set Framerate to 25. In your JSON job
-- specification, set (framerateControl) to (SPECIFIED),
-- (framerateNumerator) to 25 and (framerateDenominator) to 1.
proresSettings_slowPal :: Lens.Lens' ProresSettings (Prelude.Maybe ProresSlowPal)
proresSettings_slowPal = Lens.lens (\ProresSettings' {slowPal} -> slowPal) (\s@ProresSettings' {} a -> s {slowPal = a} :: ProresSettings)

-- | This setting applies only to ProRes 4444 and ProRes 4444 XQ outputs that
-- you create from inputs that use 4:4:4 chroma sampling. Set Preserve
-- 4:4:4 sampling (PRESERVE_444_SAMPLING) to allow outputs to also use
-- 4:4:4 chroma sampling. You must specify a value for this setting when
-- your output codec profile supports 4:4:4 chroma sampling. Related
-- Settings: When you set Chroma sampling to Preserve 4:4:4 sampling
-- (PRESERVE_444_SAMPLING), you must choose an output codec profile that
-- supports 4:4:4 chroma sampling. These values for Profile (CodecProfile)
-- support 4:4:4 chroma sampling: Apple ProRes 4444 (APPLE_PRORES_4444) or
-- Apple ProRes 4444 XQ (APPLE_PRORES_4444_XQ). When you set Chroma
-- sampling to Preserve 4:4:4 sampling, you must disable all video
-- preprocessors except for Nexguard file marker (PartnerWatermarking).
-- When you set Chroma sampling to Preserve 4:4:4 sampling and use
-- framerate conversion, you must set Frame rate conversion algorithm
-- (FramerateConversionAlgorithm) to Drop duplicate (DUPLICATE_DROP).
proresSettings_chromaSampling :: Lens.Lens' ProresSettings (Prelude.Maybe ProresChromaSampling)
proresSettings_chromaSampling = Lens.lens (\ProresSettings' {chromaSampling} -> chromaSampling) (\s@ProresSettings' {} a -> s {chromaSampling = a} :: ProresSettings)

-- | Choose the scan line type for the output. Keep the default value,
-- Progressive (PROGRESSIVE) to create a progressive output, regardless of
-- the scan type of your input. Use Top field first (TOP_FIELD) or Bottom
-- field first (BOTTOM_FIELD) to create an output that\'s interlaced with
-- the same field polarity throughout. Use Follow, default top
-- (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to
-- produce outputs with the same field polarity as the source. For jobs
-- that have multiple inputs, the output field polarity might change over
-- the course of the output. Follow behavior depends on the input scan
-- type. If the source is interlaced, the output will be interlaced with
-- the same polarity as the source. If the source is progressive, the
-- output will be interlaced with top field bottom field first, depending
-- on which of the Follow options you choose.
proresSettings_interlaceMode :: Lens.Lens' ProresSettings (Prelude.Maybe ProresInterlaceMode)
proresSettings_interlaceMode = Lens.lens (\ProresSettings' {interlaceMode} -> interlaceMode) (\s@ProresSettings' {} a -> s {interlaceMode = a} :: ProresSettings)

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On
-- the console, this corresponds to any value other than Follow source.
-- When you specify an output pixel aspect ratio (PAR) that is different
-- from your input video PAR, provide your output PAR as a ratio. For
-- example, for D1\/DV NTSC widescreen, you would specify the ratio 40:33.
-- In this example, the value for parDenominator is 33.
proresSettings_parDenominator :: Lens.Lens' ProresSettings (Prelude.Maybe Prelude.Natural)
proresSettings_parDenominator = Lens.lens (\ProresSettings' {parDenominator} -> parDenominator) (\s@ProresSettings' {} a -> s {parDenominator = a} :: ProresSettings)

-- | Choose the method that you want MediaConvert to use when increasing or
-- decreasing the frame rate. We recommend using drop duplicate
-- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
-- 30 fps. For numerically complex conversions, you can use interpolate
-- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
-- might introduce undesirable video artifacts. For complex frame rate
-- conversions, especially if your source video has already been converted
-- from its original cadence, use FrameFormer (FRAMEFORMER) to do
-- motion-compensated interpolation. FrameFormer chooses the best
-- conversion method frame by frame. Note that using FrameFormer increases
-- the transcoding time and incurs a significant add-on cost.
proresSettings_framerateConversionAlgorithm :: Lens.Lens' ProresSettings (Prelude.Maybe ProresFramerateConversionAlgorithm)
proresSettings_framerateConversionAlgorithm = Lens.lens (\ProresSettings' {framerateConversionAlgorithm} -> framerateConversionAlgorithm) (\s@ProresSettings' {} a -> s {framerateConversionAlgorithm = a} :: ProresSettings)

instance Core.FromJSON ProresSettings where
  parseJSON =
    Core.withObject
      "ProresSettings"
      ( \x ->
          ProresSettings'
            Prelude.<$> (x Core..:? "parNumerator")
            Prelude.<*> (x Core..:? "telecine")
            Prelude.<*> (x Core..:? "framerateDenominator")
            Prelude.<*> (x Core..:? "scanTypeConversionMode")
            Prelude.<*> (x Core..:? "framerateControl")
            Prelude.<*> (x Core..:? "parControl")
            Prelude.<*> (x Core..:? "framerateNumerator")
            Prelude.<*> (x Core..:? "codecProfile")
            Prelude.<*> (x Core..:? "slowPal")
            Prelude.<*> (x Core..:? "chromaSampling")
            Prelude.<*> (x Core..:? "interlaceMode")
            Prelude.<*> (x Core..:? "parDenominator")
            Prelude.<*> (x Core..:? "framerateConversionAlgorithm")
      )

instance Prelude.Hashable ProresSettings where
  hashWithSalt _salt ProresSettings' {..} =
    _salt `Prelude.hashWithSalt` parNumerator
      `Prelude.hashWithSalt` telecine
      `Prelude.hashWithSalt` framerateDenominator
      `Prelude.hashWithSalt` scanTypeConversionMode
      `Prelude.hashWithSalt` framerateControl
      `Prelude.hashWithSalt` parControl
      `Prelude.hashWithSalt` framerateNumerator
      `Prelude.hashWithSalt` codecProfile
      `Prelude.hashWithSalt` slowPal
      `Prelude.hashWithSalt` chromaSampling
      `Prelude.hashWithSalt` interlaceMode
      `Prelude.hashWithSalt` parDenominator
      `Prelude.hashWithSalt` framerateConversionAlgorithm

instance Prelude.NFData ProresSettings where
  rnf ProresSettings' {..} =
    Prelude.rnf parNumerator
      `Prelude.seq` Prelude.rnf telecine
      `Prelude.seq` Prelude.rnf framerateDenominator
      `Prelude.seq` Prelude.rnf scanTypeConversionMode
      `Prelude.seq` Prelude.rnf framerateControl
      `Prelude.seq` Prelude.rnf parControl
      `Prelude.seq` Prelude.rnf framerateNumerator
      `Prelude.seq` Prelude.rnf codecProfile
      `Prelude.seq` Prelude.rnf slowPal
      `Prelude.seq` Prelude.rnf chromaSampling
      `Prelude.seq` Prelude.rnf interlaceMode
      `Prelude.seq` Prelude.rnf parDenominator
      `Prelude.seq` Prelude.rnf framerateConversionAlgorithm

instance Core.ToJSON ProresSettings where
  toJSON ProresSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("parNumerator" Core..=) Prelude.<$> parNumerator,
            ("telecine" Core..=) Prelude.<$> telecine,
            ("framerateDenominator" Core..=)
              Prelude.<$> framerateDenominator,
            ("scanTypeConversionMode" Core..=)
              Prelude.<$> scanTypeConversionMode,
            ("framerateControl" Core..=)
              Prelude.<$> framerateControl,
            ("parControl" Core..=) Prelude.<$> parControl,
            ("framerateNumerator" Core..=)
              Prelude.<$> framerateNumerator,
            ("codecProfile" Core..=) Prelude.<$> codecProfile,
            ("slowPal" Core..=) Prelude.<$> slowPal,
            ("chromaSampling" Core..=)
              Prelude.<$> chromaSampling,
            ("interlaceMode" Core..=) Prelude.<$> interlaceMode,
            ("parDenominator" Core..=)
              Prelude.<$> parDenominator,
            ("framerateConversionAlgorithm" Core..=)
              Prelude.<$> framerateConversionAlgorithm
          ]
      )
