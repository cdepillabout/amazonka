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
-- Module      : Amazonka.Redshift.DeleteEndpointAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Redshift-managed VPC endpoint.
module Amazonka.Redshift.DeleteEndpointAccess
  ( -- * Creating a Request
    DeleteEndpointAccess (..),
    newDeleteEndpointAccess,

    -- * Request Lenses
    deleteEndpointAccess_endpointName,

    -- * Destructuring the Response
    EndpointAccess (..),
    newEndpointAccess,

    -- * Response Lenses
    endpointAccess_port,
    endpointAccess_subnetGroupName,
    endpointAccess_clusterIdentifier,
    endpointAccess_endpointName,
    endpointAccess_resourceOwner,
    endpointAccess_address,
    endpointAccess_endpointStatus,
    endpointAccess_vpcEndpoint,
    endpointAccess_endpointCreateTime,
    endpointAccess_vpcSecurityGroups,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteEndpointAccess' smart constructor.
data DeleteEndpointAccess = DeleteEndpointAccess'
  { -- | The Redshift-managed VPC endpoint to delete.
    endpointName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEndpointAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointName', 'deleteEndpointAccess_endpointName' - The Redshift-managed VPC endpoint to delete.
newDeleteEndpointAccess ::
  -- | 'endpointName'
  Prelude.Text ->
  DeleteEndpointAccess
newDeleteEndpointAccess pEndpointName_ =
  DeleteEndpointAccess'
    { endpointName =
        pEndpointName_
    }

-- | The Redshift-managed VPC endpoint to delete.
deleteEndpointAccess_endpointName :: Lens.Lens' DeleteEndpointAccess Prelude.Text
deleteEndpointAccess_endpointName = Lens.lens (\DeleteEndpointAccess' {endpointName} -> endpointName) (\s@DeleteEndpointAccess' {} a -> s {endpointName = a} :: DeleteEndpointAccess)

instance Core.AWSRequest DeleteEndpointAccess where
  type
    AWSResponse DeleteEndpointAccess =
      EndpointAccess
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteEndpointAccessResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable DeleteEndpointAccess where
  hashWithSalt _salt DeleteEndpointAccess' {..} =
    _salt `Prelude.hashWithSalt` endpointName

instance Prelude.NFData DeleteEndpointAccess where
  rnf DeleteEndpointAccess' {..} =
    Prelude.rnf endpointName

instance Core.ToHeaders DeleteEndpointAccess where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteEndpointAccess where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteEndpointAccess where
  toQuery DeleteEndpointAccess' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteEndpointAccess" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "EndpointName" Core.=: endpointName
      ]
