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
-- Module      : Amazonka.Lightsail.Types.ContainerServiceHealthCheckConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.ContainerServiceHealthCheckConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the health check configuration of an Amazon Lightsail
-- container service.
--
-- /See:/ 'newContainerServiceHealthCheckConfig' smart constructor.
data ContainerServiceHealthCheckConfig = ContainerServiceHealthCheckConfig'
  { -- | The amount of time, in seconds, during which no response means a failed
    -- health check. You can specify between 2 and 60 seconds. The default
    -- value is @2@.
    timeoutSeconds :: Prelude.Maybe Prelude.Int,
    -- | The approximate interval, in seconds, between health checks of an
    -- individual container. You can specify between 5 and 300 seconds. The
    -- default value is @5@.
    intervalSeconds :: Prelude.Maybe Prelude.Int,
    -- | The path on the container on which to perform the health check. The
    -- default value is @\/@.
    path :: Prelude.Maybe Prelude.Text,
    -- | The number of consecutive health checks successes required before moving
    -- the container to the @Healthy@ state. The default value is @2@.
    healthyThreshold :: Prelude.Maybe Prelude.Int,
    -- | The number of consecutive health check failures required before moving
    -- the container to the @Unhealthy@ state. The default value is @2@.
    unhealthyThreshold :: Prelude.Maybe Prelude.Int,
    -- | The HTTP codes to use when checking for a successful response from a
    -- container. You can specify values between @200@ and @499@. You can
    -- specify multiple values (for example, @200,202@) or a range of values
    -- (for example, @200-299@).
    successCodes :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContainerServiceHealthCheckConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeoutSeconds', 'containerServiceHealthCheckConfig_timeoutSeconds' - The amount of time, in seconds, during which no response means a failed
-- health check. You can specify between 2 and 60 seconds. The default
-- value is @2@.
--
-- 'intervalSeconds', 'containerServiceHealthCheckConfig_intervalSeconds' - The approximate interval, in seconds, between health checks of an
-- individual container. You can specify between 5 and 300 seconds. The
-- default value is @5@.
--
-- 'path', 'containerServiceHealthCheckConfig_path' - The path on the container on which to perform the health check. The
-- default value is @\/@.
--
-- 'healthyThreshold', 'containerServiceHealthCheckConfig_healthyThreshold' - The number of consecutive health checks successes required before moving
-- the container to the @Healthy@ state. The default value is @2@.
--
-- 'unhealthyThreshold', 'containerServiceHealthCheckConfig_unhealthyThreshold' - The number of consecutive health check failures required before moving
-- the container to the @Unhealthy@ state. The default value is @2@.
--
-- 'successCodes', 'containerServiceHealthCheckConfig_successCodes' - The HTTP codes to use when checking for a successful response from a
-- container. You can specify values between @200@ and @499@. You can
-- specify multiple values (for example, @200,202@) or a range of values
-- (for example, @200-299@).
newContainerServiceHealthCheckConfig ::
  ContainerServiceHealthCheckConfig
newContainerServiceHealthCheckConfig =
  ContainerServiceHealthCheckConfig'
    { timeoutSeconds =
        Prelude.Nothing,
      intervalSeconds = Prelude.Nothing,
      path = Prelude.Nothing,
      healthyThreshold = Prelude.Nothing,
      unhealthyThreshold = Prelude.Nothing,
      successCodes = Prelude.Nothing
    }

-- | The amount of time, in seconds, during which no response means a failed
-- health check. You can specify between 2 and 60 seconds. The default
-- value is @2@.
containerServiceHealthCheckConfig_timeoutSeconds :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Int)
containerServiceHealthCheckConfig_timeoutSeconds = Lens.lens (\ContainerServiceHealthCheckConfig' {timeoutSeconds} -> timeoutSeconds) (\s@ContainerServiceHealthCheckConfig' {} a -> s {timeoutSeconds = a} :: ContainerServiceHealthCheckConfig)

-- | The approximate interval, in seconds, between health checks of an
-- individual container. You can specify between 5 and 300 seconds. The
-- default value is @5@.
containerServiceHealthCheckConfig_intervalSeconds :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Int)
containerServiceHealthCheckConfig_intervalSeconds = Lens.lens (\ContainerServiceHealthCheckConfig' {intervalSeconds} -> intervalSeconds) (\s@ContainerServiceHealthCheckConfig' {} a -> s {intervalSeconds = a} :: ContainerServiceHealthCheckConfig)

-- | The path on the container on which to perform the health check. The
-- default value is @\/@.
containerServiceHealthCheckConfig_path :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Text)
containerServiceHealthCheckConfig_path = Lens.lens (\ContainerServiceHealthCheckConfig' {path} -> path) (\s@ContainerServiceHealthCheckConfig' {} a -> s {path = a} :: ContainerServiceHealthCheckConfig)

-- | The number of consecutive health checks successes required before moving
-- the container to the @Healthy@ state. The default value is @2@.
containerServiceHealthCheckConfig_healthyThreshold :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Int)
containerServiceHealthCheckConfig_healthyThreshold = Lens.lens (\ContainerServiceHealthCheckConfig' {healthyThreshold} -> healthyThreshold) (\s@ContainerServiceHealthCheckConfig' {} a -> s {healthyThreshold = a} :: ContainerServiceHealthCheckConfig)

-- | The number of consecutive health check failures required before moving
-- the container to the @Unhealthy@ state. The default value is @2@.
containerServiceHealthCheckConfig_unhealthyThreshold :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Int)
containerServiceHealthCheckConfig_unhealthyThreshold = Lens.lens (\ContainerServiceHealthCheckConfig' {unhealthyThreshold} -> unhealthyThreshold) (\s@ContainerServiceHealthCheckConfig' {} a -> s {unhealthyThreshold = a} :: ContainerServiceHealthCheckConfig)

-- | The HTTP codes to use when checking for a successful response from a
-- container. You can specify values between @200@ and @499@. You can
-- specify multiple values (for example, @200,202@) or a range of values
-- (for example, @200-299@).
containerServiceHealthCheckConfig_successCodes :: Lens.Lens' ContainerServiceHealthCheckConfig (Prelude.Maybe Prelude.Text)
containerServiceHealthCheckConfig_successCodes = Lens.lens (\ContainerServiceHealthCheckConfig' {successCodes} -> successCodes) (\s@ContainerServiceHealthCheckConfig' {} a -> s {successCodes = a} :: ContainerServiceHealthCheckConfig)

instance
  Core.FromJSON
    ContainerServiceHealthCheckConfig
  where
  parseJSON =
    Core.withObject
      "ContainerServiceHealthCheckConfig"
      ( \x ->
          ContainerServiceHealthCheckConfig'
            Prelude.<$> (x Core..:? "timeoutSeconds")
            Prelude.<*> (x Core..:? "intervalSeconds")
            Prelude.<*> (x Core..:? "path")
            Prelude.<*> (x Core..:? "healthyThreshold")
            Prelude.<*> (x Core..:? "unhealthyThreshold")
            Prelude.<*> (x Core..:? "successCodes")
      )

instance
  Prelude.Hashable
    ContainerServiceHealthCheckConfig
  where
  hashWithSalt
    _salt
    ContainerServiceHealthCheckConfig' {..} =
      _salt `Prelude.hashWithSalt` timeoutSeconds
        `Prelude.hashWithSalt` intervalSeconds
        `Prelude.hashWithSalt` path
        `Prelude.hashWithSalt` healthyThreshold
        `Prelude.hashWithSalt` unhealthyThreshold
        `Prelude.hashWithSalt` successCodes

instance
  Prelude.NFData
    ContainerServiceHealthCheckConfig
  where
  rnf ContainerServiceHealthCheckConfig' {..} =
    Prelude.rnf timeoutSeconds
      `Prelude.seq` Prelude.rnf intervalSeconds
      `Prelude.seq` Prelude.rnf path
      `Prelude.seq` Prelude.rnf healthyThreshold
      `Prelude.seq` Prelude.rnf unhealthyThreshold
      `Prelude.seq` Prelude.rnf successCodes

instance
  Core.ToJSON
    ContainerServiceHealthCheckConfig
  where
  toJSON ContainerServiceHealthCheckConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("timeoutSeconds" Core..=)
              Prelude.<$> timeoutSeconds,
            ("intervalSeconds" Core..=)
              Prelude.<$> intervalSeconds,
            ("path" Core..=) Prelude.<$> path,
            ("healthyThreshold" Core..=)
              Prelude.<$> healthyThreshold,
            ("unhealthyThreshold" Core..=)
              Prelude.<$> unhealthyThreshold,
            ("successCodes" Core..=) Prelude.<$> successCodes
          ]
      )
