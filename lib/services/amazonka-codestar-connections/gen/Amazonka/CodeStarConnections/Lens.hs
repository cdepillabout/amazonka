{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CodeStarConnections.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeStarConnections.Lens
  ( -- * Operations

    -- ** CreateConnection
    createConnection_tags,
    createConnection_hostArn,
    createConnection_providerType,
    createConnection_connectionName,
    createConnectionResponse_tags,
    createConnectionResponse_httpStatus,
    createConnectionResponse_connectionArn,

    -- ** CreateHost
    createHost_tags,
    createHost_vpcConfiguration,
    createHost_name,
    createHost_providerType,
    createHost_providerEndpoint,
    createHostResponse_tags,
    createHostResponse_hostArn,
    createHostResponse_httpStatus,

    -- ** DeleteConnection
    deleteConnection_connectionArn,
    deleteConnectionResponse_httpStatus,

    -- ** DeleteHost
    deleteHost_hostArn,
    deleteHostResponse_httpStatus,

    -- ** GetConnection
    getConnection_connectionArn,
    getConnectionResponse_connection,
    getConnectionResponse_httpStatus,

    -- ** GetHost
    getHost_hostArn,
    getHostResponse_vpcConfiguration,
    getHostResponse_name,
    getHostResponse_providerEndpoint,
    getHostResponse_status,
    getHostResponse_providerType,
    getHostResponse_httpStatus,

    -- ** ListConnections
    listConnections_hostArnFilter,
    listConnections_providerTypeFilter,
    listConnections_nextToken,
    listConnections_maxResults,
    listConnectionsResponse_nextToken,
    listConnectionsResponse_connections,
    listConnectionsResponse_httpStatus,

    -- ** ListHosts
    listHosts_nextToken,
    listHosts_maxResults,
    listHostsResponse_nextToken,
    listHostsResponse_hosts,
    listHostsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateHost
    updateHost_vpcConfiguration,
    updateHost_providerEndpoint,
    updateHost_hostArn,
    updateHostResponse_httpStatus,

    -- * Types

    -- ** Connection
    connection_hostArn,
    connection_connectionArn,
    connection_providerType,
    connection_ownerAccountId,
    connection_connectionStatus,
    connection_connectionName,

    -- ** Host
    host_vpcConfiguration,
    host_name,
    host_hostArn,
    host_providerEndpoint,
    host_status,
    host_providerType,
    host_statusMessage,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** VpcConfiguration
    vpcConfiguration_tlsCertificate,
    vpcConfiguration_vpcId,
    vpcConfiguration_subnetIds,
    vpcConfiguration_securityGroupIds,
  )
where

import Amazonka.CodeStarConnections.CreateConnection
import Amazonka.CodeStarConnections.CreateHost
import Amazonka.CodeStarConnections.DeleteConnection
import Amazonka.CodeStarConnections.DeleteHost
import Amazonka.CodeStarConnections.GetConnection
import Amazonka.CodeStarConnections.GetHost
import Amazonka.CodeStarConnections.ListConnections
import Amazonka.CodeStarConnections.ListHosts
import Amazonka.CodeStarConnections.ListTagsForResource
import Amazonka.CodeStarConnections.TagResource
import Amazonka.CodeStarConnections.Types.Connection
import Amazonka.CodeStarConnections.Types.Host
import Amazonka.CodeStarConnections.Types.Tag
import Amazonka.CodeStarConnections.Types.VpcConfiguration
import Amazonka.CodeStarConnections.UntagResource
import Amazonka.CodeStarConnections.UpdateHost
