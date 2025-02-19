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
-- Module      : Amazonka.FinSpaceData.Types.ChangesetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FinSpaceData.Types.ChangesetSummary where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types.ChangeType
import Amazonka.FinSpaceData.Types.ChangesetErrorInfo
import Amazonka.FinSpaceData.Types.IngestionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A Changeset is unit of data in a Dataset.
--
-- /See:/ 'newChangesetSummary' smart constructor.
data ChangesetSummary = ChangesetSummary'
  { -- | Options that define the location of the data being ingested.
    sourceParams :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique identifier of the updated Changeset.
    updatedByChangesetId :: Prelude.Maybe Prelude.Text,
    -- | Type that indicates how a Changeset is applied to a Dataset.
    --
    -- -   @REPLACE@ – Changeset is considered as a replacement to all prior
    --     loaded Changesets.
    --
    -- -   @APPEND@ – Changeset is considered as an addition to the end of all
    --     prior loaded Changesets.
    --
    -- -   @MODIFY@ – Changeset is considered as a replacement to a specific
    --     prior ingested Changeset.
    changeType :: Prelude.Maybe ChangeType,
    -- | The unique identifier for a Changeset.
    changesetId :: Prelude.Maybe Prelude.Text,
    -- | The ARN identifier of the Changeset.
    changesetArn :: Prelude.Maybe Prelude.Text,
    -- | Options that define the structure of the source file(s).
    formatParams :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Time until which the Changeset is active. The value is determined as
    -- epoch time in milliseconds. For example, the value for Monday, November
    -- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    activeUntilTimestamp :: Prelude.Maybe Prelude.Integer,
    -- | Status of the Changeset ingestion.
    --
    -- -   @PENDING@ – Changeset is pending creation.
    --
    -- -   @FAILED@ – Changeset creation has failed.
    --
    -- -   @SUCCESS@ – Changeset creation has succeeded.
    --
    -- -   @RUNNING@ – Changeset creation is running.
    --
    -- -   @STOP_REQUESTED@ – User requested Changeset creation to stop.
    status :: Prelude.Maybe IngestionStatus,
    -- | The unique identifier of the Changeset that is updated.
    updatesChangesetId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the FinSpace Dataset in which the Changeset is
    -- created.
    datasetId :: Prelude.Maybe Prelude.Text,
    -- | Beginning time from which the Changeset is active. The value is
    -- determined as epoch time in milliseconds. For example, the value for
    -- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    activeFromTimestamp :: Prelude.Maybe Prelude.Integer,
    -- | The timestamp at which the Changeset was created in FinSpace. The value
    -- is determined as epoch time in milliseconds. For example, the value for
    -- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    createTime :: Prelude.Maybe Prelude.Integer,
    -- | The structure with error messages.
    errorInfo :: Prelude.Maybe ChangesetErrorInfo
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChangesetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceParams', 'changesetSummary_sourceParams' - Options that define the location of the data being ingested.
--
-- 'updatedByChangesetId', 'changesetSummary_updatedByChangesetId' - The unique identifier of the updated Changeset.
--
-- 'changeType', 'changesetSummary_changeType' - Type that indicates how a Changeset is applied to a Dataset.
--
-- -   @REPLACE@ – Changeset is considered as a replacement to all prior
--     loaded Changesets.
--
-- -   @APPEND@ – Changeset is considered as an addition to the end of all
--     prior loaded Changesets.
--
-- -   @MODIFY@ – Changeset is considered as a replacement to a specific
--     prior ingested Changeset.
--
-- 'changesetId', 'changesetSummary_changesetId' - The unique identifier for a Changeset.
--
-- 'changesetArn', 'changesetSummary_changesetArn' - The ARN identifier of the Changeset.
--
-- 'formatParams', 'changesetSummary_formatParams' - Options that define the structure of the source file(s).
--
-- 'activeUntilTimestamp', 'changesetSummary_activeUntilTimestamp' - Time until which the Changeset is active. The value is determined as
-- epoch time in milliseconds. For example, the value for Monday, November
-- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
--
-- 'status', 'changesetSummary_status' - Status of the Changeset ingestion.
--
-- -   @PENDING@ – Changeset is pending creation.
--
-- -   @FAILED@ – Changeset creation has failed.
--
-- -   @SUCCESS@ – Changeset creation has succeeded.
--
-- -   @RUNNING@ – Changeset creation is running.
--
-- -   @STOP_REQUESTED@ – User requested Changeset creation to stop.
--
-- 'updatesChangesetId', 'changesetSummary_updatesChangesetId' - The unique identifier of the Changeset that is updated.
--
-- 'datasetId', 'changesetSummary_datasetId' - The unique identifier for the FinSpace Dataset in which the Changeset is
-- created.
--
-- 'activeFromTimestamp', 'changesetSummary_activeFromTimestamp' - Beginning time from which the Changeset is active. The value is
-- determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
--
-- 'createTime', 'changesetSummary_createTime' - The timestamp at which the Changeset was created in FinSpace. The value
-- is determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
--
-- 'errorInfo', 'changesetSummary_errorInfo' - The structure with error messages.
newChangesetSummary ::
  ChangesetSummary
newChangesetSummary =
  ChangesetSummary'
    { sourceParams = Prelude.Nothing,
      updatedByChangesetId = Prelude.Nothing,
      changeType = Prelude.Nothing,
      changesetId = Prelude.Nothing,
      changesetArn = Prelude.Nothing,
      formatParams = Prelude.Nothing,
      activeUntilTimestamp = Prelude.Nothing,
      status = Prelude.Nothing,
      updatesChangesetId = Prelude.Nothing,
      datasetId = Prelude.Nothing,
      activeFromTimestamp = Prelude.Nothing,
      createTime = Prelude.Nothing,
      errorInfo = Prelude.Nothing
    }

-- | Options that define the location of the data being ingested.
changesetSummary_sourceParams :: Lens.Lens' ChangesetSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
changesetSummary_sourceParams = Lens.lens (\ChangesetSummary' {sourceParams} -> sourceParams) (\s@ChangesetSummary' {} a -> s {sourceParams = a} :: ChangesetSummary) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the updated Changeset.
changesetSummary_updatedByChangesetId :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Text)
changesetSummary_updatedByChangesetId = Lens.lens (\ChangesetSummary' {updatedByChangesetId} -> updatedByChangesetId) (\s@ChangesetSummary' {} a -> s {updatedByChangesetId = a} :: ChangesetSummary)

-- | Type that indicates how a Changeset is applied to a Dataset.
--
-- -   @REPLACE@ – Changeset is considered as a replacement to all prior
--     loaded Changesets.
--
-- -   @APPEND@ – Changeset is considered as an addition to the end of all
--     prior loaded Changesets.
--
-- -   @MODIFY@ – Changeset is considered as a replacement to a specific
--     prior ingested Changeset.
changesetSummary_changeType :: Lens.Lens' ChangesetSummary (Prelude.Maybe ChangeType)
changesetSummary_changeType = Lens.lens (\ChangesetSummary' {changeType} -> changeType) (\s@ChangesetSummary' {} a -> s {changeType = a} :: ChangesetSummary)

-- | The unique identifier for a Changeset.
changesetSummary_changesetId :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Text)
changesetSummary_changesetId = Lens.lens (\ChangesetSummary' {changesetId} -> changesetId) (\s@ChangesetSummary' {} a -> s {changesetId = a} :: ChangesetSummary)

-- | The ARN identifier of the Changeset.
changesetSummary_changesetArn :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Text)
changesetSummary_changesetArn = Lens.lens (\ChangesetSummary' {changesetArn} -> changesetArn) (\s@ChangesetSummary' {} a -> s {changesetArn = a} :: ChangesetSummary)

-- | Options that define the structure of the source file(s).
changesetSummary_formatParams :: Lens.Lens' ChangesetSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
changesetSummary_formatParams = Lens.lens (\ChangesetSummary' {formatParams} -> formatParams) (\s@ChangesetSummary' {} a -> s {formatParams = a} :: ChangesetSummary) Prelude.. Lens.mapping Lens.coerced

-- | Time until which the Changeset is active. The value is determined as
-- epoch time in milliseconds. For example, the value for Monday, November
-- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
changesetSummary_activeUntilTimestamp :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Integer)
changesetSummary_activeUntilTimestamp = Lens.lens (\ChangesetSummary' {activeUntilTimestamp} -> activeUntilTimestamp) (\s@ChangesetSummary' {} a -> s {activeUntilTimestamp = a} :: ChangesetSummary)

-- | Status of the Changeset ingestion.
--
-- -   @PENDING@ – Changeset is pending creation.
--
-- -   @FAILED@ – Changeset creation has failed.
--
-- -   @SUCCESS@ – Changeset creation has succeeded.
--
-- -   @RUNNING@ – Changeset creation is running.
--
-- -   @STOP_REQUESTED@ – User requested Changeset creation to stop.
changesetSummary_status :: Lens.Lens' ChangesetSummary (Prelude.Maybe IngestionStatus)
changesetSummary_status = Lens.lens (\ChangesetSummary' {status} -> status) (\s@ChangesetSummary' {} a -> s {status = a} :: ChangesetSummary)

-- | The unique identifier of the Changeset that is updated.
changesetSummary_updatesChangesetId :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Text)
changesetSummary_updatesChangesetId = Lens.lens (\ChangesetSummary' {updatesChangesetId} -> updatesChangesetId) (\s@ChangesetSummary' {} a -> s {updatesChangesetId = a} :: ChangesetSummary)

-- | The unique identifier for the FinSpace Dataset in which the Changeset is
-- created.
changesetSummary_datasetId :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Text)
changesetSummary_datasetId = Lens.lens (\ChangesetSummary' {datasetId} -> datasetId) (\s@ChangesetSummary' {} a -> s {datasetId = a} :: ChangesetSummary)

-- | Beginning time from which the Changeset is active. The value is
-- determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
changesetSummary_activeFromTimestamp :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Integer)
changesetSummary_activeFromTimestamp = Lens.lens (\ChangesetSummary' {activeFromTimestamp} -> activeFromTimestamp) (\s@ChangesetSummary' {} a -> s {activeFromTimestamp = a} :: ChangesetSummary)

-- | The timestamp at which the Changeset was created in FinSpace. The value
-- is determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
changesetSummary_createTime :: Lens.Lens' ChangesetSummary (Prelude.Maybe Prelude.Integer)
changesetSummary_createTime = Lens.lens (\ChangesetSummary' {createTime} -> createTime) (\s@ChangesetSummary' {} a -> s {createTime = a} :: ChangesetSummary)

-- | The structure with error messages.
changesetSummary_errorInfo :: Lens.Lens' ChangesetSummary (Prelude.Maybe ChangesetErrorInfo)
changesetSummary_errorInfo = Lens.lens (\ChangesetSummary' {errorInfo} -> errorInfo) (\s@ChangesetSummary' {} a -> s {errorInfo = a} :: ChangesetSummary)

instance Core.FromJSON ChangesetSummary where
  parseJSON =
    Core.withObject
      "ChangesetSummary"
      ( \x ->
          ChangesetSummary'
            Prelude.<$> (x Core..:? "sourceParams" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "updatedByChangesetId")
            Prelude.<*> (x Core..:? "changeType")
            Prelude.<*> (x Core..:? "changesetId")
            Prelude.<*> (x Core..:? "changesetArn")
            Prelude.<*> (x Core..:? "formatParams" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "activeUntilTimestamp")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "updatesChangesetId")
            Prelude.<*> (x Core..:? "datasetId")
            Prelude.<*> (x Core..:? "activeFromTimestamp")
            Prelude.<*> (x Core..:? "createTime")
            Prelude.<*> (x Core..:? "errorInfo")
      )

instance Prelude.Hashable ChangesetSummary where
  hashWithSalt _salt ChangesetSummary' {..} =
    _salt `Prelude.hashWithSalt` sourceParams
      `Prelude.hashWithSalt` updatedByChangesetId
      `Prelude.hashWithSalt` changeType
      `Prelude.hashWithSalt` changesetId
      `Prelude.hashWithSalt` changesetArn
      `Prelude.hashWithSalt` formatParams
      `Prelude.hashWithSalt` activeUntilTimestamp
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` updatesChangesetId
      `Prelude.hashWithSalt` datasetId
      `Prelude.hashWithSalt` activeFromTimestamp
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` errorInfo

instance Prelude.NFData ChangesetSummary where
  rnf ChangesetSummary' {..} =
    Prelude.rnf sourceParams
      `Prelude.seq` Prelude.rnf updatedByChangesetId
      `Prelude.seq` Prelude.rnf changeType
      `Prelude.seq` Prelude.rnf changesetId
      `Prelude.seq` Prelude.rnf changesetArn
      `Prelude.seq` Prelude.rnf formatParams
      `Prelude.seq` Prelude.rnf activeUntilTimestamp
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf updatesChangesetId
      `Prelude.seq` Prelude.rnf datasetId
      `Prelude.seq` Prelude.rnf activeFromTimestamp
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf errorInfo
