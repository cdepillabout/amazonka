{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Schemas.ExportSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Undocumented operation.
module Amazonka.Schemas.ExportSchema
  ( -- * Creating a Request
    ExportSchema (..),
    newExportSchema,

    -- * Request Lenses
    exportSchema_schemaVersion,
    exportSchema_registryName,
    exportSchema_schemaName,
    exportSchema_type,

    -- * Destructuring the Response
    ExportSchemaResponse (..),
    newExportSchemaResponse,

    -- * Response Lenses
    exportSchemaResponse_type,
    exportSchemaResponse_schemaName,
    exportSchemaResponse_schemaArn,
    exportSchemaResponse_schemaVersion,
    exportSchemaResponse_content,
    exportSchemaResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Schemas.Types

-- | /See:/ 'newExportSchema' smart constructor.
data ExportSchema = ExportSchema'
  { -- | Specifying this limits the results to only this schema version.
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Text,
    type' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'exportSchema_schemaVersion' - Specifying this limits the results to only this schema version.
--
-- 'registryName', 'exportSchema_registryName' - The name of the registry.
--
-- 'schemaName', 'exportSchema_schemaName' - The name of the schema.
--
-- 'type'', 'exportSchema_type' - Undocumented member.
newExportSchema ::
  -- | 'registryName'
  Prelude.Text ->
  -- | 'schemaName'
  Prelude.Text ->
  -- | 'type''
  Prelude.Text ->
  ExportSchema
newExportSchema pRegistryName_ pSchemaName_ pType_ =
  ExportSchema'
    { schemaVersion = Prelude.Nothing,
      registryName = pRegistryName_,
      schemaName = pSchemaName_,
      type' = pType_
    }

-- | Specifying this limits the results to only this schema version.
exportSchema_schemaVersion :: Lens.Lens' ExportSchema (Prelude.Maybe Prelude.Text)
exportSchema_schemaVersion = Lens.lens (\ExportSchema' {schemaVersion} -> schemaVersion) (\s@ExportSchema' {} a -> s {schemaVersion = a} :: ExportSchema)

-- | The name of the registry.
exportSchema_registryName :: Lens.Lens' ExportSchema Prelude.Text
exportSchema_registryName = Lens.lens (\ExportSchema' {registryName} -> registryName) (\s@ExportSchema' {} a -> s {registryName = a} :: ExportSchema)

-- | The name of the schema.
exportSchema_schemaName :: Lens.Lens' ExportSchema Prelude.Text
exportSchema_schemaName = Lens.lens (\ExportSchema' {schemaName} -> schemaName) (\s@ExportSchema' {} a -> s {schemaName = a} :: ExportSchema)

-- | Undocumented member.
exportSchema_type :: Lens.Lens' ExportSchema Prelude.Text
exportSchema_type = Lens.lens (\ExportSchema' {type'} -> type') (\s@ExportSchema' {} a -> s {type' = a} :: ExportSchema)

instance Core.AWSRequest ExportSchema where
  type AWSResponse ExportSchema = ExportSchemaResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportSchemaResponse'
            Prelude.<$> (x Core..?> "Type")
            Prelude.<*> (x Core..?> "SchemaName")
            Prelude.<*> (x Core..?> "SchemaArn")
            Prelude.<*> (x Core..?> "SchemaVersion")
            Prelude.<*> (x Core..?> "Content")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ExportSchema where
  hashWithSalt _salt ExportSchema' {..} =
    _salt `Prelude.hashWithSalt` schemaVersion
      `Prelude.hashWithSalt` registryName
      `Prelude.hashWithSalt` schemaName
      `Prelude.hashWithSalt` type'

instance Prelude.NFData ExportSchema where
  rnf ExportSchema' {..} =
    Prelude.rnf schemaVersion
      `Prelude.seq` Prelude.rnf registryName
      `Prelude.seq` Prelude.rnf schemaName
      `Prelude.seq` Prelude.rnf type'

instance Core.ToHeaders ExportSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ExportSchema where
  toPath ExportSchema' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas/name/",
        Core.toBS schemaName,
        "/export"
      ]

instance Core.ToQuery ExportSchema where
  toQuery ExportSchema' {..} =
    Prelude.mconcat
      [ "schemaVersion" Core.=: schemaVersion,
        "type" Core.=: type'
      ]

-- | /See:/ 'newExportSchemaResponse' smart constructor.
data ExportSchemaResponse = ExportSchemaResponse'
  { type' :: Prelude.Maybe Prelude.Text,
    schemaName :: Prelude.Maybe Prelude.Text,
    schemaArn :: Prelude.Maybe Prelude.Text,
    schemaVersion :: Prelude.Maybe Prelude.Text,
    content :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'exportSchemaResponse_type' - Undocumented member.
--
-- 'schemaName', 'exportSchemaResponse_schemaName' - Undocumented member.
--
-- 'schemaArn', 'exportSchemaResponse_schemaArn' - Undocumented member.
--
-- 'schemaVersion', 'exportSchemaResponse_schemaVersion' - Undocumented member.
--
-- 'content', 'exportSchemaResponse_content' - Undocumented member.
--
-- 'httpStatus', 'exportSchemaResponse_httpStatus' - The response's http status code.
newExportSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExportSchemaResponse
newExportSchemaResponse pHttpStatus_ =
  ExportSchemaResponse'
    { type' = Prelude.Nothing,
      schemaName = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      schemaVersion = Prelude.Nothing,
      content = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
exportSchemaResponse_type :: Lens.Lens' ExportSchemaResponse (Prelude.Maybe Prelude.Text)
exportSchemaResponse_type = Lens.lens (\ExportSchemaResponse' {type'} -> type') (\s@ExportSchemaResponse' {} a -> s {type' = a} :: ExportSchemaResponse)

-- | Undocumented member.
exportSchemaResponse_schemaName :: Lens.Lens' ExportSchemaResponse (Prelude.Maybe Prelude.Text)
exportSchemaResponse_schemaName = Lens.lens (\ExportSchemaResponse' {schemaName} -> schemaName) (\s@ExportSchemaResponse' {} a -> s {schemaName = a} :: ExportSchemaResponse)

-- | Undocumented member.
exportSchemaResponse_schemaArn :: Lens.Lens' ExportSchemaResponse (Prelude.Maybe Prelude.Text)
exportSchemaResponse_schemaArn = Lens.lens (\ExportSchemaResponse' {schemaArn} -> schemaArn) (\s@ExportSchemaResponse' {} a -> s {schemaArn = a} :: ExportSchemaResponse)

-- | Undocumented member.
exportSchemaResponse_schemaVersion :: Lens.Lens' ExportSchemaResponse (Prelude.Maybe Prelude.Text)
exportSchemaResponse_schemaVersion = Lens.lens (\ExportSchemaResponse' {schemaVersion} -> schemaVersion) (\s@ExportSchemaResponse' {} a -> s {schemaVersion = a} :: ExportSchemaResponse)

-- | Undocumented member.
exportSchemaResponse_content :: Lens.Lens' ExportSchemaResponse (Prelude.Maybe Prelude.Text)
exportSchemaResponse_content = Lens.lens (\ExportSchemaResponse' {content} -> content) (\s@ExportSchemaResponse' {} a -> s {content = a} :: ExportSchemaResponse)

-- | The response's http status code.
exportSchemaResponse_httpStatus :: Lens.Lens' ExportSchemaResponse Prelude.Int
exportSchemaResponse_httpStatus = Lens.lens (\ExportSchemaResponse' {httpStatus} -> httpStatus) (\s@ExportSchemaResponse' {} a -> s {httpStatus = a} :: ExportSchemaResponse)

instance Prelude.NFData ExportSchemaResponse where
  rnf ExportSchemaResponse' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf schemaName
      `Prelude.seq` Prelude.rnf schemaArn
      `Prelude.seq` Prelude.rnf schemaVersion
      `Prelude.seq` Prelude.rnf content
      `Prelude.seq` Prelude.rnf httpStatus
