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
-- Module      : Amazonka.SageMaker.Types.AppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AppSpecification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configuration to run a processing job in a specified container image.
--
-- /See:/ 'newAppSpecification' smart constructor.
data AppSpecification = AppSpecification'
  { -- | The entrypoint for a container used to run a processing job.
    containerEntrypoint :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The arguments for a container used to run a processing job.
    containerArguments :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The container image to be run by the processing job.
    imageUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerEntrypoint', 'appSpecification_containerEntrypoint' - The entrypoint for a container used to run a processing job.
--
-- 'containerArguments', 'appSpecification_containerArguments' - The arguments for a container used to run a processing job.
--
-- 'imageUri', 'appSpecification_imageUri' - The container image to be run by the processing job.
newAppSpecification ::
  -- | 'imageUri'
  Prelude.Text ->
  AppSpecification
newAppSpecification pImageUri_ =
  AppSpecification'
    { containerEntrypoint =
        Prelude.Nothing,
      containerArguments = Prelude.Nothing,
      imageUri = pImageUri_
    }

-- | The entrypoint for a container used to run a processing job.
appSpecification_containerEntrypoint :: Lens.Lens' AppSpecification (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
appSpecification_containerEntrypoint = Lens.lens (\AppSpecification' {containerEntrypoint} -> containerEntrypoint) (\s@AppSpecification' {} a -> s {containerEntrypoint = a} :: AppSpecification) Prelude.. Lens.mapping Lens.coerced

-- | The arguments for a container used to run a processing job.
appSpecification_containerArguments :: Lens.Lens' AppSpecification (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
appSpecification_containerArguments = Lens.lens (\AppSpecification' {containerArguments} -> containerArguments) (\s@AppSpecification' {} a -> s {containerArguments = a} :: AppSpecification) Prelude.. Lens.mapping Lens.coerced

-- | The container image to be run by the processing job.
appSpecification_imageUri :: Lens.Lens' AppSpecification Prelude.Text
appSpecification_imageUri = Lens.lens (\AppSpecification' {imageUri} -> imageUri) (\s@AppSpecification' {} a -> s {imageUri = a} :: AppSpecification)

instance Core.FromJSON AppSpecification where
  parseJSON =
    Core.withObject
      "AppSpecification"
      ( \x ->
          AppSpecification'
            Prelude.<$> (x Core..:? "ContainerEntrypoint")
            Prelude.<*> (x Core..:? "ContainerArguments")
            Prelude.<*> (x Core..: "ImageUri")
      )

instance Prelude.Hashable AppSpecification where
  hashWithSalt _salt AppSpecification' {..} =
    _salt `Prelude.hashWithSalt` containerEntrypoint
      `Prelude.hashWithSalt` containerArguments
      `Prelude.hashWithSalt` imageUri

instance Prelude.NFData AppSpecification where
  rnf AppSpecification' {..} =
    Prelude.rnf containerEntrypoint
      `Prelude.seq` Prelude.rnf containerArguments
      `Prelude.seq` Prelude.rnf imageUri

instance Core.ToJSON AppSpecification where
  toJSON AppSpecification' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ContainerEntrypoint" Core..=)
              Prelude.<$> containerEntrypoint,
            ("ContainerArguments" Core..=)
              Prelude.<$> containerArguments,
            Prelude.Just ("ImageUri" Core..= imageUri)
          ]
      )
