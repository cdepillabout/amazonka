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
-- Module      : Amazonka.Config.Types.StatusDetailFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.StatusDetailFilters where

import Amazonka.Config.Types.MemberAccountRuleStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Status filter object to filter results based on specific member account
-- ID or status type for an organization Config rule.
--
-- /See:/ 'newStatusDetailFilters' smart constructor.
data StatusDetailFilters = StatusDetailFilters'
  { -- | Indicates deployment status for Config rule in the member account. When
    -- master account calls @PutOrganizationConfigRule@ action for the first
    -- time, Config rule status is created in the member account. When master
    -- account calls @PutOrganizationConfigRule@ action for the second time,
    -- Config rule status is updated in the member account. Config rule status
    -- is deleted when the master account deletes @OrganizationConfigRule@ and
    -- disables service access for @config-multiaccountsetup.amazonaws.com@.
    --
    -- Config sets the state of the rule to:
    --
    -- -   @CREATE_SUCCESSFUL@ when Config rule has been created in the member
    --     account.
    --
    -- -   @CREATE_IN_PROGRESS@ when Config rule is being created in the member
    --     account.
    --
    -- -   @CREATE_FAILED@ when Config rule creation has failed in the member
    --     account.
    --
    -- -   @DELETE_FAILED@ when Config rule deletion has failed in the member
    --     account.
    --
    -- -   @DELETE_IN_PROGRESS@ when Config rule is being deleted in the member
    --     account.
    --
    -- -   @DELETE_SUCCESSFUL@ when Config rule has been deleted in the member
    --     account.
    --
    -- -   @UPDATE_SUCCESSFUL@ when Config rule has been updated in the member
    --     account.
    --
    -- -   @UPDATE_IN_PROGRESS@ when Config rule is being updated in the member
    --     account.
    --
    -- -   @UPDATE_FAILED@ when Config rule deletion has failed in the member
    --     account.
    memberAccountRuleStatus :: Prelude.Maybe MemberAccountRuleStatus,
    -- | The 12-digit account ID of the member account within an organization.
    accountId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StatusDetailFilters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberAccountRuleStatus', 'statusDetailFilters_memberAccountRuleStatus' - Indicates deployment status for Config rule in the member account. When
-- master account calls @PutOrganizationConfigRule@ action for the first
-- time, Config rule status is created in the member account. When master
-- account calls @PutOrganizationConfigRule@ action for the second time,
-- Config rule status is updated in the member account. Config rule status
-- is deleted when the master account deletes @OrganizationConfigRule@ and
-- disables service access for @config-multiaccountsetup.amazonaws.com@.
--
-- Config sets the state of the rule to:
--
-- -   @CREATE_SUCCESSFUL@ when Config rule has been created in the member
--     account.
--
-- -   @CREATE_IN_PROGRESS@ when Config rule is being created in the member
--     account.
--
-- -   @CREATE_FAILED@ when Config rule creation has failed in the member
--     account.
--
-- -   @DELETE_FAILED@ when Config rule deletion has failed in the member
--     account.
--
-- -   @DELETE_IN_PROGRESS@ when Config rule is being deleted in the member
--     account.
--
-- -   @DELETE_SUCCESSFUL@ when Config rule has been deleted in the member
--     account.
--
-- -   @UPDATE_SUCCESSFUL@ when Config rule has been updated in the member
--     account.
--
-- -   @UPDATE_IN_PROGRESS@ when Config rule is being updated in the member
--     account.
--
-- -   @UPDATE_FAILED@ when Config rule deletion has failed in the member
--     account.
--
-- 'accountId', 'statusDetailFilters_accountId' - The 12-digit account ID of the member account within an organization.
newStatusDetailFilters ::
  StatusDetailFilters
newStatusDetailFilters =
  StatusDetailFilters'
    { memberAccountRuleStatus =
        Prelude.Nothing,
      accountId = Prelude.Nothing
    }

-- | Indicates deployment status for Config rule in the member account. When
-- master account calls @PutOrganizationConfigRule@ action for the first
-- time, Config rule status is created in the member account. When master
-- account calls @PutOrganizationConfigRule@ action for the second time,
-- Config rule status is updated in the member account. Config rule status
-- is deleted when the master account deletes @OrganizationConfigRule@ and
-- disables service access for @config-multiaccountsetup.amazonaws.com@.
--
-- Config sets the state of the rule to:
--
-- -   @CREATE_SUCCESSFUL@ when Config rule has been created in the member
--     account.
--
-- -   @CREATE_IN_PROGRESS@ when Config rule is being created in the member
--     account.
--
-- -   @CREATE_FAILED@ when Config rule creation has failed in the member
--     account.
--
-- -   @DELETE_FAILED@ when Config rule deletion has failed in the member
--     account.
--
-- -   @DELETE_IN_PROGRESS@ when Config rule is being deleted in the member
--     account.
--
-- -   @DELETE_SUCCESSFUL@ when Config rule has been deleted in the member
--     account.
--
-- -   @UPDATE_SUCCESSFUL@ when Config rule has been updated in the member
--     account.
--
-- -   @UPDATE_IN_PROGRESS@ when Config rule is being updated in the member
--     account.
--
-- -   @UPDATE_FAILED@ when Config rule deletion has failed in the member
--     account.
statusDetailFilters_memberAccountRuleStatus :: Lens.Lens' StatusDetailFilters (Prelude.Maybe MemberAccountRuleStatus)
statusDetailFilters_memberAccountRuleStatus = Lens.lens (\StatusDetailFilters' {memberAccountRuleStatus} -> memberAccountRuleStatus) (\s@StatusDetailFilters' {} a -> s {memberAccountRuleStatus = a} :: StatusDetailFilters)

-- | The 12-digit account ID of the member account within an organization.
statusDetailFilters_accountId :: Lens.Lens' StatusDetailFilters (Prelude.Maybe Prelude.Text)
statusDetailFilters_accountId = Lens.lens (\StatusDetailFilters' {accountId} -> accountId) (\s@StatusDetailFilters' {} a -> s {accountId = a} :: StatusDetailFilters)

instance Prelude.Hashable StatusDetailFilters where
  hashWithSalt _salt StatusDetailFilters' {..} =
    _salt
      `Prelude.hashWithSalt` memberAccountRuleStatus
      `Prelude.hashWithSalt` accountId

instance Prelude.NFData StatusDetailFilters where
  rnf StatusDetailFilters' {..} =
    Prelude.rnf memberAccountRuleStatus
      `Prelude.seq` Prelude.rnf accountId

instance Core.ToJSON StatusDetailFilters where
  toJSON StatusDetailFilters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MemberAccountRuleStatus" Core..=)
              Prelude.<$> memberAccountRuleStatus,
            ("AccountId" Core..=) Prelude.<$> accountId
          ]
      )
