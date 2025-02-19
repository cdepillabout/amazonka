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
-- Module      : Amazonka.IoTWireless.StartBulkDisassociateWirelessDeviceFromMulticastGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a bulk disassociatin of all qualifying wireless devices from a
-- multicast group.
module Amazonka.IoTWireless.StartBulkDisassociateWirelessDeviceFromMulticastGroup
  ( -- * Creating a Request
    StartBulkDisassociateWirelessDeviceFromMulticastGroup (..),
    newStartBulkDisassociateWirelessDeviceFromMulticastGroup,

    -- * Request Lenses
    startBulkDisassociateWirelessDeviceFromMulticastGroup_tags,
    startBulkDisassociateWirelessDeviceFromMulticastGroup_queryString,
    startBulkDisassociateWirelessDeviceFromMulticastGroup_id,

    -- * Destructuring the Response
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse (..),
    newStartBulkDisassociateWirelessDeviceFromMulticastGroupResponse,

    -- * Response Lenses
    startBulkDisassociateWirelessDeviceFromMulticastGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartBulkDisassociateWirelessDeviceFromMulticastGroup' smart constructor.
data StartBulkDisassociateWirelessDeviceFromMulticastGroup = StartBulkDisassociateWirelessDeviceFromMulticastGroup'
  { tags :: Prelude.Maybe [Tag],
    queryString :: Prelude.Maybe Prelude.Text,
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartBulkDisassociateWirelessDeviceFromMulticastGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'startBulkDisassociateWirelessDeviceFromMulticastGroup_tags' - Undocumented member.
--
-- 'queryString', 'startBulkDisassociateWirelessDeviceFromMulticastGroup_queryString' - Undocumented member.
--
-- 'id', 'startBulkDisassociateWirelessDeviceFromMulticastGroup_id' - Undocumented member.
newStartBulkDisassociateWirelessDeviceFromMulticastGroup ::
  -- | 'id'
  Prelude.Text ->
  StartBulkDisassociateWirelessDeviceFromMulticastGroup
newStartBulkDisassociateWirelessDeviceFromMulticastGroup
  pId_ =
    StartBulkDisassociateWirelessDeviceFromMulticastGroup'
      { tags =
          Prelude.Nothing,
        queryString =
          Prelude.Nothing,
        id = pId_
      }

-- | Undocumented member.
startBulkDisassociateWirelessDeviceFromMulticastGroup_tags :: Lens.Lens' StartBulkDisassociateWirelessDeviceFromMulticastGroup (Prelude.Maybe [Tag])
startBulkDisassociateWirelessDeviceFromMulticastGroup_tags = Lens.lens (\StartBulkDisassociateWirelessDeviceFromMulticastGroup' {tags} -> tags) (\s@StartBulkDisassociateWirelessDeviceFromMulticastGroup' {} a -> s {tags = a} :: StartBulkDisassociateWirelessDeviceFromMulticastGroup) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
startBulkDisassociateWirelessDeviceFromMulticastGroup_queryString :: Lens.Lens' StartBulkDisassociateWirelessDeviceFromMulticastGroup (Prelude.Maybe Prelude.Text)
startBulkDisassociateWirelessDeviceFromMulticastGroup_queryString = Lens.lens (\StartBulkDisassociateWirelessDeviceFromMulticastGroup' {queryString} -> queryString) (\s@StartBulkDisassociateWirelessDeviceFromMulticastGroup' {} a -> s {queryString = a} :: StartBulkDisassociateWirelessDeviceFromMulticastGroup)

-- | Undocumented member.
startBulkDisassociateWirelessDeviceFromMulticastGroup_id :: Lens.Lens' StartBulkDisassociateWirelessDeviceFromMulticastGroup Prelude.Text
startBulkDisassociateWirelessDeviceFromMulticastGroup_id = Lens.lens (\StartBulkDisassociateWirelessDeviceFromMulticastGroup' {id} -> id) (\s@StartBulkDisassociateWirelessDeviceFromMulticastGroup' {} a -> s {id = a} :: StartBulkDisassociateWirelessDeviceFromMulticastGroup)

instance
  Core.AWSRequest
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  type
    AWSResponse
      StartBulkDisassociateWirelessDeviceFromMulticastGroup =
      StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  hashWithSalt
    _salt
    StartBulkDisassociateWirelessDeviceFromMulticastGroup' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` queryString
        `Prelude.hashWithSalt` id

instance
  Prelude.NFData
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  rnf
    StartBulkDisassociateWirelessDeviceFromMulticastGroup' {..} =
      Prelude.rnf tags
        `Prelude.seq` Prelude.rnf queryString
        `Prelude.seq` Prelude.rnf id

instance
  Core.ToHeaders
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  toJSON
    StartBulkDisassociateWirelessDeviceFromMulticastGroup' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Tags" Core..=) Prelude.<$> tags,
              ("QueryString" Core..=) Prelude.<$> queryString
            ]
        )

instance
  Core.ToPath
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  toPath
    StartBulkDisassociateWirelessDeviceFromMulticastGroup' {..} =
      Prelude.mconcat
        ["/multicast-groups/", Core.toBS id, "/bulk"]

instance
  Core.ToQuery
    StartBulkDisassociateWirelessDeviceFromMulticastGroup
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartBulkDisassociateWirelessDeviceFromMulticastGroupResponse' smart constructor.
data StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse = StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startBulkDisassociateWirelessDeviceFromMulticastGroupResponse_httpStatus' - The response's http status code.
newStartBulkDisassociateWirelessDeviceFromMulticastGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
newStartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
  pHttpStatus_ =
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
startBulkDisassociateWirelessDeviceFromMulticastGroupResponse_httpStatus :: Lens.Lens' StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse Prelude.Int
startBulkDisassociateWirelessDeviceFromMulticastGroupResponse_httpStatus = Lens.lens (\StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse' {httpStatus} -> httpStatus) (\s@StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse' {} a -> s {httpStatus = a} :: StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse)

instance
  Prelude.NFData
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
  where
  rnf
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse' {..} =
      Prelude.rnf httpStatus
