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
-- Module      : Amazonka.MediaConvert.Types.EmbeddedSourceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.EmbeddedSourceSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.EmbeddedConvert608To708
import Amazonka.MediaConvert.Types.EmbeddedTerminateCaptions
import qualified Amazonka.Prelude as Prelude

-- | Settings for embedded captions Source
--
-- /See:/ 'newEmbeddedSourceSettings' smart constructor.
data EmbeddedSourceSettings = EmbeddedSourceSettings'
  { -- | Specifies the 608\/708 channel number within the video track from which
    -- to extract captions. Unused for passthrough.
    source608ChannelNumber :: Prelude.Maybe Prelude.Natural,
    -- | Specifies the video track index used for extracting captions. The system
    -- only supports one input video track, so this should always be set to
    -- \'1\'.
    source608TrackNumber :: Prelude.Maybe Prelude.Natural,
    -- | Specify whether this set of input captions appears in your outputs in
    -- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
    -- MediaConvert includes the captions data in two ways: it passes the 608
    -- data through using the 608 compatibility bytes fields of the 708
    -- wrapper, and it also translates the 608 data into 708.
    convert608To708 :: Prelude.Maybe EmbeddedConvert608To708,
    -- | By default, the service terminates any unterminated captions at the end
    -- of each input. If you want the caption to continue onto your next input,
    -- disable this setting.
    terminateCaptions :: Prelude.Maybe EmbeddedTerminateCaptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmbeddedSourceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'source608ChannelNumber', 'embeddedSourceSettings_source608ChannelNumber' - Specifies the 608\/708 channel number within the video track from which
-- to extract captions. Unused for passthrough.
--
-- 'source608TrackNumber', 'embeddedSourceSettings_source608TrackNumber' - Specifies the video track index used for extracting captions. The system
-- only supports one input video track, so this should always be set to
-- \'1\'.
--
-- 'convert608To708', 'embeddedSourceSettings_convert608To708' - Specify whether this set of input captions appears in your outputs in
-- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
-- MediaConvert includes the captions data in two ways: it passes the 608
-- data through using the 608 compatibility bytes fields of the 708
-- wrapper, and it also translates the 608 data into 708.
--
-- 'terminateCaptions', 'embeddedSourceSettings_terminateCaptions' - By default, the service terminates any unterminated captions at the end
-- of each input. If you want the caption to continue onto your next input,
-- disable this setting.
newEmbeddedSourceSettings ::
  EmbeddedSourceSettings
newEmbeddedSourceSettings =
  EmbeddedSourceSettings'
    { source608ChannelNumber =
        Prelude.Nothing,
      source608TrackNumber = Prelude.Nothing,
      convert608To708 = Prelude.Nothing,
      terminateCaptions = Prelude.Nothing
    }

-- | Specifies the 608\/708 channel number within the video track from which
-- to extract captions. Unused for passthrough.
embeddedSourceSettings_source608ChannelNumber :: Lens.Lens' EmbeddedSourceSettings (Prelude.Maybe Prelude.Natural)
embeddedSourceSettings_source608ChannelNumber = Lens.lens (\EmbeddedSourceSettings' {source608ChannelNumber} -> source608ChannelNumber) (\s@EmbeddedSourceSettings' {} a -> s {source608ChannelNumber = a} :: EmbeddedSourceSettings)

-- | Specifies the video track index used for extracting captions. The system
-- only supports one input video track, so this should always be set to
-- \'1\'.
embeddedSourceSettings_source608TrackNumber :: Lens.Lens' EmbeddedSourceSettings (Prelude.Maybe Prelude.Natural)
embeddedSourceSettings_source608TrackNumber = Lens.lens (\EmbeddedSourceSettings' {source608TrackNumber} -> source608TrackNumber) (\s@EmbeddedSourceSettings' {} a -> s {source608TrackNumber = a} :: EmbeddedSourceSettings)

-- | Specify whether this set of input captions appears in your outputs in
-- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
-- MediaConvert includes the captions data in two ways: it passes the 608
-- data through using the 608 compatibility bytes fields of the 708
-- wrapper, and it also translates the 608 data into 708.
embeddedSourceSettings_convert608To708 :: Lens.Lens' EmbeddedSourceSettings (Prelude.Maybe EmbeddedConvert608To708)
embeddedSourceSettings_convert608To708 = Lens.lens (\EmbeddedSourceSettings' {convert608To708} -> convert608To708) (\s@EmbeddedSourceSettings' {} a -> s {convert608To708 = a} :: EmbeddedSourceSettings)

-- | By default, the service terminates any unterminated captions at the end
-- of each input. If you want the caption to continue onto your next input,
-- disable this setting.
embeddedSourceSettings_terminateCaptions :: Lens.Lens' EmbeddedSourceSettings (Prelude.Maybe EmbeddedTerminateCaptions)
embeddedSourceSettings_terminateCaptions = Lens.lens (\EmbeddedSourceSettings' {terminateCaptions} -> terminateCaptions) (\s@EmbeddedSourceSettings' {} a -> s {terminateCaptions = a} :: EmbeddedSourceSettings)

instance Core.FromJSON EmbeddedSourceSettings where
  parseJSON =
    Core.withObject
      "EmbeddedSourceSettings"
      ( \x ->
          EmbeddedSourceSettings'
            Prelude.<$> (x Core..:? "source608ChannelNumber")
            Prelude.<*> (x Core..:? "source608TrackNumber")
            Prelude.<*> (x Core..:? "convert608To708")
            Prelude.<*> (x Core..:? "terminateCaptions")
      )

instance Prelude.Hashable EmbeddedSourceSettings where
  hashWithSalt _salt EmbeddedSourceSettings' {..} =
    _salt `Prelude.hashWithSalt` source608ChannelNumber
      `Prelude.hashWithSalt` source608TrackNumber
      `Prelude.hashWithSalt` convert608To708
      `Prelude.hashWithSalt` terminateCaptions

instance Prelude.NFData EmbeddedSourceSettings where
  rnf EmbeddedSourceSettings' {..} =
    Prelude.rnf source608ChannelNumber
      `Prelude.seq` Prelude.rnf source608TrackNumber
      `Prelude.seq` Prelude.rnf convert608To708
      `Prelude.seq` Prelude.rnf terminateCaptions

instance Core.ToJSON EmbeddedSourceSettings where
  toJSON EmbeddedSourceSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("source608ChannelNumber" Core..=)
              Prelude.<$> source608ChannelNumber,
            ("source608TrackNumber" Core..=)
              Prelude.<$> source608TrackNumber,
            ("convert608To708" Core..=)
              Prelude.<$> convert608To708,
            ("terminateCaptions" Core..=)
              Prelude.<$> terminateCaptions
          ]
      )
