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
-- Module      : Amazonka.RedshiftData.Types.StatementData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RedshiftData.Types.StatementData where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftData.Types.SqlParameter
import Amazonka.RedshiftData.Types.StatusString

-- | The SQL statement to run.
--
-- /See:/ 'newStatementData' smart constructor.
data StatementData = StatementData'
  { -- | A value that indicates whether the statement is a batch query request.
    isBatchStatement :: Prelude.Maybe Prelude.Bool,
    -- | The status of the SQL statement. An example is the that the SQL
    -- statement finished.
    status :: Prelude.Maybe StatusString,
    -- | One or more SQL statements. Each query string in the array corresponds
    -- to one of the queries in a batch query request.
    queryStrings :: Prelude.Maybe [Prelude.Text],
    -- | The parameters used in a SQL statement.
    queryParameters :: Prelude.Maybe (Prelude.NonEmpty SqlParameter),
    -- | The name or Amazon Resource Name (ARN) of the secret that enables access
    -- to the database.
    secretArn :: Prelude.Maybe Prelude.Text,
    -- | The SQL statement.
    queryString :: Prelude.Maybe Prelude.Text,
    -- | The name of the SQL statement.
    statementName :: Prelude.Maybe Prelude.Text,
    -- | The date and time (UTC) the statement was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The date and time (UTC) that the statement metadata was last updated.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | The SQL statement identifier. This value is a universally unique
    -- identifier (UUID) generated by Amazon Redshift Data API.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StatementData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isBatchStatement', 'statementData_isBatchStatement' - A value that indicates whether the statement is a batch query request.
--
-- 'status', 'statementData_status' - The status of the SQL statement. An example is the that the SQL
-- statement finished.
--
-- 'queryStrings', 'statementData_queryStrings' - One or more SQL statements. Each query string in the array corresponds
-- to one of the queries in a batch query request.
--
-- 'queryParameters', 'statementData_queryParameters' - The parameters used in a SQL statement.
--
-- 'secretArn', 'statementData_secretArn' - The name or Amazon Resource Name (ARN) of the secret that enables access
-- to the database.
--
-- 'queryString', 'statementData_queryString' - The SQL statement.
--
-- 'statementName', 'statementData_statementName' - The name of the SQL statement.
--
-- 'createdAt', 'statementData_createdAt' - The date and time (UTC) the statement was created.
--
-- 'updatedAt', 'statementData_updatedAt' - The date and time (UTC) that the statement metadata was last updated.
--
-- 'id', 'statementData_id' - The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
newStatementData ::
  -- | 'id'
  Prelude.Text ->
  StatementData
newStatementData pId_ =
  StatementData'
    { isBatchStatement = Prelude.Nothing,
      status = Prelude.Nothing,
      queryStrings = Prelude.Nothing,
      queryParameters = Prelude.Nothing,
      secretArn = Prelude.Nothing,
      queryString = Prelude.Nothing,
      statementName = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      id = pId_
    }

-- | A value that indicates whether the statement is a batch query request.
statementData_isBatchStatement :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Bool)
statementData_isBatchStatement = Lens.lens (\StatementData' {isBatchStatement} -> isBatchStatement) (\s@StatementData' {} a -> s {isBatchStatement = a} :: StatementData)

-- | The status of the SQL statement. An example is the that the SQL
-- statement finished.
statementData_status :: Lens.Lens' StatementData (Prelude.Maybe StatusString)
statementData_status = Lens.lens (\StatementData' {status} -> status) (\s@StatementData' {} a -> s {status = a} :: StatementData)

-- | One or more SQL statements. Each query string in the array corresponds
-- to one of the queries in a batch query request.
statementData_queryStrings :: Lens.Lens' StatementData (Prelude.Maybe [Prelude.Text])
statementData_queryStrings = Lens.lens (\StatementData' {queryStrings} -> queryStrings) (\s@StatementData' {} a -> s {queryStrings = a} :: StatementData) Prelude.. Lens.mapping Lens.coerced

-- | The parameters used in a SQL statement.
statementData_queryParameters :: Lens.Lens' StatementData (Prelude.Maybe (Prelude.NonEmpty SqlParameter))
statementData_queryParameters = Lens.lens (\StatementData' {queryParameters} -> queryParameters) (\s@StatementData' {} a -> s {queryParameters = a} :: StatementData) Prelude.. Lens.mapping Lens.coerced

-- | The name or Amazon Resource Name (ARN) of the secret that enables access
-- to the database.
statementData_secretArn :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_secretArn = Lens.lens (\StatementData' {secretArn} -> secretArn) (\s@StatementData' {} a -> s {secretArn = a} :: StatementData)

-- | The SQL statement.
statementData_queryString :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_queryString = Lens.lens (\StatementData' {queryString} -> queryString) (\s@StatementData' {} a -> s {queryString = a} :: StatementData)

-- | The name of the SQL statement.
statementData_statementName :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_statementName = Lens.lens (\StatementData' {statementName} -> statementName) (\s@StatementData' {} a -> s {statementName = a} :: StatementData)

-- | The date and time (UTC) the statement was created.
statementData_createdAt :: Lens.Lens' StatementData (Prelude.Maybe Prelude.UTCTime)
statementData_createdAt = Lens.lens (\StatementData' {createdAt} -> createdAt) (\s@StatementData' {} a -> s {createdAt = a} :: StatementData) Prelude.. Lens.mapping Core._Time

-- | The date and time (UTC) that the statement metadata was last updated.
statementData_updatedAt :: Lens.Lens' StatementData (Prelude.Maybe Prelude.UTCTime)
statementData_updatedAt = Lens.lens (\StatementData' {updatedAt} -> updatedAt) (\s@StatementData' {} a -> s {updatedAt = a} :: StatementData) Prelude.. Lens.mapping Core._Time

-- | The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
statementData_id :: Lens.Lens' StatementData Prelude.Text
statementData_id = Lens.lens (\StatementData' {id} -> id) (\s@StatementData' {} a -> s {id = a} :: StatementData)

instance Core.FromJSON StatementData where
  parseJSON =
    Core.withObject
      "StatementData"
      ( \x ->
          StatementData'
            Prelude.<$> (x Core..:? "IsBatchStatement")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "QueryStrings" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "QueryParameters")
            Prelude.<*> (x Core..:? "SecretArn")
            Prelude.<*> (x Core..:? "QueryString")
            Prelude.<*> (x Core..:? "StatementName")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "UpdatedAt")
            Prelude.<*> (x Core..: "Id")
      )

instance Prelude.Hashable StatementData where
  hashWithSalt _salt StatementData' {..} =
    _salt `Prelude.hashWithSalt` isBatchStatement
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` queryStrings
      `Prelude.hashWithSalt` queryParameters
      `Prelude.hashWithSalt` secretArn
      `Prelude.hashWithSalt` queryString
      `Prelude.hashWithSalt` statementName
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` updatedAt
      `Prelude.hashWithSalt` id

instance Prelude.NFData StatementData where
  rnf StatementData' {..} =
    Prelude.rnf isBatchStatement
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf queryStrings
      `Prelude.seq` Prelude.rnf queryParameters
      `Prelude.seq` Prelude.rnf secretArn
      `Prelude.seq` Prelude.rnf queryString
      `Prelude.seq` Prelude.rnf statementName
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf id
