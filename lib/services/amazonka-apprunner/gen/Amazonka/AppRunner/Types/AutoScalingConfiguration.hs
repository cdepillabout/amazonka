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
-- Module      : Amazonka.AppRunner.Types.AutoScalingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppRunner.Types.AutoScalingConfiguration where

import Amazonka.AppRunner.Types.AutoScalingConfigurationStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an App Runner automatic scaling configuration resource.
--
-- A higher @MinSize@ increases the spread of your App Runner service over
-- more Availability Zones in the Amazon Web Services Region. The tradeoff
-- is a higher minimal cost.
--
-- A lower @MaxSize@ controls your cost. The tradeoff is lower
-- responsiveness during peak demand.
--
-- Multiple revisions of a configuration might have the same
-- @AutoScalingConfigurationName@ and different
-- @AutoScalingConfigurationRevision@ values.
--
-- /See:/ 'newAutoScalingConfiguration' smart constructor.
data AutoScalingConfiguration = AutoScalingConfiguration'
  { -- | The current state of the auto scaling configuration. If the status of a
    -- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
    -- Inactive configuration revisions are permanently removed some time after
    -- they are deleted.
    status :: Prelude.Maybe AutoScalingConfigurationStatus,
    -- | The time when the auto scaling configuration was deleted. It\'s in Unix
    -- time stamp format.
    deletedAt :: Prelude.Maybe Core.POSIX,
    -- | It\'s set to @true@ for the configuration with the highest @Revision@
    -- among all configurations that share the same
    -- @AutoScalingConfigurationName@. It\'s set to @false@ otherwise.
    latest :: Prelude.Maybe Prelude.Bool,
    -- | The customer-provided auto scaling configuration name. It can be used in
    -- multiple revisions of a configuration.
    autoScalingConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The minimum number of instances that App Runner provisions for a
    -- service. The service always has at least @MinSize@ provisioned
    -- instances. Some of them actively serve traffic. The rest of them
    -- (provisioned and inactive instances) are a cost-effective compute
    -- capacity reserve and are ready to be quickly activated. You pay for
    -- memory usage of all the provisioned instances. You pay for CPU usage of
    -- only the active subset.
    --
    -- App Runner temporarily doubles the number of provisioned instances
    -- during deployments, to maintain the same capacity for both old and new
    -- code.
    minSize :: Prelude.Maybe Prelude.Int,
    -- | The maximum number of concurrent requests that an instance processes. If
    -- the number of concurrent requests exceeds this limit, App Runner scales
    -- the service up.
    maxConcurrency :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of this auto scaling configuration.
    autoScalingConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of instances that a service scales up to. At most
    -- @MaxSize@ instances actively serve traffic for your service.
    maxSize :: Prelude.Maybe Prelude.Int,
    -- | The revision of this auto scaling configuration. It\'s unique among all
    -- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
    -- @AutoScalingConfigurationName@.
    autoScalingConfigurationRevision :: Prelude.Maybe Prelude.Int,
    -- | The time when the auto scaling configuration was created. It\'s in Unix
    -- time stamp format.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'autoScalingConfiguration_status' - The current state of the auto scaling configuration. If the status of a
-- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
-- Inactive configuration revisions are permanently removed some time after
-- they are deleted.
--
-- 'deletedAt', 'autoScalingConfiguration_deletedAt' - The time when the auto scaling configuration was deleted. It\'s in Unix
-- time stamp format.
--
-- 'latest', 'autoScalingConfiguration_latest' - It\'s set to @true@ for the configuration with the highest @Revision@
-- among all configurations that share the same
-- @AutoScalingConfigurationName@. It\'s set to @false@ otherwise.
--
-- 'autoScalingConfigurationName', 'autoScalingConfiguration_autoScalingConfigurationName' - The customer-provided auto scaling configuration name. It can be used in
-- multiple revisions of a configuration.
--
-- 'minSize', 'autoScalingConfiguration_minSize' - The minimum number of instances that App Runner provisions for a
-- service. The service always has at least @MinSize@ provisioned
-- instances. Some of them actively serve traffic. The rest of them
-- (provisioned and inactive instances) are a cost-effective compute
-- capacity reserve and are ready to be quickly activated. You pay for
-- memory usage of all the provisioned instances. You pay for CPU usage of
-- only the active subset.
--
-- App Runner temporarily doubles the number of provisioned instances
-- during deployments, to maintain the same capacity for both old and new
-- code.
--
-- 'maxConcurrency', 'autoScalingConfiguration_maxConcurrency' - The maximum number of concurrent requests that an instance processes. If
-- the number of concurrent requests exceeds this limit, App Runner scales
-- the service up.
--
-- 'autoScalingConfigurationArn', 'autoScalingConfiguration_autoScalingConfigurationArn' - The Amazon Resource Name (ARN) of this auto scaling configuration.
--
-- 'maxSize', 'autoScalingConfiguration_maxSize' - The maximum number of instances that a service scales up to. At most
-- @MaxSize@ instances actively serve traffic for your service.
--
-- 'autoScalingConfigurationRevision', 'autoScalingConfiguration_autoScalingConfigurationRevision' - The revision of this auto scaling configuration. It\'s unique among all
-- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
-- @AutoScalingConfigurationName@.
--
-- 'createdAt', 'autoScalingConfiguration_createdAt' - The time when the auto scaling configuration was created. It\'s in Unix
-- time stamp format.
newAutoScalingConfiguration ::
  AutoScalingConfiguration
newAutoScalingConfiguration =
  AutoScalingConfiguration'
    { status = Prelude.Nothing,
      deletedAt = Prelude.Nothing,
      latest = Prelude.Nothing,
      autoScalingConfigurationName = Prelude.Nothing,
      minSize = Prelude.Nothing,
      maxConcurrency = Prelude.Nothing,
      autoScalingConfigurationArn = Prelude.Nothing,
      maxSize = Prelude.Nothing,
      autoScalingConfigurationRevision =
        Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The current state of the auto scaling configuration. If the status of a
-- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
-- Inactive configuration revisions are permanently removed some time after
-- they are deleted.
autoScalingConfiguration_status :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe AutoScalingConfigurationStatus)
autoScalingConfiguration_status = Lens.lens (\AutoScalingConfiguration' {status} -> status) (\s@AutoScalingConfiguration' {} a -> s {status = a} :: AutoScalingConfiguration)

-- | The time when the auto scaling configuration was deleted. It\'s in Unix
-- time stamp format.
autoScalingConfiguration_deletedAt :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.UTCTime)
autoScalingConfiguration_deletedAt = Lens.lens (\AutoScalingConfiguration' {deletedAt} -> deletedAt) (\s@AutoScalingConfiguration' {} a -> s {deletedAt = a} :: AutoScalingConfiguration) Prelude.. Lens.mapping Core._Time

-- | It\'s set to @true@ for the configuration with the highest @Revision@
-- among all configurations that share the same
-- @AutoScalingConfigurationName@. It\'s set to @false@ otherwise.
autoScalingConfiguration_latest :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Bool)
autoScalingConfiguration_latest = Lens.lens (\AutoScalingConfiguration' {latest} -> latest) (\s@AutoScalingConfiguration' {} a -> s {latest = a} :: AutoScalingConfiguration)

-- | The customer-provided auto scaling configuration name. It can be used in
-- multiple revisions of a configuration.
autoScalingConfiguration_autoScalingConfigurationName :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Text)
autoScalingConfiguration_autoScalingConfigurationName = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationName} -> autoScalingConfigurationName) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationName = a} :: AutoScalingConfiguration)

-- | The minimum number of instances that App Runner provisions for a
-- service. The service always has at least @MinSize@ provisioned
-- instances. Some of them actively serve traffic. The rest of them
-- (provisioned and inactive instances) are a cost-effective compute
-- capacity reserve and are ready to be quickly activated. You pay for
-- memory usage of all the provisioned instances. You pay for CPU usage of
-- only the active subset.
--
-- App Runner temporarily doubles the number of provisioned instances
-- during deployments, to maintain the same capacity for both old and new
-- code.
autoScalingConfiguration_minSize :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_minSize = Lens.lens (\AutoScalingConfiguration' {minSize} -> minSize) (\s@AutoScalingConfiguration' {} a -> s {minSize = a} :: AutoScalingConfiguration)

-- | The maximum number of concurrent requests that an instance processes. If
-- the number of concurrent requests exceeds this limit, App Runner scales
-- the service up.
autoScalingConfiguration_maxConcurrency :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_maxConcurrency = Lens.lens (\AutoScalingConfiguration' {maxConcurrency} -> maxConcurrency) (\s@AutoScalingConfiguration' {} a -> s {maxConcurrency = a} :: AutoScalingConfiguration)

-- | The Amazon Resource Name (ARN) of this auto scaling configuration.
autoScalingConfiguration_autoScalingConfigurationArn :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Text)
autoScalingConfiguration_autoScalingConfigurationArn = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationArn} -> autoScalingConfigurationArn) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationArn = a} :: AutoScalingConfiguration)

-- | The maximum number of instances that a service scales up to. At most
-- @MaxSize@ instances actively serve traffic for your service.
autoScalingConfiguration_maxSize :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_maxSize = Lens.lens (\AutoScalingConfiguration' {maxSize} -> maxSize) (\s@AutoScalingConfiguration' {} a -> s {maxSize = a} :: AutoScalingConfiguration)

-- | The revision of this auto scaling configuration. It\'s unique among all
-- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
-- @AutoScalingConfigurationName@.
autoScalingConfiguration_autoScalingConfigurationRevision :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_autoScalingConfigurationRevision = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationRevision} -> autoScalingConfigurationRevision) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationRevision = a} :: AutoScalingConfiguration)

-- | The time when the auto scaling configuration was created. It\'s in Unix
-- time stamp format.
autoScalingConfiguration_createdAt :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.UTCTime)
autoScalingConfiguration_createdAt = Lens.lens (\AutoScalingConfiguration' {createdAt} -> createdAt) (\s@AutoScalingConfiguration' {} a -> s {createdAt = a} :: AutoScalingConfiguration) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AutoScalingConfiguration where
  parseJSON =
    Core.withObject
      "AutoScalingConfiguration"
      ( \x ->
          AutoScalingConfiguration'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DeletedAt")
            Prelude.<*> (x Core..:? "Latest")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationName")
            Prelude.<*> (x Core..:? "MinSize")
            Prelude.<*> (x Core..:? "MaxConcurrency")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationArn")
            Prelude.<*> (x Core..:? "MaxSize")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationRevision")
            Prelude.<*> (x Core..:? "CreatedAt")
      )

instance Prelude.Hashable AutoScalingConfiguration where
  hashWithSalt _salt AutoScalingConfiguration' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` deletedAt
      `Prelude.hashWithSalt` latest
      `Prelude.hashWithSalt` autoScalingConfigurationName
      `Prelude.hashWithSalt` minSize
      `Prelude.hashWithSalt` maxConcurrency
      `Prelude.hashWithSalt` autoScalingConfigurationArn
      `Prelude.hashWithSalt` maxSize
      `Prelude.hashWithSalt` autoScalingConfigurationRevision
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData AutoScalingConfiguration where
  rnf AutoScalingConfiguration' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf deletedAt
      `Prelude.seq` Prelude.rnf latest
      `Prelude.seq` Prelude.rnf autoScalingConfigurationName
      `Prelude.seq` Prelude.rnf minSize
      `Prelude.seq` Prelude.rnf maxConcurrency
      `Prelude.seq` Prelude.rnf autoScalingConfigurationArn
      `Prelude.seq` Prelude.rnf maxSize
      `Prelude.seq` Prelude.rnf autoScalingConfigurationRevision
      `Prelude.seq` Prelude.rnf createdAt
