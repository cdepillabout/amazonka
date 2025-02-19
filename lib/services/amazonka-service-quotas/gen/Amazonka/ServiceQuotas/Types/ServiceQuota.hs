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
-- Module      : Amazonka.ServiceQuotas.Types.ServiceQuota
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ServiceQuotas.Types.ServiceQuota where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ServiceQuotas.Types.ErrorReason
import Amazonka.ServiceQuotas.Types.MetricInfo
import Amazonka.ServiceQuotas.Types.QuotaPeriod

-- | Information about a quota.
--
-- /See:/ 'newServiceQuota' smart constructor.
data ServiceQuota = ServiceQuota'
  { -- | The Amazon Resource Name (ARN) of the quota.
    quotaArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the quota is global.
    globalQuota :: Prelude.Maybe Prelude.Bool,
    -- | The quota identifier.
    quotaCode :: Prelude.Maybe Prelude.Text,
    -- | Information about the measurement.
    usageMetric :: Prelude.Maybe MetricInfo,
    -- | Indicates whether the quota value can be increased.
    adjustable :: Prelude.Maybe Prelude.Bool,
    -- | The error code and error reason.
    errorReason :: Prelude.Maybe ErrorReason,
    -- | The period of time.
    period :: Prelude.Maybe QuotaPeriod,
    -- | The service identifier.
    serviceCode :: Prelude.Maybe Prelude.Text,
    -- | The quota name.
    quotaName :: Prelude.Maybe Prelude.Text,
    -- | The service name.
    serviceName :: Prelude.Maybe Prelude.Text,
    -- | The unit of measurement.
    unit :: Prelude.Maybe Prelude.Text,
    -- | The quota value.
    value :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceQuota' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'quotaArn', 'serviceQuota_quotaArn' - The Amazon Resource Name (ARN) of the quota.
--
-- 'globalQuota', 'serviceQuota_globalQuota' - Indicates whether the quota is global.
--
-- 'quotaCode', 'serviceQuota_quotaCode' - The quota identifier.
--
-- 'usageMetric', 'serviceQuota_usageMetric' - Information about the measurement.
--
-- 'adjustable', 'serviceQuota_adjustable' - Indicates whether the quota value can be increased.
--
-- 'errorReason', 'serviceQuota_errorReason' - The error code and error reason.
--
-- 'period', 'serviceQuota_period' - The period of time.
--
-- 'serviceCode', 'serviceQuota_serviceCode' - The service identifier.
--
-- 'quotaName', 'serviceQuota_quotaName' - The quota name.
--
-- 'serviceName', 'serviceQuota_serviceName' - The service name.
--
-- 'unit', 'serviceQuota_unit' - The unit of measurement.
--
-- 'value', 'serviceQuota_value' - The quota value.
newServiceQuota ::
  ServiceQuota
newServiceQuota =
  ServiceQuota'
    { quotaArn = Prelude.Nothing,
      globalQuota = Prelude.Nothing,
      quotaCode = Prelude.Nothing,
      usageMetric = Prelude.Nothing,
      adjustable = Prelude.Nothing,
      errorReason = Prelude.Nothing,
      period = Prelude.Nothing,
      serviceCode = Prelude.Nothing,
      quotaName = Prelude.Nothing,
      serviceName = Prelude.Nothing,
      unit = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the quota.
serviceQuota_quotaArn :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_quotaArn = Lens.lens (\ServiceQuota' {quotaArn} -> quotaArn) (\s@ServiceQuota' {} a -> s {quotaArn = a} :: ServiceQuota)

-- | Indicates whether the quota is global.
serviceQuota_globalQuota :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Bool)
serviceQuota_globalQuota = Lens.lens (\ServiceQuota' {globalQuota} -> globalQuota) (\s@ServiceQuota' {} a -> s {globalQuota = a} :: ServiceQuota)

-- | The quota identifier.
serviceQuota_quotaCode :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_quotaCode = Lens.lens (\ServiceQuota' {quotaCode} -> quotaCode) (\s@ServiceQuota' {} a -> s {quotaCode = a} :: ServiceQuota)

-- | Information about the measurement.
serviceQuota_usageMetric :: Lens.Lens' ServiceQuota (Prelude.Maybe MetricInfo)
serviceQuota_usageMetric = Lens.lens (\ServiceQuota' {usageMetric} -> usageMetric) (\s@ServiceQuota' {} a -> s {usageMetric = a} :: ServiceQuota)

-- | Indicates whether the quota value can be increased.
serviceQuota_adjustable :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Bool)
serviceQuota_adjustable = Lens.lens (\ServiceQuota' {adjustable} -> adjustable) (\s@ServiceQuota' {} a -> s {adjustable = a} :: ServiceQuota)

-- | The error code and error reason.
serviceQuota_errorReason :: Lens.Lens' ServiceQuota (Prelude.Maybe ErrorReason)
serviceQuota_errorReason = Lens.lens (\ServiceQuota' {errorReason} -> errorReason) (\s@ServiceQuota' {} a -> s {errorReason = a} :: ServiceQuota)

-- | The period of time.
serviceQuota_period :: Lens.Lens' ServiceQuota (Prelude.Maybe QuotaPeriod)
serviceQuota_period = Lens.lens (\ServiceQuota' {period} -> period) (\s@ServiceQuota' {} a -> s {period = a} :: ServiceQuota)

-- | The service identifier.
serviceQuota_serviceCode :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_serviceCode = Lens.lens (\ServiceQuota' {serviceCode} -> serviceCode) (\s@ServiceQuota' {} a -> s {serviceCode = a} :: ServiceQuota)

-- | The quota name.
serviceQuota_quotaName :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_quotaName = Lens.lens (\ServiceQuota' {quotaName} -> quotaName) (\s@ServiceQuota' {} a -> s {quotaName = a} :: ServiceQuota)

-- | The service name.
serviceQuota_serviceName :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_serviceName = Lens.lens (\ServiceQuota' {serviceName} -> serviceName) (\s@ServiceQuota' {} a -> s {serviceName = a} :: ServiceQuota)

-- | The unit of measurement.
serviceQuota_unit :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Text)
serviceQuota_unit = Lens.lens (\ServiceQuota' {unit} -> unit) (\s@ServiceQuota' {} a -> s {unit = a} :: ServiceQuota)

-- | The quota value.
serviceQuota_value :: Lens.Lens' ServiceQuota (Prelude.Maybe Prelude.Double)
serviceQuota_value = Lens.lens (\ServiceQuota' {value} -> value) (\s@ServiceQuota' {} a -> s {value = a} :: ServiceQuota)

instance Core.FromJSON ServiceQuota where
  parseJSON =
    Core.withObject
      "ServiceQuota"
      ( \x ->
          ServiceQuota'
            Prelude.<$> (x Core..:? "QuotaArn")
            Prelude.<*> (x Core..:? "GlobalQuota")
            Prelude.<*> (x Core..:? "QuotaCode")
            Prelude.<*> (x Core..:? "UsageMetric")
            Prelude.<*> (x Core..:? "Adjustable")
            Prelude.<*> (x Core..:? "ErrorReason")
            Prelude.<*> (x Core..:? "Period")
            Prelude.<*> (x Core..:? "ServiceCode")
            Prelude.<*> (x Core..:? "QuotaName")
            Prelude.<*> (x Core..:? "ServiceName")
            Prelude.<*> (x Core..:? "Unit")
            Prelude.<*> (x Core..:? "Value")
      )

instance Prelude.Hashable ServiceQuota where
  hashWithSalt _salt ServiceQuota' {..} =
    _salt `Prelude.hashWithSalt` quotaArn
      `Prelude.hashWithSalt` globalQuota
      `Prelude.hashWithSalt` quotaCode
      `Prelude.hashWithSalt` usageMetric
      `Prelude.hashWithSalt` adjustable
      `Prelude.hashWithSalt` errorReason
      `Prelude.hashWithSalt` period
      `Prelude.hashWithSalt` serviceCode
      `Prelude.hashWithSalt` quotaName
      `Prelude.hashWithSalt` serviceName
      `Prelude.hashWithSalt` unit
      `Prelude.hashWithSalt` value

instance Prelude.NFData ServiceQuota where
  rnf ServiceQuota' {..} =
    Prelude.rnf quotaArn
      `Prelude.seq` Prelude.rnf globalQuota
      `Prelude.seq` Prelude.rnf quotaCode
      `Prelude.seq` Prelude.rnf usageMetric
      `Prelude.seq` Prelude.rnf adjustable
      `Prelude.seq` Prelude.rnf errorReason
      `Prelude.seq` Prelude.rnf period
      `Prelude.seq` Prelude.rnf serviceCode
      `Prelude.seq` Prelude.rnf quotaName
      `Prelude.seq` Prelude.rnf serviceName
      `Prelude.seq` Prelude.rnf unit
      `Prelude.seq` Prelude.rnf value
