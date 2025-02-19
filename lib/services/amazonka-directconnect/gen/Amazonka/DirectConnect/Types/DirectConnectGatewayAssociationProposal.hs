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
-- Module      : Amazonka.DirectConnect.Types.DirectConnectGatewayAssociationProposal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectConnect.Types.DirectConnectGatewayAssociationProposal where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types.AssociatedGateway
import Amazonka.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
import Amazonka.DirectConnect.Types.RouteFilterPrefix
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the proposal request to attach a virtual private
-- gateway to a Direct Connect gateway.
--
-- /See:/ 'newDirectConnectGatewayAssociationProposal' smart constructor.
data DirectConnectGatewayAssociationProposal = DirectConnectGatewayAssociationProposal'
  { -- | The ID of the association proposal.
    proposalId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services account that owns the Direct Connect
    -- gateway.
    directConnectGatewayOwnerAccount :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Direct Connect gateway.
    directConnectGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The existing Amazon VPC prefixes advertised to the Direct Connect
    -- gateway.
    existingAllowedPrefixesToDirectConnectGateway :: Prelude.Maybe [RouteFilterPrefix],
    -- | Information about the associated gateway.
    associatedGateway :: Prelude.Maybe AssociatedGateway,
    -- | The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    requestedAllowedPrefixesToDirectConnectGateway :: Prelude.Maybe [RouteFilterPrefix],
    -- | The state of the proposal. The following are possible values:
    --
    -- -   @accepted@: The proposal has been accepted. The Direct Connect
    --     gateway association is available to use in this state.
    --
    -- -   @deleted@: The proposal has been deleted by the owner that made the
    --     proposal. The Direct Connect gateway association cannot be used in
    --     this state.
    --
    -- -   @requested@: The proposal has been requested. The Direct Connect
    --     gateway association cannot be used in this state.
    proposalState :: Prelude.Maybe DirectConnectGatewayAssociationProposalState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DirectConnectGatewayAssociationProposal' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proposalId', 'directConnectGatewayAssociationProposal_proposalId' - The ID of the association proposal.
--
-- 'directConnectGatewayOwnerAccount', 'directConnectGatewayAssociationProposal_directConnectGatewayOwnerAccount' - The ID of the Amazon Web Services account that owns the Direct Connect
-- gateway.
--
-- 'directConnectGatewayId', 'directConnectGatewayAssociationProposal_directConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- 'existingAllowedPrefixesToDirectConnectGateway', 'directConnectGatewayAssociationProposal_existingAllowedPrefixesToDirectConnectGateway' - The existing Amazon VPC prefixes advertised to the Direct Connect
-- gateway.
--
-- 'associatedGateway', 'directConnectGatewayAssociationProposal_associatedGateway' - Information about the associated gateway.
--
-- 'requestedAllowedPrefixesToDirectConnectGateway', 'directConnectGatewayAssociationProposal_requestedAllowedPrefixesToDirectConnectGateway' - The Amazon VPC prefixes to advertise to the Direct Connect gateway.
--
-- 'proposalState', 'directConnectGatewayAssociationProposal_proposalState' - The state of the proposal. The following are possible values:
--
-- -   @accepted@: The proposal has been accepted. The Direct Connect
--     gateway association is available to use in this state.
--
-- -   @deleted@: The proposal has been deleted by the owner that made the
--     proposal. The Direct Connect gateway association cannot be used in
--     this state.
--
-- -   @requested@: The proposal has been requested. The Direct Connect
--     gateway association cannot be used in this state.
newDirectConnectGatewayAssociationProposal ::
  DirectConnectGatewayAssociationProposal
newDirectConnectGatewayAssociationProposal =
  DirectConnectGatewayAssociationProposal'
    { proposalId =
        Prelude.Nothing,
      directConnectGatewayOwnerAccount =
        Prelude.Nothing,
      directConnectGatewayId =
        Prelude.Nothing,
      existingAllowedPrefixesToDirectConnectGateway =
        Prelude.Nothing,
      associatedGateway =
        Prelude.Nothing,
      requestedAllowedPrefixesToDirectConnectGateway =
        Prelude.Nothing,
      proposalState = Prelude.Nothing
    }

-- | The ID of the association proposal.
directConnectGatewayAssociationProposal_proposalId :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe Prelude.Text)
directConnectGatewayAssociationProposal_proposalId = Lens.lens (\DirectConnectGatewayAssociationProposal' {proposalId} -> proposalId) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {proposalId = a} :: DirectConnectGatewayAssociationProposal)

-- | The ID of the Amazon Web Services account that owns the Direct Connect
-- gateway.
directConnectGatewayAssociationProposal_directConnectGatewayOwnerAccount :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe Prelude.Text)
directConnectGatewayAssociationProposal_directConnectGatewayOwnerAccount = Lens.lens (\DirectConnectGatewayAssociationProposal' {directConnectGatewayOwnerAccount} -> directConnectGatewayOwnerAccount) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {directConnectGatewayOwnerAccount = a} :: DirectConnectGatewayAssociationProposal)

-- | The ID of the Direct Connect gateway.
directConnectGatewayAssociationProposal_directConnectGatewayId :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe Prelude.Text)
directConnectGatewayAssociationProposal_directConnectGatewayId = Lens.lens (\DirectConnectGatewayAssociationProposal' {directConnectGatewayId} -> directConnectGatewayId) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {directConnectGatewayId = a} :: DirectConnectGatewayAssociationProposal)

-- | The existing Amazon VPC prefixes advertised to the Direct Connect
-- gateway.
directConnectGatewayAssociationProposal_existingAllowedPrefixesToDirectConnectGateway :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe [RouteFilterPrefix])
directConnectGatewayAssociationProposal_existingAllowedPrefixesToDirectConnectGateway = Lens.lens (\DirectConnectGatewayAssociationProposal' {existingAllowedPrefixesToDirectConnectGateway} -> existingAllowedPrefixesToDirectConnectGateway) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {existingAllowedPrefixesToDirectConnectGateway = a} :: DirectConnectGatewayAssociationProposal) Prelude.. Lens.mapping Lens.coerced

-- | Information about the associated gateway.
directConnectGatewayAssociationProposal_associatedGateway :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe AssociatedGateway)
directConnectGatewayAssociationProposal_associatedGateway = Lens.lens (\DirectConnectGatewayAssociationProposal' {associatedGateway} -> associatedGateway) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {associatedGateway = a} :: DirectConnectGatewayAssociationProposal)

-- | The Amazon VPC prefixes to advertise to the Direct Connect gateway.
directConnectGatewayAssociationProposal_requestedAllowedPrefixesToDirectConnectGateway :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe [RouteFilterPrefix])
directConnectGatewayAssociationProposal_requestedAllowedPrefixesToDirectConnectGateway = Lens.lens (\DirectConnectGatewayAssociationProposal' {requestedAllowedPrefixesToDirectConnectGateway} -> requestedAllowedPrefixesToDirectConnectGateway) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {requestedAllowedPrefixesToDirectConnectGateway = a} :: DirectConnectGatewayAssociationProposal) Prelude.. Lens.mapping Lens.coerced

-- | The state of the proposal. The following are possible values:
--
-- -   @accepted@: The proposal has been accepted. The Direct Connect
--     gateway association is available to use in this state.
--
-- -   @deleted@: The proposal has been deleted by the owner that made the
--     proposal. The Direct Connect gateway association cannot be used in
--     this state.
--
-- -   @requested@: The proposal has been requested. The Direct Connect
--     gateway association cannot be used in this state.
directConnectGatewayAssociationProposal_proposalState :: Lens.Lens' DirectConnectGatewayAssociationProposal (Prelude.Maybe DirectConnectGatewayAssociationProposalState)
directConnectGatewayAssociationProposal_proposalState = Lens.lens (\DirectConnectGatewayAssociationProposal' {proposalState} -> proposalState) (\s@DirectConnectGatewayAssociationProposal' {} a -> s {proposalState = a} :: DirectConnectGatewayAssociationProposal)

instance
  Core.FromJSON
    DirectConnectGatewayAssociationProposal
  where
  parseJSON =
    Core.withObject
      "DirectConnectGatewayAssociationProposal"
      ( \x ->
          DirectConnectGatewayAssociationProposal'
            Prelude.<$> (x Core..:? "proposalId")
            Prelude.<*> (x Core..:? "directConnectGatewayOwnerAccount")
            Prelude.<*> (x Core..:? "directConnectGatewayId")
            Prelude.<*> ( x
                            Core..:? "existingAllowedPrefixesToDirectConnectGateway"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "associatedGateway")
            Prelude.<*> ( x
                            Core..:? "requestedAllowedPrefixesToDirectConnectGateway"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "proposalState")
      )

instance
  Prelude.Hashable
    DirectConnectGatewayAssociationProposal
  where
  hashWithSalt
    _salt
    DirectConnectGatewayAssociationProposal' {..} =
      _salt `Prelude.hashWithSalt` proposalId
        `Prelude.hashWithSalt` directConnectGatewayOwnerAccount
        `Prelude.hashWithSalt` directConnectGatewayId
        `Prelude.hashWithSalt` existingAllowedPrefixesToDirectConnectGateway
        `Prelude.hashWithSalt` associatedGateway
        `Prelude.hashWithSalt` requestedAllowedPrefixesToDirectConnectGateway
        `Prelude.hashWithSalt` proposalState

instance
  Prelude.NFData
    DirectConnectGatewayAssociationProposal
  where
  rnf DirectConnectGatewayAssociationProposal' {..} =
    Prelude.rnf proposalId
      `Prelude.seq` Prelude.rnf directConnectGatewayOwnerAccount
      `Prelude.seq` Prelude.rnf directConnectGatewayId
      `Prelude.seq` Prelude.rnf
        existingAllowedPrefixesToDirectConnectGateway
      `Prelude.seq` Prelude.rnf associatedGateway
      `Prelude.seq` Prelude.rnf
        requestedAllowedPrefixesToDirectConnectGateway
      `Prelude.seq` Prelude.rnf proposalState
