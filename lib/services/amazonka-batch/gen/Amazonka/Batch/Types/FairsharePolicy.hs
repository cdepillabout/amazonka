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
-- Module      : Amazonka.Batch.Types.FairsharePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.FairsharePolicy where

import Amazonka.Batch.Types.ShareAttributes
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The fair share policy for a scheduling policy.
--
-- /See:/ 'newFairsharePolicy' smart constructor.
data FairsharePolicy = FairsharePolicy'
  { -- | An array of @SharedIdentifier@ objects that contain the weights for the
    -- fair share identifiers for the fair share policy. Fair share identifiers
    -- that aren\'t included have a default weight of @1.0@.
    shareDistribution :: Prelude.Maybe [ShareAttributes],
    -- | The time period to use to calculate a fair share percentage for each
    -- fair share identifier in use, in seconds. A value of zero (0) indicates
    -- that only current usage should be measured. The decay allows for more
    -- recently run jobs to have more weight than jobs that ran earlier. The
    -- maximum supported value is 604800 (1 week).
    shareDecaySeconds :: Prelude.Maybe Prelude.Int,
    -- | A value used to reserve some of the available maximum vCPU for fair
    -- share identifiers that have not yet been used.
    --
    -- The reserved ratio is @(computeReservation\/100)^ActiveFairShares @
    -- where @ ActiveFairShares @ is the number of active fair share
    -- identifiers.
    --
    -- For example, a @computeReservation@ value of 50 indicates that Batch
    -- should reserve 50% of the maximum available vCPU if there is only one
    -- fair share identifier, 25% if there are two fair share identifiers, and
    -- 12.5% if there are three fair share identifiers. A @computeReservation@
    -- value of 25 indicates that Batch should reserve 25% of the maximum
    -- available vCPU if there is only one fair share identifier, 6.25% if
    -- there are two fair share identifiers, and 1.56% if there are three fair
    -- share identifiers.
    --
    -- The minimum value is 0 and the maximum value is 99.
    computeReservation :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FairsharePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareDistribution', 'fairsharePolicy_shareDistribution' - An array of @SharedIdentifier@ objects that contain the weights for the
-- fair share identifiers for the fair share policy. Fair share identifiers
-- that aren\'t included have a default weight of @1.0@.
--
-- 'shareDecaySeconds', 'fairsharePolicy_shareDecaySeconds' - The time period to use to calculate a fair share percentage for each
-- fair share identifier in use, in seconds. A value of zero (0) indicates
-- that only current usage should be measured. The decay allows for more
-- recently run jobs to have more weight than jobs that ran earlier. The
-- maximum supported value is 604800 (1 week).
--
-- 'computeReservation', 'fairsharePolicy_computeReservation' - A value used to reserve some of the available maximum vCPU for fair
-- share identifiers that have not yet been used.
--
-- The reserved ratio is @(computeReservation\/100)^ActiveFairShares @
-- where @ ActiveFairShares @ is the number of active fair share
-- identifiers.
--
-- For example, a @computeReservation@ value of 50 indicates that Batch
-- should reserve 50% of the maximum available vCPU if there is only one
-- fair share identifier, 25% if there are two fair share identifiers, and
-- 12.5% if there are three fair share identifiers. A @computeReservation@
-- value of 25 indicates that Batch should reserve 25% of the maximum
-- available vCPU if there is only one fair share identifier, 6.25% if
-- there are two fair share identifiers, and 1.56% if there are three fair
-- share identifiers.
--
-- The minimum value is 0 and the maximum value is 99.
newFairsharePolicy ::
  FairsharePolicy
newFairsharePolicy =
  FairsharePolicy'
    { shareDistribution =
        Prelude.Nothing,
      shareDecaySeconds = Prelude.Nothing,
      computeReservation = Prelude.Nothing
    }

-- | An array of @SharedIdentifier@ objects that contain the weights for the
-- fair share identifiers for the fair share policy. Fair share identifiers
-- that aren\'t included have a default weight of @1.0@.
fairsharePolicy_shareDistribution :: Lens.Lens' FairsharePolicy (Prelude.Maybe [ShareAttributes])
fairsharePolicy_shareDistribution = Lens.lens (\FairsharePolicy' {shareDistribution} -> shareDistribution) (\s@FairsharePolicy' {} a -> s {shareDistribution = a} :: FairsharePolicy) Prelude.. Lens.mapping Lens.coerced

-- | The time period to use to calculate a fair share percentage for each
-- fair share identifier in use, in seconds. A value of zero (0) indicates
-- that only current usage should be measured. The decay allows for more
-- recently run jobs to have more weight than jobs that ran earlier. The
-- maximum supported value is 604800 (1 week).
fairsharePolicy_shareDecaySeconds :: Lens.Lens' FairsharePolicy (Prelude.Maybe Prelude.Int)
fairsharePolicy_shareDecaySeconds = Lens.lens (\FairsharePolicy' {shareDecaySeconds} -> shareDecaySeconds) (\s@FairsharePolicy' {} a -> s {shareDecaySeconds = a} :: FairsharePolicy)

-- | A value used to reserve some of the available maximum vCPU for fair
-- share identifiers that have not yet been used.
--
-- The reserved ratio is @(computeReservation\/100)^ActiveFairShares @
-- where @ ActiveFairShares @ is the number of active fair share
-- identifiers.
--
-- For example, a @computeReservation@ value of 50 indicates that Batch
-- should reserve 50% of the maximum available vCPU if there is only one
-- fair share identifier, 25% if there are two fair share identifiers, and
-- 12.5% if there are three fair share identifiers. A @computeReservation@
-- value of 25 indicates that Batch should reserve 25% of the maximum
-- available vCPU if there is only one fair share identifier, 6.25% if
-- there are two fair share identifiers, and 1.56% if there are three fair
-- share identifiers.
--
-- The minimum value is 0 and the maximum value is 99.
fairsharePolicy_computeReservation :: Lens.Lens' FairsharePolicy (Prelude.Maybe Prelude.Int)
fairsharePolicy_computeReservation = Lens.lens (\FairsharePolicy' {computeReservation} -> computeReservation) (\s@FairsharePolicy' {} a -> s {computeReservation = a} :: FairsharePolicy)

instance Core.FromJSON FairsharePolicy where
  parseJSON =
    Core.withObject
      "FairsharePolicy"
      ( \x ->
          FairsharePolicy'
            Prelude.<$> ( x Core..:? "shareDistribution"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "shareDecaySeconds")
            Prelude.<*> (x Core..:? "computeReservation")
      )

instance Prelude.Hashable FairsharePolicy where
  hashWithSalt _salt FairsharePolicy' {..} =
    _salt `Prelude.hashWithSalt` shareDistribution
      `Prelude.hashWithSalt` shareDecaySeconds
      `Prelude.hashWithSalt` computeReservation

instance Prelude.NFData FairsharePolicy where
  rnf FairsharePolicy' {..} =
    Prelude.rnf shareDistribution
      `Prelude.seq` Prelude.rnf shareDecaySeconds
      `Prelude.seq` Prelude.rnf computeReservation

instance Core.ToJSON FairsharePolicy where
  toJSON FairsharePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("shareDistribution" Core..=)
              Prelude.<$> shareDistribution,
            ("shareDecaySeconds" Core..=)
              Prelude.<$> shareDecaySeconds,
            ("computeReservation" Core..=)
              Prelude.<$> computeReservation
          ]
      )
