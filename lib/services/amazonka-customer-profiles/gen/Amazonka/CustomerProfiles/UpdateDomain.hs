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
-- Module      : Amazonka.CustomerProfiles.UpdateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the properties of a domain, including creating or selecting a
-- dead letter queue or an encryption key.
--
-- After a domain is created, the name can’t be changed.
--
-- Use this API or
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html CreateDomain>
-- to enable
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html identity resolution>:
-- set @Matching@ to true.
--
-- To prevent cross-service impersonation when you call this API, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html Cross-service confused deputy prevention>
-- for sample policies that you should apply.
module Amazonka.CustomerProfiles.UpdateDomain
  ( -- * Creating a Request
    UpdateDomain (..),
    newUpdateDomain,

    -- * Request Lenses
    updateDomain_tags,
    updateDomain_defaultExpirationDays,
    updateDomain_matching,
    updateDomain_deadLetterQueueUrl,
    updateDomain_defaultEncryptionKey,
    updateDomain_domainName,

    -- * Destructuring the Response
    UpdateDomainResponse (..),
    newUpdateDomainResponse,

    -- * Response Lenses
    updateDomainResponse_tags,
    updateDomainResponse_defaultExpirationDays,
    updateDomainResponse_matching,
    updateDomainResponse_deadLetterQueueUrl,
    updateDomainResponse_defaultEncryptionKey,
    updateDomainResponse_httpStatus,
    updateDomainResponse_domainName,
    updateDomainResponse_createdAt,
    updateDomainResponse_lastUpdatedAt,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateDomain' smart constructor.
data UpdateDomain = UpdateDomain'
  { -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The default number of days until the data within the domain expires.
    defaultExpirationDays :: Prelude.Maybe Prelude.Natural,
    -- | The process of matching duplicate profiles. If @Matching@ = @true@,
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
    matching :: Prelude.Maybe MatchingRequest,
    -- | The URL of the SQS dead letter queue, which is used for reporting errors
    -- associated with ingesting data from third party applications. If
    -- specified as an empty string, it will clear any existing value. You must
    -- set up a policy on the DeadLetterQueue for the SendMessage operation to
    -- enable Amazon Connect Customer Profiles to send messages to the
    -- DeadLetterQueue.
    deadLetterQueueUrl :: Prelude.Maybe Prelude.Text,
    -- | The default encryption key, which is an AWS managed key, is used when no
    -- specific type of encryption key is specified. It is used to encrypt all
    -- data before it is placed in permanent or semi-permanent storage. If
    -- specified as an empty string, it will clear any existing value.
    defaultEncryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateDomain_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'defaultExpirationDays', 'updateDomain_defaultExpirationDays' - The default number of days until the data within the domain expires.
--
-- 'matching', 'updateDomain_matching' - The process of matching duplicate profiles. If @Matching@ = @true@,
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
-- 'deadLetterQueueUrl', 'updateDomain_deadLetterQueueUrl' - The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications. If
-- specified as an empty string, it will clear any existing value. You must
-- set up a policy on the DeadLetterQueue for the SendMessage operation to
-- enable Amazon Connect Customer Profiles to send messages to the
-- DeadLetterQueue.
--
-- 'defaultEncryptionKey', 'updateDomain_defaultEncryptionKey' - The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage. If
-- specified as an empty string, it will clear any existing value.
--
-- 'domainName', 'updateDomain_domainName' - The unique name of the domain.
newUpdateDomain ::
  -- | 'domainName'
  Prelude.Text ->
  UpdateDomain
newUpdateDomain pDomainName_ =
  UpdateDomain'
    { tags = Prelude.Nothing,
      defaultExpirationDays = Prelude.Nothing,
      matching = Prelude.Nothing,
      deadLetterQueueUrl = Prelude.Nothing,
      defaultEncryptionKey = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The tags used to organize, track, or control access for this resource.
updateDomain_tags :: Lens.Lens' UpdateDomain (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateDomain_tags = Lens.lens (\UpdateDomain' {tags} -> tags) (\s@UpdateDomain' {} a -> s {tags = a} :: UpdateDomain) Prelude.. Lens.mapping Lens.coerced

-- | The default number of days until the data within the domain expires.
updateDomain_defaultExpirationDays :: Lens.Lens' UpdateDomain (Prelude.Maybe Prelude.Natural)
updateDomain_defaultExpirationDays = Lens.lens (\UpdateDomain' {defaultExpirationDays} -> defaultExpirationDays) (\s@UpdateDomain' {} a -> s {defaultExpirationDays = a} :: UpdateDomain)

-- | The process of matching duplicate profiles. If @Matching@ = @true@,
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
updateDomain_matching :: Lens.Lens' UpdateDomain (Prelude.Maybe MatchingRequest)
updateDomain_matching = Lens.lens (\UpdateDomain' {matching} -> matching) (\s@UpdateDomain' {} a -> s {matching = a} :: UpdateDomain)

-- | The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications. If
-- specified as an empty string, it will clear any existing value. You must
-- set up a policy on the DeadLetterQueue for the SendMessage operation to
-- enable Amazon Connect Customer Profiles to send messages to the
-- DeadLetterQueue.
updateDomain_deadLetterQueueUrl :: Lens.Lens' UpdateDomain (Prelude.Maybe Prelude.Text)
updateDomain_deadLetterQueueUrl = Lens.lens (\UpdateDomain' {deadLetterQueueUrl} -> deadLetterQueueUrl) (\s@UpdateDomain' {} a -> s {deadLetterQueueUrl = a} :: UpdateDomain)

-- | The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage. If
-- specified as an empty string, it will clear any existing value.
updateDomain_defaultEncryptionKey :: Lens.Lens' UpdateDomain (Prelude.Maybe Prelude.Text)
updateDomain_defaultEncryptionKey = Lens.lens (\UpdateDomain' {defaultEncryptionKey} -> defaultEncryptionKey) (\s@UpdateDomain' {} a -> s {defaultEncryptionKey = a} :: UpdateDomain)

-- | The unique name of the domain.
updateDomain_domainName :: Lens.Lens' UpdateDomain Prelude.Text
updateDomain_domainName = Lens.lens (\UpdateDomain' {domainName} -> domainName) (\s@UpdateDomain' {} a -> s {domainName = a} :: UpdateDomain)

instance Core.AWSRequest UpdateDomain where
  type AWSResponse UpdateDomain = UpdateDomainResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDomainResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "DefaultExpirationDays")
            Prelude.<*> (x Core..?> "Matching")
            Prelude.<*> (x Core..?> "DeadLetterQueueUrl")
            Prelude.<*> (x Core..?> "DefaultEncryptionKey")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DomainName")
            Prelude.<*> (x Core..:> "CreatedAt")
            Prelude.<*> (x Core..:> "LastUpdatedAt")
      )

instance Prelude.Hashable UpdateDomain where
  hashWithSalt _salt UpdateDomain' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` defaultExpirationDays
      `Prelude.hashWithSalt` matching
      `Prelude.hashWithSalt` deadLetterQueueUrl
      `Prelude.hashWithSalt` defaultEncryptionKey
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData UpdateDomain where
  rnf UpdateDomain' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf defaultExpirationDays
      `Prelude.seq` Prelude.rnf matching
      `Prelude.seq` Prelude.rnf deadLetterQueueUrl
      `Prelude.seq` Prelude.rnf defaultEncryptionKey
      `Prelude.seq` Prelude.rnf domainName

instance Core.ToHeaders UpdateDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDomain where
  toJSON UpdateDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("DefaultExpirationDays" Core..=)
              Prelude.<$> defaultExpirationDays,
            ("Matching" Core..=) Prelude.<$> matching,
            ("DeadLetterQueueUrl" Core..=)
              Prelude.<$> deadLetterQueueUrl,
            ("DefaultEncryptionKey" Core..=)
              Prelude.<$> defaultEncryptionKey
          ]
      )

instance Core.ToPath UpdateDomain where
  toPath UpdateDomain' {..} =
    Prelude.mconcat ["/domains/", Core.toBS domainName]

instance Core.ToQuery UpdateDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDomainResponse' smart constructor.
data UpdateDomainResponse = UpdateDomainResponse'
  { -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The default number of days until the data within the domain expires.
    defaultExpirationDays :: Prelude.Maybe Prelude.Natural,
    -- | The process of matching duplicate profiles. If @Matching@ = @true@,
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
    matching :: Prelude.Maybe MatchingResponse,
    -- | The URL of the SQS dead letter queue, which is used for reporting errors
    -- associated with ingesting data from third party applications.
    deadLetterQueueUrl :: Prelude.Maybe Prelude.Text,
    -- | The default encryption key, which is an AWS managed key, is used when no
    -- specific type of encryption key is specified. It is used to encrypt all
    -- data before it is placed in permanent or semi-permanent storage.
    defaultEncryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | The timestamp of when the domain was created.
    createdAt :: Core.POSIX,
    -- | The timestamp of when the domain was most recently edited.
    lastUpdatedAt :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateDomainResponse_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'defaultExpirationDays', 'updateDomainResponse_defaultExpirationDays' - The default number of days until the data within the domain expires.
--
-- 'matching', 'updateDomainResponse_matching' - The process of matching duplicate profiles. If @Matching@ = @true@,
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
-- 'deadLetterQueueUrl', 'updateDomainResponse_deadLetterQueueUrl' - The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications.
--
-- 'defaultEncryptionKey', 'updateDomainResponse_defaultEncryptionKey' - The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
--
-- 'httpStatus', 'updateDomainResponse_httpStatus' - The response's http status code.
--
-- 'domainName', 'updateDomainResponse_domainName' - The unique name of the domain.
--
-- 'createdAt', 'updateDomainResponse_createdAt' - The timestamp of when the domain was created.
--
-- 'lastUpdatedAt', 'updateDomainResponse_lastUpdatedAt' - The timestamp of when the domain was most recently edited.
newUpdateDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainName'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'lastUpdatedAt'
  Prelude.UTCTime ->
  UpdateDomainResponse
newUpdateDomainResponse
  pHttpStatus_
  pDomainName_
  pCreatedAt_
  pLastUpdatedAt_ =
    UpdateDomainResponse'
      { tags = Prelude.Nothing,
        defaultExpirationDays = Prelude.Nothing,
        matching = Prelude.Nothing,
        deadLetterQueueUrl = Prelude.Nothing,
        defaultEncryptionKey = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        domainName = pDomainName_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        lastUpdatedAt = Core._Time Lens.# pLastUpdatedAt_
      }

-- | The tags used to organize, track, or control access for this resource.
updateDomainResponse_tags :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateDomainResponse_tags = Lens.lens (\UpdateDomainResponse' {tags} -> tags) (\s@UpdateDomainResponse' {} a -> s {tags = a} :: UpdateDomainResponse) Prelude.. Lens.mapping Lens.coerced

-- | The default number of days until the data within the domain expires.
updateDomainResponse_defaultExpirationDays :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe Prelude.Natural)
updateDomainResponse_defaultExpirationDays = Lens.lens (\UpdateDomainResponse' {defaultExpirationDays} -> defaultExpirationDays) (\s@UpdateDomainResponse' {} a -> s {defaultExpirationDays = a} :: UpdateDomainResponse)

-- | The process of matching duplicate profiles. If @Matching@ = @true@,
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
updateDomainResponse_matching :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe MatchingResponse)
updateDomainResponse_matching = Lens.lens (\UpdateDomainResponse' {matching} -> matching) (\s@UpdateDomainResponse' {} a -> s {matching = a} :: UpdateDomainResponse)

-- | The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications.
updateDomainResponse_deadLetterQueueUrl :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe Prelude.Text)
updateDomainResponse_deadLetterQueueUrl = Lens.lens (\UpdateDomainResponse' {deadLetterQueueUrl} -> deadLetterQueueUrl) (\s@UpdateDomainResponse' {} a -> s {deadLetterQueueUrl = a} :: UpdateDomainResponse)

-- | The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
updateDomainResponse_defaultEncryptionKey :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe Prelude.Text)
updateDomainResponse_defaultEncryptionKey = Lens.lens (\UpdateDomainResponse' {defaultEncryptionKey} -> defaultEncryptionKey) (\s@UpdateDomainResponse' {} a -> s {defaultEncryptionKey = a} :: UpdateDomainResponse)

-- | The response's http status code.
updateDomainResponse_httpStatus :: Lens.Lens' UpdateDomainResponse Prelude.Int
updateDomainResponse_httpStatus = Lens.lens (\UpdateDomainResponse' {httpStatus} -> httpStatus) (\s@UpdateDomainResponse' {} a -> s {httpStatus = a} :: UpdateDomainResponse)

-- | The unique name of the domain.
updateDomainResponse_domainName :: Lens.Lens' UpdateDomainResponse Prelude.Text
updateDomainResponse_domainName = Lens.lens (\UpdateDomainResponse' {domainName} -> domainName) (\s@UpdateDomainResponse' {} a -> s {domainName = a} :: UpdateDomainResponse)

-- | The timestamp of when the domain was created.
updateDomainResponse_createdAt :: Lens.Lens' UpdateDomainResponse Prelude.UTCTime
updateDomainResponse_createdAt = Lens.lens (\UpdateDomainResponse' {createdAt} -> createdAt) (\s@UpdateDomainResponse' {} a -> s {createdAt = a} :: UpdateDomainResponse) Prelude.. Core._Time

-- | The timestamp of when the domain was most recently edited.
updateDomainResponse_lastUpdatedAt :: Lens.Lens' UpdateDomainResponse Prelude.UTCTime
updateDomainResponse_lastUpdatedAt = Lens.lens (\UpdateDomainResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@UpdateDomainResponse' {} a -> s {lastUpdatedAt = a} :: UpdateDomainResponse) Prelude.. Core._Time

instance Prelude.NFData UpdateDomainResponse where
  rnf UpdateDomainResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf defaultExpirationDays
      `Prelude.seq` Prelude.rnf matching
      `Prelude.seq` Prelude.rnf deadLetterQueueUrl
      `Prelude.seq` Prelude.rnf defaultEncryptionKey
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf lastUpdatedAt
