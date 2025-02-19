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
-- Module      : Amazonka.CodeDeploy.Types.InstanceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeDeploy.Types.InstanceInfo where

import Amazonka.CodeDeploy.Types.Tag
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an on-premises instance.
--
-- /See:/ 'newInstanceInfo' smart constructor.
data InstanceInfo = InstanceInfo'
  { -- | The tags currently associated with the on-premises instance.
    tags :: Prelude.Maybe [Tag],
    -- | The ARN of the IAM session associated with the on-premises instance.
    iamSessionArn :: Prelude.Maybe Prelude.Text,
    -- | If the on-premises instance was deregistered, the time at which the
    -- on-premises instance was deregistered.
    deregisterTime :: Prelude.Maybe Core.POSIX,
    -- | The IAM user ARN associated with the on-premises instance.
    iamUserArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the on-premises instance.
    instanceName :: Prelude.Maybe Prelude.Text,
    -- | The time at which the on-premises instance was registered.
    registerTime :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the on-premises instance.
    instanceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'instanceInfo_tags' - The tags currently associated with the on-premises instance.
--
-- 'iamSessionArn', 'instanceInfo_iamSessionArn' - The ARN of the IAM session associated with the on-premises instance.
--
-- 'deregisterTime', 'instanceInfo_deregisterTime' - If the on-premises instance was deregistered, the time at which the
-- on-premises instance was deregistered.
--
-- 'iamUserArn', 'instanceInfo_iamUserArn' - The IAM user ARN associated with the on-premises instance.
--
-- 'instanceName', 'instanceInfo_instanceName' - The name of the on-premises instance.
--
-- 'registerTime', 'instanceInfo_registerTime' - The time at which the on-premises instance was registered.
--
-- 'instanceArn', 'instanceInfo_instanceArn' - The ARN of the on-premises instance.
newInstanceInfo ::
  InstanceInfo
newInstanceInfo =
  InstanceInfo'
    { tags = Prelude.Nothing,
      iamSessionArn = Prelude.Nothing,
      deregisterTime = Prelude.Nothing,
      iamUserArn = Prelude.Nothing,
      instanceName = Prelude.Nothing,
      registerTime = Prelude.Nothing,
      instanceArn = Prelude.Nothing
    }

-- | The tags currently associated with the on-premises instance.
instanceInfo_tags :: Lens.Lens' InstanceInfo (Prelude.Maybe [Tag])
instanceInfo_tags = Lens.lens (\InstanceInfo' {tags} -> tags) (\s@InstanceInfo' {} a -> s {tags = a} :: InstanceInfo) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the IAM session associated with the on-premises instance.
instanceInfo_iamSessionArn :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.Text)
instanceInfo_iamSessionArn = Lens.lens (\InstanceInfo' {iamSessionArn} -> iamSessionArn) (\s@InstanceInfo' {} a -> s {iamSessionArn = a} :: InstanceInfo)

-- | If the on-premises instance was deregistered, the time at which the
-- on-premises instance was deregistered.
instanceInfo_deregisterTime :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.UTCTime)
instanceInfo_deregisterTime = Lens.lens (\InstanceInfo' {deregisterTime} -> deregisterTime) (\s@InstanceInfo' {} a -> s {deregisterTime = a} :: InstanceInfo) Prelude.. Lens.mapping Core._Time

-- | The IAM user ARN associated with the on-premises instance.
instanceInfo_iamUserArn :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.Text)
instanceInfo_iamUserArn = Lens.lens (\InstanceInfo' {iamUserArn} -> iamUserArn) (\s@InstanceInfo' {} a -> s {iamUserArn = a} :: InstanceInfo)

-- | The name of the on-premises instance.
instanceInfo_instanceName :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.Text)
instanceInfo_instanceName = Lens.lens (\InstanceInfo' {instanceName} -> instanceName) (\s@InstanceInfo' {} a -> s {instanceName = a} :: InstanceInfo)

-- | The time at which the on-premises instance was registered.
instanceInfo_registerTime :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.UTCTime)
instanceInfo_registerTime = Lens.lens (\InstanceInfo' {registerTime} -> registerTime) (\s@InstanceInfo' {} a -> s {registerTime = a} :: InstanceInfo) Prelude.. Lens.mapping Core._Time

-- | The ARN of the on-premises instance.
instanceInfo_instanceArn :: Lens.Lens' InstanceInfo (Prelude.Maybe Prelude.Text)
instanceInfo_instanceArn = Lens.lens (\InstanceInfo' {instanceArn} -> instanceArn) (\s@InstanceInfo' {} a -> s {instanceArn = a} :: InstanceInfo)

instance Core.FromJSON InstanceInfo where
  parseJSON =
    Core.withObject
      "InstanceInfo"
      ( \x ->
          InstanceInfo'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "iamSessionArn")
            Prelude.<*> (x Core..:? "deregisterTime")
            Prelude.<*> (x Core..:? "iamUserArn")
            Prelude.<*> (x Core..:? "instanceName")
            Prelude.<*> (x Core..:? "registerTime")
            Prelude.<*> (x Core..:? "instanceArn")
      )

instance Prelude.Hashable InstanceInfo where
  hashWithSalt _salt InstanceInfo' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` iamSessionArn
      `Prelude.hashWithSalt` deregisterTime
      `Prelude.hashWithSalt` iamUserArn
      `Prelude.hashWithSalt` instanceName
      `Prelude.hashWithSalt` registerTime
      `Prelude.hashWithSalt` instanceArn

instance Prelude.NFData InstanceInfo where
  rnf InstanceInfo' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf iamSessionArn
      `Prelude.seq` Prelude.rnf deregisterTime
      `Prelude.seq` Prelude.rnf iamUserArn
      `Prelude.seq` Prelude.rnf instanceName
      `Prelude.seq` Prelude.rnf registerTime
      `Prelude.seq` Prelude.rnf instanceArn
