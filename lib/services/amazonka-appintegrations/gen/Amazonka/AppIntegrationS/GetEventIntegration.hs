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
-- Module      : Amazonka.AppIntegrationS.GetEventIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the event integration.
module Amazonka.AppIntegrationS.GetEventIntegration
  ( -- * Creating a Request
    GetEventIntegration (..),
    newGetEventIntegration,

    -- * Request Lenses
    getEventIntegration_name,

    -- * Destructuring the Response
    GetEventIntegrationResponse (..),
    newGetEventIntegrationResponse,

    -- * Response Lenses
    getEventIntegrationResponse_tags,
    getEventIntegrationResponse_name,
    getEventIntegrationResponse_eventBridgeBus,
    getEventIntegrationResponse_eventFilter,
    getEventIntegrationResponse_description,
    getEventIntegrationResponse_eventIntegrationArn,
    getEventIntegrationResponse_httpStatus,
  )
where

import Amazonka.AppIntegrationS.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEventIntegration' smart constructor.
data GetEventIntegration = GetEventIntegration'
  { -- | The name of the event integration.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEventIntegration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getEventIntegration_name' - The name of the event integration.
newGetEventIntegration ::
  -- | 'name'
  Prelude.Text ->
  GetEventIntegration
newGetEventIntegration pName_ =
  GetEventIntegration' {name = pName_}

-- | The name of the event integration.
getEventIntegration_name :: Lens.Lens' GetEventIntegration Prelude.Text
getEventIntegration_name = Lens.lens (\GetEventIntegration' {name} -> name) (\s@GetEventIntegration' {} a -> s {name = a} :: GetEventIntegration)

instance Core.AWSRequest GetEventIntegration where
  type
    AWSResponse GetEventIntegration =
      GetEventIntegrationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEventIntegrationResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "EventBridgeBus")
            Prelude.<*> (x Core..?> "EventFilter")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "EventIntegrationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetEventIntegration where
  hashWithSalt _salt GetEventIntegration' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData GetEventIntegration where
  rnf GetEventIntegration' {..} = Prelude.rnf name

instance Core.ToHeaders GetEventIntegration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetEventIntegration where
  toPath GetEventIntegration' {..} =
    Prelude.mconcat
      ["/eventIntegrations/", Core.toBS name]

instance Core.ToQuery GetEventIntegration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEventIntegrationResponse' smart constructor.
data GetEventIntegrationResponse = GetEventIntegrationResponse'
  { -- | One or more tags.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the event integration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The EventBridge bus.
    eventBridgeBus :: Prelude.Maybe Prelude.Text,
    -- | The event filter.
    eventFilter :: Prelude.Maybe EventFilter,
    -- | The description of the event integration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the event integration.
    eventIntegrationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEventIntegrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getEventIntegrationResponse_tags' - One or more tags.
--
-- 'name', 'getEventIntegrationResponse_name' - The name of the event integration.
--
-- 'eventBridgeBus', 'getEventIntegrationResponse_eventBridgeBus' - The EventBridge bus.
--
-- 'eventFilter', 'getEventIntegrationResponse_eventFilter' - The event filter.
--
-- 'description', 'getEventIntegrationResponse_description' - The description of the event integration.
--
-- 'eventIntegrationArn', 'getEventIntegrationResponse_eventIntegrationArn' - The Amazon Resource Name (ARN) for the event integration.
--
-- 'httpStatus', 'getEventIntegrationResponse_httpStatus' - The response's http status code.
newGetEventIntegrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEventIntegrationResponse
newGetEventIntegrationResponse pHttpStatus_ =
  GetEventIntegrationResponse'
    { tags =
        Prelude.Nothing,
      name = Prelude.Nothing,
      eventBridgeBus = Prelude.Nothing,
      eventFilter = Prelude.Nothing,
      description = Prelude.Nothing,
      eventIntegrationArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | One or more tags.
getEventIntegrationResponse_tags :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getEventIntegrationResponse_tags = Lens.lens (\GetEventIntegrationResponse' {tags} -> tags) (\s@GetEventIntegrationResponse' {} a -> s {tags = a} :: GetEventIntegrationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the event integration.
getEventIntegrationResponse_name :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe Prelude.Text)
getEventIntegrationResponse_name = Lens.lens (\GetEventIntegrationResponse' {name} -> name) (\s@GetEventIntegrationResponse' {} a -> s {name = a} :: GetEventIntegrationResponse)

-- | The EventBridge bus.
getEventIntegrationResponse_eventBridgeBus :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe Prelude.Text)
getEventIntegrationResponse_eventBridgeBus = Lens.lens (\GetEventIntegrationResponse' {eventBridgeBus} -> eventBridgeBus) (\s@GetEventIntegrationResponse' {} a -> s {eventBridgeBus = a} :: GetEventIntegrationResponse)

-- | The event filter.
getEventIntegrationResponse_eventFilter :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe EventFilter)
getEventIntegrationResponse_eventFilter = Lens.lens (\GetEventIntegrationResponse' {eventFilter} -> eventFilter) (\s@GetEventIntegrationResponse' {} a -> s {eventFilter = a} :: GetEventIntegrationResponse)

-- | The description of the event integration.
getEventIntegrationResponse_description :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe Prelude.Text)
getEventIntegrationResponse_description = Lens.lens (\GetEventIntegrationResponse' {description} -> description) (\s@GetEventIntegrationResponse' {} a -> s {description = a} :: GetEventIntegrationResponse)

-- | The Amazon Resource Name (ARN) for the event integration.
getEventIntegrationResponse_eventIntegrationArn :: Lens.Lens' GetEventIntegrationResponse (Prelude.Maybe Prelude.Text)
getEventIntegrationResponse_eventIntegrationArn = Lens.lens (\GetEventIntegrationResponse' {eventIntegrationArn} -> eventIntegrationArn) (\s@GetEventIntegrationResponse' {} a -> s {eventIntegrationArn = a} :: GetEventIntegrationResponse)

-- | The response's http status code.
getEventIntegrationResponse_httpStatus :: Lens.Lens' GetEventIntegrationResponse Prelude.Int
getEventIntegrationResponse_httpStatus = Lens.lens (\GetEventIntegrationResponse' {httpStatus} -> httpStatus) (\s@GetEventIntegrationResponse' {} a -> s {httpStatus = a} :: GetEventIntegrationResponse)

instance Prelude.NFData GetEventIntegrationResponse where
  rnf GetEventIntegrationResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf eventBridgeBus
      `Prelude.seq` Prelude.rnf eventFilter
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf eventIntegrationArn
      `Prelude.seq` Prelude.rnf httpStatus
