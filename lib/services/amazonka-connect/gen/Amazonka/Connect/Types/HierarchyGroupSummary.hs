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
-- Module      : Amazonka.Connect.Types.HierarchyGroupSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.HierarchyGroupSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains summary information about a hierarchy group.
--
-- /See:/ 'newHierarchyGroupSummary' smart constructor.
data HierarchyGroupSummary = HierarchyGroupSummary'
  { -- | The name of the hierarchy group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the hierarchy group.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the hierarchy group.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HierarchyGroupSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'hierarchyGroupSummary_name' - The name of the hierarchy group.
--
-- 'arn', 'hierarchyGroupSummary_arn' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- 'id', 'hierarchyGroupSummary_id' - The identifier of the hierarchy group.
newHierarchyGroupSummary ::
  HierarchyGroupSummary
newHierarchyGroupSummary =
  HierarchyGroupSummary'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing
    }

-- | The name of the hierarchy group.
hierarchyGroupSummary_name :: Lens.Lens' HierarchyGroupSummary (Prelude.Maybe Prelude.Text)
hierarchyGroupSummary_name = Lens.lens (\HierarchyGroupSummary' {name} -> name) (\s@HierarchyGroupSummary' {} a -> s {name = a} :: HierarchyGroupSummary)

-- | The Amazon Resource Name (ARN) of the hierarchy group.
hierarchyGroupSummary_arn :: Lens.Lens' HierarchyGroupSummary (Prelude.Maybe Prelude.Text)
hierarchyGroupSummary_arn = Lens.lens (\HierarchyGroupSummary' {arn} -> arn) (\s@HierarchyGroupSummary' {} a -> s {arn = a} :: HierarchyGroupSummary)

-- | The identifier of the hierarchy group.
hierarchyGroupSummary_id :: Lens.Lens' HierarchyGroupSummary (Prelude.Maybe Prelude.Text)
hierarchyGroupSummary_id = Lens.lens (\HierarchyGroupSummary' {id} -> id) (\s@HierarchyGroupSummary' {} a -> s {id = a} :: HierarchyGroupSummary)

instance Core.FromJSON HierarchyGroupSummary where
  parseJSON =
    Core.withObject
      "HierarchyGroupSummary"
      ( \x ->
          HierarchyGroupSummary'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Id")
      )

instance Prelude.Hashable HierarchyGroupSummary where
  hashWithSalt _salt HierarchyGroupSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id

instance Prelude.NFData HierarchyGroupSummary where
  rnf HierarchyGroupSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
