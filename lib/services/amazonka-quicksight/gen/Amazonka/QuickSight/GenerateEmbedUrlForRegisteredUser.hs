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
-- Module      : Amazonka.QuickSight.GenerateEmbedUrlForRegisteredUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an embed URL that you can use to embed an Amazon QuickSight
-- experience in your website. This action can be used for any type of user
-- registered in an Amazon QuickSight account. Before you use this action,
-- make sure that you have configured the relevant Amazon QuickSight
-- resource and permissions.
--
-- The following rules apply to the generated URL:
--
-- -   It contains a temporary bearer token. It is valid for 5 minutes
--     after it is generated. Once redeemed within this period, it cannot
--     be re-used again.
--
-- -   The URL validity period should not be confused with the actual
--     session lifetime that can be customized using the
--     @ SessionLifetimeInMinutes @ parameter.
--
--     The resulting user session is valid for 15 minutes (minimum) to 10
--     hours (maximum). The default session duration is 10 hours.
--
-- -   You are charged only when the URL is used or there is interaction
--     with Amazon QuickSight.
--
-- For more information, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html Embedded Analytics>
-- in the /Amazon QuickSight User Guide/.
--
-- For more information about the high-level steps for embedding and for an
-- interactive demo of the ways you can customize embedding, visit the
-- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html Amazon QuickSight Developer Portal>.
module Amazonka.QuickSight.GenerateEmbedUrlForRegisteredUser
  ( -- * Creating a Request
    GenerateEmbedUrlForRegisteredUser (..),
    newGenerateEmbedUrlForRegisteredUser,

    -- * Request Lenses
    generateEmbedUrlForRegisteredUser_sessionLifetimeInMinutes,
    generateEmbedUrlForRegisteredUser_allowedDomains,
    generateEmbedUrlForRegisteredUser_awsAccountId,
    generateEmbedUrlForRegisteredUser_userArn,
    generateEmbedUrlForRegisteredUser_experienceConfiguration,

    -- * Destructuring the Response
    GenerateEmbedUrlForRegisteredUserResponse (..),
    newGenerateEmbedUrlForRegisteredUserResponse,

    -- * Response Lenses
    generateEmbedUrlForRegisteredUserResponse_status,
    generateEmbedUrlForRegisteredUserResponse_embedUrl,
    generateEmbedUrlForRegisteredUserResponse_requestId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGenerateEmbedUrlForRegisteredUser' smart constructor.
data GenerateEmbedUrlForRegisteredUser = GenerateEmbedUrlForRegisteredUser'
  { -- | How many minutes the session is valid. The session lifetime must be in
    -- [15-600] minutes range.
    sessionLifetimeInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The domains that you want to add to the allow list for access to the
    -- generated URL that is then embedded. This optional parameter overrides
    -- the static domains that are configured in the Manage QuickSight menu in
    -- the Amazon QuickSight console. Instead, it allows only the domains that
    -- you include in this parameter. You can list up to three domains or
    -- subdomains in each API call.
    --
    -- To include all subdomains under a specific domain to the allow list, use
    -- @*@. For example, @https:\/\/*.sapp.amazon.com@ includes all subdomains
    -- under @https:\/\/sapp.amazon.com@.
    allowedDomains :: Prelude.Maybe [Prelude.Text],
    -- | The ID for the Amazon Web Services account that contains the dashboard
    -- that you\'re embedding.
    awsAccountId :: Prelude.Text,
    -- | The Amazon Resource Name for the registered user.
    userArn :: Prelude.Text,
    -- | The experience you are embedding. For registered users, you can embed
    -- Amazon QuickSight dashboards or the entire Amazon QuickSight console.
    experienceConfiguration :: RegisteredUserEmbeddingExperienceConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateEmbedUrlForRegisteredUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionLifetimeInMinutes', 'generateEmbedUrlForRegisteredUser_sessionLifetimeInMinutes' - How many minutes the session is valid. The session lifetime must be in
-- [15-600] minutes range.
--
-- 'allowedDomains', 'generateEmbedUrlForRegisteredUser_allowedDomains' - The domains that you want to add to the allow list for access to the
-- generated URL that is then embedded. This optional parameter overrides
-- the static domains that are configured in the Manage QuickSight menu in
-- the Amazon QuickSight console. Instead, it allows only the domains that
-- you include in this parameter. You can list up to three domains or
-- subdomains in each API call.
--
-- To include all subdomains under a specific domain to the allow list, use
-- @*@. For example, @https:\/\/*.sapp.amazon.com@ includes all subdomains
-- under @https:\/\/sapp.amazon.com@.
--
-- 'awsAccountId', 'generateEmbedUrlForRegisteredUser_awsAccountId' - The ID for the Amazon Web Services account that contains the dashboard
-- that you\'re embedding.
--
-- 'userArn', 'generateEmbedUrlForRegisteredUser_userArn' - The Amazon Resource Name for the registered user.
--
-- 'experienceConfiguration', 'generateEmbedUrlForRegisteredUser_experienceConfiguration' - The experience you are embedding. For registered users, you can embed
-- Amazon QuickSight dashboards or the entire Amazon QuickSight console.
newGenerateEmbedUrlForRegisteredUser ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'userArn'
  Prelude.Text ->
  -- | 'experienceConfiguration'
  RegisteredUserEmbeddingExperienceConfiguration ->
  GenerateEmbedUrlForRegisteredUser
newGenerateEmbedUrlForRegisteredUser
  pAwsAccountId_
  pUserArn_
  pExperienceConfiguration_ =
    GenerateEmbedUrlForRegisteredUser'
      { sessionLifetimeInMinutes =
          Prelude.Nothing,
        allowedDomains = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        userArn = pUserArn_,
        experienceConfiguration =
          pExperienceConfiguration_
      }

-- | How many minutes the session is valid. The session lifetime must be in
-- [15-600] minutes range.
generateEmbedUrlForRegisteredUser_sessionLifetimeInMinutes :: Lens.Lens' GenerateEmbedUrlForRegisteredUser (Prelude.Maybe Prelude.Natural)
generateEmbedUrlForRegisteredUser_sessionLifetimeInMinutes = Lens.lens (\GenerateEmbedUrlForRegisteredUser' {sessionLifetimeInMinutes} -> sessionLifetimeInMinutes) (\s@GenerateEmbedUrlForRegisteredUser' {} a -> s {sessionLifetimeInMinutes = a} :: GenerateEmbedUrlForRegisteredUser)

-- | The domains that you want to add to the allow list for access to the
-- generated URL that is then embedded. This optional parameter overrides
-- the static domains that are configured in the Manage QuickSight menu in
-- the Amazon QuickSight console. Instead, it allows only the domains that
-- you include in this parameter. You can list up to three domains or
-- subdomains in each API call.
--
-- To include all subdomains under a specific domain to the allow list, use
-- @*@. For example, @https:\/\/*.sapp.amazon.com@ includes all subdomains
-- under @https:\/\/sapp.amazon.com@.
generateEmbedUrlForRegisteredUser_allowedDomains :: Lens.Lens' GenerateEmbedUrlForRegisteredUser (Prelude.Maybe [Prelude.Text])
generateEmbedUrlForRegisteredUser_allowedDomains = Lens.lens (\GenerateEmbedUrlForRegisteredUser' {allowedDomains} -> allowedDomains) (\s@GenerateEmbedUrlForRegisteredUser' {} a -> s {allowedDomains = a} :: GenerateEmbedUrlForRegisteredUser) Prelude.. Lens.mapping Lens.coerced

-- | The ID for the Amazon Web Services account that contains the dashboard
-- that you\'re embedding.
generateEmbedUrlForRegisteredUser_awsAccountId :: Lens.Lens' GenerateEmbedUrlForRegisteredUser Prelude.Text
generateEmbedUrlForRegisteredUser_awsAccountId = Lens.lens (\GenerateEmbedUrlForRegisteredUser' {awsAccountId} -> awsAccountId) (\s@GenerateEmbedUrlForRegisteredUser' {} a -> s {awsAccountId = a} :: GenerateEmbedUrlForRegisteredUser)

-- | The Amazon Resource Name for the registered user.
generateEmbedUrlForRegisteredUser_userArn :: Lens.Lens' GenerateEmbedUrlForRegisteredUser Prelude.Text
generateEmbedUrlForRegisteredUser_userArn = Lens.lens (\GenerateEmbedUrlForRegisteredUser' {userArn} -> userArn) (\s@GenerateEmbedUrlForRegisteredUser' {} a -> s {userArn = a} :: GenerateEmbedUrlForRegisteredUser)

-- | The experience you are embedding. For registered users, you can embed
-- Amazon QuickSight dashboards or the entire Amazon QuickSight console.
generateEmbedUrlForRegisteredUser_experienceConfiguration :: Lens.Lens' GenerateEmbedUrlForRegisteredUser RegisteredUserEmbeddingExperienceConfiguration
generateEmbedUrlForRegisteredUser_experienceConfiguration = Lens.lens (\GenerateEmbedUrlForRegisteredUser' {experienceConfiguration} -> experienceConfiguration) (\s@GenerateEmbedUrlForRegisteredUser' {} a -> s {experienceConfiguration = a} :: GenerateEmbedUrlForRegisteredUser)

instance
  Core.AWSRequest
    GenerateEmbedUrlForRegisteredUser
  where
  type
    AWSResponse GenerateEmbedUrlForRegisteredUser =
      GenerateEmbedUrlForRegisteredUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GenerateEmbedUrlForRegisteredUserResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
              Prelude.<*> (x Core..:> "EmbedUrl")
              Prelude.<*> (x Core..:> "RequestId")
      )

instance
  Prelude.Hashable
    GenerateEmbedUrlForRegisteredUser
  where
  hashWithSalt
    _salt
    GenerateEmbedUrlForRegisteredUser' {..} =
      _salt
        `Prelude.hashWithSalt` sessionLifetimeInMinutes
        `Prelude.hashWithSalt` allowedDomains
        `Prelude.hashWithSalt` awsAccountId
        `Prelude.hashWithSalt` userArn
        `Prelude.hashWithSalt` experienceConfiguration

instance
  Prelude.NFData
    GenerateEmbedUrlForRegisteredUser
  where
  rnf GenerateEmbedUrlForRegisteredUser' {..} =
    Prelude.rnf sessionLifetimeInMinutes
      `Prelude.seq` Prelude.rnf allowedDomains
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf userArn
      `Prelude.seq` Prelude.rnf experienceConfiguration

instance
  Core.ToHeaders
    GenerateEmbedUrlForRegisteredUser
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GenerateEmbedUrlForRegisteredUser
  where
  toJSON GenerateEmbedUrlForRegisteredUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SessionLifetimeInMinutes" Core..=)
              Prelude.<$> sessionLifetimeInMinutes,
            ("AllowedDomains" Core..=)
              Prelude.<$> allowedDomains,
            Prelude.Just ("UserArn" Core..= userArn),
            Prelude.Just
              ( "ExperienceConfiguration"
                  Core..= experienceConfiguration
              )
          ]
      )

instance
  Core.ToPath
    GenerateEmbedUrlForRegisteredUser
  where
  toPath GenerateEmbedUrlForRegisteredUser' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/embed-url/registered-user"
      ]

instance
  Core.ToQuery
    GenerateEmbedUrlForRegisteredUser
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGenerateEmbedUrlForRegisteredUserResponse' smart constructor.
data GenerateEmbedUrlForRegisteredUserResponse = GenerateEmbedUrlForRegisteredUserResponse'
  { -- | The HTTP status of the request.
    status :: Prelude.Int,
    -- | The embed URL for the Amazon QuickSight dashboard or console.
    embedUrl :: Core.Sensitive Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateEmbedUrlForRegisteredUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'generateEmbedUrlForRegisteredUserResponse_status' - The HTTP status of the request.
--
-- 'embedUrl', 'generateEmbedUrlForRegisteredUserResponse_embedUrl' - The embed URL for the Amazon QuickSight dashboard or console.
--
-- 'requestId', 'generateEmbedUrlForRegisteredUserResponse_requestId' - The Amazon Web Services request ID for this operation.
newGenerateEmbedUrlForRegisteredUserResponse ::
  -- | 'status'
  Prelude.Int ->
  -- | 'embedUrl'
  Prelude.Text ->
  -- | 'requestId'
  Prelude.Text ->
  GenerateEmbedUrlForRegisteredUserResponse
newGenerateEmbedUrlForRegisteredUserResponse
  pStatus_
  pEmbedUrl_
  pRequestId_ =
    GenerateEmbedUrlForRegisteredUserResponse'
      { status =
          pStatus_,
        embedUrl =
          Core._Sensitive
            Lens.# pEmbedUrl_,
        requestId = pRequestId_
      }

-- | The HTTP status of the request.
generateEmbedUrlForRegisteredUserResponse_status :: Lens.Lens' GenerateEmbedUrlForRegisteredUserResponse Prelude.Int
generateEmbedUrlForRegisteredUserResponse_status = Lens.lens (\GenerateEmbedUrlForRegisteredUserResponse' {status} -> status) (\s@GenerateEmbedUrlForRegisteredUserResponse' {} a -> s {status = a} :: GenerateEmbedUrlForRegisteredUserResponse)

-- | The embed URL for the Amazon QuickSight dashboard or console.
generateEmbedUrlForRegisteredUserResponse_embedUrl :: Lens.Lens' GenerateEmbedUrlForRegisteredUserResponse Prelude.Text
generateEmbedUrlForRegisteredUserResponse_embedUrl = Lens.lens (\GenerateEmbedUrlForRegisteredUserResponse' {embedUrl} -> embedUrl) (\s@GenerateEmbedUrlForRegisteredUserResponse' {} a -> s {embedUrl = a} :: GenerateEmbedUrlForRegisteredUserResponse) Prelude.. Core._Sensitive

-- | The Amazon Web Services request ID for this operation.
generateEmbedUrlForRegisteredUserResponse_requestId :: Lens.Lens' GenerateEmbedUrlForRegisteredUserResponse Prelude.Text
generateEmbedUrlForRegisteredUserResponse_requestId = Lens.lens (\GenerateEmbedUrlForRegisteredUserResponse' {requestId} -> requestId) (\s@GenerateEmbedUrlForRegisteredUserResponse' {} a -> s {requestId = a} :: GenerateEmbedUrlForRegisteredUserResponse)

instance
  Prelude.NFData
    GenerateEmbedUrlForRegisteredUserResponse
  where
  rnf GenerateEmbedUrlForRegisteredUserResponse' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf embedUrl
      `Prelude.seq` Prelude.rnf requestId
