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
-- Module      : Amazonka.CloudHSMV2.Types.Certificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudHSMV2.Types.Certificates where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains one or more certificates or a certificate signing request
-- (CSR).
--
-- /See:/ 'newCertificates' smart constructor.
data Certificates = Certificates'
  { -- | The HSM certificate issued (signed) by the HSM hardware.
    hsmCertificate :: Prelude.Maybe Prelude.Text,
    -- | The cluster certificate issued (signed) by the issuing certificate
    -- authority (CA) of the cluster\'s owner.
    clusterCertificate :: Prelude.Maybe Prelude.Text,
    -- | The cluster\'s certificate signing request (CSR). The CSR exists only
    -- when the cluster\'s state is @UNINITIALIZED@.
    clusterCsr :: Prelude.Maybe Prelude.Text,
    -- | The HSM hardware certificate issued (signed) by the hardware
    -- manufacturer.
    manufacturerHardwareCertificate :: Prelude.Maybe Prelude.Text,
    -- | The HSM hardware certificate issued (signed) by AWS CloudHSM.
    awsHardwareCertificate :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Certificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hsmCertificate', 'certificates_hsmCertificate' - The HSM certificate issued (signed) by the HSM hardware.
--
-- 'clusterCertificate', 'certificates_clusterCertificate' - The cluster certificate issued (signed) by the issuing certificate
-- authority (CA) of the cluster\'s owner.
--
-- 'clusterCsr', 'certificates_clusterCsr' - The cluster\'s certificate signing request (CSR). The CSR exists only
-- when the cluster\'s state is @UNINITIALIZED@.
--
-- 'manufacturerHardwareCertificate', 'certificates_manufacturerHardwareCertificate' - The HSM hardware certificate issued (signed) by the hardware
-- manufacturer.
--
-- 'awsHardwareCertificate', 'certificates_awsHardwareCertificate' - The HSM hardware certificate issued (signed) by AWS CloudHSM.
newCertificates ::
  Certificates
newCertificates =
  Certificates'
    { hsmCertificate = Prelude.Nothing,
      clusterCertificate = Prelude.Nothing,
      clusterCsr = Prelude.Nothing,
      manufacturerHardwareCertificate = Prelude.Nothing,
      awsHardwareCertificate = Prelude.Nothing
    }

-- | The HSM certificate issued (signed) by the HSM hardware.
certificates_hsmCertificate :: Lens.Lens' Certificates (Prelude.Maybe Prelude.Text)
certificates_hsmCertificate = Lens.lens (\Certificates' {hsmCertificate} -> hsmCertificate) (\s@Certificates' {} a -> s {hsmCertificate = a} :: Certificates)

-- | The cluster certificate issued (signed) by the issuing certificate
-- authority (CA) of the cluster\'s owner.
certificates_clusterCertificate :: Lens.Lens' Certificates (Prelude.Maybe Prelude.Text)
certificates_clusterCertificate = Lens.lens (\Certificates' {clusterCertificate} -> clusterCertificate) (\s@Certificates' {} a -> s {clusterCertificate = a} :: Certificates)

-- | The cluster\'s certificate signing request (CSR). The CSR exists only
-- when the cluster\'s state is @UNINITIALIZED@.
certificates_clusterCsr :: Lens.Lens' Certificates (Prelude.Maybe Prelude.Text)
certificates_clusterCsr = Lens.lens (\Certificates' {clusterCsr} -> clusterCsr) (\s@Certificates' {} a -> s {clusterCsr = a} :: Certificates)

-- | The HSM hardware certificate issued (signed) by the hardware
-- manufacturer.
certificates_manufacturerHardwareCertificate :: Lens.Lens' Certificates (Prelude.Maybe Prelude.Text)
certificates_manufacturerHardwareCertificate = Lens.lens (\Certificates' {manufacturerHardwareCertificate} -> manufacturerHardwareCertificate) (\s@Certificates' {} a -> s {manufacturerHardwareCertificate = a} :: Certificates)

-- | The HSM hardware certificate issued (signed) by AWS CloudHSM.
certificates_awsHardwareCertificate :: Lens.Lens' Certificates (Prelude.Maybe Prelude.Text)
certificates_awsHardwareCertificate = Lens.lens (\Certificates' {awsHardwareCertificate} -> awsHardwareCertificate) (\s@Certificates' {} a -> s {awsHardwareCertificate = a} :: Certificates)

instance Core.FromJSON Certificates where
  parseJSON =
    Core.withObject
      "Certificates"
      ( \x ->
          Certificates'
            Prelude.<$> (x Core..:? "HsmCertificate")
            Prelude.<*> (x Core..:? "ClusterCertificate")
            Prelude.<*> (x Core..:? "ClusterCsr")
            Prelude.<*> (x Core..:? "ManufacturerHardwareCertificate")
            Prelude.<*> (x Core..:? "AwsHardwareCertificate")
      )

instance Prelude.Hashable Certificates where
  hashWithSalt _salt Certificates' {..} =
    _salt `Prelude.hashWithSalt` hsmCertificate
      `Prelude.hashWithSalt` clusterCertificate
      `Prelude.hashWithSalt` clusterCsr
      `Prelude.hashWithSalt` manufacturerHardwareCertificate
      `Prelude.hashWithSalt` awsHardwareCertificate

instance Prelude.NFData Certificates where
  rnf Certificates' {..} =
    Prelude.rnf hsmCertificate
      `Prelude.seq` Prelude.rnf clusterCertificate
      `Prelude.seq` Prelude.rnf clusterCsr
      `Prelude.seq` Prelude.rnf manufacturerHardwareCertificate
      `Prelude.seq` Prelude.rnf awsHardwareCertificate
