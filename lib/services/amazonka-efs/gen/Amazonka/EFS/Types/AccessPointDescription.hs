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
-- Module      : Amazonka.EFS.Types.AccessPointDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EFS.Types.AccessPointDescription where

import qualified Amazonka.Core as Core
import Amazonka.EFS.Types.LifeCycleState
import Amazonka.EFS.Types.PosixUser
import Amazonka.EFS.Types.RootDirectory
import Amazonka.EFS.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides a description of an EFS file system access point.
--
-- /See:/ 'newAccessPointDescription' smart constructor.
data AccessPointDescription = AccessPointDescription'
  { -- | The tags associated with the access point, presented as an array of Tag
    -- objects.
    tags :: Prelude.Maybe [Tag],
    -- | The opaque string specified in the request to ensure idempotent
    -- creation.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the access point. This is the value of the @Name@ tag.
    name :: Prelude.Maybe Prelude.Text,
    -- | Identified the Amazon Web Services account that owns the access point
    -- resource.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | The unique Amazon Resource Name (ARN) associated with the access point.
    accessPointArn :: Prelude.Maybe Prelude.Text,
    -- | The full POSIX identity, including the user ID, group ID, and secondary
    -- group IDs on the access point that is used for all file operations by
    -- NFS clients using the access point.
    posixUser :: Prelude.Maybe PosixUser,
    -- | The ID of the EFS file system that the access point applies to.
    fileSystemId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the access point, assigned by Amazon EFS.
    accessPointId :: Prelude.Maybe Prelude.Text,
    -- | The directory on the Amazon EFS file system that the access point
    -- exposes as the root directory to NFS clients using the access point.
    rootDirectory :: Prelude.Maybe RootDirectory,
    -- | Identifies the lifecycle phase of the access point.
    lifeCycleState :: Prelude.Maybe LifeCycleState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessPointDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'accessPointDescription_tags' - The tags associated with the access point, presented as an array of Tag
-- objects.
--
-- 'clientToken', 'accessPointDescription_clientToken' - The opaque string specified in the request to ensure idempotent
-- creation.
--
-- 'name', 'accessPointDescription_name' - The name of the access point. This is the value of the @Name@ tag.
--
-- 'ownerId', 'accessPointDescription_ownerId' - Identified the Amazon Web Services account that owns the access point
-- resource.
--
-- 'accessPointArn', 'accessPointDescription_accessPointArn' - The unique Amazon Resource Name (ARN) associated with the access point.
--
-- 'posixUser', 'accessPointDescription_posixUser' - The full POSIX identity, including the user ID, group ID, and secondary
-- group IDs on the access point that is used for all file operations by
-- NFS clients using the access point.
--
-- 'fileSystemId', 'accessPointDescription_fileSystemId' - The ID of the EFS file system that the access point applies to.
--
-- 'accessPointId', 'accessPointDescription_accessPointId' - The ID of the access point, assigned by Amazon EFS.
--
-- 'rootDirectory', 'accessPointDescription_rootDirectory' - The directory on the Amazon EFS file system that the access point
-- exposes as the root directory to NFS clients using the access point.
--
-- 'lifeCycleState', 'accessPointDescription_lifeCycleState' - Identifies the lifecycle phase of the access point.
newAccessPointDescription ::
  AccessPointDescription
newAccessPointDescription =
  AccessPointDescription'
    { tags = Prelude.Nothing,
      clientToken = Prelude.Nothing,
      name = Prelude.Nothing,
      ownerId = Prelude.Nothing,
      accessPointArn = Prelude.Nothing,
      posixUser = Prelude.Nothing,
      fileSystemId = Prelude.Nothing,
      accessPointId = Prelude.Nothing,
      rootDirectory = Prelude.Nothing,
      lifeCycleState = Prelude.Nothing
    }

-- | The tags associated with the access point, presented as an array of Tag
-- objects.
accessPointDescription_tags :: Lens.Lens' AccessPointDescription (Prelude.Maybe [Tag])
accessPointDescription_tags = Lens.lens (\AccessPointDescription' {tags} -> tags) (\s@AccessPointDescription' {} a -> s {tags = a} :: AccessPointDescription) Prelude.. Lens.mapping Lens.coerced

-- | The opaque string specified in the request to ensure idempotent
-- creation.
accessPointDescription_clientToken :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_clientToken = Lens.lens (\AccessPointDescription' {clientToken} -> clientToken) (\s@AccessPointDescription' {} a -> s {clientToken = a} :: AccessPointDescription)

-- | The name of the access point. This is the value of the @Name@ tag.
accessPointDescription_name :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_name = Lens.lens (\AccessPointDescription' {name} -> name) (\s@AccessPointDescription' {} a -> s {name = a} :: AccessPointDescription)

-- | Identified the Amazon Web Services account that owns the access point
-- resource.
accessPointDescription_ownerId :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_ownerId = Lens.lens (\AccessPointDescription' {ownerId} -> ownerId) (\s@AccessPointDescription' {} a -> s {ownerId = a} :: AccessPointDescription)

-- | The unique Amazon Resource Name (ARN) associated with the access point.
accessPointDescription_accessPointArn :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_accessPointArn = Lens.lens (\AccessPointDescription' {accessPointArn} -> accessPointArn) (\s@AccessPointDescription' {} a -> s {accessPointArn = a} :: AccessPointDescription)

-- | The full POSIX identity, including the user ID, group ID, and secondary
-- group IDs on the access point that is used for all file operations by
-- NFS clients using the access point.
accessPointDescription_posixUser :: Lens.Lens' AccessPointDescription (Prelude.Maybe PosixUser)
accessPointDescription_posixUser = Lens.lens (\AccessPointDescription' {posixUser} -> posixUser) (\s@AccessPointDescription' {} a -> s {posixUser = a} :: AccessPointDescription)

-- | The ID of the EFS file system that the access point applies to.
accessPointDescription_fileSystemId :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_fileSystemId = Lens.lens (\AccessPointDescription' {fileSystemId} -> fileSystemId) (\s@AccessPointDescription' {} a -> s {fileSystemId = a} :: AccessPointDescription)

-- | The ID of the access point, assigned by Amazon EFS.
accessPointDescription_accessPointId :: Lens.Lens' AccessPointDescription (Prelude.Maybe Prelude.Text)
accessPointDescription_accessPointId = Lens.lens (\AccessPointDescription' {accessPointId} -> accessPointId) (\s@AccessPointDescription' {} a -> s {accessPointId = a} :: AccessPointDescription)

-- | The directory on the Amazon EFS file system that the access point
-- exposes as the root directory to NFS clients using the access point.
accessPointDescription_rootDirectory :: Lens.Lens' AccessPointDescription (Prelude.Maybe RootDirectory)
accessPointDescription_rootDirectory = Lens.lens (\AccessPointDescription' {rootDirectory} -> rootDirectory) (\s@AccessPointDescription' {} a -> s {rootDirectory = a} :: AccessPointDescription)

-- | Identifies the lifecycle phase of the access point.
accessPointDescription_lifeCycleState :: Lens.Lens' AccessPointDescription (Prelude.Maybe LifeCycleState)
accessPointDescription_lifeCycleState = Lens.lens (\AccessPointDescription' {lifeCycleState} -> lifeCycleState) (\s@AccessPointDescription' {} a -> s {lifeCycleState = a} :: AccessPointDescription)

instance Core.FromJSON AccessPointDescription where
  parseJSON =
    Core.withObject
      "AccessPointDescription"
      ( \x ->
          AccessPointDescription'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ClientToken")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "OwnerId")
            Prelude.<*> (x Core..:? "AccessPointArn")
            Prelude.<*> (x Core..:? "PosixUser")
            Prelude.<*> (x Core..:? "FileSystemId")
            Prelude.<*> (x Core..:? "AccessPointId")
            Prelude.<*> (x Core..:? "RootDirectory")
            Prelude.<*> (x Core..:? "LifeCycleState")
      )

instance Prelude.Hashable AccessPointDescription where
  hashWithSalt _salt AccessPointDescription' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` ownerId
      `Prelude.hashWithSalt` accessPointArn
      `Prelude.hashWithSalt` posixUser
      `Prelude.hashWithSalt` fileSystemId
      `Prelude.hashWithSalt` accessPointId
      `Prelude.hashWithSalt` rootDirectory
      `Prelude.hashWithSalt` lifeCycleState

instance Prelude.NFData AccessPointDescription where
  rnf AccessPointDescription' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf accessPointArn
      `Prelude.seq` Prelude.rnf posixUser
      `Prelude.seq` Prelude.rnf fileSystemId
      `Prelude.seq` Prelude.rnf accessPointId
      `Prelude.seq` Prelude.rnf rootDirectory
      `Prelude.seq` Prelude.rnf lifeCycleState
