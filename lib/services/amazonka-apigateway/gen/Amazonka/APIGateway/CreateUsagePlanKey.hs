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
-- Module      : Amazonka.APIGateway.CreateUsagePlanKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a usage plan key for adding an existing API key to a usage plan.
module Amazonka.APIGateway.CreateUsagePlanKey
  ( -- * Creating a Request
    CreateUsagePlanKey (..),
    newCreateUsagePlanKey,

    -- * Request Lenses
    createUsagePlanKey_usagePlanId,
    createUsagePlanKey_keyId,
    createUsagePlanKey_keyType,

    -- * Destructuring the Response
    UsagePlanKey (..),
    newUsagePlanKey,

    -- * Response Lenses
    usagePlanKey_name,
    usagePlanKey_type,
    usagePlanKey_id,
    usagePlanKey_value,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The POST request to create a usage plan key for adding an existing API
-- key to a usage plan.
--
-- /See:/ 'newCreateUsagePlanKey' smart constructor.
data CreateUsagePlanKey = CreateUsagePlanKey'
  { -- | The Id of the UsagePlan resource representing the usage plan containing
    -- the to-be-created UsagePlanKey resource representing a plan customer.
    usagePlanId :: Prelude.Text,
    -- | The identifier of a UsagePlanKey resource for a plan customer.
    keyId :: Prelude.Text,
    -- | The type of a UsagePlanKey resource for a plan customer.
    keyType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateUsagePlanKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'usagePlanId', 'createUsagePlanKey_usagePlanId' - The Id of the UsagePlan resource representing the usage plan containing
-- the to-be-created UsagePlanKey resource representing a plan customer.
--
-- 'keyId', 'createUsagePlanKey_keyId' - The identifier of a UsagePlanKey resource for a plan customer.
--
-- 'keyType', 'createUsagePlanKey_keyType' - The type of a UsagePlanKey resource for a plan customer.
newCreateUsagePlanKey ::
  -- | 'usagePlanId'
  Prelude.Text ->
  -- | 'keyId'
  Prelude.Text ->
  -- | 'keyType'
  Prelude.Text ->
  CreateUsagePlanKey
newCreateUsagePlanKey pUsagePlanId_ pKeyId_ pKeyType_ =
  CreateUsagePlanKey'
    { usagePlanId = pUsagePlanId_,
      keyId = pKeyId_,
      keyType = pKeyType_
    }

-- | The Id of the UsagePlan resource representing the usage plan containing
-- the to-be-created UsagePlanKey resource representing a plan customer.
createUsagePlanKey_usagePlanId :: Lens.Lens' CreateUsagePlanKey Prelude.Text
createUsagePlanKey_usagePlanId = Lens.lens (\CreateUsagePlanKey' {usagePlanId} -> usagePlanId) (\s@CreateUsagePlanKey' {} a -> s {usagePlanId = a} :: CreateUsagePlanKey)

-- | The identifier of a UsagePlanKey resource for a plan customer.
createUsagePlanKey_keyId :: Lens.Lens' CreateUsagePlanKey Prelude.Text
createUsagePlanKey_keyId = Lens.lens (\CreateUsagePlanKey' {keyId} -> keyId) (\s@CreateUsagePlanKey' {} a -> s {keyId = a} :: CreateUsagePlanKey)

-- | The type of a UsagePlanKey resource for a plan customer.
createUsagePlanKey_keyType :: Lens.Lens' CreateUsagePlanKey Prelude.Text
createUsagePlanKey_keyType = Lens.lens (\CreateUsagePlanKey' {keyType} -> keyType) (\s@CreateUsagePlanKey' {} a -> s {keyType = a} :: CreateUsagePlanKey)

instance Core.AWSRequest CreateUsagePlanKey where
  type AWSResponse CreateUsagePlanKey = UsagePlanKey
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateUsagePlanKey where
  hashWithSalt _salt CreateUsagePlanKey' {..} =
    _salt `Prelude.hashWithSalt` usagePlanId
      `Prelude.hashWithSalt` keyId
      `Prelude.hashWithSalt` keyType

instance Prelude.NFData CreateUsagePlanKey where
  rnf CreateUsagePlanKey' {..} =
    Prelude.rnf usagePlanId
      `Prelude.seq` Prelude.rnf keyId
      `Prelude.seq` Prelude.rnf keyType

instance Core.ToHeaders CreateUsagePlanKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToJSON CreateUsagePlanKey where
  toJSON CreateUsagePlanKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("keyId" Core..= keyId),
            Prelude.Just ("keyType" Core..= keyType)
          ]
      )

instance Core.ToPath CreateUsagePlanKey where
  toPath CreateUsagePlanKey' {..} =
    Prelude.mconcat
      ["/usageplans/", Core.toBS usagePlanId, "/keys"]

instance Core.ToQuery CreateUsagePlanKey where
  toQuery = Prelude.const Prelude.mempty
