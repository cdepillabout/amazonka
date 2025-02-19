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
-- Module      : Amazonka.Connect.UpdateContactFlowMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata about specified flow.
module Amazonka.Connect.UpdateContactFlowMetadata
  ( -- * Creating a Request
    UpdateContactFlowMetadata (..),
    newUpdateContactFlowMetadata,

    -- * Request Lenses
    updateContactFlowMetadata_name,
    updateContactFlowMetadata_contactFlowState,
    updateContactFlowMetadata_description,
    updateContactFlowMetadata_instanceId,
    updateContactFlowMetadata_contactFlowId,

    -- * Destructuring the Response
    UpdateContactFlowMetadataResponse (..),
    newUpdateContactFlowMetadataResponse,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateContactFlowMetadata' smart constructor.
data UpdateContactFlowMetadata = UpdateContactFlowMetadata'
  { -- | TThe name of the flow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The state of flow.
    contactFlowState :: Prelude.Maybe ContactFlowState,
    -- | The description of the flow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text,
    -- | The identifier of the flow.
    contactFlowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContactFlowMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateContactFlowMetadata_name' - TThe name of the flow.
--
-- 'contactFlowState', 'updateContactFlowMetadata_contactFlowState' - The state of flow.
--
-- 'description', 'updateContactFlowMetadata_description' - The description of the flow.
--
-- 'instanceId', 'updateContactFlowMetadata_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'contactFlowId', 'updateContactFlowMetadata_contactFlowId' - The identifier of the flow.
newUpdateContactFlowMetadata ::
  -- | 'instanceId'
  Prelude.Text ->
  -- | 'contactFlowId'
  Prelude.Text ->
  UpdateContactFlowMetadata
newUpdateContactFlowMetadata
  pInstanceId_
  pContactFlowId_ =
    UpdateContactFlowMetadata'
      { name = Prelude.Nothing,
        contactFlowState = Prelude.Nothing,
        description = Prelude.Nothing,
        instanceId = pInstanceId_,
        contactFlowId = pContactFlowId_
      }

-- | TThe name of the flow.
updateContactFlowMetadata_name :: Lens.Lens' UpdateContactFlowMetadata (Prelude.Maybe Prelude.Text)
updateContactFlowMetadata_name = Lens.lens (\UpdateContactFlowMetadata' {name} -> name) (\s@UpdateContactFlowMetadata' {} a -> s {name = a} :: UpdateContactFlowMetadata)

-- | The state of flow.
updateContactFlowMetadata_contactFlowState :: Lens.Lens' UpdateContactFlowMetadata (Prelude.Maybe ContactFlowState)
updateContactFlowMetadata_contactFlowState = Lens.lens (\UpdateContactFlowMetadata' {contactFlowState} -> contactFlowState) (\s@UpdateContactFlowMetadata' {} a -> s {contactFlowState = a} :: UpdateContactFlowMetadata)

-- | The description of the flow.
updateContactFlowMetadata_description :: Lens.Lens' UpdateContactFlowMetadata (Prelude.Maybe Prelude.Text)
updateContactFlowMetadata_description = Lens.lens (\UpdateContactFlowMetadata' {description} -> description) (\s@UpdateContactFlowMetadata' {} a -> s {description = a} :: UpdateContactFlowMetadata)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
updateContactFlowMetadata_instanceId :: Lens.Lens' UpdateContactFlowMetadata Prelude.Text
updateContactFlowMetadata_instanceId = Lens.lens (\UpdateContactFlowMetadata' {instanceId} -> instanceId) (\s@UpdateContactFlowMetadata' {} a -> s {instanceId = a} :: UpdateContactFlowMetadata)

-- | The identifier of the flow.
updateContactFlowMetadata_contactFlowId :: Lens.Lens' UpdateContactFlowMetadata Prelude.Text
updateContactFlowMetadata_contactFlowId = Lens.lens (\UpdateContactFlowMetadata' {contactFlowId} -> contactFlowId) (\s@UpdateContactFlowMetadata' {} a -> s {contactFlowId = a} :: UpdateContactFlowMetadata)

instance Core.AWSRequest UpdateContactFlowMetadata where
  type
    AWSResponse UpdateContactFlowMetadata =
      UpdateContactFlowMetadataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      UpdateContactFlowMetadataResponse'

instance Prelude.Hashable UpdateContactFlowMetadata where
  hashWithSalt _salt UpdateContactFlowMetadata' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` contactFlowState
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` contactFlowId

instance Prelude.NFData UpdateContactFlowMetadata where
  rnf UpdateContactFlowMetadata' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf contactFlowState
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf contactFlowId

instance Core.ToHeaders UpdateContactFlowMetadata where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateContactFlowMetadata where
  toJSON UpdateContactFlowMetadata' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("ContactFlowState" Core..=)
              Prelude.<$> contactFlowState,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateContactFlowMetadata where
  toPath UpdateContactFlowMetadata' {..} =
    Prelude.mconcat
      [ "/contact-flows/",
        Core.toBS instanceId,
        "/",
        Core.toBS contactFlowId,
        "/metadata"
      ]

instance Core.ToQuery UpdateContactFlowMetadata where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateContactFlowMetadataResponse' smart constructor.
data UpdateContactFlowMetadataResponse = UpdateContactFlowMetadataResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContactFlowMetadataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateContactFlowMetadataResponse ::
  UpdateContactFlowMetadataResponse
newUpdateContactFlowMetadataResponse =
  UpdateContactFlowMetadataResponse'

instance
  Prelude.NFData
    UpdateContactFlowMetadataResponse
  where
  rnf _ = ()
