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
-- Module      : Amazonka.DataBrew.ListRulesets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all rulesets available in the current account or rulesets
-- associated with a specific resource (dataset).
--
-- This operation returns paginated results.
module Amazonka.DataBrew.ListRulesets
  ( -- * Creating a Request
    ListRulesets (..),
    newListRulesets,

    -- * Request Lenses
    listRulesets_nextToken,
    listRulesets_targetArn,
    listRulesets_maxResults,

    -- * Destructuring the Response
    ListRulesetsResponse (..),
    newListRulesetsResponse,

    -- * Response Lenses
    listRulesetsResponse_nextToken,
    listRulesetsResponse_httpStatus,
    listRulesetsResponse_rulesets,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListRulesets' smart constructor.
data ListRulesets = ListRulesets'
  { -- | A token generated by DataBrew that specifies where to continue
    -- pagination if a previous request was truncated. To get the next set of
    -- pages, pass in the NextToken value from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a resource (dataset). Using this
    -- parameter indicates to return only those rulesets that are associated
    -- with the specified resource.
    targetArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRulesets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRulesets_nextToken' - A token generated by DataBrew that specifies where to continue
-- pagination if a previous request was truncated. To get the next set of
-- pages, pass in the NextToken value from the response object of the
-- previous page call.
--
-- 'targetArn', 'listRulesets_targetArn' - The Amazon Resource Name (ARN) of a resource (dataset). Using this
-- parameter indicates to return only those rulesets that are associated
-- with the specified resource.
--
-- 'maxResults', 'listRulesets_maxResults' - The maximum number of results to return in this request.
newListRulesets ::
  ListRulesets
newListRulesets =
  ListRulesets'
    { nextToken = Prelude.Nothing,
      targetArn = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token generated by DataBrew that specifies where to continue
-- pagination if a previous request was truncated. To get the next set of
-- pages, pass in the NextToken value from the response object of the
-- previous page call.
listRulesets_nextToken :: Lens.Lens' ListRulesets (Prelude.Maybe Prelude.Text)
listRulesets_nextToken = Lens.lens (\ListRulesets' {nextToken} -> nextToken) (\s@ListRulesets' {} a -> s {nextToken = a} :: ListRulesets)

-- | The Amazon Resource Name (ARN) of a resource (dataset). Using this
-- parameter indicates to return only those rulesets that are associated
-- with the specified resource.
listRulesets_targetArn :: Lens.Lens' ListRulesets (Prelude.Maybe Prelude.Text)
listRulesets_targetArn = Lens.lens (\ListRulesets' {targetArn} -> targetArn) (\s@ListRulesets' {} a -> s {targetArn = a} :: ListRulesets)

-- | The maximum number of results to return in this request.
listRulesets_maxResults :: Lens.Lens' ListRulesets (Prelude.Maybe Prelude.Natural)
listRulesets_maxResults = Lens.lens (\ListRulesets' {maxResults} -> maxResults) (\s@ListRulesets' {} a -> s {maxResults = a} :: ListRulesets)

instance Core.AWSPager ListRulesets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRulesetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listRulesetsResponse_rulesets) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRulesets_nextToken
          Lens..~ rs
          Lens.^? listRulesetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListRulesets where
  type AWSResponse ListRulesets = ListRulesetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRulesetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Rulesets" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListRulesets where
  hashWithSalt _salt ListRulesets' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` targetArn
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListRulesets where
  rnf ListRulesets' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf targetArn
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListRulesets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRulesets where
  toPath = Prelude.const "/rulesets"

instance Core.ToQuery ListRulesets where
  toQuery ListRulesets' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "targetArn" Core.=: targetArn,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListRulesetsResponse' smart constructor.
data ListRulesetsResponse = ListRulesetsResponse'
  { -- | A token that you can use in a subsequent call to retrieve the next set
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of RulesetItem. RulesetItem contains meta data of a ruleset.
    rulesets :: [RulesetItem]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRulesetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRulesetsResponse_nextToken' - A token that you can use in a subsequent call to retrieve the next set
-- of results.
--
-- 'httpStatus', 'listRulesetsResponse_httpStatus' - The response's http status code.
--
-- 'rulesets', 'listRulesetsResponse_rulesets' - A list of RulesetItem. RulesetItem contains meta data of a ruleset.
newListRulesetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRulesetsResponse
newListRulesetsResponse pHttpStatus_ =
  ListRulesetsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      rulesets = Prelude.mempty
    }

-- | A token that you can use in a subsequent call to retrieve the next set
-- of results.
listRulesetsResponse_nextToken :: Lens.Lens' ListRulesetsResponse (Prelude.Maybe Prelude.Text)
listRulesetsResponse_nextToken = Lens.lens (\ListRulesetsResponse' {nextToken} -> nextToken) (\s@ListRulesetsResponse' {} a -> s {nextToken = a} :: ListRulesetsResponse)

-- | The response's http status code.
listRulesetsResponse_httpStatus :: Lens.Lens' ListRulesetsResponse Prelude.Int
listRulesetsResponse_httpStatus = Lens.lens (\ListRulesetsResponse' {httpStatus} -> httpStatus) (\s@ListRulesetsResponse' {} a -> s {httpStatus = a} :: ListRulesetsResponse)

-- | A list of RulesetItem. RulesetItem contains meta data of a ruleset.
listRulesetsResponse_rulesets :: Lens.Lens' ListRulesetsResponse [RulesetItem]
listRulesetsResponse_rulesets = Lens.lens (\ListRulesetsResponse' {rulesets} -> rulesets) (\s@ListRulesetsResponse' {} a -> s {rulesets = a} :: ListRulesetsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListRulesetsResponse where
  rnf ListRulesetsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf rulesets
