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
-- Module      : Amazonka.CertificateManagerPCA.Types.CrlConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CertificateManagerPCA.Types.CrlConfiguration where

import Amazonka.CertificateManagerPCA.Types.S3ObjectAcl
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains configuration information for a certificate revocation list
-- (CRL). Your private certificate authority (CA) creates base CRLs. Delta
-- CRLs are not supported. You can enable CRLs for your new or an existing
-- private CA by setting the __Enabled__ parameter to @true@. Your private
-- CA writes CRLs to an S3 bucket that you specify in the __S3BucketName__
-- parameter. You can hide the name of your bucket by specifying a value
-- for the __CustomCname__ parameter. Your private CA copies the CNAME or
-- the S3 bucket name to the __CRL Distribution Points__ extension of each
-- certificate it issues. Your S3 bucket policy must give write permission
-- to ACM Private CA.
--
-- ACM Private CA assets that are stored in Amazon S3 can be protected with
-- encryption. For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption Encrypting Your CRLs>.
--
-- Your private CA uses the value in the __ExpirationInDays__ parameter to
-- calculate the __nextUpdate__ field in the CRL. The CRL is refreshed
-- prior to a certificate\'s expiration date or when a certificate is
-- revoked. When a certificate is revoked, it appears in the CRL until the
-- certificate expires, and then in one additional CRL after expiration,
-- and it always appears in the audit report.
--
-- A CRL is typically updated approximately 30 minutes after a certificate
-- is revoked. If for any reason a CRL update fails, ACM Private CA makes
-- further attempts every 15 minutes.
--
-- CRLs contain the following fields:
--
-- -   __Version__: The current version number defined in RFC 5280 is V2.
--     The integer value is 0x1.
--
-- -   __Signature Algorithm__: The name of the algorithm used to sign the
--     CRL.
--
-- -   __Issuer__: The X.500 distinguished name of your private CA that
--     issued the CRL.
--
-- -   __Last Update__: The issue date and time of this CRL.
--
-- -   __Next Update__: The day and time by which the next CRL will be
--     issued.
--
-- -   __Revoked Certificates__: List of revoked certificates. Each list
--     item contains the following information.
--
--     -   __Serial Number__: The serial number, in hexadecimal format, of
--         the revoked certificate.
--
--     -   __Revocation Date__: Date and time the certificate was revoked.
--
--     -   __CRL Entry Extensions__: Optional extensions for the CRL entry.
--
--         -   __X509v3 CRL Reason Code__: Reason the certificate was
--             revoked.
--
-- -   __CRL Extensions__: Optional extensions for the CRL.
--
--     -   __X509v3 Authority Key Identifier__: Identifies the public key
--         associated with the private key used to sign the certificate.
--
--     -   __X509v3 CRL Number:__: Decimal sequence number for the CRL.
--
-- -   __Signature Algorithm__: Algorithm used by your private CA to sign
--     the CRL.
--
-- -   __Signature Value__: Signature computed over the CRL.
--
-- Certificate revocation lists created by ACM Private CA are DER-encoded.
-- You can use the following OpenSSL command to list a CRL.
--
-- @openssl crl -inform DER -text -in crl_path -noout@
--
-- For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html Planning a certificate revocation list (CRL)>
-- in the /Certificate Manager Private Certificate Authority (PCA) User
-- Guide/
--
-- /See:/ 'newCrlConfiguration' smart constructor.
data CrlConfiguration = CrlConfiguration'
  { -- | Name of the S3 bucket that contains the CRL. If you do not provide a
    -- value for the __CustomCname__ argument, the name of your S3 bucket is
    -- placed into the __CRL Distribution Points__ extension of the issued
    -- certificate. You can change the name of your bucket by calling the
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
    -- operation. You must specify a
    -- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-policies bucket policy>
    -- that allows ACM Private CA to write the CRL to your bucket.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | Name inserted into the certificate __CRL Distribution Points__ extension
    -- that enables the use of an alias for the CRL distribution point. Use
    -- this value if you don\'t want the name of your S3 bucket to be public.
    customCname :: Prelude.Maybe Prelude.Text,
    -- | Determines whether the CRL will be publicly readable or privately held
    -- in the CRL Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be
    -- accessible over the public internet. If you choose
    -- BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket can
    -- access the CRL, and your PKI clients may need an alternative method of
    -- access.
    --
    -- If no value is specified, the default is @PUBLIC_READ@.
    --
    -- /Note:/ This default can cause CA creation to fail in some
    -- circumstances. If you have have enabled the Block Public Access (BPA)
    -- feature in your S3 account, then you must specify the value of this
    -- parameter as @BUCKET_OWNER_FULL_CONTROL@, and not doing so results in an
    -- error. If you have disabled BPA in S3, then you can specify either
    -- @BUCKET_OWNER_FULL_CONTROL@ or @PUBLIC_READ@ as the value.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-bpa Blocking public access to the S3 bucket>.
    s3ObjectAcl :: Prelude.Maybe S3ObjectAcl,
    -- | Validity period of the CRL in days.
    expirationInDays :: Prelude.Maybe Prelude.Natural,
    -- | Boolean value that specifies whether certificate revocation lists (CRLs)
    -- are enabled. You can use this value to enable certificate revocation for
    -- a new CA when you call the
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>
    -- action or for an existing CA when you call the
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
    -- action.
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CrlConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3BucketName', 'crlConfiguration_s3BucketName' - Name of the S3 bucket that contains the CRL. If you do not provide a
-- value for the __CustomCname__ argument, the name of your S3 bucket is
-- placed into the __CRL Distribution Points__ extension of the issued
-- certificate. You can change the name of your bucket by calling the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
-- operation. You must specify a
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-policies bucket policy>
-- that allows ACM Private CA to write the CRL to your bucket.
--
-- 'customCname', 'crlConfiguration_customCname' - Name inserted into the certificate __CRL Distribution Points__ extension
-- that enables the use of an alias for the CRL distribution point. Use
-- this value if you don\'t want the name of your S3 bucket to be public.
--
-- 's3ObjectAcl', 'crlConfiguration_s3ObjectAcl' - Determines whether the CRL will be publicly readable or privately held
-- in the CRL Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be
-- accessible over the public internet. If you choose
-- BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket can
-- access the CRL, and your PKI clients may need an alternative method of
-- access.
--
-- If no value is specified, the default is @PUBLIC_READ@.
--
-- /Note:/ This default can cause CA creation to fail in some
-- circumstances. If you have have enabled the Block Public Access (BPA)
-- feature in your S3 account, then you must specify the value of this
-- parameter as @BUCKET_OWNER_FULL_CONTROL@, and not doing so results in an
-- error. If you have disabled BPA in S3, then you can specify either
-- @BUCKET_OWNER_FULL_CONTROL@ or @PUBLIC_READ@ as the value.
--
-- For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-bpa Blocking public access to the S3 bucket>.
--
-- 'expirationInDays', 'crlConfiguration_expirationInDays' - Validity period of the CRL in days.
--
-- 'enabled', 'crlConfiguration_enabled' - Boolean value that specifies whether certificate revocation lists (CRLs)
-- are enabled. You can use this value to enable certificate revocation for
-- a new CA when you call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>
-- action or for an existing CA when you call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
-- action.
newCrlConfiguration ::
  -- | 'enabled'
  Prelude.Bool ->
  CrlConfiguration
newCrlConfiguration pEnabled_ =
  CrlConfiguration'
    { s3BucketName = Prelude.Nothing,
      customCname = Prelude.Nothing,
      s3ObjectAcl = Prelude.Nothing,
      expirationInDays = Prelude.Nothing,
      enabled = pEnabled_
    }

-- | Name of the S3 bucket that contains the CRL. If you do not provide a
-- value for the __CustomCname__ argument, the name of your S3 bucket is
-- placed into the __CRL Distribution Points__ extension of the issued
-- certificate. You can change the name of your bucket by calling the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
-- operation. You must specify a
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-policies bucket policy>
-- that allows ACM Private CA to write the CRL to your bucket.
crlConfiguration_s3BucketName :: Lens.Lens' CrlConfiguration (Prelude.Maybe Prelude.Text)
crlConfiguration_s3BucketName = Lens.lens (\CrlConfiguration' {s3BucketName} -> s3BucketName) (\s@CrlConfiguration' {} a -> s {s3BucketName = a} :: CrlConfiguration)

-- | Name inserted into the certificate __CRL Distribution Points__ extension
-- that enables the use of an alias for the CRL distribution point. Use
-- this value if you don\'t want the name of your S3 bucket to be public.
crlConfiguration_customCname :: Lens.Lens' CrlConfiguration (Prelude.Maybe Prelude.Text)
crlConfiguration_customCname = Lens.lens (\CrlConfiguration' {customCname} -> customCname) (\s@CrlConfiguration' {} a -> s {customCname = a} :: CrlConfiguration)

-- | Determines whether the CRL will be publicly readable or privately held
-- in the CRL Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be
-- accessible over the public internet. If you choose
-- BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket can
-- access the CRL, and your PKI clients may need an alternative method of
-- access.
--
-- If no value is specified, the default is @PUBLIC_READ@.
--
-- /Note:/ This default can cause CA creation to fail in some
-- circumstances. If you have have enabled the Block Public Access (BPA)
-- feature in your S3 account, then you must specify the value of this
-- parameter as @BUCKET_OWNER_FULL_CONTROL@, and not doing so results in an
-- error. If you have disabled BPA in S3, then you can specify either
-- @BUCKET_OWNER_FULL_CONTROL@ or @PUBLIC_READ@ as the value.
--
-- For more information, see
-- <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-bpa Blocking public access to the S3 bucket>.
crlConfiguration_s3ObjectAcl :: Lens.Lens' CrlConfiguration (Prelude.Maybe S3ObjectAcl)
crlConfiguration_s3ObjectAcl = Lens.lens (\CrlConfiguration' {s3ObjectAcl} -> s3ObjectAcl) (\s@CrlConfiguration' {} a -> s {s3ObjectAcl = a} :: CrlConfiguration)

-- | Validity period of the CRL in days.
crlConfiguration_expirationInDays :: Lens.Lens' CrlConfiguration (Prelude.Maybe Prelude.Natural)
crlConfiguration_expirationInDays = Lens.lens (\CrlConfiguration' {expirationInDays} -> expirationInDays) (\s@CrlConfiguration' {} a -> s {expirationInDays = a} :: CrlConfiguration)

-- | Boolean value that specifies whether certificate revocation lists (CRLs)
-- are enabled. You can use this value to enable certificate revocation for
-- a new CA when you call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>
-- action or for an existing CA when you call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
-- action.
crlConfiguration_enabled :: Lens.Lens' CrlConfiguration Prelude.Bool
crlConfiguration_enabled = Lens.lens (\CrlConfiguration' {enabled} -> enabled) (\s@CrlConfiguration' {} a -> s {enabled = a} :: CrlConfiguration)

instance Core.FromJSON CrlConfiguration where
  parseJSON =
    Core.withObject
      "CrlConfiguration"
      ( \x ->
          CrlConfiguration'
            Prelude.<$> (x Core..:? "S3BucketName")
            Prelude.<*> (x Core..:? "CustomCname")
            Prelude.<*> (x Core..:? "S3ObjectAcl")
            Prelude.<*> (x Core..:? "ExpirationInDays")
            Prelude.<*> (x Core..: "Enabled")
      )

instance Prelude.Hashable CrlConfiguration where
  hashWithSalt _salt CrlConfiguration' {..} =
    _salt `Prelude.hashWithSalt` s3BucketName
      `Prelude.hashWithSalt` customCname
      `Prelude.hashWithSalt` s3ObjectAcl
      `Prelude.hashWithSalt` expirationInDays
      `Prelude.hashWithSalt` enabled

instance Prelude.NFData CrlConfiguration where
  rnf CrlConfiguration' {..} =
    Prelude.rnf s3BucketName
      `Prelude.seq` Prelude.rnf customCname
      `Prelude.seq` Prelude.rnf s3ObjectAcl
      `Prelude.seq` Prelude.rnf expirationInDays
      `Prelude.seq` Prelude.rnf enabled

instance Core.ToJSON CrlConfiguration where
  toJSON CrlConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3BucketName" Core..=) Prelude.<$> s3BucketName,
            ("CustomCname" Core..=) Prelude.<$> customCname,
            ("S3ObjectAcl" Core..=) Prelude.<$> s3ObjectAcl,
            ("ExpirationInDays" Core..=)
              Prelude.<$> expirationInDays,
            Prelude.Just ("Enabled" Core..= enabled)
          ]
      )
