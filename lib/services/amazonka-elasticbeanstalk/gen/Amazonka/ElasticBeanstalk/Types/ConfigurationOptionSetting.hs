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
-- Module      : Amazonka.ElasticBeanstalk.Types.ConfigurationOptionSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Types.ConfigurationOptionSetting where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A specification identifying an individual configuration option along
-- with its current value. For a list of possible namespaces and option
-- values, see
-- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html Option Values>
-- in the /AWS Elastic Beanstalk Developer Guide/.
--
-- /See:/ 'newConfigurationOptionSetting' smart constructor.
data ConfigurationOptionSetting = ConfigurationOptionSetting'
  { -- | A unique resource name for the option setting. Use it for a time–based
    -- scaling configuration option.
    resourceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the configuration option.
    optionName :: Prelude.Maybe Prelude.Text,
    -- | A unique namespace that identifies the option\'s associated AWS
    -- resource.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The current value for the configuration option.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigurationOptionSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceName', 'configurationOptionSetting_resourceName' - A unique resource name for the option setting. Use it for a time–based
-- scaling configuration option.
--
-- 'optionName', 'configurationOptionSetting_optionName' - The name of the configuration option.
--
-- 'namespace', 'configurationOptionSetting_namespace' - A unique namespace that identifies the option\'s associated AWS
-- resource.
--
-- 'value', 'configurationOptionSetting_value' - The current value for the configuration option.
newConfigurationOptionSetting ::
  ConfigurationOptionSetting
newConfigurationOptionSetting =
  ConfigurationOptionSetting'
    { resourceName =
        Prelude.Nothing,
      optionName = Prelude.Nothing,
      namespace = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | A unique resource name for the option setting. Use it for a time–based
-- scaling configuration option.
configurationOptionSetting_resourceName :: Lens.Lens' ConfigurationOptionSetting (Prelude.Maybe Prelude.Text)
configurationOptionSetting_resourceName = Lens.lens (\ConfigurationOptionSetting' {resourceName} -> resourceName) (\s@ConfigurationOptionSetting' {} a -> s {resourceName = a} :: ConfigurationOptionSetting)

-- | The name of the configuration option.
configurationOptionSetting_optionName :: Lens.Lens' ConfigurationOptionSetting (Prelude.Maybe Prelude.Text)
configurationOptionSetting_optionName = Lens.lens (\ConfigurationOptionSetting' {optionName} -> optionName) (\s@ConfigurationOptionSetting' {} a -> s {optionName = a} :: ConfigurationOptionSetting)

-- | A unique namespace that identifies the option\'s associated AWS
-- resource.
configurationOptionSetting_namespace :: Lens.Lens' ConfigurationOptionSetting (Prelude.Maybe Prelude.Text)
configurationOptionSetting_namespace = Lens.lens (\ConfigurationOptionSetting' {namespace} -> namespace) (\s@ConfigurationOptionSetting' {} a -> s {namespace = a} :: ConfigurationOptionSetting)

-- | The current value for the configuration option.
configurationOptionSetting_value :: Lens.Lens' ConfigurationOptionSetting (Prelude.Maybe Prelude.Text)
configurationOptionSetting_value = Lens.lens (\ConfigurationOptionSetting' {value} -> value) (\s@ConfigurationOptionSetting' {} a -> s {value = a} :: ConfigurationOptionSetting)

instance Core.FromXML ConfigurationOptionSetting where
  parseXML x =
    ConfigurationOptionSetting'
      Prelude.<$> (x Core..@? "ResourceName")
      Prelude.<*> (x Core..@? "OptionName")
      Prelude.<*> (x Core..@? "Namespace")
      Prelude.<*> (x Core..@? "Value")

instance Prelude.Hashable ConfigurationOptionSetting where
  hashWithSalt _salt ConfigurationOptionSetting' {..} =
    _salt `Prelude.hashWithSalt` resourceName
      `Prelude.hashWithSalt` optionName
      `Prelude.hashWithSalt` namespace
      `Prelude.hashWithSalt` value

instance Prelude.NFData ConfigurationOptionSetting where
  rnf ConfigurationOptionSetting' {..} =
    Prelude.rnf resourceName
      `Prelude.seq` Prelude.rnf optionName
      `Prelude.seq` Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf value

instance Core.ToQuery ConfigurationOptionSetting where
  toQuery ConfigurationOptionSetting' {..} =
    Prelude.mconcat
      [ "ResourceName" Core.=: resourceName,
        "OptionName" Core.=: optionName,
        "Namespace" Core.=: namespace,
        "Value" Core.=: value
      ]
