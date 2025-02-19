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
-- Module      : Amazonka.EC2.Types.NetworkInsightsAccessScopeAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.NetworkInsightsAccessScopeAnalysis where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.AnalysisStatus
import Amazonka.EC2.Types.FindingsFound
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a Network Access Scope analysis.
--
-- /See:/ 'newNetworkInsightsAccessScopeAnalysis' smart constructor.
data NetworkInsightsAccessScopeAnalysis = NetworkInsightsAccessScopeAnalysis'
  { -- | The tags.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the Network Access Scope analysis.
    networkInsightsAccessScopeAnalysisId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Network Access Scope.
    networkInsightsAccessScopeId :: Prelude.Maybe Prelude.Text,
    -- | The number of network interfaces analyzed.
    analyzedEniCount :: Prelude.Maybe Prelude.Int,
    -- | The analysis end date.
    endDate :: Prelude.Maybe Core.ISO8601,
    -- | The status.
    status :: Prelude.Maybe AnalysisStatus,
    -- | The warning message.
    warningMessage :: Prelude.Maybe Prelude.Text,
    -- | The analysis start date.
    startDate :: Prelude.Maybe Core.ISO8601,
    -- | The Amazon Resource Name (ARN) of the Network Access Scope analysis.
    networkInsightsAccessScopeAnalysisArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether there are findings.
    findingsFound :: Prelude.Maybe FindingsFound,
    -- | The status message.
    statusMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkInsightsAccessScopeAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'networkInsightsAccessScopeAnalysis_tags' - The tags.
--
-- 'networkInsightsAccessScopeAnalysisId', 'networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisId' - The ID of the Network Access Scope analysis.
--
-- 'networkInsightsAccessScopeId', 'networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeId' - The ID of the Network Access Scope.
--
-- 'analyzedEniCount', 'networkInsightsAccessScopeAnalysis_analyzedEniCount' - The number of network interfaces analyzed.
--
-- 'endDate', 'networkInsightsAccessScopeAnalysis_endDate' - The analysis end date.
--
-- 'status', 'networkInsightsAccessScopeAnalysis_status' - The status.
--
-- 'warningMessage', 'networkInsightsAccessScopeAnalysis_warningMessage' - The warning message.
--
-- 'startDate', 'networkInsightsAccessScopeAnalysis_startDate' - The analysis start date.
--
-- 'networkInsightsAccessScopeAnalysisArn', 'networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisArn' - The Amazon Resource Name (ARN) of the Network Access Scope analysis.
--
-- 'findingsFound', 'networkInsightsAccessScopeAnalysis_findingsFound' - Indicates whether there are findings.
--
-- 'statusMessage', 'networkInsightsAccessScopeAnalysis_statusMessage' - The status message.
newNetworkInsightsAccessScopeAnalysis ::
  NetworkInsightsAccessScopeAnalysis
newNetworkInsightsAccessScopeAnalysis =
  NetworkInsightsAccessScopeAnalysis'
    { tags =
        Prelude.Nothing,
      networkInsightsAccessScopeAnalysisId =
        Prelude.Nothing,
      networkInsightsAccessScopeId =
        Prelude.Nothing,
      analyzedEniCount = Prelude.Nothing,
      endDate = Prelude.Nothing,
      status = Prelude.Nothing,
      warningMessage = Prelude.Nothing,
      startDate = Prelude.Nothing,
      networkInsightsAccessScopeAnalysisArn =
        Prelude.Nothing,
      findingsFound = Prelude.Nothing,
      statusMessage = Prelude.Nothing
    }

-- | The tags.
networkInsightsAccessScopeAnalysis_tags :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe [Tag])
networkInsightsAccessScopeAnalysis_tags = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {tags} -> tags) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {tags = a} :: NetworkInsightsAccessScopeAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Network Access Scope analysis.
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisId :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisId = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {networkInsightsAccessScopeAnalysisId} -> networkInsightsAccessScopeAnalysisId) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {networkInsightsAccessScopeAnalysisId = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The ID of the Network Access Scope.
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeId :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeId = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {networkInsightsAccessScopeId} -> networkInsightsAccessScopeId) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {networkInsightsAccessScopeId = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The number of network interfaces analyzed.
networkInsightsAccessScopeAnalysis_analyzedEniCount :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Int)
networkInsightsAccessScopeAnalysis_analyzedEniCount = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {analyzedEniCount} -> analyzedEniCount) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {analyzedEniCount = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The analysis end date.
networkInsightsAccessScopeAnalysis_endDate :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.UTCTime)
networkInsightsAccessScopeAnalysis_endDate = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {endDate} -> endDate) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {endDate = a} :: NetworkInsightsAccessScopeAnalysis) Prelude.. Lens.mapping Core._Time

-- | The status.
networkInsightsAccessScopeAnalysis_status :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe AnalysisStatus)
networkInsightsAccessScopeAnalysis_status = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {status} -> status) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {status = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The warning message.
networkInsightsAccessScopeAnalysis_warningMessage :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAccessScopeAnalysis_warningMessage = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {warningMessage} -> warningMessage) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {warningMessage = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The analysis start date.
networkInsightsAccessScopeAnalysis_startDate :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.UTCTime)
networkInsightsAccessScopeAnalysis_startDate = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {startDate} -> startDate) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {startDate = a} :: NetworkInsightsAccessScopeAnalysis) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the Network Access Scope analysis.
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisArn :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAccessScopeAnalysis_networkInsightsAccessScopeAnalysisArn = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {networkInsightsAccessScopeAnalysisArn} -> networkInsightsAccessScopeAnalysisArn) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {networkInsightsAccessScopeAnalysisArn = a} :: NetworkInsightsAccessScopeAnalysis)

-- | Indicates whether there are findings.
networkInsightsAccessScopeAnalysis_findingsFound :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe FindingsFound)
networkInsightsAccessScopeAnalysis_findingsFound = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {findingsFound} -> findingsFound) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {findingsFound = a} :: NetworkInsightsAccessScopeAnalysis)

-- | The status message.
networkInsightsAccessScopeAnalysis_statusMessage :: Lens.Lens' NetworkInsightsAccessScopeAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAccessScopeAnalysis_statusMessage = Lens.lens (\NetworkInsightsAccessScopeAnalysis' {statusMessage} -> statusMessage) (\s@NetworkInsightsAccessScopeAnalysis' {} a -> s {statusMessage = a} :: NetworkInsightsAccessScopeAnalysis)

instance
  Core.FromXML
    NetworkInsightsAccessScopeAnalysis
  where
  parseXML x =
    NetworkInsightsAccessScopeAnalysis'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "networkInsightsAccessScopeAnalysisId")
      Prelude.<*> (x Core..@? "networkInsightsAccessScopeId")
      Prelude.<*> (x Core..@? "analyzedEniCount")
      Prelude.<*> (x Core..@? "endDate")
      Prelude.<*> (x Core..@? "status")
      Prelude.<*> (x Core..@? "warningMessage")
      Prelude.<*> (x Core..@? "startDate")
      Prelude.<*> (x Core..@? "networkInsightsAccessScopeAnalysisArn")
      Prelude.<*> (x Core..@? "findingsFound")
      Prelude.<*> (x Core..@? "statusMessage")

instance
  Prelude.Hashable
    NetworkInsightsAccessScopeAnalysis
  where
  hashWithSalt
    _salt
    NetworkInsightsAccessScopeAnalysis' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` networkInsightsAccessScopeAnalysisId
        `Prelude.hashWithSalt` networkInsightsAccessScopeId
        `Prelude.hashWithSalt` analyzedEniCount
        `Prelude.hashWithSalt` endDate
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` warningMessage
        `Prelude.hashWithSalt` startDate
        `Prelude.hashWithSalt` networkInsightsAccessScopeAnalysisArn
        `Prelude.hashWithSalt` findingsFound
        `Prelude.hashWithSalt` statusMessage

instance
  Prelude.NFData
    NetworkInsightsAccessScopeAnalysis
  where
  rnf NetworkInsightsAccessScopeAnalysis' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf networkInsightsAccessScopeAnalysisId
      `Prelude.seq` Prelude.rnf networkInsightsAccessScopeId
      `Prelude.seq` Prelude.rnf analyzedEniCount
      `Prelude.seq` Prelude.rnf endDate
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf warningMessage
      `Prelude.seq` Prelude.rnf startDate
      `Prelude.seq` Prelude.rnf networkInsightsAccessScopeAnalysisArn
      `Prelude.seq` Prelude.rnf findingsFound
      `Prelude.seq` Prelude.rnf statusMessage
