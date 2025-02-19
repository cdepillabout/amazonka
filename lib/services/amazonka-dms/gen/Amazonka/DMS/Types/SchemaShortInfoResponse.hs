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
-- Module      : Amazonka.DMS.Types.SchemaShortInfoResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.SchemaShortInfoResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a schema in a Fleet Advisor collector inventory.
--
-- /See:/ 'newSchemaShortInfoResponse' smart constructor.
data SchemaShortInfoResponse = SchemaShortInfoResponse'
  { -- | The name of a database in a Fleet Advisor collector inventory.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The name of a schema in a Fleet Advisor collector inventory.
    schemaName :: Prelude.Maybe Prelude.Text,
    -- | The ID of a database in a Fleet Advisor collector inventory.
    databaseId :: Prelude.Maybe Prelude.Text,
    -- | The IP address of a database in a Fleet Advisor collector inventory.
    databaseIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The ID of a schema in a Fleet Advisor collector inventory.
    schemaId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SchemaShortInfoResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseName', 'schemaShortInfoResponse_databaseName' - The name of a database in a Fleet Advisor collector inventory.
--
-- 'schemaName', 'schemaShortInfoResponse_schemaName' - The name of a schema in a Fleet Advisor collector inventory.
--
-- 'databaseId', 'schemaShortInfoResponse_databaseId' - The ID of a database in a Fleet Advisor collector inventory.
--
-- 'databaseIpAddress', 'schemaShortInfoResponse_databaseIpAddress' - The IP address of a database in a Fleet Advisor collector inventory.
--
-- 'schemaId', 'schemaShortInfoResponse_schemaId' - The ID of a schema in a Fleet Advisor collector inventory.
newSchemaShortInfoResponse ::
  SchemaShortInfoResponse
newSchemaShortInfoResponse =
  SchemaShortInfoResponse'
    { databaseName =
        Prelude.Nothing,
      schemaName = Prelude.Nothing,
      databaseId = Prelude.Nothing,
      databaseIpAddress = Prelude.Nothing,
      schemaId = Prelude.Nothing
    }

-- | The name of a database in a Fleet Advisor collector inventory.
schemaShortInfoResponse_databaseName :: Lens.Lens' SchemaShortInfoResponse (Prelude.Maybe Prelude.Text)
schemaShortInfoResponse_databaseName = Lens.lens (\SchemaShortInfoResponse' {databaseName} -> databaseName) (\s@SchemaShortInfoResponse' {} a -> s {databaseName = a} :: SchemaShortInfoResponse)

-- | The name of a schema in a Fleet Advisor collector inventory.
schemaShortInfoResponse_schemaName :: Lens.Lens' SchemaShortInfoResponse (Prelude.Maybe Prelude.Text)
schemaShortInfoResponse_schemaName = Lens.lens (\SchemaShortInfoResponse' {schemaName} -> schemaName) (\s@SchemaShortInfoResponse' {} a -> s {schemaName = a} :: SchemaShortInfoResponse)

-- | The ID of a database in a Fleet Advisor collector inventory.
schemaShortInfoResponse_databaseId :: Lens.Lens' SchemaShortInfoResponse (Prelude.Maybe Prelude.Text)
schemaShortInfoResponse_databaseId = Lens.lens (\SchemaShortInfoResponse' {databaseId} -> databaseId) (\s@SchemaShortInfoResponse' {} a -> s {databaseId = a} :: SchemaShortInfoResponse)

-- | The IP address of a database in a Fleet Advisor collector inventory.
schemaShortInfoResponse_databaseIpAddress :: Lens.Lens' SchemaShortInfoResponse (Prelude.Maybe Prelude.Text)
schemaShortInfoResponse_databaseIpAddress = Lens.lens (\SchemaShortInfoResponse' {databaseIpAddress} -> databaseIpAddress) (\s@SchemaShortInfoResponse' {} a -> s {databaseIpAddress = a} :: SchemaShortInfoResponse)

-- | The ID of a schema in a Fleet Advisor collector inventory.
schemaShortInfoResponse_schemaId :: Lens.Lens' SchemaShortInfoResponse (Prelude.Maybe Prelude.Text)
schemaShortInfoResponse_schemaId = Lens.lens (\SchemaShortInfoResponse' {schemaId} -> schemaId) (\s@SchemaShortInfoResponse' {} a -> s {schemaId = a} :: SchemaShortInfoResponse)

instance Core.FromJSON SchemaShortInfoResponse where
  parseJSON =
    Core.withObject
      "SchemaShortInfoResponse"
      ( \x ->
          SchemaShortInfoResponse'
            Prelude.<$> (x Core..:? "DatabaseName")
            Prelude.<*> (x Core..:? "SchemaName")
            Prelude.<*> (x Core..:? "DatabaseId")
            Prelude.<*> (x Core..:? "DatabaseIpAddress")
            Prelude.<*> (x Core..:? "SchemaId")
      )

instance Prelude.Hashable SchemaShortInfoResponse where
  hashWithSalt _salt SchemaShortInfoResponse' {..} =
    _salt `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` schemaName
      `Prelude.hashWithSalt` databaseId
      `Prelude.hashWithSalt` databaseIpAddress
      `Prelude.hashWithSalt` schemaId

instance Prelude.NFData SchemaShortInfoResponse where
  rnf SchemaShortInfoResponse' {..} =
    Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf schemaName
      `Prelude.seq` Prelude.rnf databaseId
      `Prelude.seq` Prelude.rnf databaseIpAddress
      `Prelude.seq` Prelude.rnf schemaId
