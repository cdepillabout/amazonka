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
-- Module      : Amazonka.RDS.Types.OptionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.OptionConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types.OptionSetting

-- | A list of all available options
--
-- /See:/ 'newOptionConfiguration' smart constructor.
data OptionConfiguration = OptionConfiguration'
  { -- | The optional port for the option.
    port :: Prelude.Maybe Prelude.Int,
    -- | A list of DBSecurityGroupMembership name strings used for this option.
    dbSecurityGroupMemberships :: Prelude.Maybe [Prelude.Text],
    -- | The version for the option.
    optionVersion :: Prelude.Maybe Prelude.Text,
    -- | A list of VpcSecurityGroupMembership name strings used for this option.
    vpcSecurityGroupMemberships :: Prelude.Maybe [Prelude.Text],
    -- | The option settings to include in an option group.
    optionSettings :: Prelude.Maybe [OptionSetting],
    -- | The configuration of options to include in a group.
    optionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OptionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'optionConfiguration_port' - The optional port for the option.
--
-- 'dbSecurityGroupMemberships', 'optionConfiguration_dbSecurityGroupMemberships' - A list of DBSecurityGroupMembership name strings used for this option.
--
-- 'optionVersion', 'optionConfiguration_optionVersion' - The version for the option.
--
-- 'vpcSecurityGroupMemberships', 'optionConfiguration_vpcSecurityGroupMemberships' - A list of VpcSecurityGroupMembership name strings used for this option.
--
-- 'optionSettings', 'optionConfiguration_optionSettings' - The option settings to include in an option group.
--
-- 'optionName', 'optionConfiguration_optionName' - The configuration of options to include in a group.
newOptionConfiguration ::
  -- | 'optionName'
  Prelude.Text ->
  OptionConfiguration
newOptionConfiguration pOptionName_ =
  OptionConfiguration'
    { port = Prelude.Nothing,
      dbSecurityGroupMemberships = Prelude.Nothing,
      optionVersion = Prelude.Nothing,
      vpcSecurityGroupMemberships = Prelude.Nothing,
      optionSettings = Prelude.Nothing,
      optionName = pOptionName_
    }

-- | The optional port for the option.
optionConfiguration_port :: Lens.Lens' OptionConfiguration (Prelude.Maybe Prelude.Int)
optionConfiguration_port = Lens.lens (\OptionConfiguration' {port} -> port) (\s@OptionConfiguration' {} a -> s {port = a} :: OptionConfiguration)

-- | A list of DBSecurityGroupMembership name strings used for this option.
optionConfiguration_dbSecurityGroupMemberships :: Lens.Lens' OptionConfiguration (Prelude.Maybe [Prelude.Text])
optionConfiguration_dbSecurityGroupMemberships = Lens.lens (\OptionConfiguration' {dbSecurityGroupMemberships} -> dbSecurityGroupMemberships) (\s@OptionConfiguration' {} a -> s {dbSecurityGroupMemberships = a} :: OptionConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The version for the option.
optionConfiguration_optionVersion :: Lens.Lens' OptionConfiguration (Prelude.Maybe Prelude.Text)
optionConfiguration_optionVersion = Lens.lens (\OptionConfiguration' {optionVersion} -> optionVersion) (\s@OptionConfiguration' {} a -> s {optionVersion = a} :: OptionConfiguration)

-- | A list of VpcSecurityGroupMembership name strings used for this option.
optionConfiguration_vpcSecurityGroupMemberships :: Lens.Lens' OptionConfiguration (Prelude.Maybe [Prelude.Text])
optionConfiguration_vpcSecurityGroupMemberships = Lens.lens (\OptionConfiguration' {vpcSecurityGroupMemberships} -> vpcSecurityGroupMemberships) (\s@OptionConfiguration' {} a -> s {vpcSecurityGroupMemberships = a} :: OptionConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The option settings to include in an option group.
optionConfiguration_optionSettings :: Lens.Lens' OptionConfiguration (Prelude.Maybe [OptionSetting])
optionConfiguration_optionSettings = Lens.lens (\OptionConfiguration' {optionSettings} -> optionSettings) (\s@OptionConfiguration' {} a -> s {optionSettings = a} :: OptionConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The configuration of options to include in a group.
optionConfiguration_optionName :: Lens.Lens' OptionConfiguration Prelude.Text
optionConfiguration_optionName = Lens.lens (\OptionConfiguration' {optionName} -> optionName) (\s@OptionConfiguration' {} a -> s {optionName = a} :: OptionConfiguration)

instance Prelude.Hashable OptionConfiguration where
  hashWithSalt _salt OptionConfiguration' {..} =
    _salt `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` dbSecurityGroupMemberships
      `Prelude.hashWithSalt` optionVersion
      `Prelude.hashWithSalt` vpcSecurityGroupMemberships
      `Prelude.hashWithSalt` optionSettings
      `Prelude.hashWithSalt` optionName

instance Prelude.NFData OptionConfiguration where
  rnf OptionConfiguration' {..} =
    Prelude.rnf port
      `Prelude.seq` Prelude.rnf dbSecurityGroupMemberships
      `Prelude.seq` Prelude.rnf optionVersion
      `Prelude.seq` Prelude.rnf vpcSecurityGroupMemberships
      `Prelude.seq` Prelude.rnf optionSettings
      `Prelude.seq` Prelude.rnf optionName

instance Core.ToQuery OptionConfiguration where
  toQuery OptionConfiguration' {..} =
    Prelude.mconcat
      [ "Port" Core.=: port,
        "DBSecurityGroupMemberships"
          Core.=: Core.toQuery
            ( Core.toQueryList "DBSecurityGroupName"
                Prelude.<$> dbSecurityGroupMemberships
            ),
        "OptionVersion" Core.=: optionVersion,
        "VpcSecurityGroupMemberships"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupMemberships
            ),
        "OptionSettings"
          Core.=: Core.toQuery
            ( Core.toQueryList "OptionSetting"
                Prelude.<$> optionSettings
            ),
        "OptionName" Core.=: optionName
      ]
