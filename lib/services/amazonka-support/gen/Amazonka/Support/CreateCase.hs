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
-- Module      : Amazonka.Support.CreateCase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a case in the Amazon Web Services Support Center. This operation
-- is similar to how you create a case in the Amazon Web Services Support
-- Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page.
--
-- The Amazon Web Services Support API doesn\'t support requesting service
-- limit increases. You can submit a service limit increase in the
-- following ways:
--
-- -   Submit a request from the Amazon Web Services Support Center
--     <https://console.aws.amazon.com/support/home#/case/create Create Case>
--     page.
--
-- -   Use the Service Quotas
--     <https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html RequestServiceQuotaIncrease>
--     operation.
--
-- A successful @CreateCase@ request returns an Amazon Web Services Support
-- case number. You can use the DescribeCases operation and specify the
-- case number to get existing Amazon Web Services Support cases. After you
-- create a case, use the AddCommunicationToCase operation to add
-- additional communication or attachments to an existing case.
--
-- The @caseId@ is separate from the @displayId@ that appears in the
-- <https://console.aws.amazon.com/support Amazon Web Services Support Center>.
-- Use the DescribeCases operation to get the @displayId@.
--
-- -   You must have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan to use the Amazon Web Services Support API.
--
-- -   If you call the Amazon Web Services Support API from an account that
--     does not have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan, the @SubscriptionRequiredException@ error message appears. For
--     information about changing your support plan, see
--     <http://aws.amazon.com/premiumsupport/ Amazon Web Services Support>.
module Amazonka.Support.CreateCase
  ( -- * Creating a Request
    CreateCase (..),
    newCreateCase,

    -- * Request Lenses
    createCase_ccEmailAddresses,
    createCase_issueType,
    createCase_categoryCode,
    createCase_serviceCode,
    createCase_attachmentSetId,
    createCase_language,
    createCase_severityCode,
    createCase_subject,
    createCase_communicationBody,

    -- * Destructuring the Response
    CreateCaseResponse (..),
    newCreateCaseResponse,

    -- * Response Lenses
    createCaseResponse_caseId,
    createCaseResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Support.Types

-- | /See:/ 'newCreateCase' smart constructor.
data CreateCase = CreateCase'
  { -- | A list of email addresses that Amazon Web Services Support copies on
    -- case correspondence. Amazon Web Services Support identifies the account
    -- that creates the case when you specify your Amazon Web Services
    -- credentials in an HTTP POST method or use the
    -- <http://aws.amazon.com/tools/ Amazon Web Services SDKs>.
    ccEmailAddresses :: Prelude.Maybe [Prelude.Text],
    -- | The type of issue for the case. You can specify @customer-service@ or
    -- @technical@. If you don\'t specify a value, the default is @technical@.
    issueType :: Prelude.Maybe Prelude.Text,
    -- | The category of problem for the support case. You also use the
    -- DescribeServices operation to get the category code for a service. Each
    -- Amazon Web Services service defines its own set of category codes.
    categoryCode :: Prelude.Maybe Prelude.Text,
    -- | The code for the Amazon Web Services service. You can use the
    -- DescribeServices operation to get the possible @serviceCode@ values.
    serviceCode :: Prelude.Maybe Prelude.Text,
    -- | The ID of a set of one or more attachments for the case. Create the set
    -- by using the AddAttachmentsToSet operation.
    attachmentSetId :: Prelude.Maybe Prelude.Text,
    -- | The language in which Amazon Web Services Support handles the case. You
    -- must specify the ISO 639-1 code for the @language@ parameter if you want
    -- support in that language. Currently, English (\"en\") and Japanese
    -- (\"ja\") are supported.
    language :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates the urgency of the case. This value determines
    -- the response time according to your service level agreement with Amazon
    -- Web Services Support. You can use the DescribeSeverityLevels operation
    -- to get the possible values for @severityCode@.
    --
    -- For more information, see SeverityLevel and
    -- <https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity Choosing a Severity>
    -- in the /Amazon Web Services Support User Guide/.
    --
    -- The availability of severity levels depends on the support plan for the
    -- Amazon Web Services account.
    severityCode :: Prelude.Maybe Prelude.Text,
    -- | The title of the support case. The title appears in the __Subject__
    -- field on the Amazon Web Services Support Center
    -- <https://console.aws.amazon.com/support/home#/case/create Create Case>
    -- page.
    subject :: Prelude.Text,
    -- | The communication body text that describes the issue. This text appears
    -- in the __Description__ field on the Amazon Web Services Support Center
    -- <https://console.aws.amazon.com/support/home#/case/create Create Case>
    -- page.
    communicationBody :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ccEmailAddresses', 'createCase_ccEmailAddresses' - A list of email addresses that Amazon Web Services Support copies on
-- case correspondence. Amazon Web Services Support identifies the account
-- that creates the case when you specify your Amazon Web Services
-- credentials in an HTTP POST method or use the
-- <http://aws.amazon.com/tools/ Amazon Web Services SDKs>.
--
-- 'issueType', 'createCase_issueType' - The type of issue for the case. You can specify @customer-service@ or
-- @technical@. If you don\'t specify a value, the default is @technical@.
--
-- 'categoryCode', 'createCase_categoryCode' - The category of problem for the support case. You also use the
-- DescribeServices operation to get the category code for a service. Each
-- Amazon Web Services service defines its own set of category codes.
--
-- 'serviceCode', 'createCase_serviceCode' - The code for the Amazon Web Services service. You can use the
-- DescribeServices operation to get the possible @serviceCode@ values.
--
-- 'attachmentSetId', 'createCase_attachmentSetId' - The ID of a set of one or more attachments for the case. Create the set
-- by using the AddAttachmentsToSet operation.
--
-- 'language', 'createCase_language' - The language in which Amazon Web Services Support handles the case. You
-- must specify the ISO 639-1 code for the @language@ parameter if you want
-- support in that language. Currently, English (\"en\") and Japanese
-- (\"ja\") are supported.
--
-- 'severityCode', 'createCase_severityCode' - A value that indicates the urgency of the case. This value determines
-- the response time according to your service level agreement with Amazon
-- Web Services Support. You can use the DescribeSeverityLevels operation
-- to get the possible values for @severityCode@.
--
-- For more information, see SeverityLevel and
-- <https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity Choosing a Severity>
-- in the /Amazon Web Services Support User Guide/.
--
-- The availability of severity levels depends on the support plan for the
-- Amazon Web Services account.
--
-- 'subject', 'createCase_subject' - The title of the support case. The title appears in the __Subject__
-- field on the Amazon Web Services Support Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page.
--
-- 'communicationBody', 'createCase_communicationBody' - The communication body text that describes the issue. This text appears
-- in the __Description__ field on the Amazon Web Services Support Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page.
newCreateCase ::
  -- | 'subject'
  Prelude.Text ->
  -- | 'communicationBody'
  Prelude.Text ->
  CreateCase
newCreateCase pSubject_ pCommunicationBody_ =
  CreateCase'
    { ccEmailAddresses = Prelude.Nothing,
      issueType = Prelude.Nothing,
      categoryCode = Prelude.Nothing,
      serviceCode = Prelude.Nothing,
      attachmentSetId = Prelude.Nothing,
      language = Prelude.Nothing,
      severityCode = Prelude.Nothing,
      subject = pSubject_,
      communicationBody = pCommunicationBody_
    }

-- | A list of email addresses that Amazon Web Services Support copies on
-- case correspondence. Amazon Web Services Support identifies the account
-- that creates the case when you specify your Amazon Web Services
-- credentials in an HTTP POST method or use the
-- <http://aws.amazon.com/tools/ Amazon Web Services SDKs>.
createCase_ccEmailAddresses :: Lens.Lens' CreateCase (Prelude.Maybe [Prelude.Text])
createCase_ccEmailAddresses = Lens.lens (\CreateCase' {ccEmailAddresses} -> ccEmailAddresses) (\s@CreateCase' {} a -> s {ccEmailAddresses = a} :: CreateCase) Prelude.. Lens.mapping Lens.coerced

-- | The type of issue for the case. You can specify @customer-service@ or
-- @technical@. If you don\'t specify a value, the default is @technical@.
createCase_issueType :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_issueType = Lens.lens (\CreateCase' {issueType} -> issueType) (\s@CreateCase' {} a -> s {issueType = a} :: CreateCase)

-- | The category of problem for the support case. You also use the
-- DescribeServices operation to get the category code for a service. Each
-- Amazon Web Services service defines its own set of category codes.
createCase_categoryCode :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_categoryCode = Lens.lens (\CreateCase' {categoryCode} -> categoryCode) (\s@CreateCase' {} a -> s {categoryCode = a} :: CreateCase)

-- | The code for the Amazon Web Services service. You can use the
-- DescribeServices operation to get the possible @serviceCode@ values.
createCase_serviceCode :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_serviceCode = Lens.lens (\CreateCase' {serviceCode} -> serviceCode) (\s@CreateCase' {} a -> s {serviceCode = a} :: CreateCase)

-- | The ID of a set of one or more attachments for the case. Create the set
-- by using the AddAttachmentsToSet operation.
createCase_attachmentSetId :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_attachmentSetId = Lens.lens (\CreateCase' {attachmentSetId} -> attachmentSetId) (\s@CreateCase' {} a -> s {attachmentSetId = a} :: CreateCase)

-- | The language in which Amazon Web Services Support handles the case. You
-- must specify the ISO 639-1 code for the @language@ parameter if you want
-- support in that language. Currently, English (\"en\") and Japanese
-- (\"ja\") are supported.
createCase_language :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_language = Lens.lens (\CreateCase' {language} -> language) (\s@CreateCase' {} a -> s {language = a} :: CreateCase)

-- | A value that indicates the urgency of the case. This value determines
-- the response time according to your service level agreement with Amazon
-- Web Services Support. You can use the DescribeSeverityLevels operation
-- to get the possible values for @severityCode@.
--
-- For more information, see SeverityLevel and
-- <https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity Choosing a Severity>
-- in the /Amazon Web Services Support User Guide/.
--
-- The availability of severity levels depends on the support plan for the
-- Amazon Web Services account.
createCase_severityCode :: Lens.Lens' CreateCase (Prelude.Maybe Prelude.Text)
createCase_severityCode = Lens.lens (\CreateCase' {severityCode} -> severityCode) (\s@CreateCase' {} a -> s {severityCode = a} :: CreateCase)

-- | The title of the support case. The title appears in the __Subject__
-- field on the Amazon Web Services Support Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page.
createCase_subject :: Lens.Lens' CreateCase Prelude.Text
createCase_subject = Lens.lens (\CreateCase' {subject} -> subject) (\s@CreateCase' {} a -> s {subject = a} :: CreateCase)

-- | The communication body text that describes the issue. This text appears
-- in the __Description__ field on the Amazon Web Services Support Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page.
createCase_communicationBody :: Lens.Lens' CreateCase Prelude.Text
createCase_communicationBody = Lens.lens (\CreateCase' {communicationBody} -> communicationBody) (\s@CreateCase' {} a -> s {communicationBody = a} :: CreateCase)

instance Core.AWSRequest CreateCase where
  type AWSResponse CreateCase = CreateCaseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCaseResponse'
            Prelude.<$> (x Core..?> "caseId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCase where
  hashWithSalt _salt CreateCase' {..} =
    _salt `Prelude.hashWithSalt` ccEmailAddresses
      `Prelude.hashWithSalt` issueType
      `Prelude.hashWithSalt` categoryCode
      `Prelude.hashWithSalt` serviceCode
      `Prelude.hashWithSalt` attachmentSetId
      `Prelude.hashWithSalt` language
      `Prelude.hashWithSalt` severityCode
      `Prelude.hashWithSalt` subject
      `Prelude.hashWithSalt` communicationBody

instance Prelude.NFData CreateCase where
  rnf CreateCase' {..} =
    Prelude.rnf ccEmailAddresses
      `Prelude.seq` Prelude.rnf issueType
      `Prelude.seq` Prelude.rnf categoryCode
      `Prelude.seq` Prelude.rnf serviceCode
      `Prelude.seq` Prelude.rnf attachmentSetId
      `Prelude.seq` Prelude.rnf language
      `Prelude.seq` Prelude.rnf severityCode
      `Prelude.seq` Prelude.rnf subject
      `Prelude.seq` Prelude.rnf communicationBody

instance Core.ToHeaders CreateCase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSupport_20130415.CreateCase" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCase where
  toJSON CreateCase' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ccEmailAddresses" Core..=)
              Prelude.<$> ccEmailAddresses,
            ("issueType" Core..=) Prelude.<$> issueType,
            ("categoryCode" Core..=) Prelude.<$> categoryCode,
            ("serviceCode" Core..=) Prelude.<$> serviceCode,
            ("attachmentSetId" Core..=)
              Prelude.<$> attachmentSetId,
            ("language" Core..=) Prelude.<$> language,
            ("severityCode" Core..=) Prelude.<$> severityCode,
            Prelude.Just ("subject" Core..= subject),
            Prelude.Just
              ("communicationBody" Core..= communicationBody)
          ]
      )

instance Core.ToPath CreateCase where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateCase where
  toQuery = Prelude.const Prelude.mempty

-- | The support case ID returned by a successful completion of the
-- CreateCase operation.
--
-- /See:/ 'newCreateCaseResponse' smart constructor.
data CreateCaseResponse = CreateCaseResponse'
  { -- | The support case ID requested or returned in the call. The case ID is an
    -- alphanumeric string in the following format:
    -- case-/12345678910-2013-c4c1d2bf33c5cf47/
    caseId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'caseId', 'createCaseResponse_caseId' - The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string in the following format:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
--
-- 'httpStatus', 'createCaseResponse_httpStatus' - The response's http status code.
newCreateCaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCaseResponse
newCreateCaseResponse pHttpStatus_ =
  CreateCaseResponse'
    { caseId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string in the following format:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
createCaseResponse_caseId :: Lens.Lens' CreateCaseResponse (Prelude.Maybe Prelude.Text)
createCaseResponse_caseId = Lens.lens (\CreateCaseResponse' {caseId} -> caseId) (\s@CreateCaseResponse' {} a -> s {caseId = a} :: CreateCaseResponse)

-- | The response's http status code.
createCaseResponse_httpStatus :: Lens.Lens' CreateCaseResponse Prelude.Int
createCaseResponse_httpStatus = Lens.lens (\CreateCaseResponse' {httpStatus} -> httpStatus) (\s@CreateCaseResponse' {} a -> s {httpStatus = a} :: CreateCaseResponse)

instance Prelude.NFData CreateCaseResponse where
  rnf CreateCaseResponse' {..} =
    Prelude.rnf caseId
      `Prelude.seq` Prelude.rnf httpStatus
