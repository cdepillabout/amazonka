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
-- Module      : Amazonka.DataExchange.Types.ExportRevisionsToS3ResponseDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataExchange.Types.ExportRevisionsToS3ResponseDetails where

import qualified Amazonka.Core as Core
import Amazonka.DataExchange.Types.ExportServerSideEncryption
import Amazonka.DataExchange.Types.RevisionDestinationEntry
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the export revisions to Amazon S3 response.
--
-- /See:/ 'newExportRevisionsToS3ResponseDetails' smart constructor.
data ExportRevisionsToS3ResponseDetails = ExportRevisionsToS3ResponseDetails'
  { -- | The Amazon Resource Name (ARN) of the event action.
    eventActionArn :: Prelude.Maybe Prelude.Text,
    -- | Encryption configuration of the export job.
    encryption :: Prelude.Maybe ExportServerSideEncryption,
    -- | The destination in Amazon S3 where the revision is exported.
    revisionDestinations :: [RevisionDestinationEntry],
    -- | The unique identifier for the data set associated with this export job.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportRevisionsToS3ResponseDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventActionArn', 'exportRevisionsToS3ResponseDetails_eventActionArn' - The Amazon Resource Name (ARN) of the event action.
--
-- 'encryption', 'exportRevisionsToS3ResponseDetails_encryption' - Encryption configuration of the export job.
--
-- 'revisionDestinations', 'exportRevisionsToS3ResponseDetails_revisionDestinations' - The destination in Amazon S3 where the revision is exported.
--
-- 'dataSetId', 'exportRevisionsToS3ResponseDetails_dataSetId' - The unique identifier for the data set associated with this export job.
newExportRevisionsToS3ResponseDetails ::
  -- | 'dataSetId'
  Prelude.Text ->
  ExportRevisionsToS3ResponseDetails
newExportRevisionsToS3ResponseDetails pDataSetId_ =
  ExportRevisionsToS3ResponseDetails'
    { eventActionArn =
        Prelude.Nothing,
      encryption = Prelude.Nothing,
      revisionDestinations = Prelude.mempty,
      dataSetId = pDataSetId_
    }

-- | The Amazon Resource Name (ARN) of the event action.
exportRevisionsToS3ResponseDetails_eventActionArn :: Lens.Lens' ExportRevisionsToS3ResponseDetails (Prelude.Maybe Prelude.Text)
exportRevisionsToS3ResponseDetails_eventActionArn = Lens.lens (\ExportRevisionsToS3ResponseDetails' {eventActionArn} -> eventActionArn) (\s@ExportRevisionsToS3ResponseDetails' {} a -> s {eventActionArn = a} :: ExportRevisionsToS3ResponseDetails)

-- | Encryption configuration of the export job.
exportRevisionsToS3ResponseDetails_encryption :: Lens.Lens' ExportRevisionsToS3ResponseDetails (Prelude.Maybe ExportServerSideEncryption)
exportRevisionsToS3ResponseDetails_encryption = Lens.lens (\ExportRevisionsToS3ResponseDetails' {encryption} -> encryption) (\s@ExportRevisionsToS3ResponseDetails' {} a -> s {encryption = a} :: ExportRevisionsToS3ResponseDetails)

-- | The destination in Amazon S3 where the revision is exported.
exportRevisionsToS3ResponseDetails_revisionDestinations :: Lens.Lens' ExportRevisionsToS3ResponseDetails [RevisionDestinationEntry]
exportRevisionsToS3ResponseDetails_revisionDestinations = Lens.lens (\ExportRevisionsToS3ResponseDetails' {revisionDestinations} -> revisionDestinations) (\s@ExportRevisionsToS3ResponseDetails' {} a -> s {revisionDestinations = a} :: ExportRevisionsToS3ResponseDetails) Prelude.. Lens.coerced

-- | The unique identifier for the data set associated with this export job.
exportRevisionsToS3ResponseDetails_dataSetId :: Lens.Lens' ExportRevisionsToS3ResponseDetails Prelude.Text
exportRevisionsToS3ResponseDetails_dataSetId = Lens.lens (\ExportRevisionsToS3ResponseDetails' {dataSetId} -> dataSetId) (\s@ExportRevisionsToS3ResponseDetails' {} a -> s {dataSetId = a} :: ExportRevisionsToS3ResponseDetails)

instance
  Core.FromJSON
    ExportRevisionsToS3ResponseDetails
  where
  parseJSON =
    Core.withObject
      "ExportRevisionsToS3ResponseDetails"
      ( \x ->
          ExportRevisionsToS3ResponseDetails'
            Prelude.<$> (x Core..:? "EventActionArn")
            Prelude.<*> (x Core..:? "Encryption")
            Prelude.<*> ( x Core..:? "RevisionDestinations"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "DataSetId")
      )

instance
  Prelude.Hashable
    ExportRevisionsToS3ResponseDetails
  where
  hashWithSalt
    _salt
    ExportRevisionsToS3ResponseDetails' {..} =
      _salt `Prelude.hashWithSalt` eventActionArn
        `Prelude.hashWithSalt` encryption
        `Prelude.hashWithSalt` revisionDestinations
        `Prelude.hashWithSalt` dataSetId

instance
  Prelude.NFData
    ExportRevisionsToS3ResponseDetails
  where
  rnf ExportRevisionsToS3ResponseDetails' {..} =
    Prelude.rnf eventActionArn
      `Prelude.seq` Prelude.rnf encryption
      `Prelude.seq` Prelude.rnf revisionDestinations
      `Prelude.seq` Prelude.rnf dataSetId
