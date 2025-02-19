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
-- Module      : Amazonka.ManagedBlockChain.CreateNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node on the specified blockchain network.
--
-- Applies to Hyperledger Fabric and Ethereum.
module Amazonka.ManagedBlockChain.CreateNode
  ( -- * Creating a Request
    CreateNode (..),
    newCreateNode,

    -- * Request Lenses
    createNode_tags,
    createNode_memberId,
    createNode_clientRequestToken,
    createNode_networkId,
    createNode_nodeConfiguration,

    -- * Destructuring the Response
    CreateNodeResponse (..),
    newCreateNodeResponse,

    -- * Response Lenses
    createNodeResponse_nodeId,
    createNodeResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.ManagedBlockChain.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateNode' smart constructor.
data CreateNode = CreateNode'
  { -- | Tags to assign to the node. Each tag consists of a key and optional
    -- value.
    --
    -- When specifying tags during creation, you can specify multiple key-value
    -- pairs in a single request, with an overall maximum of 50 tags added to
    -- each resource.
    --
    -- For more information about tags, see
    -- <https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html Tagging Resources>
    -- in the /Amazon Managed Blockchain Ethereum Developer Guide/, or
    -- <https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html Tagging Resources>
    -- in the /Amazon Managed Blockchain Hyperledger Fabric Developer Guide/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique identifier of the member that owns this node.
    --
    -- Applies only to Hyperledger Fabric.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the operation. An idempotent operation completes no more
    -- than one time. This identifier is required only if you make a service
    -- request directly using an HTTP client. It is generated automatically if
    -- you use an AWS SDK or the AWS CLI.
    clientRequestToken :: Prelude.Text,
    -- | The unique identifier of the network for the node.
    --
    -- Ethereum public networks have the following @NetworkId@s:
    --
    -- -   @n-ethereum-mainnet@
    --
    -- -   @n-ethereum-rinkeby@
    --
    -- -   @n-ethereum-ropsten@
    networkId :: Prelude.Text,
    -- | The properties of a node configuration.
    nodeConfiguration :: NodeConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createNode_tags' - Tags to assign to the node. Each tag consists of a key and optional
-- value.
--
-- When specifying tags during creation, you can specify multiple key-value
-- pairs in a single request, with an overall maximum of 50 tags added to
-- each resource.
--
-- For more information about tags, see
-- <https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html Tagging Resources>
-- in the /Amazon Managed Blockchain Ethereum Developer Guide/, or
-- <https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html Tagging Resources>
-- in the /Amazon Managed Blockchain Hyperledger Fabric Developer Guide/.
--
-- 'memberId', 'createNode_memberId' - The unique identifier of the member that owns this node.
--
-- Applies only to Hyperledger Fabric.
--
-- 'clientRequestToken', 'createNode_clientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the operation. An idempotent operation completes no more
-- than one time. This identifier is required only if you make a service
-- request directly using an HTTP client. It is generated automatically if
-- you use an AWS SDK or the AWS CLI.
--
-- 'networkId', 'createNode_networkId' - The unique identifier of the network for the node.
--
-- Ethereum public networks have the following @NetworkId@s:
--
-- -   @n-ethereum-mainnet@
--
-- -   @n-ethereum-rinkeby@
--
-- -   @n-ethereum-ropsten@
--
-- 'nodeConfiguration', 'createNode_nodeConfiguration' - The properties of a node configuration.
newCreateNode ::
  -- | 'clientRequestToken'
  Prelude.Text ->
  -- | 'networkId'
  Prelude.Text ->
  -- | 'nodeConfiguration'
  NodeConfiguration ->
  CreateNode
newCreateNode
  pClientRequestToken_
  pNetworkId_
  pNodeConfiguration_ =
    CreateNode'
      { tags = Prelude.Nothing,
        memberId = Prelude.Nothing,
        clientRequestToken = pClientRequestToken_,
        networkId = pNetworkId_,
        nodeConfiguration = pNodeConfiguration_
      }

-- | Tags to assign to the node. Each tag consists of a key and optional
-- value.
--
-- When specifying tags during creation, you can specify multiple key-value
-- pairs in a single request, with an overall maximum of 50 tags added to
-- each resource.
--
-- For more information about tags, see
-- <https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html Tagging Resources>
-- in the /Amazon Managed Blockchain Ethereum Developer Guide/, or
-- <https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html Tagging Resources>
-- in the /Amazon Managed Blockchain Hyperledger Fabric Developer Guide/.
createNode_tags :: Lens.Lens' CreateNode (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createNode_tags = Lens.lens (\CreateNode' {tags} -> tags) (\s@CreateNode' {} a -> s {tags = a} :: CreateNode) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the member that owns this node.
--
-- Applies only to Hyperledger Fabric.
createNode_memberId :: Lens.Lens' CreateNode (Prelude.Maybe Prelude.Text)
createNode_memberId = Lens.lens (\CreateNode' {memberId} -> memberId) (\s@CreateNode' {} a -> s {memberId = a} :: CreateNode)

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the operation. An idempotent operation completes no more
-- than one time. This identifier is required only if you make a service
-- request directly using an HTTP client. It is generated automatically if
-- you use an AWS SDK or the AWS CLI.
createNode_clientRequestToken :: Lens.Lens' CreateNode Prelude.Text
createNode_clientRequestToken = Lens.lens (\CreateNode' {clientRequestToken} -> clientRequestToken) (\s@CreateNode' {} a -> s {clientRequestToken = a} :: CreateNode)

-- | The unique identifier of the network for the node.
--
-- Ethereum public networks have the following @NetworkId@s:
--
-- -   @n-ethereum-mainnet@
--
-- -   @n-ethereum-rinkeby@
--
-- -   @n-ethereum-ropsten@
createNode_networkId :: Lens.Lens' CreateNode Prelude.Text
createNode_networkId = Lens.lens (\CreateNode' {networkId} -> networkId) (\s@CreateNode' {} a -> s {networkId = a} :: CreateNode)

-- | The properties of a node configuration.
createNode_nodeConfiguration :: Lens.Lens' CreateNode NodeConfiguration
createNode_nodeConfiguration = Lens.lens (\CreateNode' {nodeConfiguration} -> nodeConfiguration) (\s@CreateNode' {} a -> s {nodeConfiguration = a} :: CreateNode)

instance Core.AWSRequest CreateNode where
  type AWSResponse CreateNode = CreateNodeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateNodeResponse'
            Prelude.<$> (x Core..?> "NodeId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateNode where
  hashWithSalt _salt CreateNode' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` memberId
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` networkId
      `Prelude.hashWithSalt` nodeConfiguration

instance Prelude.NFData CreateNode where
  rnf CreateNode' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf memberId
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf networkId
      `Prelude.seq` Prelude.rnf nodeConfiguration

instance Core.ToHeaders CreateNode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateNode where
  toJSON CreateNode' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("MemberId" Core..=) Prelude.<$> memberId,
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken),
            Prelude.Just
              ("NodeConfiguration" Core..= nodeConfiguration)
          ]
      )

instance Core.ToPath CreateNode where
  toPath CreateNode' {..} =
    Prelude.mconcat
      ["/networks/", Core.toBS networkId, "/nodes"]

instance Core.ToQuery CreateNode where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateNodeResponse' smart constructor.
data CreateNodeResponse = CreateNodeResponse'
  { -- | The unique identifier of the node.
    nodeId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeId', 'createNodeResponse_nodeId' - The unique identifier of the node.
--
-- 'httpStatus', 'createNodeResponse_httpStatus' - The response's http status code.
newCreateNodeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateNodeResponse
newCreateNodeResponse pHttpStatus_ =
  CreateNodeResponse'
    { nodeId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier of the node.
createNodeResponse_nodeId :: Lens.Lens' CreateNodeResponse (Prelude.Maybe Prelude.Text)
createNodeResponse_nodeId = Lens.lens (\CreateNodeResponse' {nodeId} -> nodeId) (\s@CreateNodeResponse' {} a -> s {nodeId = a} :: CreateNodeResponse)

-- | The response's http status code.
createNodeResponse_httpStatus :: Lens.Lens' CreateNodeResponse Prelude.Int
createNodeResponse_httpStatus = Lens.lens (\CreateNodeResponse' {httpStatus} -> httpStatus) (\s@CreateNodeResponse' {} a -> s {httpStatus = a} :: CreateNodeResponse)

instance Prelude.NFData CreateNodeResponse where
  rnf CreateNodeResponse' {..} =
    Prelude.rnf nodeId
      `Prelude.seq` Prelude.rnf httpStatus
