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
-- Module      : Amazonka.CustomerProfiles.GetMatches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Before calling this API, use
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html CreateDomain>
-- or
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html UpdateDomain>
-- to enable identity resolution: set @Matching@ to true.
--
-- GetMatches returns potentially matching profiles, based on the results
-- of the latest run of a machine learning process.
--
-- The process of matching duplicate profiles. If @Matching@ = @true@,
-- Amazon Connect Customer Profiles starts a weekly batch process called
-- Identity Resolution Job. If you do not specify a date and time for
-- Identity Resolution Job to run, by default it runs every Saturday at
-- 12AM UTC to detect duplicate profiles in your domains.
--
-- After the Identity Resolution Job completes, use the
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
-- API to return and review the results. Or, if you have configured
-- @ExportingConfig@ in the @MatchingRequest@, you can download the results
-- from S3.
--
-- Amazon Connect uses the following profile attributes to identify
-- matches:
--
-- -   PhoneNumber
--
-- -   HomePhoneNumber
--
-- -   BusinessPhoneNumber
--
-- -   MobilePhoneNumber
--
-- -   EmailAddress
--
-- -   PersonalEmailAddress
--
-- -   BusinessEmailAddress
--
-- -   FullName
--
-- For example, two or more profiles—with spelling mistakes such as __John
-- Doe__ and __Jhn Doe__, or different casing email addresses such as
-- __JOHN_DOE\@ANYCOMPANY.COM__ and __johndoe\@anycompany.com__, or
-- different phone number formats such as __555-010-0000__ and
-- __+1-555-010-0000__—can be detected as belonging to the same customer
-- __John Doe__ and merged into a unified profile.
module Amazonka.CustomerProfiles.GetMatches
  ( -- * Creating a Request
    GetMatches (..),
    newGetMatches,

    -- * Request Lenses
    getMatches_nextToken,
    getMatches_maxResults,
    getMatches_domainName,

    -- * Destructuring the Response
    GetMatchesResponse (..),
    newGetMatchesResponse,

    -- * Response Lenses
    getMatchesResponse_nextToken,
    getMatchesResponse_matches,
    getMatchesResponse_potentialMatches,
    getMatchesResponse_matchGenerationDate,
    getMatchesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetMatches' smart constructor.
data GetMatches = GetMatches'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMatches' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getMatches_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'getMatches_maxResults' - The maximum number of results to return per page.
--
-- 'domainName', 'getMatches_domainName' - The unique name of the domain.
newGetMatches ::
  -- | 'domainName'
  Prelude.Text ->
  GetMatches
newGetMatches pDomainName_ =
  GetMatches'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
getMatches_nextToken :: Lens.Lens' GetMatches (Prelude.Maybe Prelude.Text)
getMatches_nextToken = Lens.lens (\GetMatches' {nextToken} -> nextToken) (\s@GetMatches' {} a -> s {nextToken = a} :: GetMatches)

-- | The maximum number of results to return per page.
getMatches_maxResults :: Lens.Lens' GetMatches (Prelude.Maybe Prelude.Natural)
getMatches_maxResults = Lens.lens (\GetMatches' {maxResults} -> maxResults) (\s@GetMatches' {} a -> s {maxResults = a} :: GetMatches)

-- | The unique name of the domain.
getMatches_domainName :: Lens.Lens' GetMatches Prelude.Text
getMatches_domainName = Lens.lens (\GetMatches' {domainName} -> domainName) (\s@GetMatches' {} a -> s {domainName = a} :: GetMatches)

instance Core.AWSRequest GetMatches where
  type AWSResponse GetMatches = GetMatchesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMatchesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Matches" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "PotentialMatches")
            Prelude.<*> (x Core..?> "MatchGenerationDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMatches where
  hashWithSalt _salt GetMatches' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData GetMatches where
  rnf GetMatches' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf domainName

instance Core.ToHeaders GetMatches where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMatches where
  toPath GetMatches' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainName, "/matches"]

instance Core.ToQuery GetMatches where
  toQuery GetMatches' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newGetMatchesResponse' smart constructor.
data GetMatchesResponse = GetMatchesResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of matched profiles for this instance.
    matches :: Prelude.Maybe [MatchItem],
    -- | The number of potential matches found.
    potentialMatches :: Prelude.Maybe Prelude.Natural,
    -- | The timestamp this version of Match Result generated.
    matchGenerationDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMatchesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getMatchesResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'matches', 'getMatchesResponse_matches' - The list of matched profiles for this instance.
--
-- 'potentialMatches', 'getMatchesResponse_potentialMatches' - The number of potential matches found.
--
-- 'matchGenerationDate', 'getMatchesResponse_matchGenerationDate' - The timestamp this version of Match Result generated.
--
-- 'httpStatus', 'getMatchesResponse_httpStatus' - The response's http status code.
newGetMatchesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMatchesResponse
newGetMatchesResponse pHttpStatus_ =
  GetMatchesResponse'
    { nextToken = Prelude.Nothing,
      matches = Prelude.Nothing,
      potentialMatches = Prelude.Nothing,
      matchGenerationDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
getMatchesResponse_nextToken :: Lens.Lens' GetMatchesResponse (Prelude.Maybe Prelude.Text)
getMatchesResponse_nextToken = Lens.lens (\GetMatchesResponse' {nextToken} -> nextToken) (\s@GetMatchesResponse' {} a -> s {nextToken = a} :: GetMatchesResponse)

-- | The list of matched profiles for this instance.
getMatchesResponse_matches :: Lens.Lens' GetMatchesResponse (Prelude.Maybe [MatchItem])
getMatchesResponse_matches = Lens.lens (\GetMatchesResponse' {matches} -> matches) (\s@GetMatchesResponse' {} a -> s {matches = a} :: GetMatchesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The number of potential matches found.
getMatchesResponse_potentialMatches :: Lens.Lens' GetMatchesResponse (Prelude.Maybe Prelude.Natural)
getMatchesResponse_potentialMatches = Lens.lens (\GetMatchesResponse' {potentialMatches} -> potentialMatches) (\s@GetMatchesResponse' {} a -> s {potentialMatches = a} :: GetMatchesResponse)

-- | The timestamp this version of Match Result generated.
getMatchesResponse_matchGenerationDate :: Lens.Lens' GetMatchesResponse (Prelude.Maybe Prelude.UTCTime)
getMatchesResponse_matchGenerationDate = Lens.lens (\GetMatchesResponse' {matchGenerationDate} -> matchGenerationDate) (\s@GetMatchesResponse' {} a -> s {matchGenerationDate = a} :: GetMatchesResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getMatchesResponse_httpStatus :: Lens.Lens' GetMatchesResponse Prelude.Int
getMatchesResponse_httpStatus = Lens.lens (\GetMatchesResponse' {httpStatus} -> httpStatus) (\s@GetMatchesResponse' {} a -> s {httpStatus = a} :: GetMatchesResponse)

instance Prelude.NFData GetMatchesResponse where
  rnf GetMatchesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf matches
      `Prelude.seq` Prelude.rnf potentialMatches
      `Prelude.seq` Prelude.rnf matchGenerationDate
      `Prelude.seq` Prelude.rnf httpStatus
