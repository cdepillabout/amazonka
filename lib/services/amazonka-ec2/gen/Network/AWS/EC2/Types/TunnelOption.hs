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
-- Module      : Amazonka.EC2.Types.TunnelOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TunnelOption where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.IKEVersionsListValue
import Amazonka.EC2.Types.Phase1DHGroupNumbersListValue
import Amazonka.EC2.Types.Phase1EncryptionAlgorithmsListValue
import Amazonka.EC2.Types.Phase1IntegrityAlgorithmsListValue
import Amazonka.EC2.Types.Phase2DHGroupNumbersListValue
import Amazonka.EC2.Types.Phase2EncryptionAlgorithmsListValue
import Amazonka.EC2.Types.Phase2IntegrityAlgorithmsListValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The VPN tunnel options.
--
-- /See:/ 'newTunnelOption' smart constructor.
data TunnelOption = TunnelOption'
  { -- | The external IP address of the VPN tunnel.
    outsideIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The number of packets in an IKE replay window.
    replayWindowSize :: Prelude.Maybe Prelude.Int,
    -- | The action to take after a DPD timeout occurs.
    dpdTimeoutAction :: Prelude.Maybe Prelude.Text,
    -- | The percentage of the rekey window determined by
    -- @RekeyMarginTimeSeconds@ during which the rekey time is randomly
    -- selected.
    rekeyFuzzPercentage :: Prelude.Maybe Prelude.Int,
    -- | The lifetime for phase 1 of the IKE negotiation, in seconds.
    phase1LifetimeSeconds :: Prelude.Maybe Prelude.Int,
    -- | The IKE versions that are permitted for the VPN tunnel.
    ikeVersions :: Prelude.Maybe [IKEVersionsListValue],
    -- | The permitted integrity algorithms for the VPN tunnel for phase 2 IKE
    -- negotiations.
    phase2IntegrityAlgorithms :: Prelude.Maybe [Phase2IntegrityAlgorithmsListValue],
    -- | The lifetime for phase 2 of the IKE negotiation, in seconds.
    phase2LifetimeSeconds :: Prelude.Maybe Prelude.Int,
    -- | The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
    -- negotiations.
    phase1EncryptionAlgorithms :: Prelude.Maybe [Phase1EncryptionAlgorithmsListValue],
    -- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
    -- 1 IKE negotiations.
    phase1DHGroupNumbers :: Prelude.Maybe [Phase1DHGroupNumbersListValue],
    -- | The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
    -- negotiations.
    phase1IntegrityAlgorithms :: Prelude.Maybe [Phase1IntegrityAlgorithmsListValue],
    -- | The margin time, in seconds, before the phase 2 lifetime expires, during
    -- which the Amazon Web Services side of the VPN connection performs an IKE
    -- rekey.
    rekeyMarginTimeSeconds :: Prelude.Maybe Prelude.Int,
    -- | The number of seconds after which a DPD timeout occurs.
    dpdTimeoutSeconds :: Prelude.Maybe Prelude.Int,
    -- | The range of inside IPv4 addresses for the tunnel.
    tunnelInsideCidr :: Prelude.Maybe Prelude.Text,
    -- | The action to take when the establishing the VPN tunnels for a VPN
    -- connection.
    startupAction :: Prelude.Maybe Prelude.Text,
    -- | The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
    -- negotiations.
    phase2EncryptionAlgorithms :: Prelude.Maybe [Phase2EncryptionAlgorithmsListValue],
    -- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
    -- 2 IKE negotiations.
    phase2DHGroupNumbers :: Prelude.Maybe [Phase2DHGroupNumbersListValue],
    -- | The pre-shared key (PSK) to establish initial authentication between the
    -- virtual private gateway and the customer gateway.
    preSharedKey :: Prelude.Maybe Prelude.Text,
    -- | The range of inside IPv6 addresses for the tunnel.
    tunnelInsideIpv6Cidr :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TunnelOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outsideIpAddress', 'tunnelOption_outsideIpAddress' - The external IP address of the VPN tunnel.
--
-- 'replayWindowSize', 'tunnelOption_replayWindowSize' - The number of packets in an IKE replay window.
--
-- 'dpdTimeoutAction', 'tunnelOption_dpdTimeoutAction' - The action to take after a DPD timeout occurs.
--
-- 'rekeyFuzzPercentage', 'tunnelOption_rekeyFuzzPercentage' - The percentage of the rekey window determined by
-- @RekeyMarginTimeSeconds@ during which the rekey time is randomly
-- selected.
--
-- 'phase1LifetimeSeconds', 'tunnelOption_phase1LifetimeSeconds' - The lifetime for phase 1 of the IKE negotiation, in seconds.
--
-- 'ikeVersions', 'tunnelOption_ikeVersions' - The IKE versions that are permitted for the VPN tunnel.
--
-- 'phase2IntegrityAlgorithms', 'tunnelOption_phase2IntegrityAlgorithms' - The permitted integrity algorithms for the VPN tunnel for phase 2 IKE
-- negotiations.
--
-- 'phase2LifetimeSeconds', 'tunnelOption_phase2LifetimeSeconds' - The lifetime for phase 2 of the IKE negotiation, in seconds.
--
-- 'phase1EncryptionAlgorithms', 'tunnelOption_phase1EncryptionAlgorithms' - The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
-- negotiations.
--
-- 'phase1DHGroupNumbers', 'tunnelOption_phase1DHGroupNumbers' - The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
-- 1 IKE negotiations.
--
-- 'phase1IntegrityAlgorithms', 'tunnelOption_phase1IntegrityAlgorithms' - The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
-- negotiations.
--
-- 'rekeyMarginTimeSeconds', 'tunnelOption_rekeyMarginTimeSeconds' - The margin time, in seconds, before the phase 2 lifetime expires, during
-- which the Amazon Web Services side of the VPN connection performs an IKE
-- rekey.
--
-- 'dpdTimeoutSeconds', 'tunnelOption_dpdTimeoutSeconds' - The number of seconds after which a DPD timeout occurs.
--
-- 'tunnelInsideCidr', 'tunnelOption_tunnelInsideCidr' - The range of inside IPv4 addresses for the tunnel.
--
-- 'startupAction', 'tunnelOption_startupAction' - The action to take when the establishing the VPN tunnels for a VPN
-- connection.
--
-- 'phase2EncryptionAlgorithms', 'tunnelOption_phase2EncryptionAlgorithms' - The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
-- negotiations.
--
-- 'phase2DHGroupNumbers', 'tunnelOption_phase2DHGroupNumbers' - The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
-- 2 IKE negotiations.
--
-- 'preSharedKey', 'tunnelOption_preSharedKey' - The pre-shared key (PSK) to establish initial authentication between the
-- virtual private gateway and the customer gateway.
--
-- 'tunnelInsideIpv6Cidr', 'tunnelOption_tunnelInsideIpv6Cidr' - The range of inside IPv6 addresses for the tunnel.
newTunnelOption ::
  TunnelOption
newTunnelOption =
  TunnelOption'
    { outsideIpAddress = Prelude.Nothing,
      replayWindowSize = Prelude.Nothing,
      dpdTimeoutAction = Prelude.Nothing,
      rekeyFuzzPercentage = Prelude.Nothing,
      phase1LifetimeSeconds = Prelude.Nothing,
      ikeVersions = Prelude.Nothing,
      phase2IntegrityAlgorithms = Prelude.Nothing,
      phase2LifetimeSeconds = Prelude.Nothing,
      phase1EncryptionAlgorithms = Prelude.Nothing,
      phase1DHGroupNumbers = Prelude.Nothing,
      phase1IntegrityAlgorithms = Prelude.Nothing,
      rekeyMarginTimeSeconds = Prelude.Nothing,
      dpdTimeoutSeconds = Prelude.Nothing,
      tunnelInsideCidr = Prelude.Nothing,
      startupAction = Prelude.Nothing,
      phase2EncryptionAlgorithms = Prelude.Nothing,
      phase2DHGroupNumbers = Prelude.Nothing,
      preSharedKey = Prelude.Nothing,
      tunnelInsideIpv6Cidr = Prelude.Nothing
    }

-- | The external IP address of the VPN tunnel.
tunnelOption_outsideIpAddress :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_outsideIpAddress = Lens.lens (\TunnelOption' {outsideIpAddress} -> outsideIpAddress) (\s@TunnelOption' {} a -> s {outsideIpAddress = a} :: TunnelOption)

-- | The number of packets in an IKE replay window.
tunnelOption_replayWindowSize :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_replayWindowSize = Lens.lens (\TunnelOption' {replayWindowSize} -> replayWindowSize) (\s@TunnelOption' {} a -> s {replayWindowSize = a} :: TunnelOption)

-- | The action to take after a DPD timeout occurs.
tunnelOption_dpdTimeoutAction :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_dpdTimeoutAction = Lens.lens (\TunnelOption' {dpdTimeoutAction} -> dpdTimeoutAction) (\s@TunnelOption' {} a -> s {dpdTimeoutAction = a} :: TunnelOption)

-- | The percentage of the rekey window determined by
-- @RekeyMarginTimeSeconds@ during which the rekey time is randomly
-- selected.
tunnelOption_rekeyFuzzPercentage :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_rekeyFuzzPercentage = Lens.lens (\TunnelOption' {rekeyFuzzPercentage} -> rekeyFuzzPercentage) (\s@TunnelOption' {} a -> s {rekeyFuzzPercentage = a} :: TunnelOption)

-- | The lifetime for phase 1 of the IKE negotiation, in seconds.
tunnelOption_phase1LifetimeSeconds :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_phase1LifetimeSeconds = Lens.lens (\TunnelOption' {phase1LifetimeSeconds} -> phase1LifetimeSeconds) (\s@TunnelOption' {} a -> s {phase1LifetimeSeconds = a} :: TunnelOption)

-- | The IKE versions that are permitted for the VPN tunnel.
tunnelOption_ikeVersions :: Lens.Lens' TunnelOption (Prelude.Maybe [IKEVersionsListValue])
tunnelOption_ikeVersions = Lens.lens (\TunnelOption' {ikeVersions} -> ikeVersions) (\s@TunnelOption' {} a -> s {ikeVersions = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The permitted integrity algorithms for the VPN tunnel for phase 2 IKE
-- negotiations.
tunnelOption_phase2IntegrityAlgorithms :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase2IntegrityAlgorithmsListValue])
tunnelOption_phase2IntegrityAlgorithms = Lens.lens (\TunnelOption' {phase2IntegrityAlgorithms} -> phase2IntegrityAlgorithms) (\s@TunnelOption' {} a -> s {phase2IntegrityAlgorithms = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The lifetime for phase 2 of the IKE negotiation, in seconds.
tunnelOption_phase2LifetimeSeconds :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_phase2LifetimeSeconds = Lens.lens (\TunnelOption' {phase2LifetimeSeconds} -> phase2LifetimeSeconds) (\s@TunnelOption' {} a -> s {phase2LifetimeSeconds = a} :: TunnelOption)

-- | The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
-- negotiations.
tunnelOption_phase1EncryptionAlgorithms :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase1EncryptionAlgorithmsListValue])
tunnelOption_phase1EncryptionAlgorithms = Lens.lens (\TunnelOption' {phase1EncryptionAlgorithms} -> phase1EncryptionAlgorithms) (\s@TunnelOption' {} a -> s {phase1EncryptionAlgorithms = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
-- 1 IKE negotiations.
tunnelOption_phase1DHGroupNumbers :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase1DHGroupNumbersListValue])
tunnelOption_phase1DHGroupNumbers = Lens.lens (\TunnelOption' {phase1DHGroupNumbers} -> phase1DHGroupNumbers) (\s@TunnelOption' {} a -> s {phase1DHGroupNumbers = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
-- negotiations.
tunnelOption_phase1IntegrityAlgorithms :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase1IntegrityAlgorithmsListValue])
tunnelOption_phase1IntegrityAlgorithms = Lens.lens (\TunnelOption' {phase1IntegrityAlgorithms} -> phase1IntegrityAlgorithms) (\s@TunnelOption' {} a -> s {phase1IntegrityAlgorithms = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The margin time, in seconds, before the phase 2 lifetime expires, during
-- which the Amazon Web Services side of the VPN connection performs an IKE
-- rekey.
tunnelOption_rekeyMarginTimeSeconds :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_rekeyMarginTimeSeconds = Lens.lens (\TunnelOption' {rekeyMarginTimeSeconds} -> rekeyMarginTimeSeconds) (\s@TunnelOption' {} a -> s {rekeyMarginTimeSeconds = a} :: TunnelOption)

-- | The number of seconds after which a DPD timeout occurs.
tunnelOption_dpdTimeoutSeconds :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Int)
tunnelOption_dpdTimeoutSeconds = Lens.lens (\TunnelOption' {dpdTimeoutSeconds} -> dpdTimeoutSeconds) (\s@TunnelOption' {} a -> s {dpdTimeoutSeconds = a} :: TunnelOption)

-- | The range of inside IPv4 addresses for the tunnel.
tunnelOption_tunnelInsideCidr :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_tunnelInsideCidr = Lens.lens (\TunnelOption' {tunnelInsideCidr} -> tunnelInsideCidr) (\s@TunnelOption' {} a -> s {tunnelInsideCidr = a} :: TunnelOption)

-- | The action to take when the establishing the VPN tunnels for a VPN
-- connection.
tunnelOption_startupAction :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_startupAction = Lens.lens (\TunnelOption' {startupAction} -> startupAction) (\s@TunnelOption' {} a -> s {startupAction = a} :: TunnelOption)

-- | The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
-- negotiations.
tunnelOption_phase2EncryptionAlgorithms :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase2EncryptionAlgorithmsListValue])
tunnelOption_phase2EncryptionAlgorithms = Lens.lens (\TunnelOption' {phase2EncryptionAlgorithms} -> phase2EncryptionAlgorithms) (\s@TunnelOption' {} a -> s {phase2EncryptionAlgorithms = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
-- 2 IKE negotiations.
tunnelOption_phase2DHGroupNumbers :: Lens.Lens' TunnelOption (Prelude.Maybe [Phase2DHGroupNumbersListValue])
tunnelOption_phase2DHGroupNumbers = Lens.lens (\TunnelOption' {phase2DHGroupNumbers} -> phase2DHGroupNumbers) (\s@TunnelOption' {} a -> s {phase2DHGroupNumbers = a} :: TunnelOption) Prelude.. Lens.mapping Lens.coerced

-- | The pre-shared key (PSK) to establish initial authentication between the
-- virtual private gateway and the customer gateway.
tunnelOption_preSharedKey :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_preSharedKey = Lens.lens (\TunnelOption' {preSharedKey} -> preSharedKey) (\s@TunnelOption' {} a -> s {preSharedKey = a} :: TunnelOption)

-- | The range of inside IPv6 addresses for the tunnel.
tunnelOption_tunnelInsideIpv6Cidr :: Lens.Lens' TunnelOption (Prelude.Maybe Prelude.Text)
tunnelOption_tunnelInsideIpv6Cidr = Lens.lens (\TunnelOption' {tunnelInsideIpv6Cidr} -> tunnelInsideIpv6Cidr) (\s@TunnelOption' {} a -> s {tunnelInsideIpv6Cidr = a} :: TunnelOption)

instance Core.FromXML TunnelOption where
  parseXML x =
    TunnelOption'
      Prelude.<$> (x Core..@? "outsideIpAddress")
      Prelude.<*> (x Core..@? "replayWindowSize")
      Prelude.<*> (x Core..@? "dpdTimeoutAction")
      Prelude.<*> (x Core..@? "rekeyFuzzPercentage")
      Prelude.<*> (x Core..@? "phase1LifetimeSeconds")
      Prelude.<*> ( x Core..@? "ikeVersionSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "phase2IntegrityAlgorithmSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "phase2LifetimeSeconds")
      Prelude.<*> ( x Core..@? "phase1EncryptionAlgorithmSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "phase1DHGroupNumberSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "phase1IntegrityAlgorithmSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "rekeyMarginTimeSeconds")
      Prelude.<*> (x Core..@? "dpdTimeoutSeconds")
      Prelude.<*> (x Core..@? "tunnelInsideCidr")
      Prelude.<*> (x Core..@? "startupAction")
      Prelude.<*> ( x Core..@? "phase2EncryptionAlgorithmSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "phase2DHGroupNumberSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "preSharedKey")
      Prelude.<*> (x Core..@? "tunnelInsideIpv6Cidr")

instance Prelude.Hashable TunnelOption

instance Prelude.NFData TunnelOption
