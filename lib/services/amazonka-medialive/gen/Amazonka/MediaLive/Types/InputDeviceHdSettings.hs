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
-- Module      : Amazonka.MediaLive.Types.InputDeviceHdSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.InputDeviceHdSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.InputDeviceActiveInput
import Amazonka.MediaLive.Types.InputDeviceConfiguredInput
import Amazonka.MediaLive.Types.InputDeviceScanType
import Amazonka.MediaLive.Types.InputDeviceState
import qualified Amazonka.Prelude as Prelude

-- | Settings that describe the active source from the input device, and the
-- video characteristics of that source.
--
-- /See:/ 'newInputDeviceHdSettings' smart constructor.
data InputDeviceHdSettings = InputDeviceHdSettings'
  { -- | The state of the input device.
    deviceState :: Prelude.Maybe InputDeviceState,
    -- | If you specified Auto as the configured input, specifies which of the
    -- sources is currently active (SDI or HDMI).
    activeInput :: Prelude.Maybe InputDeviceActiveInput,
    -- | The current maximum bitrate for ingesting this source, in bits per
    -- second. You can specify this maximum.
    maxBitrate :: Prelude.Maybe Prelude.Int,
    -- | The scan type of the video source.
    scanType :: Prelude.Maybe InputDeviceScanType,
    -- | The width of the video source, in pixels.
    width :: Prelude.Maybe Prelude.Int,
    -- | The source at the input device that is currently active. You can specify
    -- this source.
    configuredInput :: Prelude.Maybe InputDeviceConfiguredInput,
    -- | The height of the video source, in pixels.
    height :: Prelude.Maybe Prelude.Int,
    -- | The frame rate of the video source.
    framerate :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputDeviceHdSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceState', 'inputDeviceHdSettings_deviceState' - The state of the input device.
--
-- 'activeInput', 'inputDeviceHdSettings_activeInput' - If you specified Auto as the configured input, specifies which of the
-- sources is currently active (SDI or HDMI).
--
-- 'maxBitrate', 'inputDeviceHdSettings_maxBitrate' - The current maximum bitrate for ingesting this source, in bits per
-- second. You can specify this maximum.
--
-- 'scanType', 'inputDeviceHdSettings_scanType' - The scan type of the video source.
--
-- 'width', 'inputDeviceHdSettings_width' - The width of the video source, in pixels.
--
-- 'configuredInput', 'inputDeviceHdSettings_configuredInput' - The source at the input device that is currently active. You can specify
-- this source.
--
-- 'height', 'inputDeviceHdSettings_height' - The height of the video source, in pixels.
--
-- 'framerate', 'inputDeviceHdSettings_framerate' - The frame rate of the video source.
newInputDeviceHdSettings ::
  InputDeviceHdSettings
newInputDeviceHdSettings =
  InputDeviceHdSettings'
    { deviceState =
        Prelude.Nothing,
      activeInput = Prelude.Nothing,
      maxBitrate = Prelude.Nothing,
      scanType = Prelude.Nothing,
      width = Prelude.Nothing,
      configuredInput = Prelude.Nothing,
      height = Prelude.Nothing,
      framerate = Prelude.Nothing
    }

-- | The state of the input device.
inputDeviceHdSettings_deviceState :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe InputDeviceState)
inputDeviceHdSettings_deviceState = Lens.lens (\InputDeviceHdSettings' {deviceState} -> deviceState) (\s@InputDeviceHdSettings' {} a -> s {deviceState = a} :: InputDeviceHdSettings)

-- | If you specified Auto as the configured input, specifies which of the
-- sources is currently active (SDI or HDMI).
inputDeviceHdSettings_activeInput :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe InputDeviceActiveInput)
inputDeviceHdSettings_activeInput = Lens.lens (\InputDeviceHdSettings' {activeInput} -> activeInput) (\s@InputDeviceHdSettings' {} a -> s {activeInput = a} :: InputDeviceHdSettings)

-- | The current maximum bitrate for ingesting this source, in bits per
-- second. You can specify this maximum.
inputDeviceHdSettings_maxBitrate :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe Prelude.Int)
inputDeviceHdSettings_maxBitrate = Lens.lens (\InputDeviceHdSettings' {maxBitrate} -> maxBitrate) (\s@InputDeviceHdSettings' {} a -> s {maxBitrate = a} :: InputDeviceHdSettings)

-- | The scan type of the video source.
inputDeviceHdSettings_scanType :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe InputDeviceScanType)
inputDeviceHdSettings_scanType = Lens.lens (\InputDeviceHdSettings' {scanType} -> scanType) (\s@InputDeviceHdSettings' {} a -> s {scanType = a} :: InputDeviceHdSettings)

-- | The width of the video source, in pixels.
inputDeviceHdSettings_width :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe Prelude.Int)
inputDeviceHdSettings_width = Lens.lens (\InputDeviceHdSettings' {width} -> width) (\s@InputDeviceHdSettings' {} a -> s {width = a} :: InputDeviceHdSettings)

-- | The source at the input device that is currently active. You can specify
-- this source.
inputDeviceHdSettings_configuredInput :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe InputDeviceConfiguredInput)
inputDeviceHdSettings_configuredInput = Lens.lens (\InputDeviceHdSettings' {configuredInput} -> configuredInput) (\s@InputDeviceHdSettings' {} a -> s {configuredInput = a} :: InputDeviceHdSettings)

-- | The height of the video source, in pixels.
inputDeviceHdSettings_height :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe Prelude.Int)
inputDeviceHdSettings_height = Lens.lens (\InputDeviceHdSettings' {height} -> height) (\s@InputDeviceHdSettings' {} a -> s {height = a} :: InputDeviceHdSettings)

-- | The frame rate of the video source.
inputDeviceHdSettings_framerate :: Lens.Lens' InputDeviceHdSettings (Prelude.Maybe Prelude.Double)
inputDeviceHdSettings_framerate = Lens.lens (\InputDeviceHdSettings' {framerate} -> framerate) (\s@InputDeviceHdSettings' {} a -> s {framerate = a} :: InputDeviceHdSettings)

instance Core.FromJSON InputDeviceHdSettings where
  parseJSON =
    Core.withObject
      "InputDeviceHdSettings"
      ( \x ->
          InputDeviceHdSettings'
            Prelude.<$> (x Core..:? "deviceState")
            Prelude.<*> (x Core..:? "activeInput")
            Prelude.<*> (x Core..:? "maxBitrate")
            Prelude.<*> (x Core..:? "scanType")
            Prelude.<*> (x Core..:? "width")
            Prelude.<*> (x Core..:? "configuredInput")
            Prelude.<*> (x Core..:? "height")
            Prelude.<*> (x Core..:? "framerate")
      )

instance Prelude.Hashable InputDeviceHdSettings where
  hashWithSalt _salt InputDeviceHdSettings' {..} =
    _salt `Prelude.hashWithSalt` deviceState
      `Prelude.hashWithSalt` activeInput
      `Prelude.hashWithSalt` maxBitrate
      `Prelude.hashWithSalt` scanType
      `Prelude.hashWithSalt` width
      `Prelude.hashWithSalt` configuredInput
      `Prelude.hashWithSalt` height
      `Prelude.hashWithSalt` framerate

instance Prelude.NFData InputDeviceHdSettings where
  rnf InputDeviceHdSettings' {..} =
    Prelude.rnf deviceState
      `Prelude.seq` Prelude.rnf activeInput
      `Prelude.seq` Prelude.rnf maxBitrate
      `Prelude.seq` Prelude.rnf scanType
      `Prelude.seq` Prelude.rnf width
      `Prelude.seq` Prelude.rnf configuredInput
      `Prelude.seq` Prelude.rnf height
      `Prelude.seq` Prelude.rnf framerate
