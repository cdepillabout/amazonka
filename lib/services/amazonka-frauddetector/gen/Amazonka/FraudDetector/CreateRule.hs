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
-- Module      : Amazonka.FraudDetector.CreateRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a rule for use with the specified detector.
module Amazonka.FraudDetector.CreateRule
  ( -- * Creating a Request
    CreateRule (..),
    newCreateRule,

    -- * Request Lenses
    createRule_tags,
    createRule_description,
    createRule_ruleId,
    createRule_detectorId,
    createRule_expression,
    createRule_language,
    createRule_outcomes,

    -- * Destructuring the Response
    CreateRuleResponse (..),
    newCreateRuleResponse,

    -- * Response Lenses
    createRuleResponse_rule,
    createRuleResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRule' smart constructor.
data CreateRule = CreateRule'
  { -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The rule description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The rule ID.
    ruleId :: Prelude.Text,
    -- | The detector ID for the rule\'s parent detector.
    detectorId :: Prelude.Text,
    -- | The rule expression.
    expression :: Core.Sensitive Prelude.Text,
    -- | The language of the rule.
    language :: Language,
    -- | The outcome or outcomes returned when the rule expression matches.
    outcomes :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRule_tags' - A collection of key and value pairs.
--
-- 'description', 'createRule_description' - The rule description.
--
-- 'ruleId', 'createRule_ruleId' - The rule ID.
--
-- 'detectorId', 'createRule_detectorId' - The detector ID for the rule\'s parent detector.
--
-- 'expression', 'createRule_expression' - The rule expression.
--
-- 'language', 'createRule_language' - The language of the rule.
--
-- 'outcomes', 'createRule_outcomes' - The outcome or outcomes returned when the rule expression matches.
newCreateRule ::
  -- | 'ruleId'
  Prelude.Text ->
  -- | 'detectorId'
  Prelude.Text ->
  -- | 'expression'
  Prelude.Text ->
  -- | 'language'
  Language ->
  -- | 'outcomes'
  Prelude.NonEmpty Prelude.Text ->
  CreateRule
newCreateRule
  pRuleId_
  pDetectorId_
  pExpression_
  pLanguage_
  pOutcomes_ =
    CreateRule'
      { tags = Prelude.Nothing,
        description = Prelude.Nothing,
        ruleId = pRuleId_,
        detectorId = pDetectorId_,
        expression = Core._Sensitive Lens.# pExpression_,
        language = pLanguage_,
        outcomes = Lens.coerced Lens.# pOutcomes_
      }

-- | A collection of key and value pairs.
createRule_tags :: Lens.Lens' CreateRule (Prelude.Maybe [Tag])
createRule_tags = Lens.lens (\CreateRule' {tags} -> tags) (\s@CreateRule' {} a -> s {tags = a} :: CreateRule) Prelude.. Lens.mapping Lens.coerced

-- | The rule description.
createRule_description :: Lens.Lens' CreateRule (Prelude.Maybe Prelude.Text)
createRule_description = Lens.lens (\CreateRule' {description} -> description) (\s@CreateRule' {} a -> s {description = a} :: CreateRule)

-- | The rule ID.
createRule_ruleId :: Lens.Lens' CreateRule Prelude.Text
createRule_ruleId = Lens.lens (\CreateRule' {ruleId} -> ruleId) (\s@CreateRule' {} a -> s {ruleId = a} :: CreateRule)

-- | The detector ID for the rule\'s parent detector.
createRule_detectorId :: Lens.Lens' CreateRule Prelude.Text
createRule_detectorId = Lens.lens (\CreateRule' {detectorId} -> detectorId) (\s@CreateRule' {} a -> s {detectorId = a} :: CreateRule)

-- | The rule expression.
createRule_expression :: Lens.Lens' CreateRule Prelude.Text
createRule_expression = Lens.lens (\CreateRule' {expression} -> expression) (\s@CreateRule' {} a -> s {expression = a} :: CreateRule) Prelude.. Core._Sensitive

-- | The language of the rule.
createRule_language :: Lens.Lens' CreateRule Language
createRule_language = Lens.lens (\CreateRule' {language} -> language) (\s@CreateRule' {} a -> s {language = a} :: CreateRule)

-- | The outcome or outcomes returned when the rule expression matches.
createRule_outcomes :: Lens.Lens' CreateRule (Prelude.NonEmpty Prelude.Text)
createRule_outcomes = Lens.lens (\CreateRule' {outcomes} -> outcomes) (\s@CreateRule' {} a -> s {outcomes = a} :: CreateRule) Prelude.. Lens.coerced

instance Core.AWSRequest CreateRule where
  type AWSResponse CreateRule = CreateRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRuleResponse'
            Prelude.<$> (x Core..?> "rule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRule where
  hashWithSalt _salt CreateRule' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` ruleId
      `Prelude.hashWithSalt` detectorId
      `Prelude.hashWithSalt` expression
      `Prelude.hashWithSalt` language
      `Prelude.hashWithSalt` outcomes

instance Prelude.NFData CreateRule where
  rnf CreateRule' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf ruleId
      `Prelude.seq` Prelude.rnf detectorId
      `Prelude.seq` Prelude.rnf expression
      `Prelude.seq` Prelude.rnf language
      `Prelude.seq` Prelude.rnf outcomes

instance Core.ToHeaders CreateRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.CreateRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRule where
  toJSON CreateRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("ruleId" Core..= ruleId),
            Prelude.Just ("detectorId" Core..= detectorId),
            Prelude.Just ("expression" Core..= expression),
            Prelude.Just ("language" Core..= language),
            Prelude.Just ("outcomes" Core..= outcomes)
          ]
      )

instance Core.ToPath CreateRule where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRuleResponse' smart constructor.
data CreateRuleResponse = CreateRuleResponse'
  { -- | The created rule.
    rule :: Prelude.Maybe Rule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rule', 'createRuleResponse_rule' - The created rule.
--
-- 'httpStatus', 'createRuleResponse_httpStatus' - The response's http status code.
newCreateRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRuleResponse
newCreateRuleResponse pHttpStatus_ =
  CreateRuleResponse'
    { rule = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The created rule.
createRuleResponse_rule :: Lens.Lens' CreateRuleResponse (Prelude.Maybe Rule)
createRuleResponse_rule = Lens.lens (\CreateRuleResponse' {rule} -> rule) (\s@CreateRuleResponse' {} a -> s {rule = a} :: CreateRuleResponse)

-- | The response's http status code.
createRuleResponse_httpStatus :: Lens.Lens' CreateRuleResponse Prelude.Int
createRuleResponse_httpStatus = Lens.lens (\CreateRuleResponse' {httpStatus} -> httpStatus) (\s@CreateRuleResponse' {} a -> s {httpStatus = a} :: CreateRuleResponse)

instance Prelude.NFData CreateRuleResponse where
  rnf CreateRuleResponse' {..} =
    Prelude.rnf rule
      `Prelude.seq` Prelude.rnf httpStatus
