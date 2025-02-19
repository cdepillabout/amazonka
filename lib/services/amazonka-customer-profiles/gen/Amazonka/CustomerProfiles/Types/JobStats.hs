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
-- Module      : Amazonka.CustomerProfiles.Types.JobStats
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CustomerProfiles.Types.JobStats where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Statistics about the Identity Resolution Job.
--
-- /See:/ 'newJobStats' smart constructor.
data JobStats = JobStats'
  { -- | The number of merges completed.
    numberOfMergesDone :: Prelude.Maybe Prelude.Integer,
    -- | The number of matches found.
    numberOfMatchesFound :: Prelude.Maybe Prelude.Integer,
    -- | The number of profiles reviewed.
    numberOfProfilesReviewed :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobStats' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'numberOfMergesDone', 'jobStats_numberOfMergesDone' - The number of merges completed.
--
-- 'numberOfMatchesFound', 'jobStats_numberOfMatchesFound' - The number of matches found.
--
-- 'numberOfProfilesReviewed', 'jobStats_numberOfProfilesReviewed' - The number of profiles reviewed.
newJobStats ::
  JobStats
newJobStats =
  JobStats'
    { numberOfMergesDone = Prelude.Nothing,
      numberOfMatchesFound = Prelude.Nothing,
      numberOfProfilesReviewed = Prelude.Nothing
    }

-- | The number of merges completed.
jobStats_numberOfMergesDone :: Lens.Lens' JobStats (Prelude.Maybe Prelude.Integer)
jobStats_numberOfMergesDone = Lens.lens (\JobStats' {numberOfMergesDone} -> numberOfMergesDone) (\s@JobStats' {} a -> s {numberOfMergesDone = a} :: JobStats)

-- | The number of matches found.
jobStats_numberOfMatchesFound :: Lens.Lens' JobStats (Prelude.Maybe Prelude.Integer)
jobStats_numberOfMatchesFound = Lens.lens (\JobStats' {numberOfMatchesFound} -> numberOfMatchesFound) (\s@JobStats' {} a -> s {numberOfMatchesFound = a} :: JobStats)

-- | The number of profiles reviewed.
jobStats_numberOfProfilesReviewed :: Lens.Lens' JobStats (Prelude.Maybe Prelude.Integer)
jobStats_numberOfProfilesReviewed = Lens.lens (\JobStats' {numberOfProfilesReviewed} -> numberOfProfilesReviewed) (\s@JobStats' {} a -> s {numberOfProfilesReviewed = a} :: JobStats)

instance Core.FromJSON JobStats where
  parseJSON =
    Core.withObject
      "JobStats"
      ( \x ->
          JobStats'
            Prelude.<$> (x Core..:? "NumberOfMergesDone")
            Prelude.<*> (x Core..:? "NumberOfMatchesFound")
            Prelude.<*> (x Core..:? "NumberOfProfilesReviewed")
      )

instance Prelude.Hashable JobStats where
  hashWithSalt _salt JobStats' {..} =
    _salt `Prelude.hashWithSalt` numberOfMergesDone
      `Prelude.hashWithSalt` numberOfMatchesFound
      `Prelude.hashWithSalt` numberOfProfilesReviewed

instance Prelude.NFData JobStats where
  rnf JobStats' {..} =
    Prelude.rnf numberOfMergesDone
      `Prelude.seq` Prelude.rnf numberOfMatchesFound
      `Prelude.seq` Prelude.rnf numberOfProfilesReviewed
