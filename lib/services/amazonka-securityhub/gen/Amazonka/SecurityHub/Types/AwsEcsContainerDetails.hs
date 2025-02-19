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
-- Module      : Amazonka.SecurityHub.Types.AwsEcsContainerDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsEcsContainerDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsMountPoint

-- | Provides information about an Amazon ECS container.
--
-- /See:/ 'newAwsEcsContainerDetails' smart constructor.
data AwsEcsContainerDetails = AwsEcsContainerDetails'
  { -- | The name of the container.
    name :: Prelude.Maybe Prelude.Text,
    -- | When this parameter is true, the container is given elevated privileges
    -- on the host container instance (similar to the root user).
    privileged :: Prelude.Maybe Prelude.Bool,
    -- | The mount points for data volumes in your container.
    mountPoints :: Prelude.Maybe [AwsMountPoint],
    -- | The image used for the container.
    image :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsContainerDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'awsEcsContainerDetails_name' - The name of the container.
--
-- 'privileged', 'awsEcsContainerDetails_privileged' - When this parameter is true, the container is given elevated privileges
-- on the host container instance (similar to the root user).
--
-- 'mountPoints', 'awsEcsContainerDetails_mountPoints' - The mount points for data volumes in your container.
--
-- 'image', 'awsEcsContainerDetails_image' - The image used for the container.
newAwsEcsContainerDetails ::
  AwsEcsContainerDetails
newAwsEcsContainerDetails =
  AwsEcsContainerDetails'
    { name = Prelude.Nothing,
      privileged = Prelude.Nothing,
      mountPoints = Prelude.Nothing,
      image = Prelude.Nothing
    }

-- | The name of the container.
awsEcsContainerDetails_name :: Lens.Lens' AwsEcsContainerDetails (Prelude.Maybe Prelude.Text)
awsEcsContainerDetails_name = Lens.lens (\AwsEcsContainerDetails' {name} -> name) (\s@AwsEcsContainerDetails' {} a -> s {name = a} :: AwsEcsContainerDetails)

-- | When this parameter is true, the container is given elevated privileges
-- on the host container instance (similar to the root user).
awsEcsContainerDetails_privileged :: Lens.Lens' AwsEcsContainerDetails (Prelude.Maybe Prelude.Bool)
awsEcsContainerDetails_privileged = Lens.lens (\AwsEcsContainerDetails' {privileged} -> privileged) (\s@AwsEcsContainerDetails' {} a -> s {privileged = a} :: AwsEcsContainerDetails)

-- | The mount points for data volumes in your container.
awsEcsContainerDetails_mountPoints :: Lens.Lens' AwsEcsContainerDetails (Prelude.Maybe [AwsMountPoint])
awsEcsContainerDetails_mountPoints = Lens.lens (\AwsEcsContainerDetails' {mountPoints} -> mountPoints) (\s@AwsEcsContainerDetails' {} a -> s {mountPoints = a} :: AwsEcsContainerDetails) Prelude.. Lens.mapping Lens.coerced

-- | The image used for the container.
awsEcsContainerDetails_image :: Lens.Lens' AwsEcsContainerDetails (Prelude.Maybe Prelude.Text)
awsEcsContainerDetails_image = Lens.lens (\AwsEcsContainerDetails' {image} -> image) (\s@AwsEcsContainerDetails' {} a -> s {image = a} :: AwsEcsContainerDetails)

instance Core.FromJSON AwsEcsContainerDetails where
  parseJSON =
    Core.withObject
      "AwsEcsContainerDetails"
      ( \x ->
          AwsEcsContainerDetails'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Privileged")
            Prelude.<*> (x Core..:? "MountPoints" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Image")
      )

instance Prelude.Hashable AwsEcsContainerDetails where
  hashWithSalt _salt AwsEcsContainerDetails' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` privileged
      `Prelude.hashWithSalt` mountPoints
      `Prelude.hashWithSalt` image

instance Prelude.NFData AwsEcsContainerDetails where
  rnf AwsEcsContainerDetails' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf privileged
      `Prelude.seq` Prelude.rnf mountPoints
      `Prelude.seq` Prelude.rnf image

instance Core.ToJSON AwsEcsContainerDetails where
  toJSON AwsEcsContainerDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Privileged" Core..=) Prelude.<$> privileged,
            ("MountPoints" Core..=) Prelude.<$> mountPoints,
            ("Image" Core..=) Prelude.<$> image
          ]
      )
