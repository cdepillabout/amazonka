{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53Domains.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Domains.Lens
  ( -- * Operations

    -- ** AcceptDomainTransferFromAnotherAwsAccount
    acceptDomainTransferFromAnotherAwsAccount_domainName,
    acceptDomainTransferFromAnotherAwsAccount_password,
    acceptDomainTransferFromAnotherAwsAccountResponse_operationId,
    acceptDomainTransferFromAnotherAwsAccountResponse_httpStatus,

    -- ** CancelDomainTransferToAnotherAwsAccount
    cancelDomainTransferToAnotherAwsAccount_domainName,
    cancelDomainTransferToAnotherAwsAccountResponse_operationId,
    cancelDomainTransferToAnotherAwsAccountResponse_httpStatus,

    -- ** CheckDomainAvailability
    checkDomainAvailability_idnLangCode,
    checkDomainAvailability_domainName,
    checkDomainAvailabilityResponse_httpStatus,
    checkDomainAvailabilityResponse_availability,

    -- ** CheckDomainTransferability
    checkDomainTransferability_authCode,
    checkDomainTransferability_domainName,
    checkDomainTransferabilityResponse_httpStatus,
    checkDomainTransferabilityResponse_transferability,

    -- ** DeleteDomain
    deleteDomain_domainName,
    deleteDomainResponse_operationId,
    deleteDomainResponse_httpStatus,

    -- ** DeleteTagsForDomain
    deleteTagsForDomain_domainName,
    deleteTagsForDomain_tagsToDelete,
    deleteTagsForDomainResponse_httpStatus,

    -- ** DisableDomainAutoRenew
    disableDomainAutoRenew_domainName,
    disableDomainAutoRenewResponse_httpStatus,

    -- ** DisableDomainTransferLock
    disableDomainTransferLock_domainName,
    disableDomainTransferLockResponse_httpStatus,
    disableDomainTransferLockResponse_operationId,

    -- ** EnableDomainAutoRenew
    enableDomainAutoRenew_domainName,
    enableDomainAutoRenewResponse_httpStatus,

    -- ** EnableDomainTransferLock
    enableDomainTransferLock_domainName,
    enableDomainTransferLockResponse_httpStatus,
    enableDomainTransferLockResponse_operationId,

    -- ** GetContactReachabilityStatus
    getContactReachabilityStatus_domainName,
    getContactReachabilityStatusResponse_domainName,
    getContactReachabilityStatusResponse_status,
    getContactReachabilityStatusResponse_httpStatus,

    -- ** GetDomainDetail
    getDomainDetail_domainName,
    getDomainDetailResponse_reseller,
    getDomainDetailResponse_registrantPrivacy,
    getDomainDetailResponse_autoRenew,
    getDomainDetailResponse_registrarName,
    getDomainDetailResponse_creationDate,
    getDomainDetailResponse_dnsSec,
    getDomainDetailResponse_registryDomainId,
    getDomainDetailResponse_techPrivacy,
    getDomainDetailResponse_adminPrivacy,
    getDomainDetailResponse_whoIsServer,
    getDomainDetailResponse_statusList,
    getDomainDetailResponse_updatedDate,
    getDomainDetailResponse_abuseContactEmail,
    getDomainDetailResponse_abuseContactPhone,
    getDomainDetailResponse_expirationDate,
    getDomainDetailResponse_registrarUrl,
    getDomainDetailResponse_httpStatus,
    getDomainDetailResponse_domainName,
    getDomainDetailResponse_nameservers,
    getDomainDetailResponse_adminContact,
    getDomainDetailResponse_registrantContact,
    getDomainDetailResponse_techContact,

    -- ** GetDomainSuggestions
    getDomainSuggestions_domainName,
    getDomainSuggestions_suggestionCount,
    getDomainSuggestions_onlyAvailable,
    getDomainSuggestionsResponse_suggestionsList,
    getDomainSuggestionsResponse_httpStatus,

    -- ** GetOperationDetail
    getOperationDetail_operationId,
    getOperationDetailResponse_submittedDate,
    getOperationDetailResponse_message,
    getOperationDetailResponse_type,
    getOperationDetailResponse_domainName,
    getOperationDetailResponse_operationId,
    getOperationDetailResponse_status,
    getOperationDetailResponse_httpStatus,

    -- ** ListDomains
    listDomains_marker,
    listDomains_maxItems,
    listDomains_sortCondition,
    listDomains_filterConditions,
    listDomainsResponse_nextPageMarker,
    listDomainsResponse_httpStatus,
    listDomainsResponse_domains,

    -- ** ListOperations
    listOperations_marker,
    listOperations_maxItems,
    listOperations_submittedSince,
    listOperationsResponse_nextPageMarker,
    listOperationsResponse_httpStatus,
    listOperationsResponse_operations,

    -- ** ListPrices
    listPrices_marker,
    listPrices_maxItems,
    listPrices_tld,
    listPricesResponse_nextPageMarker,
    listPricesResponse_httpStatus,
    listPricesResponse_prices,

    -- ** ListTagsForDomain
    listTagsForDomain_domainName,
    listTagsForDomainResponse_httpStatus,
    listTagsForDomainResponse_tagList,

    -- ** RegisterDomain
    registerDomain_autoRenew,
    registerDomain_idnLangCode,
    registerDomain_privacyProtectRegistrantContact,
    registerDomain_privacyProtectAdminContact,
    registerDomain_privacyProtectTechContact,
    registerDomain_domainName,
    registerDomain_durationInYears,
    registerDomain_adminContact,
    registerDomain_registrantContact,
    registerDomain_techContact,
    registerDomainResponse_httpStatus,
    registerDomainResponse_operationId,

    -- ** RejectDomainTransferFromAnotherAwsAccount
    rejectDomainTransferFromAnotherAwsAccount_domainName,
    rejectDomainTransferFromAnotherAwsAccountResponse_operationId,
    rejectDomainTransferFromAnotherAwsAccountResponse_httpStatus,

    -- ** RenewDomain
    renewDomain_durationInYears,
    renewDomain_domainName,
    renewDomain_currentExpiryYear,
    renewDomainResponse_httpStatus,
    renewDomainResponse_operationId,

    -- ** ResendContactReachabilityEmail
    resendContactReachabilityEmail_domainName,
    resendContactReachabilityEmailResponse_domainName,
    resendContactReachabilityEmailResponse_isAlreadyVerified,
    resendContactReachabilityEmailResponse_emailAddress,
    resendContactReachabilityEmailResponse_httpStatus,

    -- ** RetrieveDomainAuthCode
    retrieveDomainAuthCode_domainName,
    retrieveDomainAuthCodeResponse_httpStatus,
    retrieveDomainAuthCodeResponse_authCode,

    -- ** TransferDomain
    transferDomain_autoRenew,
    transferDomain_authCode,
    transferDomain_idnLangCode,
    transferDomain_privacyProtectRegistrantContact,
    transferDomain_privacyProtectAdminContact,
    transferDomain_privacyProtectTechContact,
    transferDomain_nameservers,
    transferDomain_domainName,
    transferDomain_durationInYears,
    transferDomain_adminContact,
    transferDomain_registrantContact,
    transferDomain_techContact,
    transferDomainResponse_httpStatus,
    transferDomainResponse_operationId,

    -- ** TransferDomainToAnotherAwsAccount
    transferDomainToAnotherAwsAccount_domainName,
    transferDomainToAnotherAwsAccount_accountId,
    transferDomainToAnotherAwsAccountResponse_password,
    transferDomainToAnotherAwsAccountResponse_operationId,
    transferDomainToAnotherAwsAccountResponse_httpStatus,

    -- ** UpdateDomainContact
    updateDomainContact_adminContact,
    updateDomainContact_techContact,
    updateDomainContact_registrantContact,
    updateDomainContact_domainName,
    updateDomainContactResponse_httpStatus,
    updateDomainContactResponse_operationId,

    -- ** UpdateDomainContactPrivacy
    updateDomainContactPrivacy_registrantPrivacy,
    updateDomainContactPrivacy_techPrivacy,
    updateDomainContactPrivacy_adminPrivacy,
    updateDomainContactPrivacy_domainName,
    updateDomainContactPrivacyResponse_httpStatus,
    updateDomainContactPrivacyResponse_operationId,

    -- ** UpdateDomainNameservers
    updateDomainNameservers_fIAuthKey,
    updateDomainNameservers_domainName,
    updateDomainNameservers_nameservers,
    updateDomainNameserversResponse_httpStatus,
    updateDomainNameserversResponse_operationId,

    -- ** UpdateTagsForDomain
    updateTagsForDomain_tagsToUpdate,
    updateTagsForDomain_domainName,
    updateTagsForDomainResponse_httpStatus,

    -- ** ViewBilling
    viewBilling_marker,
    viewBilling_start,
    viewBilling_maxItems,
    viewBilling_end,
    viewBillingResponse_billingRecords,
    viewBillingResponse_nextPageMarker,
    viewBillingResponse_httpStatus,

    -- * Types

    -- ** BillingRecord
    billingRecord_invoiceId,
    billingRecord_billDate,
    billingRecord_domainName,
    billingRecord_price,
    billingRecord_operation,

    -- ** ContactDetail
    contactDetail_zipCode,
    contactDetail_firstName,
    contactDetail_email,
    contactDetail_extraParams,
    contactDetail_addressLine2,
    contactDetail_organizationName,
    contactDetail_countryCode,
    contactDetail_state,
    contactDetail_contactType,
    contactDetail_lastName,
    contactDetail_addressLine1,
    contactDetail_city,
    contactDetail_fax,
    contactDetail_phoneNumber,

    -- ** DomainPrice
    domainPrice_name,
    domainPrice_transferPrice,
    domainPrice_registrationPrice,
    domainPrice_changeOwnershipPrice,
    domainPrice_restorationPrice,
    domainPrice_renewalPrice,

    -- ** DomainSuggestion
    domainSuggestion_domainName,
    domainSuggestion_availability,

    -- ** DomainSummary
    domainSummary_autoRenew,
    domainSummary_expiry,
    domainSummary_transferLock,
    domainSummary_domainName,

    -- ** DomainTransferability
    domainTransferability_transferable,

    -- ** ExtraParam
    extraParam_name,
    extraParam_value,

    -- ** FilterCondition
    filterCondition_name,
    filterCondition_operator,
    filterCondition_values,

    -- ** Nameserver
    nameserver_glueIps,
    nameserver_name,

    -- ** OperationSummary
    operationSummary_operationId,
    operationSummary_status,
    operationSummary_type,
    operationSummary_submittedDate,

    -- ** PriceWithCurrency
    priceWithCurrency_price,
    priceWithCurrency_currency,

    -- ** SortCondition
    sortCondition_name,
    sortCondition_sortOrder,

    -- ** Tag
    tag_key,
    tag_value,
  )
where

import Amazonka.Route53Domains.AcceptDomainTransferFromAnotherAwsAccount
import Amazonka.Route53Domains.CancelDomainTransferToAnotherAwsAccount
import Amazonka.Route53Domains.CheckDomainAvailability
import Amazonka.Route53Domains.CheckDomainTransferability
import Amazonka.Route53Domains.DeleteDomain
import Amazonka.Route53Domains.DeleteTagsForDomain
import Amazonka.Route53Domains.DisableDomainAutoRenew
import Amazonka.Route53Domains.DisableDomainTransferLock
import Amazonka.Route53Domains.EnableDomainAutoRenew
import Amazonka.Route53Domains.EnableDomainTransferLock
import Amazonka.Route53Domains.GetContactReachabilityStatus
import Amazonka.Route53Domains.GetDomainDetail
import Amazonka.Route53Domains.GetDomainSuggestions
import Amazonka.Route53Domains.GetOperationDetail
import Amazonka.Route53Domains.ListDomains
import Amazonka.Route53Domains.ListOperations
import Amazonka.Route53Domains.ListPrices
import Amazonka.Route53Domains.ListTagsForDomain
import Amazonka.Route53Domains.RegisterDomain
import Amazonka.Route53Domains.RejectDomainTransferFromAnotherAwsAccount
import Amazonka.Route53Domains.RenewDomain
import Amazonka.Route53Domains.ResendContactReachabilityEmail
import Amazonka.Route53Domains.RetrieveDomainAuthCode
import Amazonka.Route53Domains.TransferDomain
import Amazonka.Route53Domains.TransferDomainToAnotherAwsAccount
import Amazonka.Route53Domains.Types.BillingRecord
import Amazonka.Route53Domains.Types.ContactDetail
import Amazonka.Route53Domains.Types.DomainPrice
import Amazonka.Route53Domains.Types.DomainSuggestion
import Amazonka.Route53Domains.Types.DomainSummary
import Amazonka.Route53Domains.Types.DomainTransferability
import Amazonka.Route53Domains.Types.ExtraParam
import Amazonka.Route53Domains.Types.FilterCondition
import Amazonka.Route53Domains.Types.Nameserver
import Amazonka.Route53Domains.Types.OperationSummary
import Amazonka.Route53Domains.Types.PriceWithCurrency
import Amazonka.Route53Domains.Types.SortCondition
import Amazonka.Route53Domains.Types.Tag
import Amazonka.Route53Domains.UpdateDomainContact
import Amazonka.Route53Domains.UpdateDomainContactPrivacy
import Amazonka.Route53Domains.UpdateDomainNameservers
import Amazonka.Route53Domains.UpdateTagsForDomain
import Amazonka.Route53Domains.ViewBilling
