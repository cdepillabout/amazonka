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
-- Module      : Amazonka.SageMaker.Types.KernelGatewayAppSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.KernelGatewayAppSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.CustomImage
import Amazonka.SageMaker.Types.ResourceSpec

-- | The KernelGateway app settings.
--
-- /See:/ 'newKernelGatewayAppSettings' smart constructor.
data KernelGatewayAppSettings = KernelGatewayAppSettings'
  { -- | The Amazon Resource Name (ARN) of the Lifecycle Configurations attached
    -- to the the user profile or domain.
    --
    -- To remove a Lifecycle Config, you must set @LifecycleConfigArns@ to an
    -- empty list.
    lifecycleConfigArns :: Prelude.Maybe [Prelude.Text],
    -- | The default instance type and the Amazon Resource Name (ARN) of the
    -- default SageMaker image used by the KernelGateway app.
    --
    -- The Amazon SageMaker Studio UI does not use the default instance type
    -- value set here. The default instance type set here is used when Apps are
    -- created using the Amazon Web Services Command Line Interface or Amazon
    -- Web Services CloudFormation and the instance type parameter value is not
    -- passed.
    defaultResourceSpec :: Prelude.Maybe ResourceSpec,
    -- | A list of custom SageMaker images that are configured to run as a
    -- KernelGateway app.
    customImages :: Prelude.Maybe [CustomImage]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KernelGatewayAppSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lifecycleConfigArns', 'kernelGatewayAppSettings_lifecycleConfigArns' - The Amazon Resource Name (ARN) of the Lifecycle Configurations attached
-- to the the user profile or domain.
--
-- To remove a Lifecycle Config, you must set @LifecycleConfigArns@ to an
-- empty list.
--
-- 'defaultResourceSpec', 'kernelGatewayAppSettings_defaultResourceSpec' - The default instance type and the Amazon Resource Name (ARN) of the
-- default SageMaker image used by the KernelGateway app.
--
-- The Amazon SageMaker Studio UI does not use the default instance type
-- value set here. The default instance type set here is used when Apps are
-- created using the Amazon Web Services Command Line Interface or Amazon
-- Web Services CloudFormation and the instance type parameter value is not
-- passed.
--
-- 'customImages', 'kernelGatewayAppSettings_customImages' - A list of custom SageMaker images that are configured to run as a
-- KernelGateway app.
newKernelGatewayAppSettings ::
  KernelGatewayAppSettings
newKernelGatewayAppSettings =
  KernelGatewayAppSettings'
    { lifecycleConfigArns =
        Prelude.Nothing,
      defaultResourceSpec = Prelude.Nothing,
      customImages = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the Lifecycle Configurations attached
-- to the the user profile or domain.
--
-- To remove a Lifecycle Config, you must set @LifecycleConfigArns@ to an
-- empty list.
kernelGatewayAppSettings_lifecycleConfigArns :: Lens.Lens' KernelGatewayAppSettings (Prelude.Maybe [Prelude.Text])
kernelGatewayAppSettings_lifecycleConfigArns = Lens.lens (\KernelGatewayAppSettings' {lifecycleConfigArns} -> lifecycleConfigArns) (\s@KernelGatewayAppSettings' {} a -> s {lifecycleConfigArns = a} :: KernelGatewayAppSettings) Prelude.. Lens.mapping Lens.coerced

-- | The default instance type and the Amazon Resource Name (ARN) of the
-- default SageMaker image used by the KernelGateway app.
--
-- The Amazon SageMaker Studio UI does not use the default instance type
-- value set here. The default instance type set here is used when Apps are
-- created using the Amazon Web Services Command Line Interface or Amazon
-- Web Services CloudFormation and the instance type parameter value is not
-- passed.
kernelGatewayAppSettings_defaultResourceSpec :: Lens.Lens' KernelGatewayAppSettings (Prelude.Maybe ResourceSpec)
kernelGatewayAppSettings_defaultResourceSpec = Lens.lens (\KernelGatewayAppSettings' {defaultResourceSpec} -> defaultResourceSpec) (\s@KernelGatewayAppSettings' {} a -> s {defaultResourceSpec = a} :: KernelGatewayAppSettings)

-- | A list of custom SageMaker images that are configured to run as a
-- KernelGateway app.
kernelGatewayAppSettings_customImages :: Lens.Lens' KernelGatewayAppSettings (Prelude.Maybe [CustomImage])
kernelGatewayAppSettings_customImages = Lens.lens (\KernelGatewayAppSettings' {customImages} -> customImages) (\s@KernelGatewayAppSettings' {} a -> s {customImages = a} :: KernelGatewayAppSettings) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON KernelGatewayAppSettings where
  parseJSON =
    Core.withObject
      "KernelGatewayAppSettings"
      ( \x ->
          KernelGatewayAppSettings'
            Prelude.<$> ( x Core..:? "LifecycleConfigArns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "DefaultResourceSpec")
            Prelude.<*> (x Core..:? "CustomImages" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable KernelGatewayAppSettings where
  hashWithSalt _salt KernelGatewayAppSettings' {..} =
    _salt `Prelude.hashWithSalt` lifecycleConfigArns
      `Prelude.hashWithSalt` defaultResourceSpec
      `Prelude.hashWithSalt` customImages

instance Prelude.NFData KernelGatewayAppSettings where
  rnf KernelGatewayAppSettings' {..} =
    Prelude.rnf lifecycleConfigArns
      `Prelude.seq` Prelude.rnf defaultResourceSpec
      `Prelude.seq` Prelude.rnf customImages

instance Core.ToJSON KernelGatewayAppSettings where
  toJSON KernelGatewayAppSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LifecycleConfigArns" Core..=)
              Prelude.<$> lifecycleConfigArns,
            ("DefaultResourceSpec" Core..=)
              Prelude.<$> defaultResourceSpec,
            ("CustomImages" Core..=) Prelude.<$> customImages
          ]
      )
