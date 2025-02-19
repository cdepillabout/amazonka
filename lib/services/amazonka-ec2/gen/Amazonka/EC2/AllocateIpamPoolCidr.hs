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
-- Module      : Amazonka.EC2.AllocateIpamPoolCidr
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allocate a CIDR from an IPAM pool. In IPAM, an allocation is a CIDR
-- assignment from an IPAM pool to another resource or IPAM pool. For more
-- information, see
-- <https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html Allocate CIDRs>
-- in the /Amazon VPC IPAM User Guide/.
module Amazonka.EC2.AllocateIpamPoolCidr
  ( -- * Creating a Request
    AllocateIpamPoolCidr (..),
    newAllocateIpamPoolCidr,

    -- * Request Lenses
    allocateIpamPoolCidr_clientToken,
    allocateIpamPoolCidr_previewNextCidr,
    allocateIpamPoolCidr_cidr,
    allocateIpamPoolCidr_netmaskLength,
    allocateIpamPoolCidr_description,
    allocateIpamPoolCidr_dryRun,
    allocateIpamPoolCidr_disallowedCidrs,
    allocateIpamPoolCidr_ipamPoolId,

    -- * Destructuring the Response
    AllocateIpamPoolCidrResponse (..),
    newAllocateIpamPoolCidrResponse,

    -- * Response Lenses
    allocateIpamPoolCidrResponse_ipamPoolAllocation,
    allocateIpamPoolCidrResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newAllocateIpamPoolCidr' smart constructor.
data AllocateIpamPoolCidr = AllocateIpamPoolCidr'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A preview of the next available CIDR in a pool.
    previewNextCidr :: Prelude.Maybe Prelude.Bool,
    -- | The CIDR you would like to allocate from the IPAM pool. Note the
    -- following:
    --
    -- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
    --     you must specify either the NetmaskLength or the CIDR.
    --
    -- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
    --     can specify either the NetmaskLength or the CIDR and the
    --     DefaultNetmaskLength allocation rule will be ignored.
    --
    -- Possible values: Any available IPv4 or IPv6 CIDR.
    cidr :: Prelude.Maybe Prelude.Text,
    -- | The netmask length of the CIDR you would like to allocate from the IPAM
    -- pool. Note the following:
    --
    -- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
    --     you must specify either the NetmaskLength or the CIDR.
    --
    -- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
    --     can specify either the NetmaskLength or the CIDR and the
    --     DefaultNetmaskLength allocation rule will be ignored.
    --
    -- Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask
    -- lengths for IPv6 addresses are 0 - 128.
    netmaskLength :: Prelude.Maybe Prelude.Int,
    -- | A description for the allocation.
    description :: Prelude.Maybe Prelude.Text,
    -- | A check for whether you have the required permissions for the action
    -- without actually making the request and provides an error response. If
    -- you have the required permissions, the error response is
    -- @DryRunOperation@. Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Exclude a particular CIDR range from being returned by the pool.
    disallowedCidrs :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the IPAM pool from which you would like to allocate a CIDR.
    ipamPoolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AllocateIpamPoolCidr' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'allocateIpamPoolCidr_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
--
-- 'previewNextCidr', 'allocateIpamPoolCidr_previewNextCidr' - A preview of the next available CIDR in a pool.
--
-- 'cidr', 'allocateIpamPoolCidr_cidr' - The CIDR you would like to allocate from the IPAM pool. Note the
-- following:
--
-- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
--     you must specify either the NetmaskLength or the CIDR.
--
-- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
--     can specify either the NetmaskLength or the CIDR and the
--     DefaultNetmaskLength allocation rule will be ignored.
--
-- Possible values: Any available IPv4 or IPv6 CIDR.
--
-- 'netmaskLength', 'allocateIpamPoolCidr_netmaskLength' - The netmask length of the CIDR you would like to allocate from the IPAM
-- pool. Note the following:
--
-- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
--     you must specify either the NetmaskLength or the CIDR.
--
-- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
--     can specify either the NetmaskLength or the CIDR and the
--     DefaultNetmaskLength allocation rule will be ignored.
--
-- Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask
-- lengths for IPv6 addresses are 0 - 128.
--
-- 'description', 'allocateIpamPoolCidr_description' - A description for the allocation.
--
-- 'dryRun', 'allocateIpamPoolCidr_dryRun' - A check for whether you have the required permissions for the action
-- without actually making the request and provides an error response. If
-- you have the required permissions, the error response is
-- @DryRunOperation@. Otherwise, it is @UnauthorizedOperation@.
--
-- 'disallowedCidrs', 'allocateIpamPoolCidr_disallowedCidrs' - Exclude a particular CIDR range from being returned by the pool.
--
-- 'ipamPoolId', 'allocateIpamPoolCidr_ipamPoolId' - The ID of the IPAM pool from which you would like to allocate a CIDR.
newAllocateIpamPoolCidr ::
  -- | 'ipamPoolId'
  Prelude.Text ->
  AllocateIpamPoolCidr
newAllocateIpamPoolCidr pIpamPoolId_ =
  AllocateIpamPoolCidr'
    { clientToken =
        Prelude.Nothing,
      previewNextCidr = Prelude.Nothing,
      cidr = Prelude.Nothing,
      netmaskLength = Prelude.Nothing,
      description = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      disallowedCidrs = Prelude.Nothing,
      ipamPoolId = pIpamPoolId_
    }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
allocateIpamPoolCidr_clientToken :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Text)
allocateIpamPoolCidr_clientToken = Lens.lens (\AllocateIpamPoolCidr' {clientToken} -> clientToken) (\s@AllocateIpamPoolCidr' {} a -> s {clientToken = a} :: AllocateIpamPoolCidr)

-- | A preview of the next available CIDR in a pool.
allocateIpamPoolCidr_previewNextCidr :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Bool)
allocateIpamPoolCidr_previewNextCidr = Lens.lens (\AllocateIpamPoolCidr' {previewNextCidr} -> previewNextCidr) (\s@AllocateIpamPoolCidr' {} a -> s {previewNextCidr = a} :: AllocateIpamPoolCidr)

-- | The CIDR you would like to allocate from the IPAM pool. Note the
-- following:
--
-- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
--     you must specify either the NetmaskLength or the CIDR.
--
-- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
--     can specify either the NetmaskLength or the CIDR and the
--     DefaultNetmaskLength allocation rule will be ignored.
--
-- Possible values: Any available IPv4 or IPv6 CIDR.
allocateIpamPoolCidr_cidr :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Text)
allocateIpamPoolCidr_cidr = Lens.lens (\AllocateIpamPoolCidr' {cidr} -> cidr) (\s@AllocateIpamPoolCidr' {} a -> s {cidr = a} :: AllocateIpamPoolCidr)

-- | The netmask length of the CIDR you would like to allocate from the IPAM
-- pool. Note the following:
--
-- -   If there is no DefaultNetmaskLength allocation rule set on the pool,
--     you must specify either the NetmaskLength or the CIDR.
--
-- -   If the DefaultNetmaskLength allocation rule is set on the pool, you
--     can specify either the NetmaskLength or the CIDR and the
--     DefaultNetmaskLength allocation rule will be ignored.
--
-- Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask
-- lengths for IPv6 addresses are 0 - 128.
allocateIpamPoolCidr_netmaskLength :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Int)
allocateIpamPoolCidr_netmaskLength = Lens.lens (\AllocateIpamPoolCidr' {netmaskLength} -> netmaskLength) (\s@AllocateIpamPoolCidr' {} a -> s {netmaskLength = a} :: AllocateIpamPoolCidr)

-- | A description for the allocation.
allocateIpamPoolCidr_description :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Text)
allocateIpamPoolCidr_description = Lens.lens (\AllocateIpamPoolCidr' {description} -> description) (\s@AllocateIpamPoolCidr' {} a -> s {description = a} :: AllocateIpamPoolCidr)

-- | A check for whether you have the required permissions for the action
-- without actually making the request and provides an error response. If
-- you have the required permissions, the error response is
-- @DryRunOperation@. Otherwise, it is @UnauthorizedOperation@.
allocateIpamPoolCidr_dryRun :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe Prelude.Bool)
allocateIpamPoolCidr_dryRun = Lens.lens (\AllocateIpamPoolCidr' {dryRun} -> dryRun) (\s@AllocateIpamPoolCidr' {} a -> s {dryRun = a} :: AllocateIpamPoolCidr)

-- | Exclude a particular CIDR range from being returned by the pool.
allocateIpamPoolCidr_disallowedCidrs :: Lens.Lens' AllocateIpamPoolCidr (Prelude.Maybe [Prelude.Text])
allocateIpamPoolCidr_disallowedCidrs = Lens.lens (\AllocateIpamPoolCidr' {disallowedCidrs} -> disallowedCidrs) (\s@AllocateIpamPoolCidr' {} a -> s {disallowedCidrs = a} :: AllocateIpamPoolCidr) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the IPAM pool from which you would like to allocate a CIDR.
allocateIpamPoolCidr_ipamPoolId :: Lens.Lens' AllocateIpamPoolCidr Prelude.Text
allocateIpamPoolCidr_ipamPoolId = Lens.lens (\AllocateIpamPoolCidr' {ipamPoolId} -> ipamPoolId) (\s@AllocateIpamPoolCidr' {} a -> s {ipamPoolId = a} :: AllocateIpamPoolCidr)

instance Core.AWSRequest AllocateIpamPoolCidr where
  type
    AWSResponse AllocateIpamPoolCidr =
      AllocateIpamPoolCidrResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          AllocateIpamPoolCidrResponse'
            Prelude.<$> (x Core..@? "ipamPoolAllocation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AllocateIpamPoolCidr where
  hashWithSalt _salt AllocateIpamPoolCidr' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` previewNextCidr
      `Prelude.hashWithSalt` cidr
      `Prelude.hashWithSalt` netmaskLength
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` disallowedCidrs
      `Prelude.hashWithSalt` ipamPoolId

instance Prelude.NFData AllocateIpamPoolCidr where
  rnf AllocateIpamPoolCidr' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf previewNextCidr
      `Prelude.seq` Prelude.rnf cidr
      `Prelude.seq` Prelude.rnf netmaskLength
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf disallowedCidrs
      `Prelude.seq` Prelude.rnf ipamPoolId

instance Core.ToHeaders AllocateIpamPoolCidr where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath AllocateIpamPoolCidr where
  toPath = Prelude.const "/"

instance Core.ToQuery AllocateIpamPoolCidr where
  toQuery AllocateIpamPoolCidr' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("AllocateIpamPoolCidr" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "ClientToken" Core.=: clientToken,
        "PreviewNextCidr" Core.=: previewNextCidr,
        "Cidr" Core.=: cidr,
        "NetmaskLength" Core.=: netmaskLength,
        "Description" Core.=: description,
        "DryRun" Core.=: dryRun,
        Core.toQuery
          ( Core.toQueryList "DisallowedCidr"
              Prelude.<$> disallowedCidrs
          ),
        "IpamPoolId" Core.=: ipamPoolId
      ]

-- | /See:/ 'newAllocateIpamPoolCidrResponse' smart constructor.
data AllocateIpamPoolCidrResponse = AllocateIpamPoolCidrResponse'
  { -- | Information about the allocation created.
    ipamPoolAllocation :: Prelude.Maybe IpamPoolAllocation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AllocateIpamPoolCidrResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipamPoolAllocation', 'allocateIpamPoolCidrResponse_ipamPoolAllocation' - Information about the allocation created.
--
-- 'httpStatus', 'allocateIpamPoolCidrResponse_httpStatus' - The response's http status code.
newAllocateIpamPoolCidrResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AllocateIpamPoolCidrResponse
newAllocateIpamPoolCidrResponse pHttpStatus_ =
  AllocateIpamPoolCidrResponse'
    { ipamPoolAllocation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the allocation created.
allocateIpamPoolCidrResponse_ipamPoolAllocation :: Lens.Lens' AllocateIpamPoolCidrResponse (Prelude.Maybe IpamPoolAllocation)
allocateIpamPoolCidrResponse_ipamPoolAllocation = Lens.lens (\AllocateIpamPoolCidrResponse' {ipamPoolAllocation} -> ipamPoolAllocation) (\s@AllocateIpamPoolCidrResponse' {} a -> s {ipamPoolAllocation = a} :: AllocateIpamPoolCidrResponse)

-- | The response's http status code.
allocateIpamPoolCidrResponse_httpStatus :: Lens.Lens' AllocateIpamPoolCidrResponse Prelude.Int
allocateIpamPoolCidrResponse_httpStatus = Lens.lens (\AllocateIpamPoolCidrResponse' {httpStatus} -> httpStatus) (\s@AllocateIpamPoolCidrResponse' {} a -> s {httpStatus = a} :: AllocateIpamPoolCidrResponse)

instance Prelude.NFData AllocateIpamPoolCidrResponse where
  rnf AllocateIpamPoolCidrResponse' {..} =
    Prelude.rnf ipamPoolAllocation
      `Prelude.seq` Prelude.rnf httpStatus
