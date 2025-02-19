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
-- Module      : Amazonka.MediaLive.Types.MultiplexSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.MultiplexSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.MultiplexSettingsSummary
import Amazonka.MediaLive.Types.MultiplexState
import qualified Amazonka.Prelude as Prelude

-- | Placeholder documentation for MultiplexSummary
--
-- /See:/ 'newMultiplexSummary' smart constructor.
data MultiplexSummary = MultiplexSummary'
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the multiplex.
    name :: Prelude.Maybe Prelude.Text,
    -- | A list of availability zones for the multiplex.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | The unique arn of the multiplex.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the multiplex.
    state :: Prelude.Maybe MultiplexState,
    -- | Configuration for a multiplex event.
    multiplexSettings :: Prelude.Maybe MultiplexSettingsSummary,
    -- | The unique id of the multiplex.
    id :: Prelude.Maybe Prelude.Text,
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Prelude.Maybe Prelude.Int,
    -- | The number of programs in the multiplex.
    programCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MultiplexSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'multiplexSummary_tags' - A collection of key-value pairs.
--
-- 'name', 'multiplexSummary_name' - The name of the multiplex.
--
-- 'availabilityZones', 'multiplexSummary_availabilityZones' - A list of availability zones for the multiplex.
--
-- 'arn', 'multiplexSummary_arn' - The unique arn of the multiplex.
--
-- 'state', 'multiplexSummary_state' - The current state of the multiplex.
--
-- 'multiplexSettings', 'multiplexSummary_multiplexSettings' - Configuration for a multiplex event.
--
-- 'id', 'multiplexSummary_id' - The unique id of the multiplex.
--
-- 'pipelinesRunningCount', 'multiplexSummary_pipelinesRunningCount' - The number of currently healthy pipelines.
--
-- 'programCount', 'multiplexSummary_programCount' - The number of programs in the multiplex.
newMultiplexSummary ::
  MultiplexSummary
newMultiplexSummary =
  MultiplexSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      multiplexSettings = Prelude.Nothing,
      id = Prelude.Nothing,
      pipelinesRunningCount = Prelude.Nothing,
      programCount = Prelude.Nothing
    }

-- | A collection of key-value pairs.
multiplexSummary_tags :: Lens.Lens' MultiplexSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
multiplexSummary_tags = Lens.lens (\MultiplexSummary' {tags} -> tags) (\s@MultiplexSummary' {} a -> s {tags = a} :: MultiplexSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the multiplex.
multiplexSummary_name :: Lens.Lens' MultiplexSummary (Prelude.Maybe Prelude.Text)
multiplexSummary_name = Lens.lens (\MultiplexSummary' {name} -> name) (\s@MultiplexSummary' {} a -> s {name = a} :: MultiplexSummary)

-- | A list of availability zones for the multiplex.
multiplexSummary_availabilityZones :: Lens.Lens' MultiplexSummary (Prelude.Maybe [Prelude.Text])
multiplexSummary_availabilityZones = Lens.lens (\MultiplexSummary' {availabilityZones} -> availabilityZones) (\s@MultiplexSummary' {} a -> s {availabilityZones = a} :: MultiplexSummary) Prelude.. Lens.mapping Lens.coerced

-- | The unique arn of the multiplex.
multiplexSummary_arn :: Lens.Lens' MultiplexSummary (Prelude.Maybe Prelude.Text)
multiplexSummary_arn = Lens.lens (\MultiplexSummary' {arn} -> arn) (\s@MultiplexSummary' {} a -> s {arn = a} :: MultiplexSummary)

-- | The current state of the multiplex.
multiplexSummary_state :: Lens.Lens' MultiplexSummary (Prelude.Maybe MultiplexState)
multiplexSummary_state = Lens.lens (\MultiplexSummary' {state} -> state) (\s@MultiplexSummary' {} a -> s {state = a} :: MultiplexSummary)

-- | Configuration for a multiplex event.
multiplexSummary_multiplexSettings :: Lens.Lens' MultiplexSummary (Prelude.Maybe MultiplexSettingsSummary)
multiplexSummary_multiplexSettings = Lens.lens (\MultiplexSummary' {multiplexSettings} -> multiplexSettings) (\s@MultiplexSummary' {} a -> s {multiplexSettings = a} :: MultiplexSummary)

-- | The unique id of the multiplex.
multiplexSummary_id :: Lens.Lens' MultiplexSummary (Prelude.Maybe Prelude.Text)
multiplexSummary_id = Lens.lens (\MultiplexSummary' {id} -> id) (\s@MultiplexSummary' {} a -> s {id = a} :: MultiplexSummary)

-- | The number of currently healthy pipelines.
multiplexSummary_pipelinesRunningCount :: Lens.Lens' MultiplexSummary (Prelude.Maybe Prelude.Int)
multiplexSummary_pipelinesRunningCount = Lens.lens (\MultiplexSummary' {pipelinesRunningCount} -> pipelinesRunningCount) (\s@MultiplexSummary' {} a -> s {pipelinesRunningCount = a} :: MultiplexSummary)

-- | The number of programs in the multiplex.
multiplexSummary_programCount :: Lens.Lens' MultiplexSummary (Prelude.Maybe Prelude.Int)
multiplexSummary_programCount = Lens.lens (\MultiplexSummary' {programCount} -> programCount) (\s@MultiplexSummary' {} a -> s {programCount = a} :: MultiplexSummary)

instance Core.FromJSON MultiplexSummary where
  parseJSON =
    Core.withObject
      "MultiplexSummary"
      ( \x ->
          MultiplexSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> ( x Core..:? "availabilityZones"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "multiplexSettings")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "pipelinesRunningCount")
            Prelude.<*> (x Core..:? "programCount")
      )

instance Prelude.Hashable MultiplexSummary where
  hashWithSalt _salt MultiplexSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` availabilityZones
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` multiplexSettings
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` pipelinesRunningCount
      `Prelude.hashWithSalt` programCount

instance Prelude.NFData MultiplexSummary where
  rnf MultiplexSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf availabilityZones
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf multiplexSettings
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf pipelinesRunningCount
      `Prelude.seq` Prelude.rnf programCount
