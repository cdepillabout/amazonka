{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.APIGateway.Types.Integration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.Integration where

import Amazonka.APIGateway.Types.ConnectionType
import Amazonka.APIGateway.Types.ContentHandlingStrategy
import Amazonka.APIGateway.Types.IntegrationResponse
import Amazonka.APIGateway.Types.IntegrationType
import Amazonka.APIGateway.Types.TlsConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents an HTTP, HTTP_PROXY, AWS, AWS_PROXY, or Mock integration.
--
-- /See:/ 'newIntegration' smart constructor.
data Integration = Integration'
  { -- | A list of request parameters whose values API Gateway caches. To be
    -- valid values for @cacheKeyParameters@, these parameters must also be
    -- specified for Method @requestParameters@.
    cacheKeyParameters :: Prelude.Maybe [Prelude.Text],
    -- | A key-value map specifying request parameters that are passed from the
    -- method request to the back end. The key is an integration request
    -- parameter name and the associated value is a method request parameter
    -- value or static value that must be enclosed within single quotes and
    -- pre-encoded as required by the back end. The method request parameter
    -- value must match the pattern of @method.request.{location}.{name}@,
    -- where @location@ is @querystring@, @path@, or @header@ and @name@ must
    -- be a valid and unique method request parameter name.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies an API method integration type. The valid value is one of the
    -- following:
    --
    -- For the HTTP and HTTP proxy integrations, each integration can specify a
    -- protocol (@http\/https@), port and path. Standard 80 and 443 ports are
    -- supported as well as custom ports above 1024. An HTTP or HTTP proxy
    -- integration with a @connectionType@ of @VPC_LINK@ is referred to as a
    -- private integration and uses a VpcLink to connect API Gateway to a
    -- network load balancer of a VPC.
    type' :: Prelude.Maybe IntegrationType,
    -- | The type of the network connection to the integration endpoint. The
    -- valid value is @INTERNET@ for connections through the public routable
    -- internet or @VPC_LINK@ for private connections between API Gateway and a
    -- network load balancer in a VPC. The default value is @INTERNET@.
    connectionType :: Prelude.Maybe ConnectionType,
    -- | Specifies the TLS configuration for an integration.
    tlsConfig :: Prelude.Maybe TlsConfig,
    -- | Specifies a group of related cached parameters. By default, API Gateway
    -- uses the resource ID as the @cacheNamespace@. You can specify the same
    -- @cacheNamespace@ across resources to return the same cached data for
    -- requests to different resources.
    cacheNamespace :: Prelude.Maybe Prelude.Text,
    -- | Specifies Uniform Resource Identifier (URI) of the integration endpoint.
    --
    -- For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully formed,
    -- encoded HTTP(S) URL according to the RFC-3986 specification, for either
    -- standard integration, where @connectionType@ is not @VPC_LINK@, or
    -- private integration, where @connectionType@ is @VPC_LINK@. For a private
    -- HTTP integration, the URI is not used for routing. For @AWS@ or
    -- @AWS_PROXY@ integrations, the URI is of the form
    -- @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
    -- Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is
    -- the name of the integrated Amazon Web Services service (e.g., s3); and
    -- {subdomain} is a designated subdomain supported by certain Amazon Web
    -- Services service for fast host-name lookup. action can be used for an
    -- Amazon Web Services service action-based API, using an
    -- Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
    -- {service_api} refers to a supported action {name} plus any required
    -- input parameters. Alternatively, path can be used for an AWS service
    -- path-based API. The ensuing service_api refers to the path to an Amazon
    -- Web Services service resource, including the region of the integrated
    -- Amazon Web Services service, if applicable. For example, for integration
    -- with the S3 API of GetObject, the uri can be either
    -- @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
    -- or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
    uri :: Prelude.Maybe Prelude.Text,
    -- | The ID of the VpcLink used for the integration when
    -- @connectionType=VPC_LINK@ and undefined, otherwise.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the integration\'s HTTP method type.
    httpMethod :: Prelude.Maybe Prelude.Text,
    -- | Specifies the credentials required for the integration, if any. For AWS
    -- integrations, three options are available. To specify an IAM Role for
    -- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
    -- require that the caller\'s identity be passed through from the request,
    -- specify the string @arn:aws:iam::\\*:user\/\\*@. To use resource-based
    -- permissions on supported AWS services, specify null.
    credentials :: Prelude.Maybe Prelude.Text,
    -- | Specifies the integration\'s responses.
    integrationResponses :: Prelude.Maybe (Prelude.HashMap Prelude.Text IntegrationResponse),
    -- | Custom timeout between 50 and 29,000 milliseconds. The default value is
    -- 29,000 milliseconds or 29 seconds.
    timeoutInMillis :: Prelude.Maybe Prelude.Int,
    -- | Specifies how to handle request payload content type conversions.
    -- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
    -- following behaviors:
    --
    -- If this property is not defined, the request payload will be passed
    -- through from the method request to integration request without
    -- modification, provided that the @passthroughBehavior@ is configured to
    -- support payload pass-through.
    contentHandling :: Prelude.Maybe ContentHandlingStrategy,
    -- | Represents a map of Velocity templates that are applied on the request
    -- payload based on the value of the Content-Type header sent by the
    -- client. The content type value is the key in this map, and the template
    -- (as a String) is the value.
    requestTemplates :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Specifies how the method request body of an unmapped content type will
    -- be passed through the integration request to the back end without
    -- transformation. A content type is unmapped if no mapping template is
    -- defined in the integration or the content type does not match any of the
    -- mapped content types, as specified in @requestTemplates@. The valid
    -- value is one of the following: @WHEN_NO_MATCH@: passes the method
    -- request body through the integration request to the back end without
    -- transformation when the method request content type does not match any
    -- content type associated with the mapping templates defined in the
    -- integration request. @WHEN_NO_TEMPLATES@: passes the method request body
    -- through the integration request to the back end without transformation
    -- when no mapping template is defined in the integration request. If a
    -- template is defined when this option is selected, the method request of
    -- an unmapped content-type will be rejected with an HTTP 415 Unsupported
    -- Media Type response. @NEVER@: rejects the method request with an HTTP
    -- 415 Unsupported Media Type response when either the method request
    -- content type does not match any content type associated with the mapping
    -- templates defined in the integration request or no mapping template is
    -- defined in the integration request.
    passthroughBehavior :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Integration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheKeyParameters', 'integration_cacheKeyParameters' - A list of request parameters whose values API Gateway caches. To be
-- valid values for @cacheKeyParameters@, these parameters must also be
-- specified for Method @requestParameters@.
--
-- 'requestParameters', 'integration_requestParameters' - A key-value map specifying request parameters that are passed from the
-- method request to the back end. The key is an integration request
-- parameter name and the associated value is a method request parameter
-- value or static value that must be enclosed within single quotes and
-- pre-encoded as required by the back end. The method request parameter
-- value must match the pattern of @method.request.{location}.{name}@,
-- where @location@ is @querystring@, @path@, or @header@ and @name@ must
-- be a valid and unique method request parameter name.
--
-- 'type'', 'integration_type' - Specifies an API method integration type. The valid value is one of the
-- following:
--
-- For the HTTP and HTTP proxy integrations, each integration can specify a
-- protocol (@http\/https@), port and path. Standard 80 and 443 ports are
-- supported as well as custom ports above 1024. An HTTP or HTTP proxy
-- integration with a @connectionType@ of @VPC_LINK@ is referred to as a
-- private integration and uses a VpcLink to connect API Gateway to a
-- network load balancer of a VPC.
--
-- 'connectionType', 'integration_connectionType' - The type of the network connection to the integration endpoint. The
-- valid value is @INTERNET@ for connections through the public routable
-- internet or @VPC_LINK@ for private connections between API Gateway and a
-- network load balancer in a VPC. The default value is @INTERNET@.
--
-- 'tlsConfig', 'integration_tlsConfig' - Specifies the TLS configuration for an integration.
--
-- 'cacheNamespace', 'integration_cacheNamespace' - Specifies a group of related cached parameters. By default, API Gateway
-- uses the resource ID as the @cacheNamespace@. You can specify the same
-- @cacheNamespace@ across resources to return the same cached data for
-- requests to different resources.
--
-- 'uri', 'integration_uri' - Specifies Uniform Resource Identifier (URI) of the integration endpoint.
--
-- For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully formed,
-- encoded HTTP(S) URL according to the RFC-3986 specification, for either
-- standard integration, where @connectionType@ is not @VPC_LINK@, or
-- private integration, where @connectionType@ is @VPC_LINK@. For a private
-- HTTP integration, the URI is not used for routing. For @AWS@ or
-- @AWS_PROXY@ integrations, the URI is of the form
-- @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
-- Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is
-- the name of the integrated Amazon Web Services service (e.g., s3); and
-- {subdomain} is a designated subdomain supported by certain Amazon Web
-- Services service for fast host-name lookup. action can be used for an
-- Amazon Web Services service action-based API, using an
-- Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
-- {service_api} refers to a supported action {name} plus any required
-- input parameters. Alternatively, path can be used for an AWS service
-- path-based API. The ensuing service_api refers to the path to an Amazon
-- Web Services service resource, including the region of the integrated
-- Amazon Web Services service, if applicable. For example, for integration
-- with the S3 API of GetObject, the uri can be either
-- @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
-- or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
--
-- 'connectionId', 'integration_connectionId' - The ID of the VpcLink used for the integration when
-- @connectionType=VPC_LINK@ and undefined, otherwise.
--
-- 'httpMethod', 'integration_httpMethod' - Specifies the integration\'s HTTP method type.
--
-- 'credentials', 'integration_credentials' - Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string @arn:aws:iam::\\*:user\/\\*@. To use resource-based
-- permissions on supported AWS services, specify null.
--
-- 'integrationResponses', 'integration_integrationResponses' - Specifies the integration\'s responses.
--
-- 'timeoutInMillis', 'integration_timeoutInMillis' - Custom timeout between 50 and 29,000 milliseconds. The default value is
-- 29,000 milliseconds or 29 seconds.
--
-- 'contentHandling', 'integration_contentHandling' - Specifies how to handle request payload content type conversions.
-- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
-- following behaviors:
--
-- If this property is not defined, the request payload will be passed
-- through from the method request to integration request without
-- modification, provided that the @passthroughBehavior@ is configured to
-- support payload pass-through.
--
-- 'requestTemplates', 'integration_requestTemplates' - Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value.
--
-- 'passthroughBehavior', 'integration_passthroughBehavior' - Specifies how the method request body of an unmapped content type will
-- be passed through the integration request to the back end without
-- transformation. A content type is unmapped if no mapping template is
-- defined in the integration or the content type does not match any of the
-- mapped content types, as specified in @requestTemplates@. The valid
-- value is one of the following: @WHEN_NO_MATCH@: passes the method
-- request body through the integration request to the back end without
-- transformation when the method request content type does not match any
-- content type associated with the mapping templates defined in the
-- integration request. @WHEN_NO_TEMPLATES@: passes the method request body
-- through the integration request to the back end without transformation
-- when no mapping template is defined in the integration request. If a
-- template is defined when this option is selected, the method request of
-- an unmapped content-type will be rejected with an HTTP 415 Unsupported
-- Media Type response. @NEVER@: rejects the method request with an HTTP
-- 415 Unsupported Media Type response when either the method request
-- content type does not match any content type associated with the mapping
-- templates defined in the integration request or no mapping template is
-- defined in the integration request.
newIntegration ::
  Integration
newIntegration =
  Integration'
    { cacheKeyParameters = Prelude.Nothing,
      requestParameters = Prelude.Nothing,
      type' = Prelude.Nothing,
      connectionType = Prelude.Nothing,
      tlsConfig = Prelude.Nothing,
      cacheNamespace = Prelude.Nothing,
      uri = Prelude.Nothing,
      connectionId = Prelude.Nothing,
      httpMethod = Prelude.Nothing,
      credentials = Prelude.Nothing,
      integrationResponses = Prelude.Nothing,
      timeoutInMillis = Prelude.Nothing,
      contentHandling = Prelude.Nothing,
      requestTemplates = Prelude.Nothing,
      passthroughBehavior = Prelude.Nothing
    }

-- | A list of request parameters whose values API Gateway caches. To be
-- valid values for @cacheKeyParameters@, these parameters must also be
-- specified for Method @requestParameters@.
integration_cacheKeyParameters :: Lens.Lens' Integration (Prelude.Maybe [Prelude.Text])
integration_cacheKeyParameters = Lens.lens (\Integration' {cacheKeyParameters} -> cacheKeyParameters) (\s@Integration' {} a -> s {cacheKeyParameters = a} :: Integration) Prelude.. Lens.mapping Lens.coerced

-- | A key-value map specifying request parameters that are passed from the
-- method request to the back end. The key is an integration request
-- parameter name and the associated value is a method request parameter
-- value or static value that must be enclosed within single quotes and
-- pre-encoded as required by the back end. The method request parameter
-- value must match the pattern of @method.request.{location}.{name}@,
-- where @location@ is @querystring@, @path@, or @header@ and @name@ must
-- be a valid and unique method request parameter name.
integration_requestParameters :: Lens.Lens' Integration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
integration_requestParameters = Lens.lens (\Integration' {requestParameters} -> requestParameters) (\s@Integration' {} a -> s {requestParameters = a} :: Integration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies an API method integration type. The valid value is one of the
-- following:
--
-- For the HTTP and HTTP proxy integrations, each integration can specify a
-- protocol (@http\/https@), port and path. Standard 80 and 443 ports are
-- supported as well as custom ports above 1024. An HTTP or HTTP proxy
-- integration with a @connectionType@ of @VPC_LINK@ is referred to as a
-- private integration and uses a VpcLink to connect API Gateway to a
-- network load balancer of a VPC.
integration_type :: Lens.Lens' Integration (Prelude.Maybe IntegrationType)
integration_type = Lens.lens (\Integration' {type'} -> type') (\s@Integration' {} a -> s {type' = a} :: Integration)

-- | The type of the network connection to the integration endpoint. The
-- valid value is @INTERNET@ for connections through the public routable
-- internet or @VPC_LINK@ for private connections between API Gateway and a
-- network load balancer in a VPC. The default value is @INTERNET@.
integration_connectionType :: Lens.Lens' Integration (Prelude.Maybe ConnectionType)
integration_connectionType = Lens.lens (\Integration' {connectionType} -> connectionType) (\s@Integration' {} a -> s {connectionType = a} :: Integration)

-- | Specifies the TLS configuration for an integration.
integration_tlsConfig :: Lens.Lens' Integration (Prelude.Maybe TlsConfig)
integration_tlsConfig = Lens.lens (\Integration' {tlsConfig} -> tlsConfig) (\s@Integration' {} a -> s {tlsConfig = a} :: Integration)

-- | Specifies a group of related cached parameters. By default, API Gateway
-- uses the resource ID as the @cacheNamespace@. You can specify the same
-- @cacheNamespace@ across resources to return the same cached data for
-- requests to different resources.
integration_cacheNamespace :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_cacheNamespace = Lens.lens (\Integration' {cacheNamespace} -> cacheNamespace) (\s@Integration' {} a -> s {cacheNamespace = a} :: Integration)

-- | Specifies Uniform Resource Identifier (URI) of the integration endpoint.
--
-- For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully formed,
-- encoded HTTP(S) URL according to the RFC-3986 specification, for either
-- standard integration, where @connectionType@ is not @VPC_LINK@, or
-- private integration, where @connectionType@ is @VPC_LINK@. For a private
-- HTTP integration, the URI is not used for routing. For @AWS@ or
-- @AWS_PROXY@ integrations, the URI is of the form
-- @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
-- Here, {Region} is the API Gateway region (e.g., us-east-1); {service} is
-- the name of the integrated Amazon Web Services service (e.g., s3); and
-- {subdomain} is a designated subdomain supported by certain Amazon Web
-- Services service for fast host-name lookup. action can be used for an
-- Amazon Web Services service action-based API, using an
-- Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
-- {service_api} refers to a supported action {name} plus any required
-- input parameters. Alternatively, path can be used for an AWS service
-- path-based API. The ensuing service_api refers to the path to an Amazon
-- Web Services service resource, including the region of the integrated
-- Amazon Web Services service, if applicable. For example, for integration
-- with the S3 API of GetObject, the uri can be either
-- @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
-- or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
integration_uri :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_uri = Lens.lens (\Integration' {uri} -> uri) (\s@Integration' {} a -> s {uri = a} :: Integration)

-- | The ID of the VpcLink used for the integration when
-- @connectionType=VPC_LINK@ and undefined, otherwise.
integration_connectionId :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_connectionId = Lens.lens (\Integration' {connectionId} -> connectionId) (\s@Integration' {} a -> s {connectionId = a} :: Integration)

-- | Specifies the integration\'s HTTP method type.
integration_httpMethod :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_httpMethod = Lens.lens (\Integration' {httpMethod} -> httpMethod) (\s@Integration' {} a -> s {httpMethod = a} :: Integration)

-- | Specifies the credentials required for the integration, if any. For AWS
-- integrations, three options are available. To specify an IAM Role for
-- API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To
-- require that the caller\'s identity be passed through from the request,
-- specify the string @arn:aws:iam::\\*:user\/\\*@. To use resource-based
-- permissions on supported AWS services, specify null.
integration_credentials :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_credentials = Lens.lens (\Integration' {credentials} -> credentials) (\s@Integration' {} a -> s {credentials = a} :: Integration)

-- | Specifies the integration\'s responses.
integration_integrationResponses :: Lens.Lens' Integration (Prelude.Maybe (Prelude.HashMap Prelude.Text IntegrationResponse))
integration_integrationResponses = Lens.lens (\Integration' {integrationResponses} -> integrationResponses) (\s@Integration' {} a -> s {integrationResponses = a} :: Integration) Prelude.. Lens.mapping Lens.coerced

-- | Custom timeout between 50 and 29,000 milliseconds. The default value is
-- 29,000 milliseconds or 29 seconds.
integration_timeoutInMillis :: Lens.Lens' Integration (Prelude.Maybe Prelude.Int)
integration_timeoutInMillis = Lens.lens (\Integration' {timeoutInMillis} -> timeoutInMillis) (\s@Integration' {} a -> s {timeoutInMillis = a} :: Integration)

-- | Specifies how to handle request payload content type conversions.
-- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
-- following behaviors:
--
-- If this property is not defined, the request payload will be passed
-- through from the method request to integration request without
-- modification, provided that the @passthroughBehavior@ is configured to
-- support payload pass-through.
integration_contentHandling :: Lens.Lens' Integration (Prelude.Maybe ContentHandlingStrategy)
integration_contentHandling = Lens.lens (\Integration' {contentHandling} -> contentHandling) (\s@Integration' {} a -> s {contentHandling = a} :: Integration)

-- | Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value.
integration_requestTemplates :: Lens.Lens' Integration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
integration_requestTemplates = Lens.lens (\Integration' {requestTemplates} -> requestTemplates) (\s@Integration' {} a -> s {requestTemplates = a} :: Integration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies how the method request body of an unmapped content type will
-- be passed through the integration request to the back end without
-- transformation. A content type is unmapped if no mapping template is
-- defined in the integration or the content type does not match any of the
-- mapped content types, as specified in @requestTemplates@. The valid
-- value is one of the following: @WHEN_NO_MATCH@: passes the method
-- request body through the integration request to the back end without
-- transformation when the method request content type does not match any
-- content type associated with the mapping templates defined in the
-- integration request. @WHEN_NO_TEMPLATES@: passes the method request body
-- through the integration request to the back end without transformation
-- when no mapping template is defined in the integration request. If a
-- template is defined when this option is selected, the method request of
-- an unmapped content-type will be rejected with an HTTP 415 Unsupported
-- Media Type response. @NEVER@: rejects the method request with an HTTP
-- 415 Unsupported Media Type response when either the method request
-- content type does not match any content type associated with the mapping
-- templates defined in the integration request or no mapping template is
-- defined in the integration request.
integration_passthroughBehavior :: Lens.Lens' Integration (Prelude.Maybe Prelude.Text)
integration_passthroughBehavior = Lens.lens (\Integration' {passthroughBehavior} -> passthroughBehavior) (\s@Integration' {} a -> s {passthroughBehavior = a} :: Integration)

instance Core.FromJSON Integration where
  parseJSON =
    Core.withObject
      "Integration"
      ( \x ->
          Integration'
            Prelude.<$> ( x Core..:? "cacheKeyParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "requestParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "connectionType")
            Prelude.<*> (x Core..:? "tlsConfig")
            Prelude.<*> (x Core..:? "cacheNamespace")
            Prelude.<*> (x Core..:? "uri")
            Prelude.<*> (x Core..:? "connectionId")
            Prelude.<*> (x Core..:? "httpMethod")
            Prelude.<*> (x Core..:? "credentials")
            Prelude.<*> ( x Core..:? "integrationResponses"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "timeoutInMillis")
            Prelude.<*> (x Core..:? "contentHandling")
            Prelude.<*> ( x Core..:? "requestTemplates"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "passthroughBehavior")
      )

instance Prelude.Hashable Integration where
  hashWithSalt _salt Integration' {..} =
    _salt `Prelude.hashWithSalt` cacheKeyParameters
      `Prelude.hashWithSalt` requestParameters
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` connectionType
      `Prelude.hashWithSalt` tlsConfig
      `Prelude.hashWithSalt` cacheNamespace
      `Prelude.hashWithSalt` uri
      `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` httpMethod
      `Prelude.hashWithSalt` credentials
      `Prelude.hashWithSalt` integrationResponses
      `Prelude.hashWithSalt` timeoutInMillis
      `Prelude.hashWithSalt` contentHandling
      `Prelude.hashWithSalt` requestTemplates
      `Prelude.hashWithSalt` passthroughBehavior

instance Prelude.NFData Integration where
  rnf Integration' {..} =
    Prelude.rnf cacheKeyParameters
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf connectionType
      `Prelude.seq` Prelude.rnf tlsConfig
      `Prelude.seq` Prelude.rnf cacheNamespace
      `Prelude.seq` Prelude.rnf uri
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf httpMethod
      `Prelude.seq` Prelude.rnf credentials
      `Prelude.seq` Prelude.rnf integrationResponses
      `Prelude.seq` Prelude.rnf timeoutInMillis
      `Prelude.seq` Prelude.rnf contentHandling
      `Prelude.seq` Prelude.rnf requestTemplates
      `Prelude.seq` Prelude.rnf passthroughBehavior
