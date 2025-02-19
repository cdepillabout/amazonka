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
-- Module      : Amazonka.SageMaker.Types.AppImageConfigDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AppImageConfigDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.KernelGatewayImageConfig

-- | The configuration for running a SageMaker image as a KernelGateway app.
--
-- /See:/ 'newAppImageConfigDetails' smart constructor.
data AppImageConfigDetails = AppImageConfigDetails'
  { -- | The Amazon Resource Name (ARN) of the AppImageConfig.
    appImageConfigArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the AppImageConfig. Must be unique to your account.
    appImageConfigName :: Prelude.Maybe Prelude.Text,
    -- | The configuration for the file system and kernels in the SageMaker
    -- image.
    kernelGatewayImageConfig :: Prelude.Maybe KernelGatewayImageConfig,
    -- | When the AppImageConfig was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | When the AppImageConfig was created.
    creationTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppImageConfigDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appImageConfigArn', 'appImageConfigDetails_appImageConfigArn' - The Amazon Resource Name (ARN) of the AppImageConfig.
--
-- 'appImageConfigName', 'appImageConfigDetails_appImageConfigName' - The name of the AppImageConfig. Must be unique to your account.
--
-- 'kernelGatewayImageConfig', 'appImageConfigDetails_kernelGatewayImageConfig' - The configuration for the file system and kernels in the SageMaker
-- image.
--
-- 'lastModifiedTime', 'appImageConfigDetails_lastModifiedTime' - When the AppImageConfig was last modified.
--
-- 'creationTime', 'appImageConfigDetails_creationTime' - When the AppImageConfig was created.
newAppImageConfigDetails ::
  AppImageConfigDetails
newAppImageConfigDetails =
  AppImageConfigDetails'
    { appImageConfigArn =
        Prelude.Nothing,
      appImageConfigName = Prelude.Nothing,
      kernelGatewayImageConfig = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the AppImageConfig.
appImageConfigDetails_appImageConfigArn :: Lens.Lens' AppImageConfigDetails (Prelude.Maybe Prelude.Text)
appImageConfigDetails_appImageConfigArn = Lens.lens (\AppImageConfigDetails' {appImageConfigArn} -> appImageConfigArn) (\s@AppImageConfigDetails' {} a -> s {appImageConfigArn = a} :: AppImageConfigDetails)

-- | The name of the AppImageConfig. Must be unique to your account.
appImageConfigDetails_appImageConfigName :: Lens.Lens' AppImageConfigDetails (Prelude.Maybe Prelude.Text)
appImageConfigDetails_appImageConfigName = Lens.lens (\AppImageConfigDetails' {appImageConfigName} -> appImageConfigName) (\s@AppImageConfigDetails' {} a -> s {appImageConfigName = a} :: AppImageConfigDetails)

-- | The configuration for the file system and kernels in the SageMaker
-- image.
appImageConfigDetails_kernelGatewayImageConfig :: Lens.Lens' AppImageConfigDetails (Prelude.Maybe KernelGatewayImageConfig)
appImageConfigDetails_kernelGatewayImageConfig = Lens.lens (\AppImageConfigDetails' {kernelGatewayImageConfig} -> kernelGatewayImageConfig) (\s@AppImageConfigDetails' {} a -> s {kernelGatewayImageConfig = a} :: AppImageConfigDetails)

-- | When the AppImageConfig was last modified.
appImageConfigDetails_lastModifiedTime :: Lens.Lens' AppImageConfigDetails (Prelude.Maybe Prelude.UTCTime)
appImageConfigDetails_lastModifiedTime = Lens.lens (\AppImageConfigDetails' {lastModifiedTime} -> lastModifiedTime) (\s@AppImageConfigDetails' {} a -> s {lastModifiedTime = a} :: AppImageConfigDetails) Prelude.. Lens.mapping Core._Time

-- | When the AppImageConfig was created.
appImageConfigDetails_creationTime :: Lens.Lens' AppImageConfigDetails (Prelude.Maybe Prelude.UTCTime)
appImageConfigDetails_creationTime = Lens.lens (\AppImageConfigDetails' {creationTime} -> creationTime) (\s@AppImageConfigDetails' {} a -> s {creationTime = a} :: AppImageConfigDetails) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AppImageConfigDetails where
  parseJSON =
    Core.withObject
      "AppImageConfigDetails"
      ( \x ->
          AppImageConfigDetails'
            Prelude.<$> (x Core..:? "AppImageConfigArn")
            Prelude.<*> (x Core..:? "AppImageConfigName")
            Prelude.<*> (x Core..:? "KernelGatewayImageConfig")
            Prelude.<*> (x Core..:? "LastModifiedTime")
            Prelude.<*> (x Core..:? "CreationTime")
      )

instance Prelude.Hashable AppImageConfigDetails where
  hashWithSalt _salt AppImageConfigDetails' {..} =
    _salt `Prelude.hashWithSalt` appImageConfigArn
      `Prelude.hashWithSalt` appImageConfigName
      `Prelude.hashWithSalt` kernelGatewayImageConfig
      `Prelude.hashWithSalt` lastModifiedTime
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData AppImageConfigDetails where
  rnf AppImageConfigDetails' {..} =
    Prelude.rnf appImageConfigArn
      `Prelude.seq` Prelude.rnf appImageConfigName
      `Prelude.seq` Prelude.rnf kernelGatewayImageConfig
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
