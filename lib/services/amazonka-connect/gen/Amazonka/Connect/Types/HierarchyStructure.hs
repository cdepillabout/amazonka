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
-- Module      : Amazonka.Connect.Types.HierarchyStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.HierarchyStructure where

import Amazonka.Connect.Types.HierarchyLevel
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a hierarchy structure.
--
-- /See:/ 'newHierarchyStructure' smart constructor.
data HierarchyStructure = HierarchyStructure'
  { -- | Information about level three.
    levelThree :: Prelude.Maybe HierarchyLevel,
    -- | Information about level four.
    levelFour :: Prelude.Maybe HierarchyLevel,
    -- | Information about level one.
    levelOne :: Prelude.Maybe HierarchyLevel,
    -- | Information about level five.
    levelFive :: Prelude.Maybe HierarchyLevel,
    -- | Information about level two.
    levelTwo :: Prelude.Maybe HierarchyLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HierarchyStructure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'levelThree', 'hierarchyStructure_levelThree' - Information about level three.
--
-- 'levelFour', 'hierarchyStructure_levelFour' - Information about level four.
--
-- 'levelOne', 'hierarchyStructure_levelOne' - Information about level one.
--
-- 'levelFive', 'hierarchyStructure_levelFive' - Information about level five.
--
-- 'levelTwo', 'hierarchyStructure_levelTwo' - Information about level two.
newHierarchyStructure ::
  HierarchyStructure
newHierarchyStructure =
  HierarchyStructure'
    { levelThree = Prelude.Nothing,
      levelFour = Prelude.Nothing,
      levelOne = Prelude.Nothing,
      levelFive = Prelude.Nothing,
      levelTwo = Prelude.Nothing
    }

-- | Information about level three.
hierarchyStructure_levelThree :: Lens.Lens' HierarchyStructure (Prelude.Maybe HierarchyLevel)
hierarchyStructure_levelThree = Lens.lens (\HierarchyStructure' {levelThree} -> levelThree) (\s@HierarchyStructure' {} a -> s {levelThree = a} :: HierarchyStructure)

-- | Information about level four.
hierarchyStructure_levelFour :: Lens.Lens' HierarchyStructure (Prelude.Maybe HierarchyLevel)
hierarchyStructure_levelFour = Lens.lens (\HierarchyStructure' {levelFour} -> levelFour) (\s@HierarchyStructure' {} a -> s {levelFour = a} :: HierarchyStructure)

-- | Information about level one.
hierarchyStructure_levelOne :: Lens.Lens' HierarchyStructure (Prelude.Maybe HierarchyLevel)
hierarchyStructure_levelOne = Lens.lens (\HierarchyStructure' {levelOne} -> levelOne) (\s@HierarchyStructure' {} a -> s {levelOne = a} :: HierarchyStructure)

-- | Information about level five.
hierarchyStructure_levelFive :: Lens.Lens' HierarchyStructure (Prelude.Maybe HierarchyLevel)
hierarchyStructure_levelFive = Lens.lens (\HierarchyStructure' {levelFive} -> levelFive) (\s@HierarchyStructure' {} a -> s {levelFive = a} :: HierarchyStructure)

-- | Information about level two.
hierarchyStructure_levelTwo :: Lens.Lens' HierarchyStructure (Prelude.Maybe HierarchyLevel)
hierarchyStructure_levelTwo = Lens.lens (\HierarchyStructure' {levelTwo} -> levelTwo) (\s@HierarchyStructure' {} a -> s {levelTwo = a} :: HierarchyStructure)

instance Core.FromJSON HierarchyStructure where
  parseJSON =
    Core.withObject
      "HierarchyStructure"
      ( \x ->
          HierarchyStructure'
            Prelude.<$> (x Core..:? "LevelThree")
            Prelude.<*> (x Core..:? "LevelFour")
            Prelude.<*> (x Core..:? "LevelOne")
            Prelude.<*> (x Core..:? "LevelFive")
            Prelude.<*> (x Core..:? "LevelTwo")
      )

instance Prelude.Hashable HierarchyStructure where
  hashWithSalt _salt HierarchyStructure' {..} =
    _salt `Prelude.hashWithSalt` levelThree
      `Prelude.hashWithSalt` levelFour
      `Prelude.hashWithSalt` levelOne
      `Prelude.hashWithSalt` levelFive
      `Prelude.hashWithSalt` levelTwo

instance Prelude.NFData HierarchyStructure where
  rnf HierarchyStructure' {..} =
    Prelude.rnf levelThree
      `Prelude.seq` Prelude.rnf levelFour
      `Prelude.seq` Prelude.rnf levelOne
      `Prelude.seq` Prelude.rnf levelFive
      `Prelude.seq` Prelude.rnf levelTwo
