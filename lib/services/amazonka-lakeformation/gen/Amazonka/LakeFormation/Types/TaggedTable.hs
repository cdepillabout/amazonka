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
-- Module      : Amazonka.LakeFormation.Types.TaggedTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.TaggedTable where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types.ColumnLFTag
import Amazonka.LakeFormation.Types.LFTagPair
import Amazonka.LakeFormation.Types.TableResource
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure describing a table resource with LF-tags.
--
-- /See:/ 'newTaggedTable' smart constructor.
data TaggedTable = TaggedTable'
  { -- | A list of LF-tags attached to the table.
    lFTagsOnTable :: Prelude.Maybe (Prelude.NonEmpty LFTagPair),
    -- | A table that has LF-tags attached to it.
    table :: Prelude.Maybe TableResource,
    -- | A list of LF-tags attached to the database where the table resides.
    lFTagOnDatabase :: Prelude.Maybe (Prelude.NonEmpty LFTagPair),
    -- | A list of LF-tags attached to columns in the table.
    lFTagsOnColumns :: Prelude.Maybe [ColumnLFTag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaggedTable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lFTagsOnTable', 'taggedTable_lFTagsOnTable' - A list of LF-tags attached to the table.
--
-- 'table', 'taggedTable_table' - A table that has LF-tags attached to it.
--
-- 'lFTagOnDatabase', 'taggedTable_lFTagOnDatabase' - A list of LF-tags attached to the database where the table resides.
--
-- 'lFTagsOnColumns', 'taggedTable_lFTagsOnColumns' - A list of LF-tags attached to columns in the table.
newTaggedTable ::
  TaggedTable
newTaggedTable =
  TaggedTable'
    { lFTagsOnTable = Prelude.Nothing,
      table = Prelude.Nothing,
      lFTagOnDatabase = Prelude.Nothing,
      lFTagsOnColumns = Prelude.Nothing
    }

-- | A list of LF-tags attached to the table.
taggedTable_lFTagsOnTable :: Lens.Lens' TaggedTable (Prelude.Maybe (Prelude.NonEmpty LFTagPair))
taggedTable_lFTagsOnTable = Lens.lens (\TaggedTable' {lFTagsOnTable} -> lFTagsOnTable) (\s@TaggedTable' {} a -> s {lFTagsOnTable = a} :: TaggedTable) Prelude.. Lens.mapping Lens.coerced

-- | A table that has LF-tags attached to it.
taggedTable_table :: Lens.Lens' TaggedTable (Prelude.Maybe TableResource)
taggedTable_table = Lens.lens (\TaggedTable' {table} -> table) (\s@TaggedTable' {} a -> s {table = a} :: TaggedTable)

-- | A list of LF-tags attached to the database where the table resides.
taggedTable_lFTagOnDatabase :: Lens.Lens' TaggedTable (Prelude.Maybe (Prelude.NonEmpty LFTagPair))
taggedTable_lFTagOnDatabase = Lens.lens (\TaggedTable' {lFTagOnDatabase} -> lFTagOnDatabase) (\s@TaggedTable' {} a -> s {lFTagOnDatabase = a} :: TaggedTable) Prelude.. Lens.mapping Lens.coerced

-- | A list of LF-tags attached to columns in the table.
taggedTable_lFTagsOnColumns :: Lens.Lens' TaggedTable (Prelude.Maybe [ColumnLFTag])
taggedTable_lFTagsOnColumns = Lens.lens (\TaggedTable' {lFTagsOnColumns} -> lFTagsOnColumns) (\s@TaggedTable' {} a -> s {lFTagsOnColumns = a} :: TaggedTable) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON TaggedTable where
  parseJSON =
    Core.withObject
      "TaggedTable"
      ( \x ->
          TaggedTable'
            Prelude.<$> (x Core..:? "LFTagsOnTable")
            Prelude.<*> (x Core..:? "Table")
            Prelude.<*> (x Core..:? "LFTagOnDatabase")
            Prelude.<*> ( x Core..:? "LFTagsOnColumns"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable TaggedTable where
  hashWithSalt _salt TaggedTable' {..} =
    _salt `Prelude.hashWithSalt` lFTagsOnTable
      `Prelude.hashWithSalt` table
      `Prelude.hashWithSalt` lFTagOnDatabase
      `Prelude.hashWithSalt` lFTagsOnColumns

instance Prelude.NFData TaggedTable where
  rnf TaggedTable' {..} =
    Prelude.rnf lFTagsOnTable
      `Prelude.seq` Prelude.rnf table
      `Prelude.seq` Prelude.rnf lFTagOnDatabase
      `Prelude.seq` Prelude.rnf lFTagsOnColumns
