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
-- Module      : Amazonka.EC2.Types.NetworkInsightsAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.NetworkInsightsAnalysis where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.AlternatePathHint
import Amazonka.EC2.Types.AnalysisStatus
import Amazonka.EC2.Types.Explanation
import Amazonka.EC2.Types.PathComponent
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a network insights analysis.
--
-- /See:/ 'newNetworkInsightsAnalysis' smart constructor.
data NetworkInsightsAnalysis = NetworkInsightsAnalysis'
  { -- | The Amazon Resource Names (ARN) of the Amazon Web Services resources
    -- that the path must traverse.
    filterInArns :: Prelude.Maybe [Prelude.Text],
    -- | The tags.
    tags :: Prelude.Maybe [Tag],
    -- | Indicates whether the destination is reachable from the source.
    networkPathFound :: Prelude.Maybe Prelude.Bool,
    -- | The components in the path from source to destination.
    forwardPathComponents :: Prelude.Maybe [PathComponent],
    -- | The status of the network insights analysis.
    status :: Prelude.Maybe AnalysisStatus,
    -- | The warning message.
    warningMessage :: Prelude.Maybe Prelude.Text,
    -- | The ID of the network insights analysis.
    networkInsightsAnalysisId :: Prelude.Maybe Prelude.Text,
    -- | The time the analysis started.
    startDate :: Prelude.Maybe Core.ISO8601,
    -- | The explanations. For more information, see
    -- <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes>.
    explanations :: Prelude.Maybe [Explanation],
    -- | Potential intermediate components.
    alternatePathHints :: Prelude.Maybe [AlternatePathHint],
    -- | The components in the path from destination to source.
    returnPathComponents :: Prelude.Maybe [PathComponent],
    -- | The Amazon Resource Name (ARN) of the network insights analysis.
    networkInsightsAnalysisArn :: Prelude.Maybe Prelude.Text,
    -- | The status message, if the status is @failed@.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The ID of the path.
    networkInsightsPathId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkInsightsAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterInArns', 'networkInsightsAnalysis_filterInArns' - The Amazon Resource Names (ARN) of the Amazon Web Services resources
-- that the path must traverse.
--
-- 'tags', 'networkInsightsAnalysis_tags' - The tags.
--
-- 'networkPathFound', 'networkInsightsAnalysis_networkPathFound' - Indicates whether the destination is reachable from the source.
--
-- 'forwardPathComponents', 'networkInsightsAnalysis_forwardPathComponents' - The components in the path from source to destination.
--
-- 'status', 'networkInsightsAnalysis_status' - The status of the network insights analysis.
--
-- 'warningMessage', 'networkInsightsAnalysis_warningMessage' - The warning message.
--
-- 'networkInsightsAnalysisId', 'networkInsightsAnalysis_networkInsightsAnalysisId' - The ID of the network insights analysis.
--
-- 'startDate', 'networkInsightsAnalysis_startDate' - The time the analysis started.
--
-- 'explanations', 'networkInsightsAnalysis_explanations' - The explanations. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes>.
--
-- 'alternatePathHints', 'networkInsightsAnalysis_alternatePathHints' - Potential intermediate components.
--
-- 'returnPathComponents', 'networkInsightsAnalysis_returnPathComponents' - The components in the path from destination to source.
--
-- 'networkInsightsAnalysisArn', 'networkInsightsAnalysis_networkInsightsAnalysisArn' - The Amazon Resource Name (ARN) of the network insights analysis.
--
-- 'statusMessage', 'networkInsightsAnalysis_statusMessage' - The status message, if the status is @failed@.
--
-- 'networkInsightsPathId', 'networkInsightsAnalysis_networkInsightsPathId' - The ID of the path.
newNetworkInsightsAnalysis ::
  NetworkInsightsAnalysis
newNetworkInsightsAnalysis =
  NetworkInsightsAnalysis'
    { filterInArns =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      networkPathFound = Prelude.Nothing,
      forwardPathComponents = Prelude.Nothing,
      status = Prelude.Nothing,
      warningMessage = Prelude.Nothing,
      networkInsightsAnalysisId = Prelude.Nothing,
      startDate = Prelude.Nothing,
      explanations = Prelude.Nothing,
      alternatePathHints = Prelude.Nothing,
      returnPathComponents = Prelude.Nothing,
      networkInsightsAnalysisArn = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      networkInsightsPathId = Prelude.Nothing
    }

-- | The Amazon Resource Names (ARN) of the Amazon Web Services resources
-- that the path must traverse.
networkInsightsAnalysis_filterInArns :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [Prelude.Text])
networkInsightsAnalysis_filterInArns = Lens.lens (\NetworkInsightsAnalysis' {filterInArns} -> filterInArns) (\s@NetworkInsightsAnalysis' {} a -> s {filterInArns = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | The tags.
networkInsightsAnalysis_tags :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [Tag])
networkInsightsAnalysis_tags = Lens.lens (\NetworkInsightsAnalysis' {tags} -> tags) (\s@NetworkInsightsAnalysis' {} a -> s {tags = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the destination is reachable from the source.
networkInsightsAnalysis_networkPathFound :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Bool)
networkInsightsAnalysis_networkPathFound = Lens.lens (\NetworkInsightsAnalysis' {networkPathFound} -> networkPathFound) (\s@NetworkInsightsAnalysis' {} a -> s {networkPathFound = a} :: NetworkInsightsAnalysis)

-- | The components in the path from source to destination.
networkInsightsAnalysis_forwardPathComponents :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [PathComponent])
networkInsightsAnalysis_forwardPathComponents = Lens.lens (\NetworkInsightsAnalysis' {forwardPathComponents} -> forwardPathComponents) (\s@NetworkInsightsAnalysis' {} a -> s {forwardPathComponents = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | The status of the network insights analysis.
networkInsightsAnalysis_status :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe AnalysisStatus)
networkInsightsAnalysis_status = Lens.lens (\NetworkInsightsAnalysis' {status} -> status) (\s@NetworkInsightsAnalysis' {} a -> s {status = a} :: NetworkInsightsAnalysis)

-- | The warning message.
networkInsightsAnalysis_warningMessage :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAnalysis_warningMessage = Lens.lens (\NetworkInsightsAnalysis' {warningMessage} -> warningMessage) (\s@NetworkInsightsAnalysis' {} a -> s {warningMessage = a} :: NetworkInsightsAnalysis)

-- | The ID of the network insights analysis.
networkInsightsAnalysis_networkInsightsAnalysisId :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAnalysis_networkInsightsAnalysisId = Lens.lens (\NetworkInsightsAnalysis' {networkInsightsAnalysisId} -> networkInsightsAnalysisId) (\s@NetworkInsightsAnalysis' {} a -> s {networkInsightsAnalysisId = a} :: NetworkInsightsAnalysis)

-- | The time the analysis started.
networkInsightsAnalysis_startDate :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.UTCTime)
networkInsightsAnalysis_startDate = Lens.lens (\NetworkInsightsAnalysis' {startDate} -> startDate) (\s@NetworkInsightsAnalysis' {} a -> s {startDate = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Core._Time

-- | The explanations. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes>.
networkInsightsAnalysis_explanations :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [Explanation])
networkInsightsAnalysis_explanations = Lens.lens (\NetworkInsightsAnalysis' {explanations} -> explanations) (\s@NetworkInsightsAnalysis' {} a -> s {explanations = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | Potential intermediate components.
networkInsightsAnalysis_alternatePathHints :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [AlternatePathHint])
networkInsightsAnalysis_alternatePathHints = Lens.lens (\NetworkInsightsAnalysis' {alternatePathHints} -> alternatePathHints) (\s@NetworkInsightsAnalysis' {} a -> s {alternatePathHints = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | The components in the path from destination to source.
networkInsightsAnalysis_returnPathComponents :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe [PathComponent])
networkInsightsAnalysis_returnPathComponents = Lens.lens (\NetworkInsightsAnalysis' {returnPathComponents} -> returnPathComponents) (\s@NetworkInsightsAnalysis' {} a -> s {returnPathComponents = a} :: NetworkInsightsAnalysis) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the network insights analysis.
networkInsightsAnalysis_networkInsightsAnalysisArn :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAnalysis_networkInsightsAnalysisArn = Lens.lens (\NetworkInsightsAnalysis' {networkInsightsAnalysisArn} -> networkInsightsAnalysisArn) (\s@NetworkInsightsAnalysis' {} a -> s {networkInsightsAnalysisArn = a} :: NetworkInsightsAnalysis)

-- | The status message, if the status is @failed@.
networkInsightsAnalysis_statusMessage :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAnalysis_statusMessage = Lens.lens (\NetworkInsightsAnalysis' {statusMessage} -> statusMessage) (\s@NetworkInsightsAnalysis' {} a -> s {statusMessage = a} :: NetworkInsightsAnalysis)

-- | The ID of the path.
networkInsightsAnalysis_networkInsightsPathId :: Lens.Lens' NetworkInsightsAnalysis (Prelude.Maybe Prelude.Text)
networkInsightsAnalysis_networkInsightsPathId = Lens.lens (\NetworkInsightsAnalysis' {networkInsightsPathId} -> networkInsightsPathId) (\s@NetworkInsightsAnalysis' {} a -> s {networkInsightsPathId = a} :: NetworkInsightsAnalysis)

instance Core.FromXML NetworkInsightsAnalysis where
  parseXML x =
    NetworkInsightsAnalysis'
      Prelude.<$> ( x Core..@? "filterInArnSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "networkPathFound")
      Prelude.<*> ( x Core..@? "forwardPathComponentSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "status")
      Prelude.<*> (x Core..@? "warningMessage")
      Prelude.<*> (x Core..@? "networkInsightsAnalysisId")
      Prelude.<*> (x Core..@? "startDate")
      Prelude.<*> ( x Core..@? "explanationSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "alternatePathHintSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "returnPathComponentSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "networkInsightsAnalysisArn")
      Prelude.<*> (x Core..@? "statusMessage")
      Prelude.<*> (x Core..@? "networkInsightsPathId")

instance Prelude.Hashable NetworkInsightsAnalysis where
  hashWithSalt _salt NetworkInsightsAnalysis' {..} =
    _salt `Prelude.hashWithSalt` filterInArns
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` networkPathFound
      `Prelude.hashWithSalt` forwardPathComponents
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` warningMessage
      `Prelude.hashWithSalt` networkInsightsAnalysisId
      `Prelude.hashWithSalt` startDate
      `Prelude.hashWithSalt` explanations
      `Prelude.hashWithSalt` alternatePathHints
      `Prelude.hashWithSalt` returnPathComponents
      `Prelude.hashWithSalt` networkInsightsAnalysisArn
      `Prelude.hashWithSalt` statusMessage
      `Prelude.hashWithSalt` networkInsightsPathId

instance Prelude.NFData NetworkInsightsAnalysis where
  rnf NetworkInsightsAnalysis' {..} =
    Prelude.rnf filterInArns
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf networkPathFound
      `Prelude.seq` Prelude.rnf forwardPathComponents
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf warningMessage
      `Prelude.seq` Prelude.rnf networkInsightsAnalysisId
      `Prelude.seq` Prelude.rnf startDate
      `Prelude.seq` Prelude.rnf explanations
      `Prelude.seq` Prelude.rnf alternatePathHints
      `Prelude.seq` Prelude.rnf returnPathComponents
      `Prelude.seq` Prelude.rnf networkInsightsAnalysisArn
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf networkInsightsPathId
