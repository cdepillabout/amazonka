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
-- Module      : Amazonka.CertificateManager.Types.DomainValidation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CertificateManager.Types.DomainValidation where

import Amazonka.CertificateManager.Types.DomainStatus
import Amazonka.CertificateManager.Types.ResourceRecord
import Amazonka.CertificateManager.Types.ValidationMethod
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the validation of each domain name in the
-- certificate.
--
-- /See:/ 'newDomainValidation' smart constructor.
data DomainValidation = DomainValidation'
  { -- | The validation status of the domain name. This can be one of the
    -- following values:
    --
    -- -   @PENDING_VALIDATION@
    --
    -- -   @@SUCCESS
    --
    -- -   @@FAILED
    validationStatus :: Prelude.Maybe DomainStatus,
    -- | The domain name that ACM used to send domain validation emails.
    validationDomain :: Prelude.Maybe Prelude.Text,
    -- | Contains the CNAME record that you add to your DNS database for domain
    -- validation. For more information, see
    -- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html Use DNS to Validate Domain Ownership>.
    --
    -- Note: The CNAME information that you need does not include the name of
    -- your domain. If you include  your domain name in the DNS database CNAME
    -- record, validation fails.  For example, if the name is
    -- \"_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com\", only
    -- \"_a79865eb4cd1a6ab990a45779b4e0b96\" must be used.
    resourceRecord :: Prelude.Maybe ResourceRecord,
    -- | A list of email addresses that ACM used to send domain validation
    -- emails.
    validationEmails :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the domain validation method.
    validationMethod :: Prelude.Maybe ValidationMethod,
    -- | A fully qualified domain name (FQDN) in the certificate. For example,
    -- @www.example.com@ or @example.com@.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainValidation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validationStatus', 'domainValidation_validationStatus' - The validation status of the domain name. This can be one of the
-- following values:
--
-- -   @PENDING_VALIDATION@
--
-- -   @@SUCCESS
--
-- -   @@FAILED
--
-- 'validationDomain', 'domainValidation_validationDomain' - The domain name that ACM used to send domain validation emails.
--
-- 'resourceRecord', 'domainValidation_resourceRecord' - Contains the CNAME record that you add to your DNS database for domain
-- validation. For more information, see
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html Use DNS to Validate Domain Ownership>.
--
-- Note: The CNAME information that you need does not include the name of
-- your domain. If you include  your domain name in the DNS database CNAME
-- record, validation fails.  For example, if the name is
-- \"_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com\", only
-- \"_a79865eb4cd1a6ab990a45779b4e0b96\" must be used.
--
-- 'validationEmails', 'domainValidation_validationEmails' - A list of email addresses that ACM used to send domain validation
-- emails.
--
-- 'validationMethod', 'domainValidation_validationMethod' - Specifies the domain validation method.
--
-- 'domainName', 'domainValidation_domainName' - A fully qualified domain name (FQDN) in the certificate. For example,
-- @www.example.com@ or @example.com@.
newDomainValidation ::
  -- | 'domainName'
  Prelude.Text ->
  DomainValidation
newDomainValidation pDomainName_ =
  DomainValidation'
    { validationStatus =
        Prelude.Nothing,
      validationDomain = Prelude.Nothing,
      resourceRecord = Prelude.Nothing,
      validationEmails = Prelude.Nothing,
      validationMethod = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The validation status of the domain name. This can be one of the
-- following values:
--
-- -   @PENDING_VALIDATION@
--
-- -   @@SUCCESS
--
-- -   @@FAILED
domainValidation_validationStatus :: Lens.Lens' DomainValidation (Prelude.Maybe DomainStatus)
domainValidation_validationStatus = Lens.lens (\DomainValidation' {validationStatus} -> validationStatus) (\s@DomainValidation' {} a -> s {validationStatus = a} :: DomainValidation)

-- | The domain name that ACM used to send domain validation emails.
domainValidation_validationDomain :: Lens.Lens' DomainValidation (Prelude.Maybe Prelude.Text)
domainValidation_validationDomain = Lens.lens (\DomainValidation' {validationDomain} -> validationDomain) (\s@DomainValidation' {} a -> s {validationDomain = a} :: DomainValidation)

-- | Contains the CNAME record that you add to your DNS database for domain
-- validation. For more information, see
-- <https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html Use DNS to Validate Domain Ownership>.
--
-- Note: The CNAME information that you need does not include the name of
-- your domain. If you include  your domain name in the DNS database CNAME
-- record, validation fails.  For example, if the name is
-- \"_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com\", only
-- \"_a79865eb4cd1a6ab990a45779b4e0b96\" must be used.
domainValidation_resourceRecord :: Lens.Lens' DomainValidation (Prelude.Maybe ResourceRecord)
domainValidation_resourceRecord = Lens.lens (\DomainValidation' {resourceRecord} -> resourceRecord) (\s@DomainValidation' {} a -> s {resourceRecord = a} :: DomainValidation)

-- | A list of email addresses that ACM used to send domain validation
-- emails.
domainValidation_validationEmails :: Lens.Lens' DomainValidation (Prelude.Maybe [Prelude.Text])
domainValidation_validationEmails = Lens.lens (\DomainValidation' {validationEmails} -> validationEmails) (\s@DomainValidation' {} a -> s {validationEmails = a} :: DomainValidation) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the domain validation method.
domainValidation_validationMethod :: Lens.Lens' DomainValidation (Prelude.Maybe ValidationMethod)
domainValidation_validationMethod = Lens.lens (\DomainValidation' {validationMethod} -> validationMethod) (\s@DomainValidation' {} a -> s {validationMethod = a} :: DomainValidation)

-- | A fully qualified domain name (FQDN) in the certificate. For example,
-- @www.example.com@ or @example.com@.
domainValidation_domainName :: Lens.Lens' DomainValidation Prelude.Text
domainValidation_domainName = Lens.lens (\DomainValidation' {domainName} -> domainName) (\s@DomainValidation' {} a -> s {domainName = a} :: DomainValidation)

instance Core.FromJSON DomainValidation where
  parseJSON =
    Core.withObject
      "DomainValidation"
      ( \x ->
          DomainValidation'
            Prelude.<$> (x Core..:? "ValidationStatus")
            Prelude.<*> (x Core..:? "ValidationDomain")
            Prelude.<*> (x Core..:? "ResourceRecord")
            Prelude.<*> ( x Core..:? "ValidationEmails"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ValidationMethod")
            Prelude.<*> (x Core..: "DomainName")
      )

instance Prelude.Hashable DomainValidation where
  hashWithSalt _salt DomainValidation' {..} =
    _salt `Prelude.hashWithSalt` validationStatus
      `Prelude.hashWithSalt` validationDomain
      `Prelude.hashWithSalt` resourceRecord
      `Prelude.hashWithSalt` validationEmails
      `Prelude.hashWithSalt` validationMethod
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData DomainValidation where
  rnf DomainValidation' {..} =
    Prelude.rnf validationStatus
      `Prelude.seq` Prelude.rnf validationDomain
      `Prelude.seq` Prelude.rnf resourceRecord
      `Prelude.seq` Prelude.rnf validationEmails
      `Prelude.seq` Prelude.rnf validationMethod
      `Prelude.seq` Prelude.rnf domainName
