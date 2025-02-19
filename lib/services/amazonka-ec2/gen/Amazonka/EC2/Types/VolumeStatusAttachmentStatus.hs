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
-- Module      : Amazonka.EC2.Types.VolumeStatusAttachmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.VolumeStatusAttachmentStatus where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the instances to which the volume is attached.
--
-- /See:/ 'newVolumeStatusAttachmentStatus' smart constructor.
data VolumeStatusAttachmentStatus = VolumeStatusAttachmentStatus'
  { -- | The maximum IOPS supported by the attached instance.
    ioPerformance :: Prelude.Maybe Prelude.Text,
    -- | The ID of the attached instance.
    instanceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VolumeStatusAttachmentStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ioPerformance', 'volumeStatusAttachmentStatus_ioPerformance' - The maximum IOPS supported by the attached instance.
--
-- 'instanceId', 'volumeStatusAttachmentStatus_instanceId' - The ID of the attached instance.
newVolumeStatusAttachmentStatus ::
  VolumeStatusAttachmentStatus
newVolumeStatusAttachmentStatus =
  VolumeStatusAttachmentStatus'
    { ioPerformance =
        Prelude.Nothing,
      instanceId = Prelude.Nothing
    }

-- | The maximum IOPS supported by the attached instance.
volumeStatusAttachmentStatus_ioPerformance :: Lens.Lens' VolumeStatusAttachmentStatus (Prelude.Maybe Prelude.Text)
volumeStatusAttachmentStatus_ioPerformance = Lens.lens (\VolumeStatusAttachmentStatus' {ioPerformance} -> ioPerformance) (\s@VolumeStatusAttachmentStatus' {} a -> s {ioPerformance = a} :: VolumeStatusAttachmentStatus)

-- | The ID of the attached instance.
volumeStatusAttachmentStatus_instanceId :: Lens.Lens' VolumeStatusAttachmentStatus (Prelude.Maybe Prelude.Text)
volumeStatusAttachmentStatus_instanceId = Lens.lens (\VolumeStatusAttachmentStatus' {instanceId} -> instanceId) (\s@VolumeStatusAttachmentStatus' {} a -> s {instanceId = a} :: VolumeStatusAttachmentStatus)

instance Core.FromXML VolumeStatusAttachmentStatus where
  parseXML x =
    VolumeStatusAttachmentStatus'
      Prelude.<$> (x Core..@? "ioPerformance")
      Prelude.<*> (x Core..@? "instanceId")

instance
  Prelude.Hashable
    VolumeStatusAttachmentStatus
  where
  hashWithSalt _salt VolumeStatusAttachmentStatus' {..} =
    _salt `Prelude.hashWithSalt` ioPerformance
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData VolumeStatusAttachmentStatus where
  rnf VolumeStatusAttachmentStatus' {..} =
    Prelude.rnf ioPerformance
      `Prelude.seq` Prelude.rnf instanceId
