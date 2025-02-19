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
-- Module      : Amazonka.AlexaBusiness.Types.GatewayGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AlexaBusiness.Types.GatewayGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of the gateway group.
--
-- /See:/ 'newGatewayGroup' smart constructor.
data GatewayGroup = GatewayGroup'
  { -- | The name of the gateway group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the gateway group.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The description of the gateway group.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GatewayGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'gatewayGroup_name' - The name of the gateway group.
--
-- 'arn', 'gatewayGroup_arn' - The ARN of the gateway group.
--
-- 'description', 'gatewayGroup_description' - The description of the gateway group.
newGatewayGroup ::
  GatewayGroup
newGatewayGroup =
  GatewayGroup'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The name of the gateway group.
gatewayGroup_name :: Lens.Lens' GatewayGroup (Prelude.Maybe Prelude.Text)
gatewayGroup_name = Lens.lens (\GatewayGroup' {name} -> name) (\s@GatewayGroup' {} a -> s {name = a} :: GatewayGroup)

-- | The ARN of the gateway group.
gatewayGroup_arn :: Lens.Lens' GatewayGroup (Prelude.Maybe Prelude.Text)
gatewayGroup_arn = Lens.lens (\GatewayGroup' {arn} -> arn) (\s@GatewayGroup' {} a -> s {arn = a} :: GatewayGroup)

-- | The description of the gateway group.
gatewayGroup_description :: Lens.Lens' GatewayGroup (Prelude.Maybe Prelude.Text)
gatewayGroup_description = Lens.lens (\GatewayGroup' {description} -> description) (\s@GatewayGroup' {} a -> s {description = a} :: GatewayGroup)

instance Core.FromJSON GatewayGroup where
  parseJSON =
    Core.withObject
      "GatewayGroup"
      ( \x ->
          GatewayGroup'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable GatewayGroup where
  hashWithSalt _salt GatewayGroup' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` description

instance Prelude.NFData GatewayGroup where
  rnf GatewayGroup' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
