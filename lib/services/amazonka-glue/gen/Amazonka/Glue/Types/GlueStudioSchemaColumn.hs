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
-- Module      : Amazonka.Glue.Types.GlueStudioSchemaColumn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.GlueStudioSchemaColumn where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies a single column in a Glue schema definition.
--
-- /See:/ 'newGlueStudioSchemaColumn' smart constructor.
data GlueStudioSchemaColumn = GlueStudioSchemaColumn'
  { -- | The hive type for this column in the Glue Studio schema.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The name of the column in the Glue Studio schema.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GlueStudioSchemaColumn' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'glueStudioSchemaColumn_type' - The hive type for this column in the Glue Studio schema.
--
-- 'name', 'glueStudioSchemaColumn_name' - The name of the column in the Glue Studio schema.
newGlueStudioSchemaColumn ::
  -- | 'name'
  Prelude.Text ->
  GlueStudioSchemaColumn
newGlueStudioSchemaColumn pName_ =
  GlueStudioSchemaColumn'
    { type' = Prelude.Nothing,
      name = pName_
    }

-- | The hive type for this column in the Glue Studio schema.
glueStudioSchemaColumn_type :: Lens.Lens' GlueStudioSchemaColumn (Prelude.Maybe Prelude.Text)
glueStudioSchemaColumn_type = Lens.lens (\GlueStudioSchemaColumn' {type'} -> type') (\s@GlueStudioSchemaColumn' {} a -> s {type' = a} :: GlueStudioSchemaColumn)

-- | The name of the column in the Glue Studio schema.
glueStudioSchemaColumn_name :: Lens.Lens' GlueStudioSchemaColumn Prelude.Text
glueStudioSchemaColumn_name = Lens.lens (\GlueStudioSchemaColumn' {name} -> name) (\s@GlueStudioSchemaColumn' {} a -> s {name = a} :: GlueStudioSchemaColumn)

instance Core.FromJSON GlueStudioSchemaColumn where
  parseJSON =
    Core.withObject
      "GlueStudioSchemaColumn"
      ( \x ->
          GlueStudioSchemaColumn'
            Prelude.<$> (x Core..:? "Type") Prelude.<*> (x Core..: "Name")
      )

instance Prelude.Hashable GlueStudioSchemaColumn where
  hashWithSalt _salt GlueStudioSchemaColumn' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` name

instance Prelude.NFData GlueStudioSchemaColumn where
  rnf GlueStudioSchemaColumn' {..} =
    Prelude.rnf type' `Prelude.seq` Prelude.rnf name

instance Core.ToJSON GlueStudioSchemaColumn where
  toJSON GlueStudioSchemaColumn' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            Prelude.Just ("Name" Core..= name)
          ]
      )
