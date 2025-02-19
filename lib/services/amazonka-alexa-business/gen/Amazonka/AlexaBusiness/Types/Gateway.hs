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
-- Module      : Amazonka.AlexaBusiness.Types.Gateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AlexaBusiness.Types.Gateway where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of the gateway.
--
-- /See:/ 'newGateway' smart constructor.
data Gateway = Gateway'
  { -- | The name of the gateway.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the gateway group that the gateway is associated to.
    gatewayGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the gateway.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The description of the gateway.
    description :: Prelude.Maybe Prelude.Text,
    -- | The software version of the gateway. The gateway automatically updates
    -- its software version during normal operation.
    softwareVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Gateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'gateway_name' - The name of the gateway.
--
-- 'gatewayGroupArn', 'gateway_gatewayGroupArn' - The ARN of the gateway group that the gateway is associated to.
--
-- 'arn', 'gateway_arn' - The ARN of the gateway.
--
-- 'description', 'gateway_description' - The description of the gateway.
--
-- 'softwareVersion', 'gateway_softwareVersion' - The software version of the gateway. The gateway automatically updates
-- its software version during normal operation.
newGateway ::
  Gateway
newGateway =
  Gateway'
    { name = Prelude.Nothing,
      gatewayGroupArn = Prelude.Nothing,
      arn = Prelude.Nothing,
      description = Prelude.Nothing,
      softwareVersion = Prelude.Nothing
    }

-- | The name of the gateway.
gateway_name :: Lens.Lens' Gateway (Prelude.Maybe Prelude.Text)
gateway_name = Lens.lens (\Gateway' {name} -> name) (\s@Gateway' {} a -> s {name = a} :: Gateway)

-- | The ARN of the gateway group that the gateway is associated to.
gateway_gatewayGroupArn :: Lens.Lens' Gateway (Prelude.Maybe Prelude.Text)
gateway_gatewayGroupArn = Lens.lens (\Gateway' {gatewayGroupArn} -> gatewayGroupArn) (\s@Gateway' {} a -> s {gatewayGroupArn = a} :: Gateway)

-- | The ARN of the gateway.
gateway_arn :: Lens.Lens' Gateway (Prelude.Maybe Prelude.Text)
gateway_arn = Lens.lens (\Gateway' {arn} -> arn) (\s@Gateway' {} a -> s {arn = a} :: Gateway)

-- | The description of the gateway.
gateway_description :: Lens.Lens' Gateway (Prelude.Maybe Prelude.Text)
gateway_description = Lens.lens (\Gateway' {description} -> description) (\s@Gateway' {} a -> s {description = a} :: Gateway)

-- | The software version of the gateway. The gateway automatically updates
-- its software version during normal operation.
gateway_softwareVersion :: Lens.Lens' Gateway (Prelude.Maybe Prelude.Text)
gateway_softwareVersion = Lens.lens (\Gateway' {softwareVersion} -> softwareVersion) (\s@Gateway' {} a -> s {softwareVersion = a} :: Gateway)

instance Core.FromJSON Gateway where
  parseJSON =
    Core.withObject
      "Gateway"
      ( \x ->
          Gateway'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "GatewayGroupArn")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "SoftwareVersion")
      )

instance Prelude.Hashable Gateway where
  hashWithSalt _salt Gateway' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` gatewayGroupArn
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` softwareVersion

instance Prelude.NFData Gateway where
  rnf Gateway' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf gatewayGroupArn
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf softwareVersion
