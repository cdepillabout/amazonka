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
-- Module      : Amazonka.XRay.Types.SamplingRuleUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.XRay.Types.SamplingRuleUpdate where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A document specifying changes to a sampling rule\'s configuration.
--
-- /See:/ 'newSamplingRuleUpdate' smart constructor.
data SamplingRuleUpdate = SamplingRuleUpdate'
  { -- | The ARN of the sampling rule. Specify a rule by either name or ARN, but
    -- not both.
    ruleARN :: Prelude.Maybe Prelude.Text,
    -- | The percentage of matching requests to instrument, after the reservoir
    -- is exhausted.
    fixedRate :: Prelude.Maybe Prelude.Double,
    -- | Matches the hostname from a request URL.
    host :: Prelude.Maybe Prelude.Text,
    -- | A fixed number of matching requests to instrument per second, prior to
    -- applying the fixed rate. The reservoir is not used directly by services,
    -- but applies to all services using the rule collectively.
    reservoirSize :: Prelude.Maybe Prelude.Int,
    -- | Matches the @origin@ that the service uses to identify its type in
    -- segments.
    serviceType :: Prelude.Maybe Prelude.Text,
    -- | Matches the HTTP method of a request.
    hTTPMethod :: Prelude.Maybe Prelude.Text,
    -- | The name of the sampling rule. Specify a rule by either name or ARN, but
    -- not both.
    ruleName :: Prelude.Maybe Prelude.Text,
    -- | The priority of the sampling rule.
    priority :: Prelude.Maybe Prelude.Int,
    -- | Matches attributes derived from the request.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Matches the ARN of the Amazon Web Services resource on which the service
    -- runs.
    resourceARN :: Prelude.Maybe Prelude.Text,
    -- | Matches the @name@ that the service uses to identify itself in segments.
    serviceName :: Prelude.Maybe Prelude.Text,
    -- | Matches the path from a request URL.
    uRLPath :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SamplingRuleUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleARN', 'samplingRuleUpdate_ruleARN' - The ARN of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
--
-- 'fixedRate', 'samplingRuleUpdate_fixedRate' - The percentage of matching requests to instrument, after the reservoir
-- is exhausted.
--
-- 'host', 'samplingRuleUpdate_host' - Matches the hostname from a request URL.
--
-- 'reservoirSize', 'samplingRuleUpdate_reservoirSize' - A fixed number of matching requests to instrument per second, prior to
-- applying the fixed rate. The reservoir is not used directly by services,
-- but applies to all services using the rule collectively.
--
-- 'serviceType', 'samplingRuleUpdate_serviceType' - Matches the @origin@ that the service uses to identify its type in
-- segments.
--
-- 'hTTPMethod', 'samplingRuleUpdate_hTTPMethod' - Matches the HTTP method of a request.
--
-- 'ruleName', 'samplingRuleUpdate_ruleName' - The name of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
--
-- 'priority', 'samplingRuleUpdate_priority' - The priority of the sampling rule.
--
-- 'attributes', 'samplingRuleUpdate_attributes' - Matches attributes derived from the request.
--
-- 'resourceARN', 'samplingRuleUpdate_resourceARN' - Matches the ARN of the Amazon Web Services resource on which the service
-- runs.
--
-- 'serviceName', 'samplingRuleUpdate_serviceName' - Matches the @name@ that the service uses to identify itself in segments.
--
-- 'uRLPath', 'samplingRuleUpdate_uRLPath' - Matches the path from a request URL.
newSamplingRuleUpdate ::
  SamplingRuleUpdate
newSamplingRuleUpdate =
  SamplingRuleUpdate'
    { ruleARN = Prelude.Nothing,
      fixedRate = Prelude.Nothing,
      host = Prelude.Nothing,
      reservoirSize = Prelude.Nothing,
      serviceType = Prelude.Nothing,
      hTTPMethod = Prelude.Nothing,
      ruleName = Prelude.Nothing,
      priority = Prelude.Nothing,
      attributes = Prelude.Nothing,
      resourceARN = Prelude.Nothing,
      serviceName = Prelude.Nothing,
      uRLPath = Prelude.Nothing
    }

-- | The ARN of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
samplingRuleUpdate_ruleARN :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_ruleARN = Lens.lens (\SamplingRuleUpdate' {ruleARN} -> ruleARN) (\s@SamplingRuleUpdate' {} a -> s {ruleARN = a} :: SamplingRuleUpdate)

-- | The percentage of matching requests to instrument, after the reservoir
-- is exhausted.
samplingRuleUpdate_fixedRate :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Double)
samplingRuleUpdate_fixedRate = Lens.lens (\SamplingRuleUpdate' {fixedRate} -> fixedRate) (\s@SamplingRuleUpdate' {} a -> s {fixedRate = a} :: SamplingRuleUpdate)

-- | Matches the hostname from a request URL.
samplingRuleUpdate_host :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_host = Lens.lens (\SamplingRuleUpdate' {host} -> host) (\s@SamplingRuleUpdate' {} a -> s {host = a} :: SamplingRuleUpdate)

-- | A fixed number of matching requests to instrument per second, prior to
-- applying the fixed rate. The reservoir is not used directly by services,
-- but applies to all services using the rule collectively.
samplingRuleUpdate_reservoirSize :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Int)
samplingRuleUpdate_reservoirSize = Lens.lens (\SamplingRuleUpdate' {reservoirSize} -> reservoirSize) (\s@SamplingRuleUpdate' {} a -> s {reservoirSize = a} :: SamplingRuleUpdate)

-- | Matches the @origin@ that the service uses to identify its type in
-- segments.
samplingRuleUpdate_serviceType :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_serviceType = Lens.lens (\SamplingRuleUpdate' {serviceType} -> serviceType) (\s@SamplingRuleUpdate' {} a -> s {serviceType = a} :: SamplingRuleUpdate)

-- | Matches the HTTP method of a request.
samplingRuleUpdate_hTTPMethod :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_hTTPMethod = Lens.lens (\SamplingRuleUpdate' {hTTPMethod} -> hTTPMethod) (\s@SamplingRuleUpdate' {} a -> s {hTTPMethod = a} :: SamplingRuleUpdate)

-- | The name of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
samplingRuleUpdate_ruleName :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_ruleName = Lens.lens (\SamplingRuleUpdate' {ruleName} -> ruleName) (\s@SamplingRuleUpdate' {} a -> s {ruleName = a} :: SamplingRuleUpdate)

-- | The priority of the sampling rule.
samplingRuleUpdate_priority :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Int)
samplingRuleUpdate_priority = Lens.lens (\SamplingRuleUpdate' {priority} -> priority) (\s@SamplingRuleUpdate' {} a -> s {priority = a} :: SamplingRuleUpdate)

-- | Matches attributes derived from the request.
samplingRuleUpdate_attributes :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
samplingRuleUpdate_attributes = Lens.lens (\SamplingRuleUpdate' {attributes} -> attributes) (\s@SamplingRuleUpdate' {} a -> s {attributes = a} :: SamplingRuleUpdate) Prelude.. Lens.mapping Lens.coerced

-- | Matches the ARN of the Amazon Web Services resource on which the service
-- runs.
samplingRuleUpdate_resourceARN :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_resourceARN = Lens.lens (\SamplingRuleUpdate' {resourceARN} -> resourceARN) (\s@SamplingRuleUpdate' {} a -> s {resourceARN = a} :: SamplingRuleUpdate)

-- | Matches the @name@ that the service uses to identify itself in segments.
samplingRuleUpdate_serviceName :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_serviceName = Lens.lens (\SamplingRuleUpdate' {serviceName} -> serviceName) (\s@SamplingRuleUpdate' {} a -> s {serviceName = a} :: SamplingRuleUpdate)

-- | Matches the path from a request URL.
samplingRuleUpdate_uRLPath :: Lens.Lens' SamplingRuleUpdate (Prelude.Maybe Prelude.Text)
samplingRuleUpdate_uRLPath = Lens.lens (\SamplingRuleUpdate' {uRLPath} -> uRLPath) (\s@SamplingRuleUpdate' {} a -> s {uRLPath = a} :: SamplingRuleUpdate)

instance Prelude.Hashable SamplingRuleUpdate where
  hashWithSalt _salt SamplingRuleUpdate' {..} =
    _salt `Prelude.hashWithSalt` ruleARN
      `Prelude.hashWithSalt` fixedRate
      `Prelude.hashWithSalt` host
      `Prelude.hashWithSalt` reservoirSize
      `Prelude.hashWithSalt` serviceType
      `Prelude.hashWithSalt` hTTPMethod
      `Prelude.hashWithSalt` ruleName
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` resourceARN
      `Prelude.hashWithSalt` serviceName
      `Prelude.hashWithSalt` uRLPath

instance Prelude.NFData SamplingRuleUpdate where
  rnf SamplingRuleUpdate' {..} =
    Prelude.rnf ruleARN
      `Prelude.seq` Prelude.rnf fixedRate
      `Prelude.seq` Prelude.rnf host
      `Prelude.seq` Prelude.rnf reservoirSize
      `Prelude.seq` Prelude.rnf serviceType
      `Prelude.seq` Prelude.rnf hTTPMethod
      `Prelude.seq` Prelude.rnf ruleName
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf resourceARN
      `Prelude.seq` Prelude.rnf serviceName
      `Prelude.seq` Prelude.rnf uRLPath

instance Core.ToJSON SamplingRuleUpdate where
  toJSON SamplingRuleUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RuleARN" Core..=) Prelude.<$> ruleARN,
            ("FixedRate" Core..=) Prelude.<$> fixedRate,
            ("Host" Core..=) Prelude.<$> host,
            ("ReservoirSize" Core..=) Prelude.<$> reservoirSize,
            ("ServiceType" Core..=) Prelude.<$> serviceType,
            ("HTTPMethod" Core..=) Prelude.<$> hTTPMethod,
            ("RuleName" Core..=) Prelude.<$> ruleName,
            ("Priority" Core..=) Prelude.<$> priority,
            ("Attributes" Core..=) Prelude.<$> attributes,
            ("ResourceARN" Core..=) Prelude.<$> resourceARN,
            ("ServiceName" Core..=) Prelude.<$> serviceName,
            ("URLPath" Core..=) Prelude.<$> uRLPath
          ]
      )
