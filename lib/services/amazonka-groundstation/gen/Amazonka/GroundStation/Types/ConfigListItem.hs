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
-- Module      : Amazonka.GroundStation.Types.ConfigListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.ConfigListItem where

import qualified Amazonka.Core as Core
import Amazonka.GroundStation.Types.ConfigCapabilityType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An item in a list of @Config@ objects.
--
-- /See:/ 'newConfigListItem' smart constructor.
data ConfigListItem = ConfigListItem'
  { -- | Name of a @Config@.
    name :: Prelude.Maybe Prelude.Text,
    -- | UUID of a @Config@.
    configId :: Prelude.Maybe Prelude.Text,
    -- | Type of a @Config@.
    configType :: Prelude.Maybe ConfigCapabilityType,
    -- | ARN of a @Config@.
    configArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigListItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'configListItem_name' - Name of a @Config@.
--
-- 'configId', 'configListItem_configId' - UUID of a @Config@.
--
-- 'configType', 'configListItem_configType' - Type of a @Config@.
--
-- 'configArn', 'configListItem_configArn' - ARN of a @Config@.
newConfigListItem ::
  ConfigListItem
newConfigListItem =
  ConfigListItem'
    { name = Prelude.Nothing,
      configId = Prelude.Nothing,
      configType = Prelude.Nothing,
      configArn = Prelude.Nothing
    }

-- | Name of a @Config@.
configListItem_name :: Lens.Lens' ConfigListItem (Prelude.Maybe Prelude.Text)
configListItem_name = Lens.lens (\ConfigListItem' {name} -> name) (\s@ConfigListItem' {} a -> s {name = a} :: ConfigListItem)

-- | UUID of a @Config@.
configListItem_configId :: Lens.Lens' ConfigListItem (Prelude.Maybe Prelude.Text)
configListItem_configId = Lens.lens (\ConfigListItem' {configId} -> configId) (\s@ConfigListItem' {} a -> s {configId = a} :: ConfigListItem)

-- | Type of a @Config@.
configListItem_configType :: Lens.Lens' ConfigListItem (Prelude.Maybe ConfigCapabilityType)
configListItem_configType = Lens.lens (\ConfigListItem' {configType} -> configType) (\s@ConfigListItem' {} a -> s {configType = a} :: ConfigListItem)

-- | ARN of a @Config@.
configListItem_configArn :: Lens.Lens' ConfigListItem (Prelude.Maybe Prelude.Text)
configListItem_configArn = Lens.lens (\ConfigListItem' {configArn} -> configArn) (\s@ConfigListItem' {} a -> s {configArn = a} :: ConfigListItem)

instance Core.FromJSON ConfigListItem where
  parseJSON =
    Core.withObject
      "ConfigListItem"
      ( \x ->
          ConfigListItem'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "configId")
            Prelude.<*> (x Core..:? "configType")
            Prelude.<*> (x Core..:? "configArn")
      )

instance Prelude.Hashable ConfigListItem where
  hashWithSalt _salt ConfigListItem' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` configId
      `Prelude.hashWithSalt` configType
      `Prelude.hashWithSalt` configArn

instance Prelude.NFData ConfigListItem where
  rnf ConfigListItem' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf configId
      `Prelude.seq` Prelude.rnf configType
      `Prelude.seq` Prelude.rnf configArn
