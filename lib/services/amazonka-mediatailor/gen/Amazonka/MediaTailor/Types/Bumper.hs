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
-- Module      : Amazonka.MediaTailor.Types.Bumper
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaTailor.Types.Bumper where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration for bumpers. Bumpers are short audio or video clips
-- that play at the start or before the end of an ad break. To learn more
-- about bumpers, see
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html Bumpers>.
--
-- /See:/ 'newBumper' smart constructor.
data Bumper = Bumper'
  { -- | The URL for the start bumper asset.
    startUrl :: Prelude.Maybe Prelude.Text,
    -- | The URL for the end bumper asset.
    endUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Bumper' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startUrl', 'bumper_startUrl' - The URL for the start bumper asset.
--
-- 'endUrl', 'bumper_endUrl' - The URL for the end bumper asset.
newBumper ::
  Bumper
newBumper =
  Bumper'
    { startUrl = Prelude.Nothing,
      endUrl = Prelude.Nothing
    }

-- | The URL for the start bumper asset.
bumper_startUrl :: Lens.Lens' Bumper (Prelude.Maybe Prelude.Text)
bumper_startUrl = Lens.lens (\Bumper' {startUrl} -> startUrl) (\s@Bumper' {} a -> s {startUrl = a} :: Bumper)

-- | The URL for the end bumper asset.
bumper_endUrl :: Lens.Lens' Bumper (Prelude.Maybe Prelude.Text)
bumper_endUrl = Lens.lens (\Bumper' {endUrl} -> endUrl) (\s@Bumper' {} a -> s {endUrl = a} :: Bumper)

instance Core.FromJSON Bumper where
  parseJSON =
    Core.withObject
      "Bumper"
      ( \x ->
          Bumper'
            Prelude.<$> (x Core..:? "StartUrl")
            Prelude.<*> (x Core..:? "EndUrl")
      )

instance Prelude.Hashable Bumper where
  hashWithSalt _salt Bumper' {..} =
    _salt `Prelude.hashWithSalt` startUrl
      `Prelude.hashWithSalt` endUrl

instance Prelude.NFData Bumper where
  rnf Bumper' {..} =
    Prelude.rnf startUrl
      `Prelude.seq` Prelude.rnf endUrl

instance Core.ToJSON Bumper where
  toJSON Bumper' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StartUrl" Core..=) Prelude.<$> startUrl,
            ("EndUrl" Core..=) Prelude.<$> endUrl
          ]
      )
