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
-- Module      : Amazonka.SageMaker.DescribeApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the app.
module Amazonka.SageMaker.DescribeApp
  ( -- * Creating a Request
    DescribeApp (..),
    newDescribeApp,

    -- * Request Lenses
    describeApp_domainId,
    describeApp_userProfileName,
    describeApp_appType,
    describeApp_appName,

    -- * Destructuring the Response
    DescribeAppResponse (..),
    newDescribeAppResponse,

    -- * Response Lenses
    describeAppResponse_resourceSpec,
    describeAppResponse_appName,
    describeAppResponse_appType,
    describeAppResponse_status,
    describeAppResponse_appArn,
    describeAppResponse_lastUserActivityTimestamp,
    describeAppResponse_userProfileName,
    describeAppResponse_creationTime,
    describeAppResponse_domainId,
    describeAppResponse_lastHealthCheckTimestamp,
    describeAppResponse_failureReason,
    describeAppResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newDescribeApp' smart constructor.
data DescribeApp = DescribeApp'
  { -- | The domain ID.
    domainId :: Prelude.Text,
    -- | The user profile name.
    userProfileName :: Prelude.Text,
    -- | The type of app.
    appType :: AppType,
    -- | The name of the app.
    appName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'describeApp_domainId' - The domain ID.
--
-- 'userProfileName', 'describeApp_userProfileName' - The user profile name.
--
-- 'appType', 'describeApp_appType' - The type of app.
--
-- 'appName', 'describeApp_appName' - The name of the app.
newDescribeApp ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'userProfileName'
  Prelude.Text ->
  -- | 'appType'
  AppType ->
  -- | 'appName'
  Prelude.Text ->
  DescribeApp
newDescribeApp
  pDomainId_
  pUserProfileName_
  pAppType_
  pAppName_ =
    DescribeApp'
      { domainId = pDomainId_,
        userProfileName = pUserProfileName_,
        appType = pAppType_,
        appName = pAppName_
      }

-- | The domain ID.
describeApp_domainId :: Lens.Lens' DescribeApp Prelude.Text
describeApp_domainId = Lens.lens (\DescribeApp' {domainId} -> domainId) (\s@DescribeApp' {} a -> s {domainId = a} :: DescribeApp)

-- | The user profile name.
describeApp_userProfileName :: Lens.Lens' DescribeApp Prelude.Text
describeApp_userProfileName = Lens.lens (\DescribeApp' {userProfileName} -> userProfileName) (\s@DescribeApp' {} a -> s {userProfileName = a} :: DescribeApp)

-- | The type of app.
describeApp_appType :: Lens.Lens' DescribeApp AppType
describeApp_appType = Lens.lens (\DescribeApp' {appType} -> appType) (\s@DescribeApp' {} a -> s {appType = a} :: DescribeApp)

-- | The name of the app.
describeApp_appName :: Lens.Lens' DescribeApp Prelude.Text
describeApp_appName = Lens.lens (\DescribeApp' {appName} -> appName) (\s@DescribeApp' {} a -> s {appName = a} :: DescribeApp)

instance Core.AWSRequest DescribeApp where
  type AWSResponse DescribeApp = DescribeAppResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAppResponse'
            Prelude.<$> (x Core..?> "ResourceSpec")
            Prelude.<*> (x Core..?> "AppName")
            Prelude.<*> (x Core..?> "AppType")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "AppArn")
            Prelude.<*> (x Core..?> "LastUserActivityTimestamp")
            Prelude.<*> (x Core..?> "UserProfileName")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "DomainId")
            Prelude.<*> (x Core..?> "LastHealthCheckTimestamp")
            Prelude.<*> (x Core..?> "FailureReason")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeApp where
  hashWithSalt _salt DescribeApp' {..} =
    _salt `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` userProfileName
      `Prelude.hashWithSalt` appType
      `Prelude.hashWithSalt` appName

instance Prelude.NFData DescribeApp where
  rnf DescribeApp' {..} =
    Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf userProfileName
      `Prelude.seq` Prelude.rnf appType
      `Prelude.seq` Prelude.rnf appName

instance Core.ToHeaders DescribeApp where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.DescribeApp" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeApp where
  toJSON DescribeApp' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DomainId" Core..= domainId),
            Prelude.Just
              ("UserProfileName" Core..= userProfileName),
            Prelude.Just ("AppType" Core..= appType),
            Prelude.Just ("AppName" Core..= appName)
          ]
      )

instance Core.ToPath DescribeApp where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeApp where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAppResponse' smart constructor.
data DescribeAppResponse = DescribeAppResponse'
  { -- | The instance type and the Amazon Resource Name (ARN) of the SageMaker
    -- image created on the instance.
    resourceSpec :: Prelude.Maybe ResourceSpec,
    -- | The name of the app.
    appName :: Prelude.Maybe Prelude.Text,
    -- | The type of app.
    appType :: Prelude.Maybe AppType,
    -- | The status.
    status :: Prelude.Maybe AppStatus,
    -- | The Amazon Resource Name (ARN) of the app.
    appArn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the last user\'s activity. @LastUserActivityTimestamp@
    -- is also updated when SageMaker performs health checks without user
    -- activity. As a result, this value is set to the same value as
    -- @LastHealthCheckTimestamp@.
    lastUserActivityTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The user profile name.
    userProfileName :: Prelude.Maybe Prelude.Text,
    -- | The creation time.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The domain ID.
    domainId :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the last health check.
    lastHealthCheckTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The failure reason.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceSpec', 'describeAppResponse_resourceSpec' - The instance type and the Amazon Resource Name (ARN) of the SageMaker
-- image created on the instance.
--
-- 'appName', 'describeAppResponse_appName' - The name of the app.
--
-- 'appType', 'describeAppResponse_appType' - The type of app.
--
-- 'status', 'describeAppResponse_status' - The status.
--
-- 'appArn', 'describeAppResponse_appArn' - The Amazon Resource Name (ARN) of the app.
--
-- 'lastUserActivityTimestamp', 'describeAppResponse_lastUserActivityTimestamp' - The timestamp of the last user\'s activity. @LastUserActivityTimestamp@
-- is also updated when SageMaker performs health checks without user
-- activity. As a result, this value is set to the same value as
-- @LastHealthCheckTimestamp@.
--
-- 'userProfileName', 'describeAppResponse_userProfileName' - The user profile name.
--
-- 'creationTime', 'describeAppResponse_creationTime' - The creation time.
--
-- 'domainId', 'describeAppResponse_domainId' - The domain ID.
--
-- 'lastHealthCheckTimestamp', 'describeAppResponse_lastHealthCheckTimestamp' - The timestamp of the last health check.
--
-- 'failureReason', 'describeAppResponse_failureReason' - The failure reason.
--
-- 'httpStatus', 'describeAppResponse_httpStatus' - The response's http status code.
newDescribeAppResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAppResponse
newDescribeAppResponse pHttpStatus_ =
  DescribeAppResponse'
    { resourceSpec =
        Prelude.Nothing,
      appName = Prelude.Nothing,
      appType = Prelude.Nothing,
      status = Prelude.Nothing,
      appArn = Prelude.Nothing,
      lastUserActivityTimestamp = Prelude.Nothing,
      userProfileName = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      domainId = Prelude.Nothing,
      lastHealthCheckTimestamp = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The instance type and the Amazon Resource Name (ARN) of the SageMaker
-- image created on the instance.
describeAppResponse_resourceSpec :: Lens.Lens' DescribeAppResponse (Prelude.Maybe ResourceSpec)
describeAppResponse_resourceSpec = Lens.lens (\DescribeAppResponse' {resourceSpec} -> resourceSpec) (\s@DescribeAppResponse' {} a -> s {resourceSpec = a} :: DescribeAppResponse)

-- | The name of the app.
describeAppResponse_appName :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.Text)
describeAppResponse_appName = Lens.lens (\DescribeAppResponse' {appName} -> appName) (\s@DescribeAppResponse' {} a -> s {appName = a} :: DescribeAppResponse)

-- | The type of app.
describeAppResponse_appType :: Lens.Lens' DescribeAppResponse (Prelude.Maybe AppType)
describeAppResponse_appType = Lens.lens (\DescribeAppResponse' {appType} -> appType) (\s@DescribeAppResponse' {} a -> s {appType = a} :: DescribeAppResponse)

-- | The status.
describeAppResponse_status :: Lens.Lens' DescribeAppResponse (Prelude.Maybe AppStatus)
describeAppResponse_status = Lens.lens (\DescribeAppResponse' {status} -> status) (\s@DescribeAppResponse' {} a -> s {status = a} :: DescribeAppResponse)

-- | The Amazon Resource Name (ARN) of the app.
describeAppResponse_appArn :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.Text)
describeAppResponse_appArn = Lens.lens (\DescribeAppResponse' {appArn} -> appArn) (\s@DescribeAppResponse' {} a -> s {appArn = a} :: DescribeAppResponse)

-- | The timestamp of the last user\'s activity. @LastUserActivityTimestamp@
-- is also updated when SageMaker performs health checks without user
-- activity. As a result, this value is set to the same value as
-- @LastHealthCheckTimestamp@.
describeAppResponse_lastUserActivityTimestamp :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.UTCTime)
describeAppResponse_lastUserActivityTimestamp = Lens.lens (\DescribeAppResponse' {lastUserActivityTimestamp} -> lastUserActivityTimestamp) (\s@DescribeAppResponse' {} a -> s {lastUserActivityTimestamp = a} :: DescribeAppResponse) Prelude.. Lens.mapping Core._Time

-- | The user profile name.
describeAppResponse_userProfileName :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.Text)
describeAppResponse_userProfileName = Lens.lens (\DescribeAppResponse' {userProfileName} -> userProfileName) (\s@DescribeAppResponse' {} a -> s {userProfileName = a} :: DescribeAppResponse)

-- | The creation time.
describeAppResponse_creationTime :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.UTCTime)
describeAppResponse_creationTime = Lens.lens (\DescribeAppResponse' {creationTime} -> creationTime) (\s@DescribeAppResponse' {} a -> s {creationTime = a} :: DescribeAppResponse) Prelude.. Lens.mapping Core._Time

-- | The domain ID.
describeAppResponse_domainId :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.Text)
describeAppResponse_domainId = Lens.lens (\DescribeAppResponse' {domainId} -> domainId) (\s@DescribeAppResponse' {} a -> s {domainId = a} :: DescribeAppResponse)

-- | The timestamp of the last health check.
describeAppResponse_lastHealthCheckTimestamp :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.UTCTime)
describeAppResponse_lastHealthCheckTimestamp = Lens.lens (\DescribeAppResponse' {lastHealthCheckTimestamp} -> lastHealthCheckTimestamp) (\s@DescribeAppResponse' {} a -> s {lastHealthCheckTimestamp = a} :: DescribeAppResponse) Prelude.. Lens.mapping Core._Time

-- | The failure reason.
describeAppResponse_failureReason :: Lens.Lens' DescribeAppResponse (Prelude.Maybe Prelude.Text)
describeAppResponse_failureReason = Lens.lens (\DescribeAppResponse' {failureReason} -> failureReason) (\s@DescribeAppResponse' {} a -> s {failureReason = a} :: DescribeAppResponse)

-- | The response's http status code.
describeAppResponse_httpStatus :: Lens.Lens' DescribeAppResponse Prelude.Int
describeAppResponse_httpStatus = Lens.lens (\DescribeAppResponse' {httpStatus} -> httpStatus) (\s@DescribeAppResponse' {} a -> s {httpStatus = a} :: DescribeAppResponse)

instance Prelude.NFData DescribeAppResponse where
  rnf DescribeAppResponse' {..} =
    Prelude.rnf resourceSpec
      `Prelude.seq` Prelude.rnf appName
      `Prelude.seq` Prelude.rnf appType
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf appArn
      `Prelude.seq` Prelude.rnf lastUserActivityTimestamp
      `Prelude.seq` Prelude.rnf userProfileName
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf lastHealthCheckTimestamp
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf httpStatus
