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
-- Module      : Amazonka.Rekognition.Types.ContentModerationDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.ContentModerationDetection where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types.ModerationLabel

-- | Information about an inappropriate, unwanted, or offensive content label
-- detection in a stored video.
--
-- /See:/ 'newContentModerationDetection' smart constructor.
data ContentModerationDetection = ContentModerationDetection'
  { -- | Time, in milliseconds from the beginning of the video, that the content
    -- moderation label was detected.
    timestamp :: Prelude.Maybe Prelude.Integer,
    -- | The content moderation label detected by in the stored video.
    moderationLabel :: Prelude.Maybe ModerationLabel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentModerationDetection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timestamp', 'contentModerationDetection_timestamp' - Time, in milliseconds from the beginning of the video, that the content
-- moderation label was detected.
--
-- 'moderationLabel', 'contentModerationDetection_moderationLabel' - The content moderation label detected by in the stored video.
newContentModerationDetection ::
  ContentModerationDetection
newContentModerationDetection =
  ContentModerationDetection'
    { timestamp =
        Prelude.Nothing,
      moderationLabel = Prelude.Nothing
    }

-- | Time, in milliseconds from the beginning of the video, that the content
-- moderation label was detected.
contentModerationDetection_timestamp :: Lens.Lens' ContentModerationDetection (Prelude.Maybe Prelude.Integer)
contentModerationDetection_timestamp = Lens.lens (\ContentModerationDetection' {timestamp} -> timestamp) (\s@ContentModerationDetection' {} a -> s {timestamp = a} :: ContentModerationDetection)

-- | The content moderation label detected by in the stored video.
contentModerationDetection_moderationLabel :: Lens.Lens' ContentModerationDetection (Prelude.Maybe ModerationLabel)
contentModerationDetection_moderationLabel = Lens.lens (\ContentModerationDetection' {moderationLabel} -> moderationLabel) (\s@ContentModerationDetection' {} a -> s {moderationLabel = a} :: ContentModerationDetection)

instance Core.FromJSON ContentModerationDetection where
  parseJSON =
    Core.withObject
      "ContentModerationDetection"
      ( \x ->
          ContentModerationDetection'
            Prelude.<$> (x Core..:? "Timestamp")
            Prelude.<*> (x Core..:? "ModerationLabel")
      )

instance Prelude.Hashable ContentModerationDetection where
  hashWithSalt _salt ContentModerationDetection' {..} =
    _salt `Prelude.hashWithSalt` timestamp
      `Prelude.hashWithSalt` moderationLabel

instance Prelude.NFData ContentModerationDetection where
  rnf ContentModerationDetection' {..} =
    Prelude.rnf timestamp
      `Prelude.seq` Prelude.rnf moderationLabel
