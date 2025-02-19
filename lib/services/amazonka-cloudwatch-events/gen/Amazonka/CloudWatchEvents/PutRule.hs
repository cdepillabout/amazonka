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
-- Module      : Amazonka.CloudWatchEvents.PutRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the specified rule. Rules are enabled by default, or
-- based on value of the state. You can disable a rule using
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html DisableRule>.
--
-- A single rule watches for events from a single event bus. Events
-- generated by Amazon Web Services services go to your account\'s default
-- event bus. Events generated by SaaS partner services or applications go
-- to the matching partner event bus. If you have custom applications or
-- services, you can specify whether their events go to your default event
-- bus or a custom event bus that you have created. For more information,
-- see
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html CreateEventBus>.
--
-- If you are updating an existing rule, the rule is replaced with what you
-- specify in this @PutRule@ command. If you omit arguments in @PutRule@,
-- the old values for those arguments are not kept. Instead, they are
-- replaced with null values.
--
-- When you create or update a rule, incoming events might not immediately
-- start matching to new or updated rules. Allow a short period of time for
-- changes to take effect.
--
-- A rule must contain at least an EventPattern or ScheduleExpression.
-- Rules with EventPatterns are triggered when a matching event is
-- observed. Rules with ScheduleExpressions self-trigger based on the given
-- schedule. A rule can have both an EventPattern and a ScheduleExpression,
-- in which case the rule triggers on matching events as well as on a
-- schedule.
--
-- When you initially create a rule, you can optionally assign one or more
-- tags to the rule. Tags can help you organize and categorize your
-- resources. You can also use them to scope user permissions, by granting
-- a user permission to access or change only rules with certain tag
-- values. To use the @PutRule@ operation and assign tags, you must have
-- both the @events:PutRule@ and @events:TagResource@ permissions.
--
-- If you are updating an existing rule, any tags you specify in the
-- @PutRule@ operation are ignored. To update the tags of an existing rule,
-- use
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html TagResource>
-- and
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html UntagResource>.
--
-- Most services in Amazon Web Services treat : or \/ as the same character
-- in Amazon Resource Names (ARNs). However, EventBridge uses an exact
-- match in event patterns and rules. Be sure to use the correct ARN
-- characters when creating event patterns so that they match the ARN
-- syntax in the event you want to match.
--
-- In EventBridge, it is possible to create rules that lead to infinite
-- loops, where a rule is fired repeatedly. For example, a rule might
-- detect that ACLs have changed on an S3 bucket, and trigger software to
-- change them to the desired state. If the rule is not written carefully,
-- the subsequent change to the ACLs fires the rule again, creating an
-- infinite loop.
--
-- To prevent this, write the rules so that the triggered actions do not
-- re-fire the same rule. For example, your rule could fire only if ACLs
-- are found to be in a bad state, instead of after any change.
--
-- An infinite loop can quickly cause higher than expected charges. We
-- recommend that you use budgeting, which alerts you when charges exceed
-- your specified limit. For more information, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html Managing Your Costs with Budgets>.
module Amazonka.CloudWatchEvents.PutRule
  ( -- * Creating a Request
    PutRule (..),
    newPutRule,

    -- * Request Lenses
    putRule_tags,
    putRule_roleArn,
    putRule_eventPattern,
    putRule_eventBusName,
    putRule_state,
    putRule_description,
    putRule_scheduleExpression,
    putRule_name,

    -- * Destructuring the Response
    PutRuleResponse (..),
    newPutRuleResponse,

    -- * Response Lenses
    putRuleResponse_ruleArn,
    putRuleResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutRule' smart constructor.
data PutRule = PutRule'
  { -- | The list of key-value pairs to associate with the rule.
    tags :: Prelude.Maybe [Tag],
    -- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
    --
    -- If you\'re setting an event bus in another account as the target and
    -- that account granted permission to your account through an organization
    -- instead of directly by the account ID, you must specify a @RoleArn@ with
    -- proper permissions in the @Target@ structure, instead of here in this
    -- parameter.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The event pattern. For more information, see
    -- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html.html EventBridge event patterns>
    -- in the /Amazon EventBridge User Guide/.
    eventPattern :: Prelude.Maybe Prelude.Text,
    -- | The name or ARN of the event bus to associate with this rule. If you
    -- omit this, the default event bus is used.
    eventBusName :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the rule is enabled or disabled.
    state :: Prelude.Maybe RuleState,
    -- | A description of the rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | The scheduling expression. For example, \"cron(0 20 * * ? *)\" or
    -- \"rate(5 minutes)\".
    scheduleExpression :: Prelude.Maybe Prelude.Text,
    -- | The name of the rule that you are creating or updating.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putRule_tags' - The list of key-value pairs to associate with the rule.
--
-- 'roleArn', 'putRule_roleArn' - The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- If you\'re setting an event bus in another account as the target and
-- that account granted permission to your account through an organization
-- instead of directly by the account ID, you must specify a @RoleArn@ with
-- proper permissions in the @Target@ structure, instead of here in this
-- parameter.
--
-- 'eventPattern', 'putRule_eventPattern' - The event pattern. For more information, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html.html EventBridge event patterns>
-- in the /Amazon EventBridge User Guide/.
--
-- 'eventBusName', 'putRule_eventBusName' - The name or ARN of the event bus to associate with this rule. If you
-- omit this, the default event bus is used.
--
-- 'state', 'putRule_state' - Indicates whether the rule is enabled or disabled.
--
-- 'description', 'putRule_description' - A description of the rule.
--
-- 'scheduleExpression', 'putRule_scheduleExpression' - The scheduling expression. For example, \"cron(0 20 * * ? *)\" or
-- \"rate(5 minutes)\".
--
-- 'name', 'putRule_name' - The name of the rule that you are creating or updating.
newPutRule ::
  -- | 'name'
  Prelude.Text ->
  PutRule
newPutRule pName_ =
  PutRule'
    { tags = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      eventPattern = Prelude.Nothing,
      eventBusName = Prelude.Nothing,
      state = Prelude.Nothing,
      description = Prelude.Nothing,
      scheduleExpression = Prelude.Nothing,
      name = pName_
    }

-- | The list of key-value pairs to associate with the rule.
putRule_tags :: Lens.Lens' PutRule (Prelude.Maybe [Tag])
putRule_tags = Lens.lens (\PutRule' {tags} -> tags) (\s@PutRule' {} a -> s {tags = a} :: PutRule) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- If you\'re setting an event bus in another account as the target and
-- that account granted permission to your account through an organization
-- instead of directly by the account ID, you must specify a @RoleArn@ with
-- proper permissions in the @Target@ structure, instead of here in this
-- parameter.
putRule_roleArn :: Lens.Lens' PutRule (Prelude.Maybe Prelude.Text)
putRule_roleArn = Lens.lens (\PutRule' {roleArn} -> roleArn) (\s@PutRule' {} a -> s {roleArn = a} :: PutRule)

-- | The event pattern. For more information, see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html.html EventBridge event patterns>
-- in the /Amazon EventBridge User Guide/.
putRule_eventPattern :: Lens.Lens' PutRule (Prelude.Maybe Prelude.Text)
putRule_eventPattern = Lens.lens (\PutRule' {eventPattern} -> eventPattern) (\s@PutRule' {} a -> s {eventPattern = a} :: PutRule)

-- | The name or ARN of the event bus to associate with this rule. If you
-- omit this, the default event bus is used.
putRule_eventBusName :: Lens.Lens' PutRule (Prelude.Maybe Prelude.Text)
putRule_eventBusName = Lens.lens (\PutRule' {eventBusName} -> eventBusName) (\s@PutRule' {} a -> s {eventBusName = a} :: PutRule)

-- | Indicates whether the rule is enabled or disabled.
putRule_state :: Lens.Lens' PutRule (Prelude.Maybe RuleState)
putRule_state = Lens.lens (\PutRule' {state} -> state) (\s@PutRule' {} a -> s {state = a} :: PutRule)

-- | A description of the rule.
putRule_description :: Lens.Lens' PutRule (Prelude.Maybe Prelude.Text)
putRule_description = Lens.lens (\PutRule' {description} -> description) (\s@PutRule' {} a -> s {description = a} :: PutRule)

-- | The scheduling expression. For example, \"cron(0 20 * * ? *)\" or
-- \"rate(5 minutes)\".
putRule_scheduleExpression :: Lens.Lens' PutRule (Prelude.Maybe Prelude.Text)
putRule_scheduleExpression = Lens.lens (\PutRule' {scheduleExpression} -> scheduleExpression) (\s@PutRule' {} a -> s {scheduleExpression = a} :: PutRule)

-- | The name of the rule that you are creating or updating.
putRule_name :: Lens.Lens' PutRule Prelude.Text
putRule_name = Lens.lens (\PutRule' {name} -> name) (\s@PutRule' {} a -> s {name = a} :: PutRule)

instance Core.AWSRequest PutRule where
  type AWSResponse PutRule = PutRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutRuleResponse'
            Prelude.<$> (x Core..?> "RuleArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutRule where
  hashWithSalt _salt PutRule' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` eventPattern
      `Prelude.hashWithSalt` eventBusName
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` scheduleExpression
      `Prelude.hashWithSalt` name

instance Prelude.NFData PutRule where
  rnf PutRule' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf eventPattern
      `Prelude.seq` Prelude.rnf eventBusName
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf scheduleExpression
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders PutRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.PutRule" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRule where
  toJSON PutRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("EventPattern" Core..=) Prelude.<$> eventPattern,
            ("EventBusName" Core..=) Prelude.<$> eventBusName,
            ("State" Core..=) Prelude.<$> state,
            ("Description" Core..=) Prelude.<$> description,
            ("ScheduleExpression" Core..=)
              Prelude.<$> scheduleExpression,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath PutRule where
  toPath = Prelude.const "/"

instance Core.ToQuery PutRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutRuleResponse' smart constructor.
data PutRuleResponse = PutRuleResponse'
  { -- | The Amazon Resource Name (ARN) of the rule.
    ruleArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleArn', 'putRuleResponse_ruleArn' - The Amazon Resource Name (ARN) of the rule.
--
-- 'httpStatus', 'putRuleResponse_httpStatus' - The response's http status code.
newPutRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutRuleResponse
newPutRuleResponse pHttpStatus_ =
  PutRuleResponse'
    { ruleArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the rule.
putRuleResponse_ruleArn :: Lens.Lens' PutRuleResponse (Prelude.Maybe Prelude.Text)
putRuleResponse_ruleArn = Lens.lens (\PutRuleResponse' {ruleArn} -> ruleArn) (\s@PutRuleResponse' {} a -> s {ruleArn = a} :: PutRuleResponse)

-- | The response's http status code.
putRuleResponse_httpStatus :: Lens.Lens' PutRuleResponse Prelude.Int
putRuleResponse_httpStatus = Lens.lens (\PutRuleResponse' {httpStatus} -> httpStatus) (\s@PutRuleResponse' {} a -> s {httpStatus = a} :: PutRuleResponse)

instance Prelude.NFData PutRuleResponse where
  rnf PutRuleResponse' {..} =
    Prelude.rnf ruleArn
      `Prelude.seq` Prelude.rnf httpStatus
