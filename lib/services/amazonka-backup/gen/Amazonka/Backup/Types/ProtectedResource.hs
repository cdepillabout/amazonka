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
-- Module      : Amazonka.Backup.Types.ProtectedResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Backup.Types.ProtectedResource where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure that contains information about a backed-up resource.
--
-- /See:/ 'newProtectedResource' smart constructor.
data ProtectedResource = ProtectedResource'
  { -- | The type of Amazon Web Services resource; for example, an Amazon Elastic
    -- Block Store (Amazon EBS) volume or an Amazon Relational Database Service
    -- (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS)
    -- backups, the only supported resource type is Amazon EC2.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a resource. The
    -- format of the ARN depends on the resource type.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time a resource was last backed up, in Unix format and
    -- Coordinated Universal Time (UTC). The value of @LastBackupTime@ is
    -- accurate to milliseconds. For example, the value 1516925490.087
    -- represents Friday, January 26, 2018 12:11:30.087 AM.
    lastBackupTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProtectedResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'protectedResource_resourceType' - The type of Amazon Web Services resource; for example, an Amazon Elastic
-- Block Store (Amazon EBS) volume or an Amazon Relational Database Service
-- (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS)
-- backups, the only supported resource type is Amazon EC2.
--
-- 'resourceArn', 'protectedResource_resourceArn' - An Amazon Resource Name (ARN) that uniquely identifies a resource. The
-- format of the ARN depends on the resource type.
--
-- 'lastBackupTime', 'protectedResource_lastBackupTime' - The date and time a resource was last backed up, in Unix format and
-- Coordinated Universal Time (UTC). The value of @LastBackupTime@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
newProtectedResource ::
  ProtectedResource
newProtectedResource =
  ProtectedResource'
    { resourceType = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      lastBackupTime = Prelude.Nothing
    }

-- | The type of Amazon Web Services resource; for example, an Amazon Elastic
-- Block Store (Amazon EBS) volume or an Amazon Relational Database Service
-- (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS)
-- backups, the only supported resource type is Amazon EC2.
protectedResource_resourceType :: Lens.Lens' ProtectedResource (Prelude.Maybe Prelude.Text)
protectedResource_resourceType = Lens.lens (\ProtectedResource' {resourceType} -> resourceType) (\s@ProtectedResource' {} a -> s {resourceType = a} :: ProtectedResource)

-- | An Amazon Resource Name (ARN) that uniquely identifies a resource. The
-- format of the ARN depends on the resource type.
protectedResource_resourceArn :: Lens.Lens' ProtectedResource (Prelude.Maybe Prelude.Text)
protectedResource_resourceArn = Lens.lens (\ProtectedResource' {resourceArn} -> resourceArn) (\s@ProtectedResource' {} a -> s {resourceArn = a} :: ProtectedResource)

-- | The date and time a resource was last backed up, in Unix format and
-- Coordinated Universal Time (UTC). The value of @LastBackupTime@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
protectedResource_lastBackupTime :: Lens.Lens' ProtectedResource (Prelude.Maybe Prelude.UTCTime)
protectedResource_lastBackupTime = Lens.lens (\ProtectedResource' {lastBackupTime} -> lastBackupTime) (\s@ProtectedResource' {} a -> s {lastBackupTime = a} :: ProtectedResource) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ProtectedResource where
  parseJSON =
    Core.withObject
      "ProtectedResource"
      ( \x ->
          ProtectedResource'
            Prelude.<$> (x Core..:? "ResourceType")
            Prelude.<*> (x Core..:? "ResourceArn")
            Prelude.<*> (x Core..:? "LastBackupTime")
      )

instance Prelude.Hashable ProtectedResource where
  hashWithSalt _salt ProtectedResource' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` lastBackupTime

instance Prelude.NFData ProtectedResource where
  rnf ProtectedResource' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf lastBackupTime
