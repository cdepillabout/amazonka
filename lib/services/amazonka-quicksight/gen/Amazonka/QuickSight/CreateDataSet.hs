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
-- Module      : Amazonka.QuickSight.CreateDataSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a dataset. This operation doesn\'t support datasets that include
-- uploaded files as a source.
module Amazonka.QuickSight.CreateDataSet
  ( -- * Creating a Request
    CreateDataSet (..),
    newCreateDataSet,

    -- * Request Lenses
    createDataSet_tags,
    createDataSet_columnLevelPermissionRules,
    createDataSet_dataSetUsageConfiguration,
    createDataSet_permissions,
    createDataSet_rowLevelPermissionTagConfiguration,
    createDataSet_columnGroups,
    createDataSet_fieldFolders,
    createDataSet_rowLevelPermissionDataSet,
    createDataSet_logicalTableMap,
    createDataSet_awsAccountId,
    createDataSet_dataSetId,
    createDataSet_name,
    createDataSet_physicalTableMap,
    createDataSet_importMode,

    -- * Destructuring the Response
    CreateDataSetResponse (..),
    newCreateDataSetResponse,

    -- * Response Lenses
    createDataSetResponse_ingestionArn,
    createDataSetResponse_requestId,
    createDataSetResponse_arn,
    createDataSetResponse_dataSetId,
    createDataSetResponse_ingestionId,
    createDataSetResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDataSet' smart constructor.
data CreateDataSet = CreateDataSet'
  { -- | Contains a map of the key-value pairs for the resource tag or tags
    -- assigned to the dataset.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | A set of one or more definitions of a @ ColumnLevelPermissionRule @.
    columnLevelPermissionRules :: Prelude.Maybe (Prelude.NonEmpty ColumnLevelPermissionRule),
    dataSetUsageConfiguration :: Prelude.Maybe DataSetUsageConfiguration,
    -- | A list of resource permissions on the dataset.
    permissions :: Prelude.Maybe (Prelude.NonEmpty ResourcePermission),
    -- | The configuration of tags on a dataset to set row-level security.
    -- Row-level security tags are currently supported for anonymous embedding
    -- only.
    rowLevelPermissionTagConfiguration :: Prelude.Maybe RowLevelPermissionTagConfiguration,
    -- | Groupings of columns that work together in certain Amazon QuickSight
    -- features. Currently, only geospatial hierarchy is supported.
    columnGroups :: Prelude.Maybe (Prelude.NonEmpty ColumnGroup),
    -- | The folder that contains fields and nested subfolders for your dataset.
    fieldFolders :: Prelude.Maybe (Prelude.HashMap Prelude.Text FieldFolder),
    -- | The row-level security configuration for the data that you want to
    -- create.
    rowLevelPermissionDataSet :: Prelude.Maybe RowLevelPermissionDataSet,
    -- | Configures the combination and transformation of the data from the
    -- physical tables.
    logicalTableMap :: Prelude.Maybe (Prelude.HashMap Prelude.Text LogicalTable),
    -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text,
    -- | An ID for the dataset that you want to create. This ID is unique per
    -- Amazon Web Services Region for each Amazon Web Services account.
    dataSetId :: Prelude.Text,
    -- | The display name for the dataset.
    name :: Prelude.Text,
    -- | Declares the physical tables that are available in the underlying data
    -- sources.
    physicalTableMap :: Prelude.HashMap Prelude.Text PhysicalTable,
    -- | Indicates whether you want to import the data into SPICE.
    importMode :: DataSetImportMode
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDataSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDataSet_tags' - Contains a map of the key-value pairs for the resource tag or tags
-- assigned to the dataset.
--
-- 'columnLevelPermissionRules', 'createDataSet_columnLevelPermissionRules' - A set of one or more definitions of a @ ColumnLevelPermissionRule @.
--
-- 'dataSetUsageConfiguration', 'createDataSet_dataSetUsageConfiguration' - Undocumented member.
--
-- 'permissions', 'createDataSet_permissions' - A list of resource permissions on the dataset.
--
-- 'rowLevelPermissionTagConfiguration', 'createDataSet_rowLevelPermissionTagConfiguration' - The configuration of tags on a dataset to set row-level security.
-- Row-level security tags are currently supported for anonymous embedding
-- only.
--
-- 'columnGroups', 'createDataSet_columnGroups' - Groupings of columns that work together in certain Amazon QuickSight
-- features. Currently, only geospatial hierarchy is supported.
--
-- 'fieldFolders', 'createDataSet_fieldFolders' - The folder that contains fields and nested subfolders for your dataset.
--
-- 'rowLevelPermissionDataSet', 'createDataSet_rowLevelPermissionDataSet' - The row-level security configuration for the data that you want to
-- create.
--
-- 'logicalTableMap', 'createDataSet_logicalTableMap' - Configures the combination and transformation of the data from the
-- physical tables.
--
-- 'awsAccountId', 'createDataSet_awsAccountId' - The Amazon Web Services account ID.
--
-- 'dataSetId', 'createDataSet_dataSetId' - An ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
--
-- 'name', 'createDataSet_name' - The display name for the dataset.
--
-- 'physicalTableMap', 'createDataSet_physicalTableMap' - Declares the physical tables that are available in the underlying data
-- sources.
--
-- 'importMode', 'createDataSet_importMode' - Indicates whether you want to import the data into SPICE.
newCreateDataSet ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'importMode'
  DataSetImportMode ->
  CreateDataSet
newCreateDataSet
  pAwsAccountId_
  pDataSetId_
  pName_
  pImportMode_ =
    CreateDataSet'
      { tags = Prelude.Nothing,
        columnLevelPermissionRules = Prelude.Nothing,
        dataSetUsageConfiguration = Prelude.Nothing,
        permissions = Prelude.Nothing,
        rowLevelPermissionTagConfiguration = Prelude.Nothing,
        columnGroups = Prelude.Nothing,
        fieldFolders = Prelude.Nothing,
        rowLevelPermissionDataSet = Prelude.Nothing,
        logicalTableMap = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        dataSetId = pDataSetId_,
        name = pName_,
        physicalTableMap = Prelude.mempty,
        importMode = pImportMode_
      }

-- | Contains a map of the key-value pairs for the resource tag or tags
-- assigned to the dataset.
createDataSet_tags :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.NonEmpty Tag))
createDataSet_tags = Lens.lens (\CreateDataSet' {tags} -> tags) (\s@CreateDataSet' {} a -> s {tags = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | A set of one or more definitions of a @ ColumnLevelPermissionRule @.
createDataSet_columnLevelPermissionRules :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.NonEmpty ColumnLevelPermissionRule))
createDataSet_columnLevelPermissionRules = Lens.lens (\CreateDataSet' {columnLevelPermissionRules} -> columnLevelPermissionRules) (\s@CreateDataSet' {} a -> s {columnLevelPermissionRules = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
createDataSet_dataSetUsageConfiguration :: Lens.Lens' CreateDataSet (Prelude.Maybe DataSetUsageConfiguration)
createDataSet_dataSetUsageConfiguration = Lens.lens (\CreateDataSet' {dataSetUsageConfiguration} -> dataSetUsageConfiguration) (\s@CreateDataSet' {} a -> s {dataSetUsageConfiguration = a} :: CreateDataSet)

-- | A list of resource permissions on the dataset.
createDataSet_permissions :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.NonEmpty ResourcePermission))
createDataSet_permissions = Lens.lens (\CreateDataSet' {permissions} -> permissions) (\s@CreateDataSet' {} a -> s {permissions = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | The configuration of tags on a dataset to set row-level security.
-- Row-level security tags are currently supported for anonymous embedding
-- only.
createDataSet_rowLevelPermissionTagConfiguration :: Lens.Lens' CreateDataSet (Prelude.Maybe RowLevelPermissionTagConfiguration)
createDataSet_rowLevelPermissionTagConfiguration = Lens.lens (\CreateDataSet' {rowLevelPermissionTagConfiguration} -> rowLevelPermissionTagConfiguration) (\s@CreateDataSet' {} a -> s {rowLevelPermissionTagConfiguration = a} :: CreateDataSet)

-- | Groupings of columns that work together in certain Amazon QuickSight
-- features. Currently, only geospatial hierarchy is supported.
createDataSet_columnGroups :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.NonEmpty ColumnGroup))
createDataSet_columnGroups = Lens.lens (\CreateDataSet' {columnGroups} -> columnGroups) (\s@CreateDataSet' {} a -> s {columnGroups = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | The folder that contains fields and nested subfolders for your dataset.
createDataSet_fieldFolders :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.HashMap Prelude.Text FieldFolder))
createDataSet_fieldFolders = Lens.lens (\CreateDataSet' {fieldFolders} -> fieldFolders) (\s@CreateDataSet' {} a -> s {fieldFolders = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | The row-level security configuration for the data that you want to
-- create.
createDataSet_rowLevelPermissionDataSet :: Lens.Lens' CreateDataSet (Prelude.Maybe RowLevelPermissionDataSet)
createDataSet_rowLevelPermissionDataSet = Lens.lens (\CreateDataSet' {rowLevelPermissionDataSet} -> rowLevelPermissionDataSet) (\s@CreateDataSet' {} a -> s {rowLevelPermissionDataSet = a} :: CreateDataSet)

-- | Configures the combination and transformation of the data from the
-- physical tables.
createDataSet_logicalTableMap :: Lens.Lens' CreateDataSet (Prelude.Maybe (Prelude.HashMap Prelude.Text LogicalTable))
createDataSet_logicalTableMap = Lens.lens (\CreateDataSet' {logicalTableMap} -> logicalTableMap) (\s@CreateDataSet' {} a -> s {logicalTableMap = a} :: CreateDataSet) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services account ID.
createDataSet_awsAccountId :: Lens.Lens' CreateDataSet Prelude.Text
createDataSet_awsAccountId = Lens.lens (\CreateDataSet' {awsAccountId} -> awsAccountId) (\s@CreateDataSet' {} a -> s {awsAccountId = a} :: CreateDataSet)

-- | An ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
createDataSet_dataSetId :: Lens.Lens' CreateDataSet Prelude.Text
createDataSet_dataSetId = Lens.lens (\CreateDataSet' {dataSetId} -> dataSetId) (\s@CreateDataSet' {} a -> s {dataSetId = a} :: CreateDataSet)

-- | The display name for the dataset.
createDataSet_name :: Lens.Lens' CreateDataSet Prelude.Text
createDataSet_name = Lens.lens (\CreateDataSet' {name} -> name) (\s@CreateDataSet' {} a -> s {name = a} :: CreateDataSet)

-- | Declares the physical tables that are available in the underlying data
-- sources.
createDataSet_physicalTableMap :: Lens.Lens' CreateDataSet (Prelude.HashMap Prelude.Text PhysicalTable)
createDataSet_physicalTableMap = Lens.lens (\CreateDataSet' {physicalTableMap} -> physicalTableMap) (\s@CreateDataSet' {} a -> s {physicalTableMap = a} :: CreateDataSet) Prelude.. Lens.coerced

-- | Indicates whether you want to import the data into SPICE.
createDataSet_importMode :: Lens.Lens' CreateDataSet DataSetImportMode
createDataSet_importMode = Lens.lens (\CreateDataSet' {importMode} -> importMode) (\s@CreateDataSet' {} a -> s {importMode = a} :: CreateDataSet)

instance Core.AWSRequest CreateDataSet where
  type
    AWSResponse CreateDataSet =
      CreateDataSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDataSetResponse'
            Prelude.<$> (x Core..?> "IngestionArn")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "DataSetId")
            Prelude.<*> (x Core..?> "IngestionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDataSet where
  hashWithSalt _salt CreateDataSet' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` columnLevelPermissionRules
      `Prelude.hashWithSalt` dataSetUsageConfiguration
      `Prelude.hashWithSalt` permissions
      `Prelude.hashWithSalt` rowLevelPermissionTagConfiguration
      `Prelude.hashWithSalt` columnGroups
      `Prelude.hashWithSalt` fieldFolders
      `Prelude.hashWithSalt` rowLevelPermissionDataSet
      `Prelude.hashWithSalt` logicalTableMap
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` dataSetId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` physicalTableMap
      `Prelude.hashWithSalt` importMode

instance Prelude.NFData CreateDataSet where
  rnf CreateDataSet' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf columnLevelPermissionRules
      `Prelude.seq` Prelude.rnf dataSetUsageConfiguration
      `Prelude.seq` Prelude.rnf permissions
      `Prelude.seq` Prelude.rnf rowLevelPermissionTagConfiguration
      `Prelude.seq` Prelude.rnf columnGroups
      `Prelude.seq` Prelude.rnf fieldFolders
      `Prelude.seq` Prelude.rnf rowLevelPermissionDataSet
      `Prelude.seq` Prelude.rnf logicalTableMap
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf physicalTableMap
      `Prelude.seq` Prelude.rnf importMode

instance Core.ToHeaders CreateDataSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDataSet where
  toJSON CreateDataSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ColumnLevelPermissionRules" Core..=)
              Prelude.<$> columnLevelPermissionRules,
            ("DataSetUsageConfiguration" Core..=)
              Prelude.<$> dataSetUsageConfiguration,
            ("Permissions" Core..=) Prelude.<$> permissions,
            ("RowLevelPermissionTagConfiguration" Core..=)
              Prelude.<$> rowLevelPermissionTagConfiguration,
            ("ColumnGroups" Core..=) Prelude.<$> columnGroups,
            ("FieldFolders" Core..=) Prelude.<$> fieldFolders,
            ("RowLevelPermissionDataSet" Core..=)
              Prelude.<$> rowLevelPermissionDataSet,
            ("LogicalTableMap" Core..=)
              Prelude.<$> logicalTableMap,
            Prelude.Just ("DataSetId" Core..= dataSetId),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("PhysicalTableMap" Core..= physicalTableMap),
            Prelude.Just ("ImportMode" Core..= importMode)
          ]
      )

instance Core.ToPath CreateDataSet where
  toPath CreateDataSet' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS awsAccountId, "/data-sets"]

instance Core.ToQuery CreateDataSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDataSetResponse' smart constructor.
data CreateDataSetResponse = CreateDataSetResponse'
  { -- | The ARN for the ingestion, which is triggered as a result of dataset
    -- creation if the import mode is SPICE.
    ingestionArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the dataset.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID for the dataset that you want to create. This ID is unique per
    -- Amazon Web Services Region for each Amazon Web Services account.
    dataSetId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the ingestion, which is triggered as a result of dataset
    -- creation if the import mode is SPICE.
    ingestionId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDataSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ingestionArn', 'createDataSetResponse_ingestionArn' - The ARN for the ingestion, which is triggered as a result of dataset
-- creation if the import mode is SPICE.
--
-- 'requestId', 'createDataSetResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'createDataSetResponse_arn' - The Amazon Resource Name (ARN) of the dataset.
--
-- 'dataSetId', 'createDataSetResponse_dataSetId' - The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
--
-- 'ingestionId', 'createDataSetResponse_ingestionId' - The ID of the ingestion, which is triggered as a result of dataset
-- creation if the import mode is SPICE.
--
-- 'status', 'createDataSetResponse_status' - The HTTP status of the request.
newCreateDataSetResponse ::
  -- | 'status'
  Prelude.Int ->
  CreateDataSetResponse
newCreateDataSetResponse pStatus_ =
  CreateDataSetResponse'
    { ingestionArn =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      arn = Prelude.Nothing,
      dataSetId = Prelude.Nothing,
      ingestionId = Prelude.Nothing,
      status = pStatus_
    }

-- | The ARN for the ingestion, which is triggered as a result of dataset
-- creation if the import mode is SPICE.
createDataSetResponse_ingestionArn :: Lens.Lens' CreateDataSetResponse (Prelude.Maybe Prelude.Text)
createDataSetResponse_ingestionArn = Lens.lens (\CreateDataSetResponse' {ingestionArn} -> ingestionArn) (\s@CreateDataSetResponse' {} a -> s {ingestionArn = a} :: CreateDataSetResponse)

-- | The Amazon Web Services request ID for this operation.
createDataSetResponse_requestId :: Lens.Lens' CreateDataSetResponse (Prelude.Maybe Prelude.Text)
createDataSetResponse_requestId = Lens.lens (\CreateDataSetResponse' {requestId} -> requestId) (\s@CreateDataSetResponse' {} a -> s {requestId = a} :: CreateDataSetResponse)

-- | The Amazon Resource Name (ARN) of the dataset.
createDataSetResponse_arn :: Lens.Lens' CreateDataSetResponse (Prelude.Maybe Prelude.Text)
createDataSetResponse_arn = Lens.lens (\CreateDataSetResponse' {arn} -> arn) (\s@CreateDataSetResponse' {} a -> s {arn = a} :: CreateDataSetResponse)

-- | The ID for the dataset that you want to create. This ID is unique per
-- Amazon Web Services Region for each Amazon Web Services account.
createDataSetResponse_dataSetId :: Lens.Lens' CreateDataSetResponse (Prelude.Maybe Prelude.Text)
createDataSetResponse_dataSetId = Lens.lens (\CreateDataSetResponse' {dataSetId} -> dataSetId) (\s@CreateDataSetResponse' {} a -> s {dataSetId = a} :: CreateDataSetResponse)

-- | The ID of the ingestion, which is triggered as a result of dataset
-- creation if the import mode is SPICE.
createDataSetResponse_ingestionId :: Lens.Lens' CreateDataSetResponse (Prelude.Maybe Prelude.Text)
createDataSetResponse_ingestionId = Lens.lens (\CreateDataSetResponse' {ingestionId} -> ingestionId) (\s@CreateDataSetResponse' {} a -> s {ingestionId = a} :: CreateDataSetResponse)

-- | The HTTP status of the request.
createDataSetResponse_status :: Lens.Lens' CreateDataSetResponse Prelude.Int
createDataSetResponse_status = Lens.lens (\CreateDataSetResponse' {status} -> status) (\s@CreateDataSetResponse' {} a -> s {status = a} :: CreateDataSetResponse)

instance Prelude.NFData CreateDataSetResponse where
  rnf CreateDataSetResponse' {..} =
    Prelude.rnf ingestionArn
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf ingestionId
      `Prelude.seq` Prelude.rnf status
