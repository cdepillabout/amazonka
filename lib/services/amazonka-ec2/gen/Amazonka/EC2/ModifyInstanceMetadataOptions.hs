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
-- Module      : Amazonka.EC2.ModifyInstanceMetadataOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the instance metadata parameters on a running or stopped
-- instance. When you modify the parameters on a stopped instance, they are
-- applied when the instance is started. When you modify the parameters on
-- a running instance, the API responds with a state of “pending”. After
-- the parameter modifications are successfully applied to the instance,
-- the state of the modifications changes from “pending” to “applied” in
-- subsequent describe-instances API calls. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data>
-- in the /Amazon EC2 User Guide/.
module Amazonka.EC2.ModifyInstanceMetadataOptions
  ( -- * Creating a Request
    ModifyInstanceMetadataOptions (..),
    newModifyInstanceMetadataOptions,

    -- * Request Lenses
    modifyInstanceMetadataOptions_httpPutResponseHopLimit,
    modifyInstanceMetadataOptions_httpTokens,
    modifyInstanceMetadataOptions_httpEndpoint,
    modifyInstanceMetadataOptions_dryRun,
    modifyInstanceMetadataOptions_instanceMetadataTags,
    modifyInstanceMetadataOptions_httpProtocolIpv6,
    modifyInstanceMetadataOptions_instanceId,

    -- * Destructuring the Response
    ModifyInstanceMetadataOptionsResponse (..),
    newModifyInstanceMetadataOptionsResponse,

    -- * Response Lenses
    modifyInstanceMetadataOptionsResponse_instanceId,
    modifyInstanceMetadataOptionsResponse_instanceMetadataOptions,
    modifyInstanceMetadataOptionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newModifyInstanceMetadataOptions' smart constructor.
data ModifyInstanceMetadataOptions = ModifyInstanceMetadataOptions'
  { -- | The desired HTTP PUT response hop limit for instance metadata requests.
    -- The larger the number, the further instance metadata requests can
    -- travel. If no parameter is specified, the existing state is maintained.
    --
    -- Possible values: Integers from 1 to 64
    httpPutResponseHopLimit :: Prelude.Maybe Prelude.Int,
    -- | The state of token usage for your instance metadata requests. If the
    -- parameter is not specified in the request, the default state is
    -- @optional@.
    --
    -- If the state is @optional@, you can choose to retrieve instance metadata
    -- with or without a signed token header on your request. If you retrieve
    -- the IAM role credentials without a token, the version 1.0 role
    -- credentials are returned. If you retrieve the IAM role credentials using
    -- a valid signed token, the version 2.0 role credentials are returned.
    --
    -- If the state is @required@, you must send a signed token header with any
    -- instance metadata retrieval requests. In this state, retrieving the IAM
    -- role credential always returns the version 2.0 credentials; the version
    -- 1.0 credentials are not available.
    httpTokens :: Prelude.Maybe HttpTokensState,
    -- | Enables or disables the HTTP metadata endpoint on your instances. If
    -- this parameter is not specified, the existing state is maintained.
    --
    -- If you specify a value of @disabled@, you cannot access your instance
    -- metadata.
    httpEndpoint :: Prelude.Maybe InstanceMetadataEndpointState,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Set to @enabled@ to allow access to instance tags from the instance
    -- metadata. Set to @disabled@ to turn off access to instance tags from the
    -- instance metadata. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS Work with instance tags using the instance metadata>.
    --
    -- Default: @disabled@
    instanceMetadataTags :: Prelude.Maybe InstanceMetadataTagsState,
    -- | Enables or disables the IPv6 endpoint for the instance metadata service.
    -- This setting applies only if you have enabled the HTTP metadata
    -- endpoint.
    httpProtocolIpv6 :: Prelude.Maybe InstanceMetadataProtocolState,
    -- | The ID of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyInstanceMetadataOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpPutResponseHopLimit', 'modifyInstanceMetadataOptions_httpPutResponseHopLimit' - The desired HTTP PUT response hop limit for instance metadata requests.
-- The larger the number, the further instance metadata requests can
-- travel. If no parameter is specified, the existing state is maintained.
--
-- Possible values: Integers from 1 to 64
--
-- 'httpTokens', 'modifyInstanceMetadataOptions_httpTokens' - The state of token usage for your instance metadata requests. If the
-- parameter is not specified in the request, the default state is
-- @optional@.
--
-- If the state is @optional@, you can choose to retrieve instance metadata
-- with or without a signed token header on your request. If you retrieve
-- the IAM role credentials without a token, the version 1.0 role
-- credentials are returned. If you retrieve the IAM role credentials using
-- a valid signed token, the version 2.0 role credentials are returned.
--
-- If the state is @required@, you must send a signed token header with any
-- instance metadata retrieval requests. In this state, retrieving the IAM
-- role credential always returns the version 2.0 credentials; the version
-- 1.0 credentials are not available.
--
-- 'httpEndpoint', 'modifyInstanceMetadataOptions_httpEndpoint' - Enables or disables the HTTP metadata endpoint on your instances. If
-- this parameter is not specified, the existing state is maintained.
--
-- If you specify a value of @disabled@, you cannot access your instance
-- metadata.
--
-- 'dryRun', 'modifyInstanceMetadataOptions_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'instanceMetadataTags', 'modifyInstanceMetadataOptions_instanceMetadataTags' - Set to @enabled@ to allow access to instance tags from the instance
-- metadata. Set to @disabled@ to turn off access to instance tags from the
-- instance metadata. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS Work with instance tags using the instance metadata>.
--
-- Default: @disabled@
--
-- 'httpProtocolIpv6', 'modifyInstanceMetadataOptions_httpProtocolIpv6' - Enables or disables the IPv6 endpoint for the instance metadata service.
-- This setting applies only if you have enabled the HTTP metadata
-- endpoint.
--
-- 'instanceId', 'modifyInstanceMetadataOptions_instanceId' - The ID of the instance.
newModifyInstanceMetadataOptions ::
  -- | 'instanceId'
  Prelude.Text ->
  ModifyInstanceMetadataOptions
newModifyInstanceMetadataOptions pInstanceId_ =
  ModifyInstanceMetadataOptions'
    { httpPutResponseHopLimit =
        Prelude.Nothing,
      httpTokens = Prelude.Nothing,
      httpEndpoint = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      instanceMetadataTags = Prelude.Nothing,
      httpProtocolIpv6 = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The desired HTTP PUT response hop limit for instance metadata requests.
-- The larger the number, the further instance metadata requests can
-- travel. If no parameter is specified, the existing state is maintained.
--
-- Possible values: Integers from 1 to 64
modifyInstanceMetadataOptions_httpPutResponseHopLimit :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe Prelude.Int)
modifyInstanceMetadataOptions_httpPutResponseHopLimit = Lens.lens (\ModifyInstanceMetadataOptions' {httpPutResponseHopLimit} -> httpPutResponseHopLimit) (\s@ModifyInstanceMetadataOptions' {} a -> s {httpPutResponseHopLimit = a} :: ModifyInstanceMetadataOptions)

-- | The state of token usage for your instance metadata requests. If the
-- parameter is not specified in the request, the default state is
-- @optional@.
--
-- If the state is @optional@, you can choose to retrieve instance metadata
-- with or without a signed token header on your request. If you retrieve
-- the IAM role credentials without a token, the version 1.0 role
-- credentials are returned. If you retrieve the IAM role credentials using
-- a valid signed token, the version 2.0 role credentials are returned.
--
-- If the state is @required@, you must send a signed token header with any
-- instance metadata retrieval requests. In this state, retrieving the IAM
-- role credential always returns the version 2.0 credentials; the version
-- 1.0 credentials are not available.
modifyInstanceMetadataOptions_httpTokens :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe HttpTokensState)
modifyInstanceMetadataOptions_httpTokens = Lens.lens (\ModifyInstanceMetadataOptions' {httpTokens} -> httpTokens) (\s@ModifyInstanceMetadataOptions' {} a -> s {httpTokens = a} :: ModifyInstanceMetadataOptions)

-- | Enables or disables the HTTP metadata endpoint on your instances. If
-- this parameter is not specified, the existing state is maintained.
--
-- If you specify a value of @disabled@, you cannot access your instance
-- metadata.
modifyInstanceMetadataOptions_httpEndpoint :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe InstanceMetadataEndpointState)
modifyInstanceMetadataOptions_httpEndpoint = Lens.lens (\ModifyInstanceMetadataOptions' {httpEndpoint} -> httpEndpoint) (\s@ModifyInstanceMetadataOptions' {} a -> s {httpEndpoint = a} :: ModifyInstanceMetadataOptions)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
modifyInstanceMetadataOptions_dryRun :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe Prelude.Bool)
modifyInstanceMetadataOptions_dryRun = Lens.lens (\ModifyInstanceMetadataOptions' {dryRun} -> dryRun) (\s@ModifyInstanceMetadataOptions' {} a -> s {dryRun = a} :: ModifyInstanceMetadataOptions)

-- | Set to @enabled@ to allow access to instance tags from the instance
-- metadata. Set to @disabled@ to turn off access to instance tags from the
-- instance metadata. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS Work with instance tags using the instance metadata>.
--
-- Default: @disabled@
modifyInstanceMetadataOptions_instanceMetadataTags :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe InstanceMetadataTagsState)
modifyInstanceMetadataOptions_instanceMetadataTags = Lens.lens (\ModifyInstanceMetadataOptions' {instanceMetadataTags} -> instanceMetadataTags) (\s@ModifyInstanceMetadataOptions' {} a -> s {instanceMetadataTags = a} :: ModifyInstanceMetadataOptions)

-- | Enables or disables the IPv6 endpoint for the instance metadata service.
-- This setting applies only if you have enabled the HTTP metadata
-- endpoint.
modifyInstanceMetadataOptions_httpProtocolIpv6 :: Lens.Lens' ModifyInstanceMetadataOptions (Prelude.Maybe InstanceMetadataProtocolState)
modifyInstanceMetadataOptions_httpProtocolIpv6 = Lens.lens (\ModifyInstanceMetadataOptions' {httpProtocolIpv6} -> httpProtocolIpv6) (\s@ModifyInstanceMetadataOptions' {} a -> s {httpProtocolIpv6 = a} :: ModifyInstanceMetadataOptions)

-- | The ID of the instance.
modifyInstanceMetadataOptions_instanceId :: Lens.Lens' ModifyInstanceMetadataOptions Prelude.Text
modifyInstanceMetadataOptions_instanceId = Lens.lens (\ModifyInstanceMetadataOptions' {instanceId} -> instanceId) (\s@ModifyInstanceMetadataOptions' {} a -> s {instanceId = a} :: ModifyInstanceMetadataOptions)

instance
  Core.AWSRequest
    ModifyInstanceMetadataOptions
  where
  type
    AWSResponse ModifyInstanceMetadataOptions =
      ModifyInstanceMetadataOptionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ModifyInstanceMetadataOptionsResponse'
            Prelude.<$> (x Core..@? "instanceId")
            Prelude.<*> (x Core..@? "instanceMetadataOptions")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ModifyInstanceMetadataOptions
  where
  hashWithSalt _salt ModifyInstanceMetadataOptions' {..} =
    _salt
      `Prelude.hashWithSalt` httpPutResponseHopLimit
      `Prelude.hashWithSalt` httpTokens
      `Prelude.hashWithSalt` httpEndpoint
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` instanceMetadataTags
      `Prelude.hashWithSalt` httpProtocolIpv6
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData ModifyInstanceMetadataOptions where
  rnf ModifyInstanceMetadataOptions' {..} =
    Prelude.rnf httpPutResponseHopLimit
      `Prelude.seq` Prelude.rnf httpTokens
      `Prelude.seq` Prelude.rnf httpEndpoint
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf instanceMetadataTags
      `Prelude.seq` Prelude.rnf httpProtocolIpv6
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders ModifyInstanceMetadataOptions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyInstanceMetadataOptions where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyInstanceMetadataOptions where
  toQuery ModifyInstanceMetadataOptions' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ModifyInstanceMetadataOptions" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "HttpPutResponseHopLimit"
          Core.=: httpPutResponseHopLimit,
        "HttpTokens" Core.=: httpTokens,
        "HttpEndpoint" Core.=: httpEndpoint,
        "DryRun" Core.=: dryRun,
        "InstanceMetadataTags" Core.=: instanceMetadataTags,
        "HttpProtocolIpv6" Core.=: httpProtocolIpv6,
        "InstanceId" Core.=: instanceId
      ]

-- | /See:/ 'newModifyInstanceMetadataOptionsResponse' smart constructor.
data ModifyInstanceMetadataOptionsResponse = ModifyInstanceMetadataOptionsResponse'
  { -- | The ID of the instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The metadata options for the instance.
    instanceMetadataOptions :: Prelude.Maybe InstanceMetadataOptionsResponse,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyInstanceMetadataOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'modifyInstanceMetadataOptionsResponse_instanceId' - The ID of the instance.
--
-- 'instanceMetadataOptions', 'modifyInstanceMetadataOptionsResponse_instanceMetadataOptions' - The metadata options for the instance.
--
-- 'httpStatus', 'modifyInstanceMetadataOptionsResponse_httpStatus' - The response's http status code.
newModifyInstanceMetadataOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyInstanceMetadataOptionsResponse
newModifyInstanceMetadataOptionsResponse pHttpStatus_ =
  ModifyInstanceMetadataOptionsResponse'
    { instanceId =
        Prelude.Nothing,
      instanceMetadataOptions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the instance.
modifyInstanceMetadataOptionsResponse_instanceId :: Lens.Lens' ModifyInstanceMetadataOptionsResponse (Prelude.Maybe Prelude.Text)
modifyInstanceMetadataOptionsResponse_instanceId = Lens.lens (\ModifyInstanceMetadataOptionsResponse' {instanceId} -> instanceId) (\s@ModifyInstanceMetadataOptionsResponse' {} a -> s {instanceId = a} :: ModifyInstanceMetadataOptionsResponse)

-- | The metadata options for the instance.
modifyInstanceMetadataOptionsResponse_instanceMetadataOptions :: Lens.Lens' ModifyInstanceMetadataOptionsResponse (Prelude.Maybe InstanceMetadataOptionsResponse)
modifyInstanceMetadataOptionsResponse_instanceMetadataOptions = Lens.lens (\ModifyInstanceMetadataOptionsResponse' {instanceMetadataOptions} -> instanceMetadataOptions) (\s@ModifyInstanceMetadataOptionsResponse' {} a -> s {instanceMetadataOptions = a} :: ModifyInstanceMetadataOptionsResponse)

-- | The response's http status code.
modifyInstanceMetadataOptionsResponse_httpStatus :: Lens.Lens' ModifyInstanceMetadataOptionsResponse Prelude.Int
modifyInstanceMetadataOptionsResponse_httpStatus = Lens.lens (\ModifyInstanceMetadataOptionsResponse' {httpStatus} -> httpStatus) (\s@ModifyInstanceMetadataOptionsResponse' {} a -> s {httpStatus = a} :: ModifyInstanceMetadataOptionsResponse)

instance
  Prelude.NFData
    ModifyInstanceMetadataOptionsResponse
  where
  rnf ModifyInstanceMetadataOptionsResponse' {..} =
    Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf instanceMetadataOptions
      `Prelude.seq` Prelude.rnf httpStatus
