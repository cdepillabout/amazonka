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
-- Module      : Amazonka.NetworkManager.Types.CoreNetworkSegment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types.CoreNetworkSegment where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a core network segment, which are dedicated routes. Only
-- attachments within this segment can communicate with each other.
--
-- /See:/ 'newCoreNetworkSegment' smart constructor.
data CoreNetworkSegment = CoreNetworkSegment'
  { -- | The name of a core network segment.
    name :: Prelude.Maybe Prelude.Text,
    -- | The shared segments of a core network.
    sharedSegments :: Prelude.Maybe [Prelude.Text],
    -- | The Regions where the edges are located.
    edgeLocations :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CoreNetworkSegment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'coreNetworkSegment_name' - The name of a core network segment.
--
-- 'sharedSegments', 'coreNetworkSegment_sharedSegments' - The shared segments of a core network.
--
-- 'edgeLocations', 'coreNetworkSegment_edgeLocations' - The Regions where the edges are located.
newCoreNetworkSegment ::
  CoreNetworkSegment
newCoreNetworkSegment =
  CoreNetworkSegment'
    { name = Prelude.Nothing,
      sharedSegments = Prelude.Nothing,
      edgeLocations = Prelude.Nothing
    }

-- | The name of a core network segment.
coreNetworkSegment_name :: Lens.Lens' CoreNetworkSegment (Prelude.Maybe Prelude.Text)
coreNetworkSegment_name = Lens.lens (\CoreNetworkSegment' {name} -> name) (\s@CoreNetworkSegment' {} a -> s {name = a} :: CoreNetworkSegment)

-- | The shared segments of a core network.
coreNetworkSegment_sharedSegments :: Lens.Lens' CoreNetworkSegment (Prelude.Maybe [Prelude.Text])
coreNetworkSegment_sharedSegments = Lens.lens (\CoreNetworkSegment' {sharedSegments} -> sharedSegments) (\s@CoreNetworkSegment' {} a -> s {sharedSegments = a} :: CoreNetworkSegment) Prelude.. Lens.mapping Lens.coerced

-- | The Regions where the edges are located.
coreNetworkSegment_edgeLocations :: Lens.Lens' CoreNetworkSegment (Prelude.Maybe [Prelude.Text])
coreNetworkSegment_edgeLocations = Lens.lens (\CoreNetworkSegment' {edgeLocations} -> edgeLocations) (\s@CoreNetworkSegment' {} a -> s {edgeLocations = a} :: CoreNetworkSegment) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CoreNetworkSegment where
  parseJSON =
    Core.withObject
      "CoreNetworkSegment"
      ( \x ->
          CoreNetworkSegment'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "SharedSegments" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "EdgeLocations" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable CoreNetworkSegment where
  hashWithSalt _salt CoreNetworkSegment' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` sharedSegments
      `Prelude.hashWithSalt` edgeLocations

instance Prelude.NFData CoreNetworkSegment where
  rnf CoreNetworkSegment' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf sharedSegments
      `Prelude.seq` Prelude.rnf edgeLocations
