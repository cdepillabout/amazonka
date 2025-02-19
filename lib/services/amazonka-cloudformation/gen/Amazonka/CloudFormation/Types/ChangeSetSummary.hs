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
-- Module      : Amazonka.CloudFormation.Types.ChangeSetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.ChangeSetSummary where

import Amazonka.CloudFormation.Types.ChangeSetStatus
import Amazonka.CloudFormation.Types.ExecutionStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The @ChangeSetSummary@ structure describes a change set, its status, and
-- the stack with which it\'s associated.
--
-- /See:/ 'newChangeSetSummary' smart constructor.
data ChangeSetSummary = ChangeSetSummary'
  { -- | The ID of the stack with which the change set is associated.
    stackId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the change set.
    changeSetId :: Prelude.Maybe Prelude.Text,
    -- | The name of the change set.
    changeSetName :: Prelude.Maybe Prelude.Text,
    -- | A description of the change set\'s status. For example, if your change
    -- set is in the @FAILED@ state, CloudFormation shows the error message.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The root change set ID.
    rootChangeSetId :: Prelude.Maybe Prelude.Text,
    -- | The state of the change set, such as @CREATE_IN_PROGRESS@,
    -- @CREATE_COMPLETE@, or @FAILED@.
    status :: Prelude.Maybe ChangeSetStatus,
    -- | Descriptive information about the change set.
    description :: Prelude.Maybe Prelude.Text,
    -- | Specifies the current setting of @IncludeNestedStacks@ for the change
    -- set.
    includeNestedStacks :: Prelude.Maybe Prelude.Bool,
    -- | The name of the stack with which the change set is associated.
    stackName :: Prelude.Maybe Prelude.Text,
    -- | The parent change set ID.
    parentChangeSetId :: Prelude.Maybe Prelude.Text,
    -- | The start time when the change set was created, in UTC.
    creationTime :: Prelude.Maybe Core.ISO8601,
    -- | If the change set execution status is @AVAILABLE@, you can execute the
    -- change set. If you can\'t execute the change set, the status indicates
    -- why. For example, a change set might be in an @UNAVAILABLE@ state
    -- because CloudFormation is still creating it or in an @OBSOLETE@ state
    -- because the stack was already updated.
    executionStatus :: Prelude.Maybe ExecutionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChangeSetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackId', 'changeSetSummary_stackId' - The ID of the stack with which the change set is associated.
--
-- 'changeSetId', 'changeSetSummary_changeSetId' - The ID of the change set.
--
-- 'changeSetName', 'changeSetSummary_changeSetName' - The name of the change set.
--
-- 'statusReason', 'changeSetSummary_statusReason' - A description of the change set\'s status. For example, if your change
-- set is in the @FAILED@ state, CloudFormation shows the error message.
--
-- 'rootChangeSetId', 'changeSetSummary_rootChangeSetId' - The root change set ID.
--
-- 'status', 'changeSetSummary_status' - The state of the change set, such as @CREATE_IN_PROGRESS@,
-- @CREATE_COMPLETE@, or @FAILED@.
--
-- 'description', 'changeSetSummary_description' - Descriptive information about the change set.
--
-- 'includeNestedStacks', 'changeSetSummary_includeNestedStacks' - Specifies the current setting of @IncludeNestedStacks@ for the change
-- set.
--
-- 'stackName', 'changeSetSummary_stackName' - The name of the stack with which the change set is associated.
--
-- 'parentChangeSetId', 'changeSetSummary_parentChangeSetId' - The parent change set ID.
--
-- 'creationTime', 'changeSetSummary_creationTime' - The start time when the change set was created, in UTC.
--
-- 'executionStatus', 'changeSetSummary_executionStatus' - If the change set execution status is @AVAILABLE@, you can execute the
-- change set. If you can\'t execute the change set, the status indicates
-- why. For example, a change set might be in an @UNAVAILABLE@ state
-- because CloudFormation is still creating it or in an @OBSOLETE@ state
-- because the stack was already updated.
newChangeSetSummary ::
  ChangeSetSummary
newChangeSetSummary =
  ChangeSetSummary'
    { stackId = Prelude.Nothing,
      changeSetId = Prelude.Nothing,
      changeSetName = Prelude.Nothing,
      statusReason = Prelude.Nothing,
      rootChangeSetId = Prelude.Nothing,
      status = Prelude.Nothing,
      description = Prelude.Nothing,
      includeNestedStacks = Prelude.Nothing,
      stackName = Prelude.Nothing,
      parentChangeSetId = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      executionStatus = Prelude.Nothing
    }

-- | The ID of the stack with which the change set is associated.
changeSetSummary_stackId :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_stackId = Lens.lens (\ChangeSetSummary' {stackId} -> stackId) (\s@ChangeSetSummary' {} a -> s {stackId = a} :: ChangeSetSummary)

-- | The ID of the change set.
changeSetSummary_changeSetId :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_changeSetId = Lens.lens (\ChangeSetSummary' {changeSetId} -> changeSetId) (\s@ChangeSetSummary' {} a -> s {changeSetId = a} :: ChangeSetSummary)

-- | The name of the change set.
changeSetSummary_changeSetName :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_changeSetName = Lens.lens (\ChangeSetSummary' {changeSetName} -> changeSetName) (\s@ChangeSetSummary' {} a -> s {changeSetName = a} :: ChangeSetSummary)

-- | A description of the change set\'s status. For example, if your change
-- set is in the @FAILED@ state, CloudFormation shows the error message.
changeSetSummary_statusReason :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_statusReason = Lens.lens (\ChangeSetSummary' {statusReason} -> statusReason) (\s@ChangeSetSummary' {} a -> s {statusReason = a} :: ChangeSetSummary)

-- | The root change set ID.
changeSetSummary_rootChangeSetId :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_rootChangeSetId = Lens.lens (\ChangeSetSummary' {rootChangeSetId} -> rootChangeSetId) (\s@ChangeSetSummary' {} a -> s {rootChangeSetId = a} :: ChangeSetSummary)

-- | The state of the change set, such as @CREATE_IN_PROGRESS@,
-- @CREATE_COMPLETE@, or @FAILED@.
changeSetSummary_status :: Lens.Lens' ChangeSetSummary (Prelude.Maybe ChangeSetStatus)
changeSetSummary_status = Lens.lens (\ChangeSetSummary' {status} -> status) (\s@ChangeSetSummary' {} a -> s {status = a} :: ChangeSetSummary)

-- | Descriptive information about the change set.
changeSetSummary_description :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_description = Lens.lens (\ChangeSetSummary' {description} -> description) (\s@ChangeSetSummary' {} a -> s {description = a} :: ChangeSetSummary)

-- | Specifies the current setting of @IncludeNestedStacks@ for the change
-- set.
changeSetSummary_includeNestedStacks :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Bool)
changeSetSummary_includeNestedStacks = Lens.lens (\ChangeSetSummary' {includeNestedStacks} -> includeNestedStacks) (\s@ChangeSetSummary' {} a -> s {includeNestedStacks = a} :: ChangeSetSummary)

-- | The name of the stack with which the change set is associated.
changeSetSummary_stackName :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_stackName = Lens.lens (\ChangeSetSummary' {stackName} -> stackName) (\s@ChangeSetSummary' {} a -> s {stackName = a} :: ChangeSetSummary)

-- | The parent change set ID.
changeSetSummary_parentChangeSetId :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.Text)
changeSetSummary_parentChangeSetId = Lens.lens (\ChangeSetSummary' {parentChangeSetId} -> parentChangeSetId) (\s@ChangeSetSummary' {} a -> s {parentChangeSetId = a} :: ChangeSetSummary)

-- | The start time when the change set was created, in UTC.
changeSetSummary_creationTime :: Lens.Lens' ChangeSetSummary (Prelude.Maybe Prelude.UTCTime)
changeSetSummary_creationTime = Lens.lens (\ChangeSetSummary' {creationTime} -> creationTime) (\s@ChangeSetSummary' {} a -> s {creationTime = a} :: ChangeSetSummary) Prelude.. Lens.mapping Core._Time

-- | If the change set execution status is @AVAILABLE@, you can execute the
-- change set. If you can\'t execute the change set, the status indicates
-- why. For example, a change set might be in an @UNAVAILABLE@ state
-- because CloudFormation is still creating it or in an @OBSOLETE@ state
-- because the stack was already updated.
changeSetSummary_executionStatus :: Lens.Lens' ChangeSetSummary (Prelude.Maybe ExecutionStatus)
changeSetSummary_executionStatus = Lens.lens (\ChangeSetSummary' {executionStatus} -> executionStatus) (\s@ChangeSetSummary' {} a -> s {executionStatus = a} :: ChangeSetSummary)

instance Core.FromXML ChangeSetSummary where
  parseXML x =
    ChangeSetSummary'
      Prelude.<$> (x Core..@? "StackId")
      Prelude.<*> (x Core..@? "ChangeSetId")
      Prelude.<*> (x Core..@? "ChangeSetName")
      Prelude.<*> (x Core..@? "StatusReason")
      Prelude.<*> (x Core..@? "RootChangeSetId")
      Prelude.<*> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "Description")
      Prelude.<*> (x Core..@? "IncludeNestedStacks")
      Prelude.<*> (x Core..@? "StackName")
      Prelude.<*> (x Core..@? "ParentChangeSetId")
      Prelude.<*> (x Core..@? "CreationTime")
      Prelude.<*> (x Core..@? "ExecutionStatus")

instance Prelude.Hashable ChangeSetSummary where
  hashWithSalt _salt ChangeSetSummary' {..} =
    _salt `Prelude.hashWithSalt` stackId
      `Prelude.hashWithSalt` changeSetId
      `Prelude.hashWithSalt` changeSetName
      `Prelude.hashWithSalt` statusReason
      `Prelude.hashWithSalt` rootChangeSetId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` includeNestedStacks
      `Prelude.hashWithSalt` stackName
      `Prelude.hashWithSalt` parentChangeSetId
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` executionStatus

instance Prelude.NFData ChangeSetSummary where
  rnf ChangeSetSummary' {..} =
    Prelude.rnf stackId
      `Prelude.seq` Prelude.rnf changeSetId
      `Prelude.seq` Prelude.rnf changeSetName
      `Prelude.seq` Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf rootChangeSetId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf includeNestedStacks
      `Prelude.seq` Prelude.rnf stackName
      `Prelude.seq` Prelude.rnf parentChangeSetId
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf executionStatus
