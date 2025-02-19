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
-- Module      : Amazonka.Lightsail.Types.CertificateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.CertificateSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Lightsail.Types.Certificate
import Amazonka.Lightsail.Types.Tag
import qualified Amazonka.Prelude as Prelude

-- | Describes an Amazon Lightsail SSL\/TLS certificate.
--
-- /See:/ 'newCertificateSummary' smart constructor.
data CertificateSummary = CertificateSummary'
  { -- | The tag keys and optional values for the resource. For more information
    -- about tags in Lightsail, see the
    -- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
    tags :: Prelude.Maybe [Tag],
    -- | The domain name of the certificate.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The name of the certificate.
    certificateName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the certificate.
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | An object that describes a certificate in detail.
    certificateDetail :: Prelude.Maybe Certificate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CertificateSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'certificateSummary_tags' - The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
--
-- 'domainName', 'certificateSummary_domainName' - The domain name of the certificate.
--
-- 'certificateName', 'certificateSummary_certificateName' - The name of the certificate.
--
-- 'certificateArn', 'certificateSummary_certificateArn' - The Amazon Resource Name (ARN) of the certificate.
--
-- 'certificateDetail', 'certificateSummary_certificateDetail' - An object that describes a certificate in detail.
newCertificateSummary ::
  CertificateSummary
newCertificateSummary =
  CertificateSummary'
    { tags = Prelude.Nothing,
      domainName = Prelude.Nothing,
      certificateName = Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      certificateDetail = Prelude.Nothing
    }

-- | The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
certificateSummary_tags :: Lens.Lens' CertificateSummary (Prelude.Maybe [Tag])
certificateSummary_tags = Lens.lens (\CertificateSummary' {tags} -> tags) (\s@CertificateSummary' {} a -> s {tags = a} :: CertificateSummary) Prelude.. Lens.mapping Lens.coerced

-- | The domain name of the certificate.
certificateSummary_domainName :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Text)
certificateSummary_domainName = Lens.lens (\CertificateSummary' {domainName} -> domainName) (\s@CertificateSummary' {} a -> s {domainName = a} :: CertificateSummary)

-- | The name of the certificate.
certificateSummary_certificateName :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Text)
certificateSummary_certificateName = Lens.lens (\CertificateSummary' {certificateName} -> certificateName) (\s@CertificateSummary' {} a -> s {certificateName = a} :: CertificateSummary)

-- | The Amazon Resource Name (ARN) of the certificate.
certificateSummary_certificateArn :: Lens.Lens' CertificateSummary (Prelude.Maybe Prelude.Text)
certificateSummary_certificateArn = Lens.lens (\CertificateSummary' {certificateArn} -> certificateArn) (\s@CertificateSummary' {} a -> s {certificateArn = a} :: CertificateSummary)

-- | An object that describes a certificate in detail.
certificateSummary_certificateDetail :: Lens.Lens' CertificateSummary (Prelude.Maybe Certificate)
certificateSummary_certificateDetail = Lens.lens (\CertificateSummary' {certificateDetail} -> certificateDetail) (\s@CertificateSummary' {} a -> s {certificateDetail = a} :: CertificateSummary)

instance Core.FromJSON CertificateSummary where
  parseJSON =
    Core.withObject
      "CertificateSummary"
      ( \x ->
          CertificateSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "domainName")
            Prelude.<*> (x Core..:? "certificateName")
            Prelude.<*> (x Core..:? "certificateArn")
            Prelude.<*> (x Core..:? "certificateDetail")
      )

instance Prelude.Hashable CertificateSummary where
  hashWithSalt _salt CertificateSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` certificateName
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` certificateDetail

instance Prelude.NFData CertificateSummary where
  rnf CertificateSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf certificateName
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf certificateDetail
