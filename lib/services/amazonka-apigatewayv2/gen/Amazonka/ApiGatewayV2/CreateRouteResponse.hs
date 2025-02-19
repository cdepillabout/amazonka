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
-- Module      : Amazonka.ApiGatewayV2.CreateRouteResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a RouteResponse for a Route.
module Amazonka.ApiGatewayV2.CreateRouteResponse
  ( -- * Creating a Request
    CreateRouteResponse (..),
    newCreateRouteResponse,

    -- * Request Lenses
    createRouteResponse_modelSelectionExpression,
    createRouteResponse_responseParameters,
    createRouteResponse_responseModels,
    createRouteResponse_apiId,
    createRouteResponse_routeId,
    createRouteResponse_routeResponseKey,

    -- * Destructuring the Response
    CreateRouteResponseResponse (..),
    newCreateRouteResponseResponse,

    -- * Response Lenses
    createRouteResponseResponse_routeResponseKey,
    createRouteResponseResponse_modelSelectionExpression,
    createRouteResponseResponse_responseParameters,
    createRouteResponseResponse_responseModels,
    createRouteResponseResponse_routeResponseId,
    createRouteResponseResponse_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Creates a new RouteResponse resource to represent a route response.
--
-- /See:/ 'newCreateRouteResponse' smart constructor.
data CreateRouteResponse = CreateRouteResponse'
  { -- | The model selection expression for the route response. Supported only
    -- for WebSocket APIs.
    modelSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The route response parameters.
    responseParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints),
    -- | The response models for the route response.
    responseModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The route ID.
    routeId :: Prelude.Text,
    -- | The route response key.
    routeResponseKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelSelectionExpression', 'createRouteResponse_modelSelectionExpression' - The model selection expression for the route response. Supported only
-- for WebSocket APIs.
--
-- 'responseParameters', 'createRouteResponse_responseParameters' - The route response parameters.
--
-- 'responseModels', 'createRouteResponse_responseModels' - The response models for the route response.
--
-- 'apiId', 'createRouteResponse_apiId' - The API identifier.
--
-- 'routeId', 'createRouteResponse_routeId' - The route ID.
--
-- 'routeResponseKey', 'createRouteResponse_routeResponseKey' - The route response key.
newCreateRouteResponse ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'routeId'
  Prelude.Text ->
  -- | 'routeResponseKey'
  Prelude.Text ->
  CreateRouteResponse
newCreateRouteResponse
  pApiId_
  pRouteId_
  pRouteResponseKey_ =
    CreateRouteResponse'
      { modelSelectionExpression =
          Prelude.Nothing,
        responseParameters = Prelude.Nothing,
        responseModels = Prelude.Nothing,
        apiId = pApiId_,
        routeId = pRouteId_,
        routeResponseKey = pRouteResponseKey_
      }

-- | The model selection expression for the route response. Supported only
-- for WebSocket APIs.
createRouteResponse_modelSelectionExpression :: Lens.Lens' CreateRouteResponse (Prelude.Maybe Prelude.Text)
createRouteResponse_modelSelectionExpression = Lens.lens (\CreateRouteResponse' {modelSelectionExpression} -> modelSelectionExpression) (\s@CreateRouteResponse' {} a -> s {modelSelectionExpression = a} :: CreateRouteResponse)

-- | The route response parameters.
createRouteResponse_responseParameters :: Lens.Lens' CreateRouteResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints))
createRouteResponse_responseParameters = Lens.lens (\CreateRouteResponse' {responseParameters} -> responseParameters) (\s@CreateRouteResponse' {} a -> s {responseParameters = a} :: CreateRouteResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response models for the route response.
createRouteResponse_responseModels :: Lens.Lens' CreateRouteResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRouteResponse_responseModels = Lens.lens (\CreateRouteResponse' {responseModels} -> responseModels) (\s@CreateRouteResponse' {} a -> s {responseModels = a} :: CreateRouteResponse) Prelude.. Lens.mapping Lens.coerced

-- | The API identifier.
createRouteResponse_apiId :: Lens.Lens' CreateRouteResponse Prelude.Text
createRouteResponse_apiId = Lens.lens (\CreateRouteResponse' {apiId} -> apiId) (\s@CreateRouteResponse' {} a -> s {apiId = a} :: CreateRouteResponse)

-- | The route ID.
createRouteResponse_routeId :: Lens.Lens' CreateRouteResponse Prelude.Text
createRouteResponse_routeId = Lens.lens (\CreateRouteResponse' {routeId} -> routeId) (\s@CreateRouteResponse' {} a -> s {routeId = a} :: CreateRouteResponse)

-- | The route response key.
createRouteResponse_routeResponseKey :: Lens.Lens' CreateRouteResponse Prelude.Text
createRouteResponse_routeResponseKey = Lens.lens (\CreateRouteResponse' {routeResponseKey} -> routeResponseKey) (\s@CreateRouteResponse' {} a -> s {routeResponseKey = a} :: CreateRouteResponse)

instance Core.AWSRequest CreateRouteResponse where
  type
    AWSResponse CreateRouteResponse =
      CreateRouteResponseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRouteResponseResponse'
            Prelude.<$> (x Core..?> "routeResponseKey")
            Prelude.<*> (x Core..?> "modelSelectionExpression")
            Prelude.<*> ( x Core..?> "responseParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "responseModels" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "routeResponseId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRouteResponse where
  hashWithSalt _salt CreateRouteResponse' {..} =
    _salt
      `Prelude.hashWithSalt` modelSelectionExpression
      `Prelude.hashWithSalt` responseParameters
      `Prelude.hashWithSalt` responseModels
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` routeId
      `Prelude.hashWithSalt` routeResponseKey

instance Prelude.NFData CreateRouteResponse where
  rnf CreateRouteResponse' {..} =
    Prelude.rnf modelSelectionExpression
      `Prelude.seq` Prelude.rnf responseParameters
      `Prelude.seq` Prelude.rnf responseModels
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf routeId
      `Prelude.seq` Prelude.rnf routeResponseKey

instance Core.ToHeaders CreateRouteResponse where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRouteResponse where
  toJSON CreateRouteResponse' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("modelSelectionExpression" Core..=)
              Prelude.<$> modelSelectionExpression,
            ("responseParameters" Core..=)
              Prelude.<$> responseParameters,
            ("responseModels" Core..=)
              Prelude.<$> responseModels,
            Prelude.Just
              ("routeResponseKey" Core..= routeResponseKey)
          ]
      )

instance Core.ToPath CreateRouteResponse where
  toPath CreateRouteResponse' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/routes/",
        Core.toBS routeId,
        "/routeresponses"
      ]

instance Core.ToQuery CreateRouteResponse where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRouteResponseResponse' smart constructor.
data CreateRouteResponseResponse = CreateRouteResponseResponse'
  { -- | Represents the route response key of a route response.
    routeResponseKey :: Prelude.Maybe Prelude.Text,
    -- | Represents the model selection expression of a route response. Supported
    -- only for WebSocket APIs.
    modelSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | Represents the response parameters of a route response.
    responseParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints),
    -- | Represents the response models of a route response.
    responseModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Represents the identifier of a route response.
    routeResponseId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRouteResponseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'routeResponseKey', 'createRouteResponseResponse_routeResponseKey' - Represents the route response key of a route response.
--
-- 'modelSelectionExpression', 'createRouteResponseResponse_modelSelectionExpression' - Represents the model selection expression of a route response. Supported
-- only for WebSocket APIs.
--
-- 'responseParameters', 'createRouteResponseResponse_responseParameters' - Represents the response parameters of a route response.
--
-- 'responseModels', 'createRouteResponseResponse_responseModels' - Represents the response models of a route response.
--
-- 'routeResponseId', 'createRouteResponseResponse_routeResponseId' - Represents the identifier of a route response.
--
-- 'httpStatus', 'createRouteResponseResponse_httpStatus' - The response's http status code.
newCreateRouteResponseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRouteResponseResponse
newCreateRouteResponseResponse pHttpStatus_ =
  CreateRouteResponseResponse'
    { routeResponseKey =
        Prelude.Nothing,
      modelSelectionExpression = Prelude.Nothing,
      responseParameters = Prelude.Nothing,
      responseModels = Prelude.Nothing,
      routeResponseId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Represents the route response key of a route response.
createRouteResponseResponse_routeResponseKey :: Lens.Lens' CreateRouteResponseResponse (Prelude.Maybe Prelude.Text)
createRouteResponseResponse_routeResponseKey = Lens.lens (\CreateRouteResponseResponse' {routeResponseKey} -> routeResponseKey) (\s@CreateRouteResponseResponse' {} a -> s {routeResponseKey = a} :: CreateRouteResponseResponse)

-- | Represents the model selection expression of a route response. Supported
-- only for WebSocket APIs.
createRouteResponseResponse_modelSelectionExpression :: Lens.Lens' CreateRouteResponseResponse (Prelude.Maybe Prelude.Text)
createRouteResponseResponse_modelSelectionExpression = Lens.lens (\CreateRouteResponseResponse' {modelSelectionExpression} -> modelSelectionExpression) (\s@CreateRouteResponseResponse' {} a -> s {modelSelectionExpression = a} :: CreateRouteResponseResponse)

-- | Represents the response parameters of a route response.
createRouteResponseResponse_responseParameters :: Lens.Lens' CreateRouteResponseResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints))
createRouteResponseResponse_responseParameters = Lens.lens (\CreateRouteResponseResponse' {responseParameters} -> responseParameters) (\s@CreateRouteResponseResponse' {} a -> s {responseParameters = a} :: CreateRouteResponseResponse) Prelude.. Lens.mapping Lens.coerced

-- | Represents the response models of a route response.
createRouteResponseResponse_responseModels :: Lens.Lens' CreateRouteResponseResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRouteResponseResponse_responseModels = Lens.lens (\CreateRouteResponseResponse' {responseModels} -> responseModels) (\s@CreateRouteResponseResponse' {} a -> s {responseModels = a} :: CreateRouteResponseResponse) Prelude.. Lens.mapping Lens.coerced

-- | Represents the identifier of a route response.
createRouteResponseResponse_routeResponseId :: Lens.Lens' CreateRouteResponseResponse (Prelude.Maybe Prelude.Text)
createRouteResponseResponse_routeResponseId = Lens.lens (\CreateRouteResponseResponse' {routeResponseId} -> routeResponseId) (\s@CreateRouteResponseResponse' {} a -> s {routeResponseId = a} :: CreateRouteResponseResponse)

-- | The response's http status code.
createRouteResponseResponse_httpStatus :: Lens.Lens' CreateRouteResponseResponse Prelude.Int
createRouteResponseResponse_httpStatus = Lens.lens (\CreateRouteResponseResponse' {httpStatus} -> httpStatus) (\s@CreateRouteResponseResponse' {} a -> s {httpStatus = a} :: CreateRouteResponseResponse)

instance Prelude.NFData CreateRouteResponseResponse where
  rnf CreateRouteResponseResponse' {..} =
    Prelude.rnf routeResponseKey
      `Prelude.seq` Prelude.rnf modelSelectionExpression
      `Prelude.seq` Prelude.rnf responseParameters
      `Prelude.seq` Prelude.rnf responseModels
      `Prelude.seq` Prelude.rnf routeResponseId
      `Prelude.seq` Prelude.rnf httpStatus
