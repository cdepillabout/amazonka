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
-- Module      : Amazonka.Batch.Types.Volume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.Volume where

import Amazonka.Batch.Types.EFSVolumeConfiguration
import Amazonka.Batch.Types.Host
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A data volume used in a job\'s container properties.
--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume'
  { -- | This parameter is specified when you are using an Amazon Elastic File
    -- System file system for job storage. Jobs that are running on Fargate
    -- resources must specify a @platformVersion@ of at least @1.4.0@.
    efsVolumeConfiguration :: Prelude.Maybe EFSVolumeConfiguration,
    -- | The name of the volume. It can be up to 255 letters long. It can contain
    -- uppercase and lowercase letters, numbers, hyphens (-), and underscores
    -- (_). This name is referenced in the @sourceVolume@ parameter of
    -- container definition @mountPoints@.
    name :: Prelude.Maybe Prelude.Text,
    -- | The contents of the @host@ parameter determine whether your data volume
    -- persists on the host container instance and where it is stored. If the
    -- host parameter is empty, then the Docker daemon assigns a host path for
    -- your data volume. However, the data isn\'t guaranteed to persist after
    -- the containers associated with it stop running.
    --
    -- This parameter isn\'t applicable to jobs that are running on Fargate
    -- resources and shouldn\'t be provided.
    host :: Prelude.Maybe Host
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Volume' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'efsVolumeConfiguration', 'volume_efsVolumeConfiguration' - This parameter is specified when you are using an Amazon Elastic File
-- System file system for job storage. Jobs that are running on Fargate
-- resources must specify a @platformVersion@ of at least @1.4.0@.
--
-- 'name', 'volume_name' - The name of the volume. It can be up to 255 letters long. It can contain
-- uppercase and lowercase letters, numbers, hyphens (-), and underscores
-- (_). This name is referenced in the @sourceVolume@ parameter of
-- container definition @mountPoints@.
--
-- 'host', 'volume_host' - The contents of the @host@ parameter determine whether your data volume
-- persists on the host container instance and where it is stored. If the
-- host parameter is empty, then the Docker daemon assigns a host path for
-- your data volume. However, the data isn\'t guaranteed to persist after
-- the containers associated with it stop running.
--
-- This parameter isn\'t applicable to jobs that are running on Fargate
-- resources and shouldn\'t be provided.
newVolume ::
  Volume
newVolume =
  Volume'
    { efsVolumeConfiguration = Prelude.Nothing,
      name = Prelude.Nothing,
      host = Prelude.Nothing
    }

-- | This parameter is specified when you are using an Amazon Elastic File
-- System file system for job storage. Jobs that are running on Fargate
-- resources must specify a @platformVersion@ of at least @1.4.0@.
volume_efsVolumeConfiguration :: Lens.Lens' Volume (Prelude.Maybe EFSVolumeConfiguration)
volume_efsVolumeConfiguration = Lens.lens (\Volume' {efsVolumeConfiguration} -> efsVolumeConfiguration) (\s@Volume' {} a -> s {efsVolumeConfiguration = a} :: Volume)

-- | The name of the volume. It can be up to 255 letters long. It can contain
-- uppercase and lowercase letters, numbers, hyphens (-), and underscores
-- (_). This name is referenced in the @sourceVolume@ parameter of
-- container definition @mountPoints@.
volume_name :: Lens.Lens' Volume (Prelude.Maybe Prelude.Text)
volume_name = Lens.lens (\Volume' {name} -> name) (\s@Volume' {} a -> s {name = a} :: Volume)

-- | The contents of the @host@ parameter determine whether your data volume
-- persists on the host container instance and where it is stored. If the
-- host parameter is empty, then the Docker daemon assigns a host path for
-- your data volume. However, the data isn\'t guaranteed to persist after
-- the containers associated with it stop running.
--
-- This parameter isn\'t applicable to jobs that are running on Fargate
-- resources and shouldn\'t be provided.
volume_host :: Lens.Lens' Volume (Prelude.Maybe Host)
volume_host = Lens.lens (\Volume' {host} -> host) (\s@Volume' {} a -> s {host = a} :: Volume)

instance Core.FromJSON Volume where
  parseJSON =
    Core.withObject
      "Volume"
      ( \x ->
          Volume'
            Prelude.<$> (x Core..:? "efsVolumeConfiguration")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "host")
      )

instance Prelude.Hashable Volume where
  hashWithSalt _salt Volume' {..} =
    _salt `Prelude.hashWithSalt` efsVolumeConfiguration
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` host

instance Prelude.NFData Volume where
  rnf Volume' {..} =
    Prelude.rnf efsVolumeConfiguration
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf host

instance Core.ToJSON Volume where
  toJSON Volume' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("efsVolumeConfiguration" Core..=)
              Prelude.<$> efsVolumeConfiguration,
            ("name" Core..=) Prelude.<$> name,
            ("host" Core..=) Prelude.<$> host
          ]
      )
