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
-- Module      : Amazonka.ImageBuilder.Types.AdditionalInstanceConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImageBuilder.Types.AdditionalInstanceConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types.SystemsManagerAgent
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | In addition to your infrastruction configuration, these settings provide
-- an extra layer of control over your build instances. For instances where
-- Image Builder installs the Systems Manager agent, you can choose whether
-- to keep it for the AMI that you create. You can also specify commands to
-- run on launch for all of your build instances.
--
-- /See:/ 'newAdditionalInstanceConfiguration' smart constructor.
data AdditionalInstanceConfiguration = AdditionalInstanceConfiguration'
  { -- | Use this property to provide commands or a command script to run when
    -- you launch your build instance.
    --
    -- The userDataOverride property replaces any commands that Image Builder
    -- might have added to ensure that Systems Manager is installed on your
    -- Linux build instance. If you override the user data, make sure that you
    -- add commands to install Systems Manager, if it is not pre-installed on
    -- your base image.
    --
    -- The user data is always base 64 encoded. For example, the following
    -- commands are encoded as
    -- @IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$@:
    --
    -- /#!\/bin\/bash/
    --
    -- mkdir -p \/var\/bb\/
    --
    -- touch \/var
    userDataOverride :: Prelude.Maybe Prelude.Text,
    -- | Contains settings for the Systems Manager agent on your build instance.
    systemsManagerAgent :: Prelude.Maybe SystemsManagerAgent
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdditionalInstanceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userDataOverride', 'additionalInstanceConfiguration_userDataOverride' - Use this property to provide commands or a command script to run when
-- you launch your build instance.
--
-- The userDataOverride property replaces any commands that Image Builder
-- might have added to ensure that Systems Manager is installed on your
-- Linux build instance. If you override the user data, make sure that you
-- add commands to install Systems Manager, if it is not pre-installed on
-- your base image.
--
-- The user data is always base 64 encoded. For example, the following
-- commands are encoded as
-- @IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$@:
--
-- /#!\/bin\/bash/
--
-- mkdir -p \/var\/bb\/
--
-- touch \/var
--
-- 'systemsManagerAgent', 'additionalInstanceConfiguration_systemsManagerAgent' - Contains settings for the Systems Manager agent on your build instance.
newAdditionalInstanceConfiguration ::
  AdditionalInstanceConfiguration
newAdditionalInstanceConfiguration =
  AdditionalInstanceConfiguration'
    { userDataOverride =
        Prelude.Nothing,
      systemsManagerAgent = Prelude.Nothing
    }

-- | Use this property to provide commands or a command script to run when
-- you launch your build instance.
--
-- The userDataOverride property replaces any commands that Image Builder
-- might have added to ensure that Systems Manager is installed on your
-- Linux build instance. If you override the user data, make sure that you
-- add commands to install Systems Manager, if it is not pre-installed on
-- your base image.
--
-- The user data is always base 64 encoded. For example, the following
-- commands are encoded as
-- @IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$@:
--
-- /#!\/bin\/bash/
--
-- mkdir -p \/var\/bb\/
--
-- touch \/var
additionalInstanceConfiguration_userDataOverride :: Lens.Lens' AdditionalInstanceConfiguration (Prelude.Maybe Prelude.Text)
additionalInstanceConfiguration_userDataOverride = Lens.lens (\AdditionalInstanceConfiguration' {userDataOverride} -> userDataOverride) (\s@AdditionalInstanceConfiguration' {} a -> s {userDataOverride = a} :: AdditionalInstanceConfiguration)

-- | Contains settings for the Systems Manager agent on your build instance.
additionalInstanceConfiguration_systemsManagerAgent :: Lens.Lens' AdditionalInstanceConfiguration (Prelude.Maybe SystemsManagerAgent)
additionalInstanceConfiguration_systemsManagerAgent = Lens.lens (\AdditionalInstanceConfiguration' {systemsManagerAgent} -> systemsManagerAgent) (\s@AdditionalInstanceConfiguration' {} a -> s {systemsManagerAgent = a} :: AdditionalInstanceConfiguration)

instance
  Core.FromJSON
    AdditionalInstanceConfiguration
  where
  parseJSON =
    Core.withObject
      "AdditionalInstanceConfiguration"
      ( \x ->
          AdditionalInstanceConfiguration'
            Prelude.<$> (x Core..:? "userDataOverride")
            Prelude.<*> (x Core..:? "systemsManagerAgent")
      )

instance
  Prelude.Hashable
    AdditionalInstanceConfiguration
  where
  hashWithSalt
    _salt
    AdditionalInstanceConfiguration' {..} =
      _salt `Prelude.hashWithSalt` userDataOverride
        `Prelude.hashWithSalt` systemsManagerAgent

instance
  Prelude.NFData
    AdditionalInstanceConfiguration
  where
  rnf AdditionalInstanceConfiguration' {..} =
    Prelude.rnf userDataOverride
      `Prelude.seq` Prelude.rnf systemsManagerAgent

instance Core.ToJSON AdditionalInstanceConfiguration where
  toJSON AdditionalInstanceConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("userDataOverride" Core..=)
              Prelude.<$> userDataOverride,
            ("systemsManagerAgent" Core..=)
              Prelude.<$> systemsManagerAgent
          ]
      )
