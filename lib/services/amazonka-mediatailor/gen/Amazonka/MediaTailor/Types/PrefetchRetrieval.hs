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
-- Module      : Amazonka.MediaTailor.Types.PrefetchRetrieval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaTailor.Types.PrefetchRetrieval where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A complex type that contains settings governing when MediaTailor
-- prefetches ads, and which dynamic variables that MediaTailor includes in
-- the request to the ad decision server.
--
-- /See:/ 'newPrefetchRetrieval' smart constructor.
data PrefetchRetrieval = PrefetchRetrieval'
  { -- | The dynamic variables to use for substitution during prefetch requests
    -- to the ad decision server (ADS).
    --
    -- You intially configure
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html dynamic variables>
    -- for the ADS URL when you set up your playback configuration. When you
    -- specify DynamicVariables for prefetch retrieval, MediaTailor includes
    -- the dynamic variables in the request to the ADS.
    dynamicVariables :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The time when prefetch retrievals can start for this break. Ad
    -- prefetching will be attempted for manifest requests that occur at or
    -- after this time. Defaults to the current time. If not specified, the
    -- prefetch retrieval starts as soon as possible.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The time when prefetch retrieval ends for the ad break. Prefetching will
    -- be attempted for manifest requests that occur at or before this time.
    endTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrefetchRetrieval' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dynamicVariables', 'prefetchRetrieval_dynamicVariables' - The dynamic variables to use for substitution during prefetch requests
-- to the ad decision server (ADS).
--
-- You intially configure
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html dynamic variables>
-- for the ADS URL when you set up your playback configuration. When you
-- specify DynamicVariables for prefetch retrieval, MediaTailor includes
-- the dynamic variables in the request to the ADS.
--
-- 'startTime', 'prefetchRetrieval_startTime' - The time when prefetch retrievals can start for this break. Ad
-- prefetching will be attempted for manifest requests that occur at or
-- after this time. Defaults to the current time. If not specified, the
-- prefetch retrieval starts as soon as possible.
--
-- 'endTime', 'prefetchRetrieval_endTime' - The time when prefetch retrieval ends for the ad break. Prefetching will
-- be attempted for manifest requests that occur at or before this time.
newPrefetchRetrieval ::
  -- | 'endTime'
  Prelude.UTCTime ->
  PrefetchRetrieval
newPrefetchRetrieval pEndTime_ =
  PrefetchRetrieval'
    { dynamicVariables =
        Prelude.Nothing,
      startTime = Prelude.Nothing,
      endTime = Core._Time Lens.# pEndTime_
    }

-- | The dynamic variables to use for substitution during prefetch requests
-- to the ad decision server (ADS).
--
-- You intially configure
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html dynamic variables>
-- for the ADS URL when you set up your playback configuration. When you
-- specify DynamicVariables for prefetch retrieval, MediaTailor includes
-- the dynamic variables in the request to the ADS.
prefetchRetrieval_dynamicVariables :: Lens.Lens' PrefetchRetrieval (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
prefetchRetrieval_dynamicVariables = Lens.lens (\PrefetchRetrieval' {dynamicVariables} -> dynamicVariables) (\s@PrefetchRetrieval' {} a -> s {dynamicVariables = a} :: PrefetchRetrieval) Prelude.. Lens.mapping Lens.coerced

-- | The time when prefetch retrievals can start for this break. Ad
-- prefetching will be attempted for manifest requests that occur at or
-- after this time. Defaults to the current time. If not specified, the
-- prefetch retrieval starts as soon as possible.
prefetchRetrieval_startTime :: Lens.Lens' PrefetchRetrieval (Prelude.Maybe Prelude.UTCTime)
prefetchRetrieval_startTime = Lens.lens (\PrefetchRetrieval' {startTime} -> startTime) (\s@PrefetchRetrieval' {} a -> s {startTime = a} :: PrefetchRetrieval) Prelude.. Lens.mapping Core._Time

-- | The time when prefetch retrieval ends for the ad break. Prefetching will
-- be attempted for manifest requests that occur at or before this time.
prefetchRetrieval_endTime :: Lens.Lens' PrefetchRetrieval Prelude.UTCTime
prefetchRetrieval_endTime = Lens.lens (\PrefetchRetrieval' {endTime} -> endTime) (\s@PrefetchRetrieval' {} a -> s {endTime = a} :: PrefetchRetrieval) Prelude.. Core._Time

instance Core.FromJSON PrefetchRetrieval where
  parseJSON =
    Core.withObject
      "PrefetchRetrieval"
      ( \x ->
          PrefetchRetrieval'
            Prelude.<$> ( x Core..:? "DynamicVariables"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..: "EndTime")
      )

instance Prelude.Hashable PrefetchRetrieval where
  hashWithSalt _salt PrefetchRetrieval' {..} =
    _salt `Prelude.hashWithSalt` dynamicVariables
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` endTime

instance Prelude.NFData PrefetchRetrieval where
  rnf PrefetchRetrieval' {..} =
    Prelude.rnf dynamicVariables
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf endTime

instance Core.ToJSON PrefetchRetrieval where
  toJSON PrefetchRetrieval' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DynamicVariables" Core..=)
              Prelude.<$> dynamicVariables,
            ("StartTime" Core..=) Prelude.<$> startTime,
            Prelude.Just ("EndTime" Core..= endTime)
          ]
      )
