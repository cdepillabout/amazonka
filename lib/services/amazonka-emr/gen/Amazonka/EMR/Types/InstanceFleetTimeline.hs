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
-- Module      : Amazonka.EMR.Types.InstanceFleetTimeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.InstanceFleetTimeline where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides historical timestamps for the instance fleet, including the
-- time of creation, the time it became ready to run jobs, and the time of
-- termination.
--
-- The instance fleet configuration is available only in Amazon EMR
-- versions 4.8.0 and later, excluding 5.0.x versions.
--
-- /See:/ 'newInstanceFleetTimeline' smart constructor.
data InstanceFleetTimeline = InstanceFleetTimeline'
  { -- | The time and date the instance fleet was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The time and date the instance fleet was ready to run jobs.
    readyDateTime :: Prelude.Maybe Core.POSIX,
    -- | The time and date the instance fleet terminated.
    endDateTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceFleetTimeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationDateTime', 'instanceFleetTimeline_creationDateTime' - The time and date the instance fleet was created.
--
-- 'readyDateTime', 'instanceFleetTimeline_readyDateTime' - The time and date the instance fleet was ready to run jobs.
--
-- 'endDateTime', 'instanceFleetTimeline_endDateTime' - The time and date the instance fleet terminated.
newInstanceFleetTimeline ::
  InstanceFleetTimeline
newInstanceFleetTimeline =
  InstanceFleetTimeline'
    { creationDateTime =
        Prelude.Nothing,
      readyDateTime = Prelude.Nothing,
      endDateTime = Prelude.Nothing
    }

-- | The time and date the instance fleet was created.
instanceFleetTimeline_creationDateTime :: Lens.Lens' InstanceFleetTimeline (Prelude.Maybe Prelude.UTCTime)
instanceFleetTimeline_creationDateTime = Lens.lens (\InstanceFleetTimeline' {creationDateTime} -> creationDateTime) (\s@InstanceFleetTimeline' {} a -> s {creationDateTime = a} :: InstanceFleetTimeline) Prelude.. Lens.mapping Core._Time

-- | The time and date the instance fleet was ready to run jobs.
instanceFleetTimeline_readyDateTime :: Lens.Lens' InstanceFleetTimeline (Prelude.Maybe Prelude.UTCTime)
instanceFleetTimeline_readyDateTime = Lens.lens (\InstanceFleetTimeline' {readyDateTime} -> readyDateTime) (\s@InstanceFleetTimeline' {} a -> s {readyDateTime = a} :: InstanceFleetTimeline) Prelude.. Lens.mapping Core._Time

-- | The time and date the instance fleet terminated.
instanceFleetTimeline_endDateTime :: Lens.Lens' InstanceFleetTimeline (Prelude.Maybe Prelude.UTCTime)
instanceFleetTimeline_endDateTime = Lens.lens (\InstanceFleetTimeline' {endDateTime} -> endDateTime) (\s@InstanceFleetTimeline' {} a -> s {endDateTime = a} :: InstanceFleetTimeline) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON InstanceFleetTimeline where
  parseJSON =
    Core.withObject
      "InstanceFleetTimeline"
      ( \x ->
          InstanceFleetTimeline'
            Prelude.<$> (x Core..:? "CreationDateTime")
            Prelude.<*> (x Core..:? "ReadyDateTime")
            Prelude.<*> (x Core..:? "EndDateTime")
      )

instance Prelude.Hashable InstanceFleetTimeline where
  hashWithSalt _salt InstanceFleetTimeline' {..} =
    _salt `Prelude.hashWithSalt` creationDateTime
      `Prelude.hashWithSalt` readyDateTime
      `Prelude.hashWithSalt` endDateTime

instance Prelude.NFData InstanceFleetTimeline where
  rnf InstanceFleetTimeline' {..} =
    Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf readyDateTime
      `Prelude.seq` Prelude.rnf endDateTime
