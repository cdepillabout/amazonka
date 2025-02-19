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
-- Module      : Amazonka.AccessAnalyzer.Types.NetworkOriginConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AccessAnalyzer.Types.NetworkOriginConfiguration where

import Amazonka.AccessAnalyzer.Types.InternetConfiguration
import Amazonka.AccessAnalyzer.Types.VpcConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The proposed @InternetConfiguration@ or @VpcConfiguration@ to apply to
-- the Amazon S3 access point. @VpcConfiguration@ does not apply to
-- multi-region access points. You can make the access point accessible
-- from the internet, or you can specify that all requests made through
-- that access point must originate from a specific virtual private cloud
-- (VPC). You can specify only one type of network configuration. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/creating-access-points.html Creating access points>.
--
-- /See:/ 'newNetworkOriginConfiguration' smart constructor.
data NetworkOriginConfiguration = NetworkOriginConfiguration'
  { vpcConfiguration :: Prelude.Maybe VpcConfiguration,
    -- | The configuration for the Amazon S3 access point or multi-region access
    -- point with an @Internet@ origin.
    internetConfiguration :: Prelude.Maybe InternetConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkOriginConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcConfiguration', 'networkOriginConfiguration_vpcConfiguration' - Undocumented member.
--
-- 'internetConfiguration', 'networkOriginConfiguration_internetConfiguration' - The configuration for the Amazon S3 access point or multi-region access
-- point with an @Internet@ origin.
newNetworkOriginConfiguration ::
  NetworkOriginConfiguration
newNetworkOriginConfiguration =
  NetworkOriginConfiguration'
    { vpcConfiguration =
        Prelude.Nothing,
      internetConfiguration = Prelude.Nothing
    }

-- | Undocumented member.
networkOriginConfiguration_vpcConfiguration :: Lens.Lens' NetworkOriginConfiguration (Prelude.Maybe VpcConfiguration)
networkOriginConfiguration_vpcConfiguration = Lens.lens (\NetworkOriginConfiguration' {vpcConfiguration} -> vpcConfiguration) (\s@NetworkOriginConfiguration' {} a -> s {vpcConfiguration = a} :: NetworkOriginConfiguration)

-- | The configuration for the Amazon S3 access point or multi-region access
-- point with an @Internet@ origin.
networkOriginConfiguration_internetConfiguration :: Lens.Lens' NetworkOriginConfiguration (Prelude.Maybe InternetConfiguration)
networkOriginConfiguration_internetConfiguration = Lens.lens (\NetworkOriginConfiguration' {internetConfiguration} -> internetConfiguration) (\s@NetworkOriginConfiguration' {} a -> s {internetConfiguration = a} :: NetworkOriginConfiguration)

instance Core.FromJSON NetworkOriginConfiguration where
  parseJSON =
    Core.withObject
      "NetworkOriginConfiguration"
      ( \x ->
          NetworkOriginConfiguration'
            Prelude.<$> (x Core..:? "vpcConfiguration")
            Prelude.<*> (x Core..:? "internetConfiguration")
      )

instance Prelude.Hashable NetworkOriginConfiguration where
  hashWithSalt _salt NetworkOriginConfiguration' {..} =
    _salt `Prelude.hashWithSalt` vpcConfiguration
      `Prelude.hashWithSalt` internetConfiguration

instance Prelude.NFData NetworkOriginConfiguration where
  rnf NetworkOriginConfiguration' {..} =
    Prelude.rnf vpcConfiguration
      `Prelude.seq` Prelude.rnf internetConfiguration

instance Core.ToJSON NetworkOriginConfiguration where
  toJSON NetworkOriginConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("vpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            ("internetConfiguration" Core..=)
              Prelude.<$> internetConfiguration
          ]
      )
