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
-- Module      : Amazonka.Greengrass.GetSubscriptionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a subscription definition.
module Amazonka.Greengrass.GetSubscriptionDefinition
  ( -- * Creating a Request
    GetSubscriptionDefinition (..),
    newGetSubscriptionDefinition,

    -- * Request Lenses
    getSubscriptionDefinition_subscriptionDefinitionId,

    -- * Destructuring the Response
    GetSubscriptionDefinitionResponse (..),
    newGetSubscriptionDefinitionResponse,

    -- * Response Lenses
    getSubscriptionDefinitionResponse_lastUpdatedTimestamp,
    getSubscriptionDefinitionResponse_tags,
    getSubscriptionDefinitionResponse_name,
    getSubscriptionDefinitionResponse_arn,
    getSubscriptionDefinitionResponse_latestVersion,
    getSubscriptionDefinitionResponse_id,
    getSubscriptionDefinitionResponse_creationTimestamp,
    getSubscriptionDefinitionResponse_latestVersionArn,
    getSubscriptionDefinitionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSubscriptionDefinition' smart constructor.
data GetSubscriptionDefinition = GetSubscriptionDefinition'
  { -- | The ID of the subscription definition.
    subscriptionDefinitionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSubscriptionDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subscriptionDefinitionId', 'getSubscriptionDefinition_subscriptionDefinitionId' - The ID of the subscription definition.
newGetSubscriptionDefinition ::
  -- | 'subscriptionDefinitionId'
  Prelude.Text ->
  GetSubscriptionDefinition
newGetSubscriptionDefinition
  pSubscriptionDefinitionId_ =
    GetSubscriptionDefinition'
      { subscriptionDefinitionId =
          pSubscriptionDefinitionId_
      }

-- | The ID of the subscription definition.
getSubscriptionDefinition_subscriptionDefinitionId :: Lens.Lens' GetSubscriptionDefinition Prelude.Text
getSubscriptionDefinition_subscriptionDefinitionId = Lens.lens (\GetSubscriptionDefinition' {subscriptionDefinitionId} -> subscriptionDefinitionId) (\s@GetSubscriptionDefinition' {} a -> s {subscriptionDefinitionId = a} :: GetSubscriptionDefinition)

instance Core.AWSRequest GetSubscriptionDefinition where
  type
    AWSResponse GetSubscriptionDefinition =
      GetSubscriptionDefinitionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSubscriptionDefinitionResponse'
            Prelude.<$> (x Core..?> "LastUpdatedTimestamp")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LatestVersion")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "CreationTimestamp")
            Prelude.<*> (x Core..?> "LatestVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSubscriptionDefinition where
  hashWithSalt _salt GetSubscriptionDefinition' {..} =
    _salt
      `Prelude.hashWithSalt` subscriptionDefinitionId

instance Prelude.NFData GetSubscriptionDefinition where
  rnf GetSubscriptionDefinition' {..} =
    Prelude.rnf subscriptionDefinitionId

instance Core.ToHeaders GetSubscriptionDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSubscriptionDefinition where
  toPath GetSubscriptionDefinition' {..} =
    Prelude.mconcat
      [ "/greengrass/definition/subscriptions/",
        Core.toBS subscriptionDefinitionId
      ]

instance Core.ToQuery GetSubscriptionDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSubscriptionDefinitionResponse' smart constructor.
data GetSubscriptionDefinitionResponse = GetSubscriptionDefinitionResponse'
  { -- | The time, in milliseconds since the epoch, when the definition was last
    -- updated.
    lastUpdatedTimestamp :: Prelude.Maybe Prelude.Text,
    -- | Tag(s) attached to the resource arn.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the definition.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the definition.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the latest version associated with the definition.
    latestVersion :: Prelude.Maybe Prelude.Text,
    -- | The ID of the definition.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the definition was
    -- created.
    creationTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the latest version associated with the definition.
    latestVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSubscriptionDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'getSubscriptionDefinitionResponse_lastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last
-- updated.
--
-- 'tags', 'getSubscriptionDefinitionResponse_tags' - Tag(s) attached to the resource arn.
--
-- 'name', 'getSubscriptionDefinitionResponse_name' - The name of the definition.
--
-- 'arn', 'getSubscriptionDefinitionResponse_arn' - The ARN of the definition.
--
-- 'latestVersion', 'getSubscriptionDefinitionResponse_latestVersion' - The ID of the latest version associated with the definition.
--
-- 'id', 'getSubscriptionDefinitionResponse_id' - The ID of the definition.
--
-- 'creationTimestamp', 'getSubscriptionDefinitionResponse_creationTimestamp' - The time, in milliseconds since the epoch, when the definition was
-- created.
--
-- 'latestVersionArn', 'getSubscriptionDefinitionResponse_latestVersionArn' - The ARN of the latest version associated with the definition.
--
-- 'httpStatus', 'getSubscriptionDefinitionResponse_httpStatus' - The response's http status code.
newGetSubscriptionDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSubscriptionDefinitionResponse
newGetSubscriptionDefinitionResponse pHttpStatus_ =
  GetSubscriptionDefinitionResponse'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      latestVersion = Prelude.Nothing,
      id = Prelude.Nothing,
      creationTimestamp = Prelude.Nothing,
      latestVersionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was last
-- updated.
getSubscriptionDefinitionResponse_lastUpdatedTimestamp :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_lastUpdatedTimestamp = Lens.lens (\GetSubscriptionDefinitionResponse' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@GetSubscriptionDefinitionResponse' {} a -> s {lastUpdatedTimestamp = a} :: GetSubscriptionDefinitionResponse)

-- | Tag(s) attached to the resource arn.
getSubscriptionDefinitionResponse_tags :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getSubscriptionDefinitionResponse_tags = Lens.lens (\GetSubscriptionDefinitionResponse' {tags} -> tags) (\s@GetSubscriptionDefinitionResponse' {} a -> s {tags = a} :: GetSubscriptionDefinitionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the definition.
getSubscriptionDefinitionResponse_name :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_name = Lens.lens (\GetSubscriptionDefinitionResponse' {name} -> name) (\s@GetSubscriptionDefinitionResponse' {} a -> s {name = a} :: GetSubscriptionDefinitionResponse)

-- | The ARN of the definition.
getSubscriptionDefinitionResponse_arn :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_arn = Lens.lens (\GetSubscriptionDefinitionResponse' {arn} -> arn) (\s@GetSubscriptionDefinitionResponse' {} a -> s {arn = a} :: GetSubscriptionDefinitionResponse)

-- | The ID of the latest version associated with the definition.
getSubscriptionDefinitionResponse_latestVersion :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_latestVersion = Lens.lens (\GetSubscriptionDefinitionResponse' {latestVersion} -> latestVersion) (\s@GetSubscriptionDefinitionResponse' {} a -> s {latestVersion = a} :: GetSubscriptionDefinitionResponse)

-- | The ID of the definition.
getSubscriptionDefinitionResponse_id :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_id = Lens.lens (\GetSubscriptionDefinitionResponse' {id} -> id) (\s@GetSubscriptionDefinitionResponse' {} a -> s {id = a} :: GetSubscriptionDefinitionResponse)

-- | The time, in milliseconds since the epoch, when the definition was
-- created.
getSubscriptionDefinitionResponse_creationTimestamp :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_creationTimestamp = Lens.lens (\GetSubscriptionDefinitionResponse' {creationTimestamp} -> creationTimestamp) (\s@GetSubscriptionDefinitionResponse' {} a -> s {creationTimestamp = a} :: GetSubscriptionDefinitionResponse)

-- | The ARN of the latest version associated with the definition.
getSubscriptionDefinitionResponse_latestVersionArn :: Lens.Lens' GetSubscriptionDefinitionResponse (Prelude.Maybe Prelude.Text)
getSubscriptionDefinitionResponse_latestVersionArn = Lens.lens (\GetSubscriptionDefinitionResponse' {latestVersionArn} -> latestVersionArn) (\s@GetSubscriptionDefinitionResponse' {} a -> s {latestVersionArn = a} :: GetSubscriptionDefinitionResponse)

-- | The response's http status code.
getSubscriptionDefinitionResponse_httpStatus :: Lens.Lens' GetSubscriptionDefinitionResponse Prelude.Int
getSubscriptionDefinitionResponse_httpStatus = Lens.lens (\GetSubscriptionDefinitionResponse' {httpStatus} -> httpStatus) (\s@GetSubscriptionDefinitionResponse' {} a -> s {httpStatus = a} :: GetSubscriptionDefinitionResponse)

instance
  Prelude.NFData
    GetSubscriptionDefinitionResponse
  where
  rnf GetSubscriptionDefinitionResponse' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf latestVersion
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf creationTimestamp
      `Prelude.seq` Prelude.rnf latestVersionArn
      `Prelude.seq` Prelude.rnf httpStatus
