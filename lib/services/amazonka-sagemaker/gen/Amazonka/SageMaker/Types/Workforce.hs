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
-- Module      : Amazonka.SageMaker.Types.Workforce
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.Workforce where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.CognitoConfig
import Amazonka.SageMaker.Types.OidcConfigForResponse
import Amazonka.SageMaker.Types.SourceIpConfig
import Amazonka.SageMaker.Types.WorkforceStatus
import Amazonka.SageMaker.Types.WorkforceVpcConfigResponse

-- | A single private workforce, which is automatically created when you
-- create your first private work team. You can create one private work
-- force in each Amazon Web Services Region. By default, any
-- workforce-related API operation used in a specific region will apply to
-- the workforce created in that region. To learn how to create a private
-- workforce, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html Create a Private Workforce>.
--
-- /See:/ 'newWorkforce' smart constructor.
data Workforce = Workforce'
  { -- | The configuration of an Amazon Cognito workforce. A single Cognito
    -- workforce is created using and corresponds to a single
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool>.
    cognitoConfig :: Prelude.Maybe CognitoConfig,
    -- | The most recent date that was used to successfully add one or more IP
    -- address ranges
    -- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
    -- to a private workforce\'s allow list.
    lastUpdatedDate :: Prelude.Maybe Core.POSIX,
    -- | The subdomain for your OIDC Identity Provider.
    subDomain :: Prelude.Maybe Prelude.Text,
    -- | The status of your workforce.
    status :: Prelude.Maybe WorkforceStatus,
    -- | A list of one to ten IP address ranges
    -- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
    -- to be added to the workforce allow list. By default, a workforce isn\'t
    -- restricted to specific IP addresses.
    sourceIpConfig :: Prelude.Maybe SourceIpConfig,
    -- | The configuration of a VPC workforce.
    workforceVpcConfig :: Prelude.Maybe WorkforceVpcConfigResponse,
    -- | The date that the workforce is created.
    createDate :: Prelude.Maybe Core.POSIX,
    -- | The configuration of an OIDC Identity Provider (IdP) private workforce.
    oidcConfig :: Prelude.Maybe OidcConfigForResponse,
    -- | The reason your workforce failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The name of the private workforce.
    workforceName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the private workforce.
    workforceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Workforce' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cognitoConfig', 'workforce_cognitoConfig' - The configuration of an Amazon Cognito workforce. A single Cognito
-- workforce is created using and corresponds to a single
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool>.
--
-- 'lastUpdatedDate', 'workforce_lastUpdatedDate' - The most recent date that was used to successfully add one or more IP
-- address ranges
-- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
-- to a private workforce\'s allow list.
--
-- 'subDomain', 'workforce_subDomain' - The subdomain for your OIDC Identity Provider.
--
-- 'status', 'workforce_status' - The status of your workforce.
--
-- 'sourceIpConfig', 'workforce_sourceIpConfig' - A list of one to ten IP address ranges
-- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
-- to be added to the workforce allow list. By default, a workforce isn\'t
-- restricted to specific IP addresses.
--
-- 'workforceVpcConfig', 'workforce_workforceVpcConfig' - The configuration of a VPC workforce.
--
-- 'createDate', 'workforce_createDate' - The date that the workforce is created.
--
-- 'oidcConfig', 'workforce_oidcConfig' - The configuration of an OIDC Identity Provider (IdP) private workforce.
--
-- 'failureReason', 'workforce_failureReason' - The reason your workforce failed.
--
-- 'workforceName', 'workforce_workforceName' - The name of the private workforce.
--
-- 'workforceArn', 'workforce_workforceArn' - The Amazon Resource Name (ARN) of the private workforce.
newWorkforce ::
  -- | 'workforceName'
  Prelude.Text ->
  -- | 'workforceArn'
  Prelude.Text ->
  Workforce
newWorkforce pWorkforceName_ pWorkforceArn_ =
  Workforce'
    { cognitoConfig = Prelude.Nothing,
      lastUpdatedDate = Prelude.Nothing,
      subDomain = Prelude.Nothing,
      status = Prelude.Nothing,
      sourceIpConfig = Prelude.Nothing,
      workforceVpcConfig = Prelude.Nothing,
      createDate = Prelude.Nothing,
      oidcConfig = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      workforceName = pWorkforceName_,
      workforceArn = pWorkforceArn_
    }

-- | The configuration of an Amazon Cognito workforce. A single Cognito
-- workforce is created using and corresponds to a single
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito user pool>.
workforce_cognitoConfig :: Lens.Lens' Workforce (Prelude.Maybe CognitoConfig)
workforce_cognitoConfig = Lens.lens (\Workforce' {cognitoConfig} -> cognitoConfig) (\s@Workforce' {} a -> s {cognitoConfig = a} :: Workforce)

-- | The most recent date that was used to successfully add one or more IP
-- address ranges
-- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
-- to a private workforce\'s allow list.
workforce_lastUpdatedDate :: Lens.Lens' Workforce (Prelude.Maybe Prelude.UTCTime)
workforce_lastUpdatedDate = Lens.lens (\Workforce' {lastUpdatedDate} -> lastUpdatedDate) (\s@Workforce' {} a -> s {lastUpdatedDate = a} :: Workforce) Prelude.. Lens.mapping Core._Time

-- | The subdomain for your OIDC Identity Provider.
workforce_subDomain :: Lens.Lens' Workforce (Prelude.Maybe Prelude.Text)
workforce_subDomain = Lens.lens (\Workforce' {subDomain} -> subDomain) (\s@Workforce' {} a -> s {subDomain = a} :: Workforce)

-- | The status of your workforce.
workforce_status :: Lens.Lens' Workforce (Prelude.Maybe WorkforceStatus)
workforce_status = Lens.lens (\Workforce' {status} -> status) (\s@Workforce' {} a -> s {status = a} :: Workforce)

-- | A list of one to ten IP address ranges
-- (<https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html CIDRs>)
-- to be added to the workforce allow list. By default, a workforce isn\'t
-- restricted to specific IP addresses.
workforce_sourceIpConfig :: Lens.Lens' Workforce (Prelude.Maybe SourceIpConfig)
workforce_sourceIpConfig = Lens.lens (\Workforce' {sourceIpConfig} -> sourceIpConfig) (\s@Workforce' {} a -> s {sourceIpConfig = a} :: Workforce)

-- | The configuration of a VPC workforce.
workforce_workforceVpcConfig :: Lens.Lens' Workforce (Prelude.Maybe WorkforceVpcConfigResponse)
workforce_workforceVpcConfig = Lens.lens (\Workforce' {workforceVpcConfig} -> workforceVpcConfig) (\s@Workforce' {} a -> s {workforceVpcConfig = a} :: Workforce)

-- | The date that the workforce is created.
workforce_createDate :: Lens.Lens' Workforce (Prelude.Maybe Prelude.UTCTime)
workforce_createDate = Lens.lens (\Workforce' {createDate} -> createDate) (\s@Workforce' {} a -> s {createDate = a} :: Workforce) Prelude.. Lens.mapping Core._Time

-- | The configuration of an OIDC Identity Provider (IdP) private workforce.
workforce_oidcConfig :: Lens.Lens' Workforce (Prelude.Maybe OidcConfigForResponse)
workforce_oidcConfig = Lens.lens (\Workforce' {oidcConfig} -> oidcConfig) (\s@Workforce' {} a -> s {oidcConfig = a} :: Workforce)

-- | The reason your workforce failed.
workforce_failureReason :: Lens.Lens' Workforce (Prelude.Maybe Prelude.Text)
workforce_failureReason = Lens.lens (\Workforce' {failureReason} -> failureReason) (\s@Workforce' {} a -> s {failureReason = a} :: Workforce)

-- | The name of the private workforce.
workforce_workforceName :: Lens.Lens' Workforce Prelude.Text
workforce_workforceName = Lens.lens (\Workforce' {workforceName} -> workforceName) (\s@Workforce' {} a -> s {workforceName = a} :: Workforce)

-- | The Amazon Resource Name (ARN) of the private workforce.
workforce_workforceArn :: Lens.Lens' Workforce Prelude.Text
workforce_workforceArn = Lens.lens (\Workforce' {workforceArn} -> workforceArn) (\s@Workforce' {} a -> s {workforceArn = a} :: Workforce)

instance Core.FromJSON Workforce where
  parseJSON =
    Core.withObject
      "Workforce"
      ( \x ->
          Workforce'
            Prelude.<$> (x Core..:? "CognitoConfig")
            Prelude.<*> (x Core..:? "LastUpdatedDate")
            Prelude.<*> (x Core..:? "SubDomain")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "SourceIpConfig")
            Prelude.<*> (x Core..:? "WorkforceVpcConfig")
            Prelude.<*> (x Core..:? "CreateDate")
            Prelude.<*> (x Core..:? "OidcConfig")
            Prelude.<*> (x Core..:? "FailureReason")
            Prelude.<*> (x Core..: "WorkforceName")
            Prelude.<*> (x Core..: "WorkforceArn")
      )

instance Prelude.Hashable Workforce where
  hashWithSalt _salt Workforce' {..} =
    _salt `Prelude.hashWithSalt` cognitoConfig
      `Prelude.hashWithSalt` lastUpdatedDate
      `Prelude.hashWithSalt` subDomain
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` sourceIpConfig
      `Prelude.hashWithSalt` workforceVpcConfig
      `Prelude.hashWithSalt` createDate
      `Prelude.hashWithSalt` oidcConfig
      `Prelude.hashWithSalt` failureReason
      `Prelude.hashWithSalt` workforceName
      `Prelude.hashWithSalt` workforceArn

instance Prelude.NFData Workforce where
  rnf Workforce' {..} =
    Prelude.rnf cognitoConfig
      `Prelude.seq` Prelude.rnf lastUpdatedDate
      `Prelude.seq` Prelude.rnf subDomain
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf sourceIpConfig
      `Prelude.seq` Prelude.rnf workforceVpcConfig
      `Prelude.seq` Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf oidcConfig
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf workforceName
      `Prelude.seq` Prelude.rnf workforceArn
