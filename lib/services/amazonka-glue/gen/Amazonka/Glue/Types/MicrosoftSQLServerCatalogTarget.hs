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
-- Module      : Amazonka.Glue.Types.MicrosoftSQLServerCatalogTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.MicrosoftSQLServerCatalogTarget where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies a target that uses Microsoft SQL.
--
-- /See:/ 'newMicrosoftSQLServerCatalogTarget' smart constructor.
data MicrosoftSQLServerCatalogTarget = MicrosoftSQLServerCatalogTarget'
  { -- | The name of the data target.
    name :: Prelude.Text,
    -- | The nodes that are inputs to the data target.
    inputs :: Prelude.NonEmpty Prelude.Text,
    -- | The name of the database to write to.
    database :: Prelude.Text,
    -- | The name of the table in the database to write to.
    table :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MicrosoftSQLServerCatalogTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'microsoftSQLServerCatalogTarget_name' - The name of the data target.
--
-- 'inputs', 'microsoftSQLServerCatalogTarget_inputs' - The nodes that are inputs to the data target.
--
-- 'database', 'microsoftSQLServerCatalogTarget_database' - The name of the database to write to.
--
-- 'table', 'microsoftSQLServerCatalogTarget_table' - The name of the table in the database to write to.
newMicrosoftSQLServerCatalogTarget ::
  -- | 'name'
  Prelude.Text ->
  -- | 'inputs'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'database'
  Prelude.Text ->
  -- | 'table'
  Prelude.Text ->
  MicrosoftSQLServerCatalogTarget
newMicrosoftSQLServerCatalogTarget
  pName_
  pInputs_
  pDatabase_
  pTable_ =
    MicrosoftSQLServerCatalogTarget'
      { name = pName_,
        inputs = Lens.coerced Lens.# pInputs_,
        database = pDatabase_,
        table = pTable_
      }

-- | The name of the data target.
microsoftSQLServerCatalogTarget_name :: Lens.Lens' MicrosoftSQLServerCatalogTarget Prelude.Text
microsoftSQLServerCatalogTarget_name = Lens.lens (\MicrosoftSQLServerCatalogTarget' {name} -> name) (\s@MicrosoftSQLServerCatalogTarget' {} a -> s {name = a} :: MicrosoftSQLServerCatalogTarget)

-- | The nodes that are inputs to the data target.
microsoftSQLServerCatalogTarget_inputs :: Lens.Lens' MicrosoftSQLServerCatalogTarget (Prelude.NonEmpty Prelude.Text)
microsoftSQLServerCatalogTarget_inputs = Lens.lens (\MicrosoftSQLServerCatalogTarget' {inputs} -> inputs) (\s@MicrosoftSQLServerCatalogTarget' {} a -> s {inputs = a} :: MicrosoftSQLServerCatalogTarget) Prelude.. Lens.coerced

-- | The name of the database to write to.
microsoftSQLServerCatalogTarget_database :: Lens.Lens' MicrosoftSQLServerCatalogTarget Prelude.Text
microsoftSQLServerCatalogTarget_database = Lens.lens (\MicrosoftSQLServerCatalogTarget' {database} -> database) (\s@MicrosoftSQLServerCatalogTarget' {} a -> s {database = a} :: MicrosoftSQLServerCatalogTarget)

-- | The name of the table in the database to write to.
microsoftSQLServerCatalogTarget_table :: Lens.Lens' MicrosoftSQLServerCatalogTarget Prelude.Text
microsoftSQLServerCatalogTarget_table = Lens.lens (\MicrosoftSQLServerCatalogTarget' {table} -> table) (\s@MicrosoftSQLServerCatalogTarget' {} a -> s {table = a} :: MicrosoftSQLServerCatalogTarget)

instance
  Core.FromJSON
    MicrosoftSQLServerCatalogTarget
  where
  parseJSON =
    Core.withObject
      "MicrosoftSQLServerCatalogTarget"
      ( \x ->
          MicrosoftSQLServerCatalogTarget'
            Prelude.<$> (x Core..: "Name")
            Prelude.<*> (x Core..: "Inputs")
            Prelude.<*> (x Core..: "Database")
            Prelude.<*> (x Core..: "Table")
      )

instance
  Prelude.Hashable
    MicrosoftSQLServerCatalogTarget
  where
  hashWithSalt
    _salt
    MicrosoftSQLServerCatalogTarget' {..} =
      _salt `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` inputs
        `Prelude.hashWithSalt` database
        `Prelude.hashWithSalt` table

instance
  Prelude.NFData
    MicrosoftSQLServerCatalogTarget
  where
  rnf MicrosoftSQLServerCatalogTarget' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf inputs
      `Prelude.seq` Prelude.rnf database
      `Prelude.seq` Prelude.rnf table

instance Core.ToJSON MicrosoftSQLServerCatalogTarget where
  toJSON MicrosoftSQLServerCatalogTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Inputs" Core..= inputs),
            Prelude.Just ("Database" Core..= database),
            Prelude.Just ("Table" Core..= table)
          ]
      )
