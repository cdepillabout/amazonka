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
-- Module      : Amazonka.SSM.Types.ComplianceExecutionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.ComplianceExecutionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A summary of the call execution that includes an execution ID, the type
-- of execution (for example, @Command@), and the date\/time of the
-- execution using a datetime object that is saved in the following format:
-- yyyy-MM-dd\'T\'HH:mm:ss\'Z\'.
--
-- /See:/ 'newComplianceExecutionSummary' smart constructor.
data ComplianceExecutionSummary = ComplianceExecutionSummary'
  { -- | The type of execution. For example, @Command@ is a valid execution type.
    executionType :: Prelude.Maybe Prelude.Text,
    -- | An ID created by the system when @PutComplianceItems@ was called. For
    -- example, @CommandID@ is a valid execution ID. You can use this ID in
    -- subsequent calls.
    executionId :: Prelude.Maybe Prelude.Text,
    -- | The time the execution ran as a datetime object that is saved in the
    -- following format: yyyy-MM-dd\'T\'HH:mm:ss\'Z\'.
    executionTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComplianceExecutionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executionType', 'complianceExecutionSummary_executionType' - The type of execution. For example, @Command@ is a valid execution type.
--
-- 'executionId', 'complianceExecutionSummary_executionId' - An ID created by the system when @PutComplianceItems@ was called. For
-- example, @CommandID@ is a valid execution ID. You can use this ID in
-- subsequent calls.
--
-- 'executionTime', 'complianceExecutionSummary_executionTime' - The time the execution ran as a datetime object that is saved in the
-- following format: yyyy-MM-dd\'T\'HH:mm:ss\'Z\'.
newComplianceExecutionSummary ::
  -- | 'executionTime'
  Prelude.UTCTime ->
  ComplianceExecutionSummary
newComplianceExecutionSummary pExecutionTime_ =
  ComplianceExecutionSummary'
    { executionType =
        Prelude.Nothing,
      executionId = Prelude.Nothing,
      executionTime =
        Core._Time Lens.# pExecutionTime_
    }

-- | The type of execution. For example, @Command@ is a valid execution type.
complianceExecutionSummary_executionType :: Lens.Lens' ComplianceExecutionSummary (Prelude.Maybe Prelude.Text)
complianceExecutionSummary_executionType = Lens.lens (\ComplianceExecutionSummary' {executionType} -> executionType) (\s@ComplianceExecutionSummary' {} a -> s {executionType = a} :: ComplianceExecutionSummary)

-- | An ID created by the system when @PutComplianceItems@ was called. For
-- example, @CommandID@ is a valid execution ID. You can use this ID in
-- subsequent calls.
complianceExecutionSummary_executionId :: Lens.Lens' ComplianceExecutionSummary (Prelude.Maybe Prelude.Text)
complianceExecutionSummary_executionId = Lens.lens (\ComplianceExecutionSummary' {executionId} -> executionId) (\s@ComplianceExecutionSummary' {} a -> s {executionId = a} :: ComplianceExecutionSummary)

-- | The time the execution ran as a datetime object that is saved in the
-- following format: yyyy-MM-dd\'T\'HH:mm:ss\'Z\'.
complianceExecutionSummary_executionTime :: Lens.Lens' ComplianceExecutionSummary Prelude.UTCTime
complianceExecutionSummary_executionTime = Lens.lens (\ComplianceExecutionSummary' {executionTime} -> executionTime) (\s@ComplianceExecutionSummary' {} a -> s {executionTime = a} :: ComplianceExecutionSummary) Prelude.. Core._Time

instance Core.FromJSON ComplianceExecutionSummary where
  parseJSON =
    Core.withObject
      "ComplianceExecutionSummary"
      ( \x ->
          ComplianceExecutionSummary'
            Prelude.<$> (x Core..:? "ExecutionType")
            Prelude.<*> (x Core..:? "ExecutionId")
            Prelude.<*> (x Core..: "ExecutionTime")
      )

instance Prelude.Hashable ComplianceExecutionSummary where
  hashWithSalt _salt ComplianceExecutionSummary' {..} =
    _salt `Prelude.hashWithSalt` executionType
      `Prelude.hashWithSalt` executionId
      `Prelude.hashWithSalt` executionTime

instance Prelude.NFData ComplianceExecutionSummary where
  rnf ComplianceExecutionSummary' {..} =
    Prelude.rnf executionType
      `Prelude.seq` Prelude.rnf executionId
      `Prelude.seq` Prelude.rnf executionTime

instance Core.ToJSON ComplianceExecutionSummary where
  toJSON ComplianceExecutionSummary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ExecutionType" Core..=) Prelude.<$> executionType,
            ("ExecutionId" Core..=) Prelude.<$> executionId,
            Prelude.Just
              ("ExecutionTime" Core..= executionTime)
          ]
      )
