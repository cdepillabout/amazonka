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
-- Module      : Amazonka.Glue.Types.CatalogTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.CatalogTarget where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies an Glue Data Catalog target.
--
-- /See:/ 'newCatalogTarget' smart constructor.
data CatalogTarget = CatalogTarget'
  { -- | The name of the connection for an Amazon S3-backed Data Catalog table to
    -- be a target of the crawl when using a @Catalog@ connection type paired
    -- with a @NETWORK@ Connection type.
    connectionName :: Prelude.Maybe Prelude.Text,
    -- | The name of the database to be synchronized.
    databaseName :: Prelude.Text,
    -- | A list of the tables to be synchronized.
    tables :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CatalogTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionName', 'catalogTarget_connectionName' - The name of the connection for an Amazon S3-backed Data Catalog table to
-- be a target of the crawl when using a @Catalog@ connection type paired
-- with a @NETWORK@ Connection type.
--
-- 'databaseName', 'catalogTarget_databaseName' - The name of the database to be synchronized.
--
-- 'tables', 'catalogTarget_tables' - A list of the tables to be synchronized.
newCatalogTarget ::
  -- | 'databaseName'
  Prelude.Text ->
  -- | 'tables'
  Prelude.NonEmpty Prelude.Text ->
  CatalogTarget
newCatalogTarget pDatabaseName_ pTables_ =
  CatalogTarget'
    { connectionName = Prelude.Nothing,
      databaseName = pDatabaseName_,
      tables = Lens.coerced Lens.# pTables_
    }

-- | The name of the connection for an Amazon S3-backed Data Catalog table to
-- be a target of the crawl when using a @Catalog@ connection type paired
-- with a @NETWORK@ Connection type.
catalogTarget_connectionName :: Lens.Lens' CatalogTarget (Prelude.Maybe Prelude.Text)
catalogTarget_connectionName = Lens.lens (\CatalogTarget' {connectionName} -> connectionName) (\s@CatalogTarget' {} a -> s {connectionName = a} :: CatalogTarget)

-- | The name of the database to be synchronized.
catalogTarget_databaseName :: Lens.Lens' CatalogTarget Prelude.Text
catalogTarget_databaseName = Lens.lens (\CatalogTarget' {databaseName} -> databaseName) (\s@CatalogTarget' {} a -> s {databaseName = a} :: CatalogTarget)

-- | A list of the tables to be synchronized.
catalogTarget_tables :: Lens.Lens' CatalogTarget (Prelude.NonEmpty Prelude.Text)
catalogTarget_tables = Lens.lens (\CatalogTarget' {tables} -> tables) (\s@CatalogTarget' {} a -> s {tables = a} :: CatalogTarget) Prelude.. Lens.coerced

instance Core.FromJSON CatalogTarget where
  parseJSON =
    Core.withObject
      "CatalogTarget"
      ( \x ->
          CatalogTarget'
            Prelude.<$> (x Core..:? "ConnectionName")
            Prelude.<*> (x Core..: "DatabaseName")
            Prelude.<*> (x Core..: "Tables")
      )

instance Prelude.Hashable CatalogTarget where
  hashWithSalt _salt CatalogTarget' {..} =
    _salt `Prelude.hashWithSalt` connectionName
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` tables

instance Prelude.NFData CatalogTarget where
  rnf CatalogTarget' {..} =
    Prelude.rnf connectionName
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf tables

instance Core.ToJSON CatalogTarget where
  toJSON CatalogTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConnectionName" Core..=)
              Prelude.<$> connectionName,
            Prelude.Just ("DatabaseName" Core..= databaseName),
            Prelude.Just ("Tables" Core..= tables)
          ]
      )
