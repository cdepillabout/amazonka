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
-- Module      : Amazonka.Route53Resolver.Types.FirewallRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Types.FirewallRule where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53Resolver.Types.Action
import Amazonka.Route53Resolver.Types.BlockOverrideDnsType
import Amazonka.Route53Resolver.Types.BlockResponse

-- | A single firewall rule in a rule group.
--
-- /See:/ 'newFirewallRule' smart constructor.
data FirewallRule = FirewallRule'
  { -- | The name of the rule.
    name :: Prelude.Maybe Prelude.Text,
    -- | The way that you want DNS Firewall to block the request. Used for the
    -- rule action setting @BLOCK@.
    --
    -- -   @NODATA@ - Respond indicating that the query was successful, but no
    --     response is available for it.
    --
    -- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
    --     query doesn\'t exist.
    --
    -- -   @OVERRIDE@ - Provide a custom override in the response. This option
    --     requires custom handling details in the rule\'s @BlockOverride*@
    --     settings.
    blockResponse :: Prelude.Maybe BlockResponse,
    -- | The date and time that the rule was last modified, in Unix time format
    -- and Coordinated Universal Time (UTC).
    modificationTime :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the firewall rule group of the rule.
    firewallRuleGroupId :: Prelude.Maybe Prelude.Text,
    -- | The recommended amount of time, in seconds, for the DNS resolver or web
    -- browser to cache the provided override record. Used for the rule action
    -- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideTtl :: Prelude.Maybe Prelude.Int,
    -- | The DNS record\'s type. This determines the format of the record value
    -- that you provided in @BlockOverrideDomain@. Used for the rule action
    -- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideDnsType :: Prelude.Maybe BlockOverrideDnsType,
    -- | A unique string defined by you to identify the request. This allows you
    -- to retry failed requests without the risk of executing the operation
    -- twice. This can be any unique string, for example, a timestamp.
    creatorRequestId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the domain list that\'s used in the rule.
    firewallDomainListId :: Prelude.Maybe Prelude.Text,
    -- | The custom DNS record to send back in response to the query. Used for
    -- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideDomain :: Prelude.Maybe Prelude.Text,
    -- | The priority of the rule in the rule group. This value must be unique
    -- within the rule group. DNS Firewall processes the rules in a rule group
    -- by order of priority, starting from the lowest setting.
    priority :: Prelude.Maybe Prelude.Int,
    -- | The action that DNS Firewall should take on a DNS query when it matches
    -- one of the domains in the rule\'s domain list:
    --
    -- -   @ALLOW@ - Permit the request to go through.
    --
    -- -   @ALERT@ - Permit the request to go through but send an alert to the
    --     logs.
    --
    -- -   @BLOCK@ - Disallow the request. If this is specified, additional
    --     handling details are provided in the rule\'s @BlockResponse@
    --     setting.
    action :: Prelude.Maybe Action,
    -- | The date and time that the rule was created, in Unix time format and
    -- Coordinated Universal Time (UTC).
    creationTime :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FirewallRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'firewallRule_name' - The name of the rule.
--
-- 'blockResponse', 'firewallRule_blockResponse' - The way that you want DNS Firewall to block the request. Used for the
-- rule action setting @BLOCK@.
--
-- -   @NODATA@ - Respond indicating that the query was successful, but no
--     response is available for it.
--
-- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
--     query doesn\'t exist.
--
-- -   @OVERRIDE@ - Provide a custom override in the response. This option
--     requires custom handling details in the rule\'s @BlockOverride*@
--     settings.
--
-- 'modificationTime', 'firewallRule_modificationTime' - The date and time that the rule was last modified, in Unix time format
-- and Coordinated Universal Time (UTC).
--
-- 'firewallRuleGroupId', 'firewallRule_firewallRuleGroupId' - The unique identifier of the firewall rule group of the rule.
--
-- 'blockOverrideTtl', 'firewallRule_blockOverrideTtl' - The recommended amount of time, in seconds, for the DNS resolver or web
-- browser to cache the provided override record. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'blockOverrideDnsType', 'firewallRule_blockOverrideDnsType' - The DNS record\'s type. This determines the format of the record value
-- that you provided in @BlockOverrideDomain@. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'creatorRequestId', 'firewallRule_creatorRequestId' - A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of executing the operation
-- twice. This can be any unique string, for example, a timestamp.
--
-- 'firewallDomainListId', 'firewallRule_firewallDomainListId' - The ID of the domain list that\'s used in the rule.
--
-- 'blockOverrideDomain', 'firewallRule_blockOverrideDomain' - The custom DNS record to send back in response to the query. Used for
-- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'priority', 'firewallRule_priority' - The priority of the rule in the rule group. This value must be unique
-- within the rule group. DNS Firewall processes the rules in a rule group
-- by order of priority, starting from the lowest setting.
--
-- 'action', 'firewallRule_action' - The action that DNS Firewall should take on a DNS query when it matches
-- one of the domains in the rule\'s domain list:
--
-- -   @ALLOW@ - Permit the request to go through.
--
-- -   @ALERT@ - Permit the request to go through but send an alert to the
--     logs.
--
-- -   @BLOCK@ - Disallow the request. If this is specified, additional
--     handling details are provided in the rule\'s @BlockResponse@
--     setting.
--
-- 'creationTime', 'firewallRule_creationTime' - The date and time that the rule was created, in Unix time format and
-- Coordinated Universal Time (UTC).
newFirewallRule ::
  FirewallRule
newFirewallRule =
  FirewallRule'
    { name = Prelude.Nothing,
      blockResponse = Prelude.Nothing,
      modificationTime = Prelude.Nothing,
      firewallRuleGroupId = Prelude.Nothing,
      blockOverrideTtl = Prelude.Nothing,
      blockOverrideDnsType = Prelude.Nothing,
      creatorRequestId = Prelude.Nothing,
      firewallDomainListId = Prelude.Nothing,
      blockOverrideDomain = Prelude.Nothing,
      priority = Prelude.Nothing,
      action = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | The name of the rule.
firewallRule_name :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_name = Lens.lens (\FirewallRule' {name} -> name) (\s@FirewallRule' {} a -> s {name = a} :: FirewallRule)

-- | The way that you want DNS Firewall to block the request. Used for the
-- rule action setting @BLOCK@.
--
-- -   @NODATA@ - Respond indicating that the query was successful, but no
--     response is available for it.
--
-- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
--     query doesn\'t exist.
--
-- -   @OVERRIDE@ - Provide a custom override in the response. This option
--     requires custom handling details in the rule\'s @BlockOverride*@
--     settings.
firewallRule_blockResponse :: Lens.Lens' FirewallRule (Prelude.Maybe BlockResponse)
firewallRule_blockResponse = Lens.lens (\FirewallRule' {blockResponse} -> blockResponse) (\s@FirewallRule' {} a -> s {blockResponse = a} :: FirewallRule)

-- | The date and time that the rule was last modified, in Unix time format
-- and Coordinated Universal Time (UTC).
firewallRule_modificationTime :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_modificationTime = Lens.lens (\FirewallRule' {modificationTime} -> modificationTime) (\s@FirewallRule' {} a -> s {modificationTime = a} :: FirewallRule)

-- | The unique identifier of the firewall rule group of the rule.
firewallRule_firewallRuleGroupId :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_firewallRuleGroupId = Lens.lens (\FirewallRule' {firewallRuleGroupId} -> firewallRuleGroupId) (\s@FirewallRule' {} a -> s {firewallRuleGroupId = a} :: FirewallRule)

-- | The recommended amount of time, in seconds, for the DNS resolver or web
-- browser to cache the provided override record. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
firewallRule_blockOverrideTtl :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Int)
firewallRule_blockOverrideTtl = Lens.lens (\FirewallRule' {blockOverrideTtl} -> blockOverrideTtl) (\s@FirewallRule' {} a -> s {blockOverrideTtl = a} :: FirewallRule)

-- | The DNS record\'s type. This determines the format of the record value
-- that you provided in @BlockOverrideDomain@. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
firewallRule_blockOverrideDnsType :: Lens.Lens' FirewallRule (Prelude.Maybe BlockOverrideDnsType)
firewallRule_blockOverrideDnsType = Lens.lens (\FirewallRule' {blockOverrideDnsType} -> blockOverrideDnsType) (\s@FirewallRule' {} a -> s {blockOverrideDnsType = a} :: FirewallRule)

-- | A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of executing the operation
-- twice. This can be any unique string, for example, a timestamp.
firewallRule_creatorRequestId :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_creatorRequestId = Lens.lens (\FirewallRule' {creatorRequestId} -> creatorRequestId) (\s@FirewallRule' {} a -> s {creatorRequestId = a} :: FirewallRule)

-- | The ID of the domain list that\'s used in the rule.
firewallRule_firewallDomainListId :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_firewallDomainListId = Lens.lens (\FirewallRule' {firewallDomainListId} -> firewallDomainListId) (\s@FirewallRule' {} a -> s {firewallDomainListId = a} :: FirewallRule)

-- | The custom DNS record to send back in response to the query. Used for
-- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
firewallRule_blockOverrideDomain :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_blockOverrideDomain = Lens.lens (\FirewallRule' {blockOverrideDomain} -> blockOverrideDomain) (\s@FirewallRule' {} a -> s {blockOverrideDomain = a} :: FirewallRule)

-- | The priority of the rule in the rule group. This value must be unique
-- within the rule group. DNS Firewall processes the rules in a rule group
-- by order of priority, starting from the lowest setting.
firewallRule_priority :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Int)
firewallRule_priority = Lens.lens (\FirewallRule' {priority} -> priority) (\s@FirewallRule' {} a -> s {priority = a} :: FirewallRule)

-- | The action that DNS Firewall should take on a DNS query when it matches
-- one of the domains in the rule\'s domain list:
--
-- -   @ALLOW@ - Permit the request to go through.
--
-- -   @ALERT@ - Permit the request to go through but send an alert to the
--     logs.
--
-- -   @BLOCK@ - Disallow the request. If this is specified, additional
--     handling details are provided in the rule\'s @BlockResponse@
--     setting.
firewallRule_action :: Lens.Lens' FirewallRule (Prelude.Maybe Action)
firewallRule_action = Lens.lens (\FirewallRule' {action} -> action) (\s@FirewallRule' {} a -> s {action = a} :: FirewallRule)

-- | The date and time that the rule was created, in Unix time format and
-- Coordinated Universal Time (UTC).
firewallRule_creationTime :: Lens.Lens' FirewallRule (Prelude.Maybe Prelude.Text)
firewallRule_creationTime = Lens.lens (\FirewallRule' {creationTime} -> creationTime) (\s@FirewallRule' {} a -> s {creationTime = a} :: FirewallRule)

instance Core.FromJSON FirewallRule where
  parseJSON =
    Core.withObject
      "FirewallRule"
      ( \x ->
          FirewallRule'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "BlockResponse")
            Prelude.<*> (x Core..:? "ModificationTime")
            Prelude.<*> (x Core..:? "FirewallRuleGroupId")
            Prelude.<*> (x Core..:? "BlockOverrideTtl")
            Prelude.<*> (x Core..:? "BlockOverrideDnsType")
            Prelude.<*> (x Core..:? "CreatorRequestId")
            Prelude.<*> (x Core..:? "FirewallDomainListId")
            Prelude.<*> (x Core..:? "BlockOverrideDomain")
            Prelude.<*> (x Core..:? "Priority")
            Prelude.<*> (x Core..:? "Action")
            Prelude.<*> (x Core..:? "CreationTime")
      )

instance Prelude.Hashable FirewallRule where
  hashWithSalt _salt FirewallRule' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` blockResponse
      `Prelude.hashWithSalt` modificationTime
      `Prelude.hashWithSalt` firewallRuleGroupId
      `Prelude.hashWithSalt` blockOverrideTtl
      `Prelude.hashWithSalt` blockOverrideDnsType
      `Prelude.hashWithSalt` creatorRequestId
      `Prelude.hashWithSalt` firewallDomainListId
      `Prelude.hashWithSalt` blockOverrideDomain
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` action
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData FirewallRule where
  rnf FirewallRule' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf blockResponse
      `Prelude.seq` Prelude.rnf modificationTime
      `Prelude.seq` Prelude.rnf firewallRuleGroupId
      `Prelude.seq` Prelude.rnf blockOverrideTtl
      `Prelude.seq` Prelude.rnf blockOverrideDnsType
      `Prelude.seq` Prelude.rnf creatorRequestId
      `Prelude.seq` Prelude.rnf firewallDomainListId
      `Prelude.seq` Prelude.rnf blockOverrideDomain
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf action
      `Prelude.seq` Prelude.rnf creationTime
