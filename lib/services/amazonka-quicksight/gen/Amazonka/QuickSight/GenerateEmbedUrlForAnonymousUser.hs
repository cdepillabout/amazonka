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
-- Module      : Amazonka.QuickSight.GenerateEmbedUrlForAnonymousUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an embed URL that you can use to embed an Amazon QuickSight
-- dashboard in your website, without having to register any reader users.
-- Before you use this action, make sure that you have configured the
-- dashboards and permissions.
--
-- The following rules apply to the generated URL:
--
-- -   It contains a temporary bearer token. It is valid for 5 minutes
--     after it is generated. Once redeemed within this period, it cannot
--     be re-used again.
--
-- -   The URL validity period should not be confused with the actual
--     session lifetime that can be customized using the
--     @ SessionLifetimeInMinutes @ parameter. The resulting user session
--     is valid for 15 minutes (minimum) to 10 hours (maximum). The default
--     session duration is 10 hours.
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
module Amazonka.QuickSight.GenerateEmbedUrlForAnonymousUser
  ( -- * Creating a Request
    GenerateEmbedUrlForAnonymousUser (..),
    newGenerateEmbedUrlForAnonymousUser,

    -- * Request Lenses
    generateEmbedUrlForAnonymousUser_sessionTags,
    generateEmbedUrlForAnonymousUser_sessionLifetimeInMinutes,
    generateEmbedUrlForAnonymousUser_allowedDomains,
    generateEmbedUrlForAnonymousUser_awsAccountId,
    generateEmbedUrlForAnonymousUser_namespace,
    generateEmbedUrlForAnonymousUser_authorizedResourceArns,
    generateEmbedUrlForAnonymousUser_experienceConfiguration,

    -- * Destructuring the Response
    GenerateEmbedUrlForAnonymousUserResponse (..),
    newGenerateEmbedUrlForAnonymousUserResponse,

    -- * Response Lenses
    generateEmbedUrlForAnonymousUserResponse_status,
    generateEmbedUrlForAnonymousUserResponse_embedUrl,
    generateEmbedUrlForAnonymousUserResponse_requestId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGenerateEmbedUrlForAnonymousUser' smart constructor.
data GenerateEmbedUrlForAnonymousUser = GenerateEmbedUrlForAnonymousUser'
  { -- | The session tags used for row-level security. Before you use this
    -- parameter, make sure that you have configured the relevant datasets
    -- using the @DataSet$RowLevelPermissionTagConfiguration@ parameter so that
    -- session tags can be used to provide row-level security.
    --
    -- These are not the tags used for the Amazon Web Services resource tagging
    -- feature. For more information, see
    -- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html Using Row-Level Security (RLS) with Tags>in
    -- the /Amazon QuickSight User Guide/.
    sessionTags :: Prelude.Maybe (Prelude.NonEmpty SessionTag),
    -- | How many minutes the session is valid. The session lifetime must be in
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
    -- | The Amazon QuickSight namespace that the anonymous user virtually
    -- belongs to. If you are not using an Amazon QuickSight custom namespace,
    -- set this to @default@.
    namespace :: Prelude.Text,
    -- | The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
    -- that the user is authorized to access during the lifetime of the
    -- session. If you choose @Dashboard@ embedding experience, pass the list
    -- of dashboard ARNs in the account that you want the user to be able to
    -- view. Currently, you can pass up to 25 dashboard ARNs in each API call.
    authorizedResourceArns :: [Prelude.Text],
    -- | The configuration of the experience that you are embedding.
    experienceConfiguration :: AnonymousUserEmbeddingExperienceConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateEmbedUrlForAnonymousUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionTags', 'generateEmbedUrlForAnonymousUser_sessionTags' - The session tags used for row-level security. Before you use this
-- parameter, make sure that you have configured the relevant datasets
-- using the @DataSet$RowLevelPermissionTagConfiguration@ parameter so that
-- session tags can be used to provide row-level security.
--
-- These are not the tags used for the Amazon Web Services resource tagging
-- feature. For more information, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html Using Row-Level Security (RLS) with Tags>in
-- the /Amazon QuickSight User Guide/.
--
-- 'sessionLifetimeInMinutes', 'generateEmbedUrlForAnonymousUser_sessionLifetimeInMinutes' - How many minutes the session is valid. The session lifetime must be in
-- [15-600] minutes range.
--
-- 'allowedDomains', 'generateEmbedUrlForAnonymousUser_allowedDomains' - The domains that you want to add to the allow list for access to the
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
-- 'awsAccountId', 'generateEmbedUrlForAnonymousUser_awsAccountId' - The ID for the Amazon Web Services account that contains the dashboard
-- that you\'re embedding.
--
-- 'namespace', 'generateEmbedUrlForAnonymousUser_namespace' - The Amazon QuickSight namespace that the anonymous user virtually
-- belongs to. If you are not using an Amazon QuickSight custom namespace,
-- set this to @default@.
--
-- 'authorizedResourceArns', 'generateEmbedUrlForAnonymousUser_authorizedResourceArns' - The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
-- that the user is authorized to access during the lifetime of the
-- session. If you choose @Dashboard@ embedding experience, pass the list
-- of dashboard ARNs in the account that you want the user to be able to
-- view. Currently, you can pass up to 25 dashboard ARNs in each API call.
--
-- 'experienceConfiguration', 'generateEmbedUrlForAnonymousUser_experienceConfiguration' - The configuration of the experience that you are embedding.
newGenerateEmbedUrlForAnonymousUser ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  -- | 'experienceConfiguration'
  AnonymousUserEmbeddingExperienceConfiguration ->
  GenerateEmbedUrlForAnonymousUser
newGenerateEmbedUrlForAnonymousUser
  pAwsAccountId_
  pNamespace_
  pExperienceConfiguration_ =
    GenerateEmbedUrlForAnonymousUser'
      { sessionTags =
          Prelude.Nothing,
        sessionLifetimeInMinutes =
          Prelude.Nothing,
        allowedDomains = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        namespace = pNamespace_,
        authorizedResourceArns = Prelude.mempty,
        experienceConfiguration =
          pExperienceConfiguration_
      }

-- | The session tags used for row-level security. Before you use this
-- parameter, make sure that you have configured the relevant datasets
-- using the @DataSet$RowLevelPermissionTagConfiguration@ parameter so that
-- session tags can be used to provide row-level security.
--
-- These are not the tags used for the Amazon Web Services resource tagging
-- feature. For more information, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html Using Row-Level Security (RLS) with Tags>in
-- the /Amazon QuickSight User Guide/.
generateEmbedUrlForAnonymousUser_sessionTags :: Lens.Lens' GenerateEmbedUrlForAnonymousUser (Prelude.Maybe (Prelude.NonEmpty SessionTag))
generateEmbedUrlForAnonymousUser_sessionTags = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {sessionTags} -> sessionTags) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {sessionTags = a} :: GenerateEmbedUrlForAnonymousUser) Prelude.. Lens.mapping Lens.coerced

-- | How many minutes the session is valid. The session lifetime must be in
-- [15-600] minutes range.
generateEmbedUrlForAnonymousUser_sessionLifetimeInMinutes :: Lens.Lens' GenerateEmbedUrlForAnonymousUser (Prelude.Maybe Prelude.Natural)
generateEmbedUrlForAnonymousUser_sessionLifetimeInMinutes = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {sessionLifetimeInMinutes} -> sessionLifetimeInMinutes) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {sessionLifetimeInMinutes = a} :: GenerateEmbedUrlForAnonymousUser)

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
generateEmbedUrlForAnonymousUser_allowedDomains :: Lens.Lens' GenerateEmbedUrlForAnonymousUser (Prelude.Maybe [Prelude.Text])
generateEmbedUrlForAnonymousUser_allowedDomains = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {allowedDomains} -> allowedDomains) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {allowedDomains = a} :: GenerateEmbedUrlForAnonymousUser) Prelude.. Lens.mapping Lens.coerced

-- | The ID for the Amazon Web Services account that contains the dashboard
-- that you\'re embedding.
generateEmbedUrlForAnonymousUser_awsAccountId :: Lens.Lens' GenerateEmbedUrlForAnonymousUser Prelude.Text
generateEmbedUrlForAnonymousUser_awsAccountId = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {awsAccountId} -> awsAccountId) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {awsAccountId = a} :: GenerateEmbedUrlForAnonymousUser)

-- | The Amazon QuickSight namespace that the anonymous user virtually
-- belongs to. If you are not using an Amazon QuickSight custom namespace,
-- set this to @default@.
generateEmbedUrlForAnonymousUser_namespace :: Lens.Lens' GenerateEmbedUrlForAnonymousUser Prelude.Text
generateEmbedUrlForAnonymousUser_namespace = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {namespace} -> namespace) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {namespace = a} :: GenerateEmbedUrlForAnonymousUser)

-- | The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
-- that the user is authorized to access during the lifetime of the
-- session. If you choose @Dashboard@ embedding experience, pass the list
-- of dashboard ARNs in the account that you want the user to be able to
-- view. Currently, you can pass up to 25 dashboard ARNs in each API call.
generateEmbedUrlForAnonymousUser_authorizedResourceArns :: Lens.Lens' GenerateEmbedUrlForAnonymousUser [Prelude.Text]
generateEmbedUrlForAnonymousUser_authorizedResourceArns = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {authorizedResourceArns} -> authorizedResourceArns) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {authorizedResourceArns = a} :: GenerateEmbedUrlForAnonymousUser) Prelude.. Lens.coerced

-- | The configuration of the experience that you are embedding.
generateEmbedUrlForAnonymousUser_experienceConfiguration :: Lens.Lens' GenerateEmbedUrlForAnonymousUser AnonymousUserEmbeddingExperienceConfiguration
generateEmbedUrlForAnonymousUser_experienceConfiguration = Lens.lens (\GenerateEmbedUrlForAnonymousUser' {experienceConfiguration} -> experienceConfiguration) (\s@GenerateEmbedUrlForAnonymousUser' {} a -> s {experienceConfiguration = a} :: GenerateEmbedUrlForAnonymousUser)

instance
  Core.AWSRequest
    GenerateEmbedUrlForAnonymousUser
  where
  type
    AWSResponse GenerateEmbedUrlForAnonymousUser =
      GenerateEmbedUrlForAnonymousUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GenerateEmbedUrlForAnonymousUserResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "EmbedUrl")
            Prelude.<*> (x Core..:> "RequestId")
      )

instance
  Prelude.Hashable
    GenerateEmbedUrlForAnonymousUser
  where
  hashWithSalt
    _salt
    GenerateEmbedUrlForAnonymousUser' {..} =
      _salt `Prelude.hashWithSalt` sessionTags
        `Prelude.hashWithSalt` sessionLifetimeInMinutes
        `Prelude.hashWithSalt` allowedDomains
        `Prelude.hashWithSalt` awsAccountId
        `Prelude.hashWithSalt` namespace
        `Prelude.hashWithSalt` authorizedResourceArns
        `Prelude.hashWithSalt` experienceConfiguration

instance
  Prelude.NFData
    GenerateEmbedUrlForAnonymousUser
  where
  rnf GenerateEmbedUrlForAnonymousUser' {..} =
    Prelude.rnf sessionTags
      `Prelude.seq` Prelude.rnf sessionLifetimeInMinutes
      `Prelude.seq` Prelude.rnf allowedDomains
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf authorizedResourceArns
      `Prelude.seq` Prelude.rnf experienceConfiguration

instance
  Core.ToHeaders
    GenerateEmbedUrlForAnonymousUser
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

instance Core.ToJSON GenerateEmbedUrlForAnonymousUser where
  toJSON GenerateEmbedUrlForAnonymousUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SessionTags" Core..=) Prelude.<$> sessionTags,
            ("SessionLifetimeInMinutes" Core..=)
              Prelude.<$> sessionLifetimeInMinutes,
            ("AllowedDomains" Core..=)
              Prelude.<$> allowedDomains,
            Prelude.Just ("Namespace" Core..= namespace),
            Prelude.Just
              ( "AuthorizedResourceArns"
                  Core..= authorizedResourceArns
              ),
            Prelude.Just
              ( "ExperienceConfiguration"
                  Core..= experienceConfiguration
              )
          ]
      )

instance Core.ToPath GenerateEmbedUrlForAnonymousUser where
  toPath GenerateEmbedUrlForAnonymousUser' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/embed-url/anonymous-user"
      ]

instance
  Core.ToQuery
    GenerateEmbedUrlForAnonymousUser
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGenerateEmbedUrlForAnonymousUserResponse' smart constructor.
data GenerateEmbedUrlForAnonymousUserResponse = GenerateEmbedUrlForAnonymousUserResponse'
  { -- | The HTTP status of the request.
    status :: Prelude.Int,
    -- | The embed URL for the dashboard.
    embedUrl :: Core.Sensitive Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateEmbedUrlForAnonymousUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'generateEmbedUrlForAnonymousUserResponse_status' - The HTTP status of the request.
--
-- 'embedUrl', 'generateEmbedUrlForAnonymousUserResponse_embedUrl' - The embed URL for the dashboard.
--
-- 'requestId', 'generateEmbedUrlForAnonymousUserResponse_requestId' - The Amazon Web Services request ID for this operation.
newGenerateEmbedUrlForAnonymousUserResponse ::
  -- | 'status'
  Prelude.Int ->
  -- | 'embedUrl'
  Prelude.Text ->
  -- | 'requestId'
  Prelude.Text ->
  GenerateEmbedUrlForAnonymousUserResponse
newGenerateEmbedUrlForAnonymousUserResponse
  pStatus_
  pEmbedUrl_
  pRequestId_ =
    GenerateEmbedUrlForAnonymousUserResponse'
      { status =
          pStatus_,
        embedUrl =
          Core._Sensitive
            Lens.# pEmbedUrl_,
        requestId = pRequestId_
      }

-- | The HTTP status of the request.
generateEmbedUrlForAnonymousUserResponse_status :: Lens.Lens' GenerateEmbedUrlForAnonymousUserResponse Prelude.Int
generateEmbedUrlForAnonymousUserResponse_status = Lens.lens (\GenerateEmbedUrlForAnonymousUserResponse' {status} -> status) (\s@GenerateEmbedUrlForAnonymousUserResponse' {} a -> s {status = a} :: GenerateEmbedUrlForAnonymousUserResponse)

-- | The embed URL for the dashboard.
generateEmbedUrlForAnonymousUserResponse_embedUrl :: Lens.Lens' GenerateEmbedUrlForAnonymousUserResponse Prelude.Text
generateEmbedUrlForAnonymousUserResponse_embedUrl = Lens.lens (\GenerateEmbedUrlForAnonymousUserResponse' {embedUrl} -> embedUrl) (\s@GenerateEmbedUrlForAnonymousUserResponse' {} a -> s {embedUrl = a} :: GenerateEmbedUrlForAnonymousUserResponse) Prelude.. Core._Sensitive

-- | The Amazon Web Services request ID for this operation.
generateEmbedUrlForAnonymousUserResponse_requestId :: Lens.Lens' GenerateEmbedUrlForAnonymousUserResponse Prelude.Text
generateEmbedUrlForAnonymousUserResponse_requestId = Lens.lens (\GenerateEmbedUrlForAnonymousUserResponse' {requestId} -> requestId) (\s@GenerateEmbedUrlForAnonymousUserResponse' {} a -> s {requestId = a} :: GenerateEmbedUrlForAnonymousUserResponse)

instance
  Prelude.NFData
    GenerateEmbedUrlForAnonymousUserResponse
  where
  rnf GenerateEmbedUrlForAnonymousUserResponse' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf embedUrl
      `Prelude.seq` Prelude.rnf requestId
