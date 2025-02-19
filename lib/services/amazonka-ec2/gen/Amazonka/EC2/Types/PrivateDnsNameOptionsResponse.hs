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
-- Module      : Amazonka.EC2.Types.PrivateDnsNameOptionsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.PrivateDnsNameOptionsResponse where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.HostnameType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the options for instance hostnames.
--
-- /See:/ 'newPrivateDnsNameOptionsResponse' smart constructor.
data PrivateDnsNameOptionsResponse = PrivateDnsNameOptionsResponse'
  { -- | Indicates whether to respond to DNS queries for instance hostnames with
    -- DNS A records.
    enableResourceNameDnsARecord :: Prelude.Maybe Prelude.Bool,
    -- | Indicates whether to respond to DNS queries for instance hostnames with
    -- DNS AAAA records.
    enableResourceNameDnsAAAARecord :: Prelude.Maybe Prelude.Bool,
    -- | The type of hostname to assign to an instance.
    hostnameType :: Prelude.Maybe HostnameType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrivateDnsNameOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableResourceNameDnsARecord', 'privateDnsNameOptionsResponse_enableResourceNameDnsARecord' - Indicates whether to respond to DNS queries for instance hostnames with
-- DNS A records.
--
-- 'enableResourceNameDnsAAAARecord', 'privateDnsNameOptionsResponse_enableResourceNameDnsAAAARecord' - Indicates whether to respond to DNS queries for instance hostnames with
-- DNS AAAA records.
--
-- 'hostnameType', 'privateDnsNameOptionsResponse_hostnameType' - The type of hostname to assign to an instance.
newPrivateDnsNameOptionsResponse ::
  PrivateDnsNameOptionsResponse
newPrivateDnsNameOptionsResponse =
  PrivateDnsNameOptionsResponse'
    { enableResourceNameDnsARecord =
        Prelude.Nothing,
      enableResourceNameDnsAAAARecord =
        Prelude.Nothing,
      hostnameType = Prelude.Nothing
    }

-- | Indicates whether to respond to DNS queries for instance hostnames with
-- DNS A records.
privateDnsNameOptionsResponse_enableResourceNameDnsARecord :: Lens.Lens' PrivateDnsNameOptionsResponse (Prelude.Maybe Prelude.Bool)
privateDnsNameOptionsResponse_enableResourceNameDnsARecord = Lens.lens (\PrivateDnsNameOptionsResponse' {enableResourceNameDnsARecord} -> enableResourceNameDnsARecord) (\s@PrivateDnsNameOptionsResponse' {} a -> s {enableResourceNameDnsARecord = a} :: PrivateDnsNameOptionsResponse)

-- | Indicates whether to respond to DNS queries for instance hostnames with
-- DNS AAAA records.
privateDnsNameOptionsResponse_enableResourceNameDnsAAAARecord :: Lens.Lens' PrivateDnsNameOptionsResponse (Prelude.Maybe Prelude.Bool)
privateDnsNameOptionsResponse_enableResourceNameDnsAAAARecord = Lens.lens (\PrivateDnsNameOptionsResponse' {enableResourceNameDnsAAAARecord} -> enableResourceNameDnsAAAARecord) (\s@PrivateDnsNameOptionsResponse' {} a -> s {enableResourceNameDnsAAAARecord = a} :: PrivateDnsNameOptionsResponse)

-- | The type of hostname to assign to an instance.
privateDnsNameOptionsResponse_hostnameType :: Lens.Lens' PrivateDnsNameOptionsResponse (Prelude.Maybe HostnameType)
privateDnsNameOptionsResponse_hostnameType = Lens.lens (\PrivateDnsNameOptionsResponse' {hostnameType} -> hostnameType) (\s@PrivateDnsNameOptionsResponse' {} a -> s {hostnameType = a} :: PrivateDnsNameOptionsResponse)

instance Core.FromXML PrivateDnsNameOptionsResponse where
  parseXML x =
    PrivateDnsNameOptionsResponse'
      Prelude.<$> (x Core..@? "enableResourceNameDnsARecord")
      Prelude.<*> (x Core..@? "enableResourceNameDnsAAAARecord")
      Prelude.<*> (x Core..@? "hostnameType")

instance
  Prelude.Hashable
    PrivateDnsNameOptionsResponse
  where
  hashWithSalt _salt PrivateDnsNameOptionsResponse' {..} =
    _salt
      `Prelude.hashWithSalt` enableResourceNameDnsARecord
      `Prelude.hashWithSalt` enableResourceNameDnsAAAARecord
      `Prelude.hashWithSalt` hostnameType

instance Prelude.NFData PrivateDnsNameOptionsResponse where
  rnf PrivateDnsNameOptionsResponse' {..} =
    Prelude.rnf enableResourceNameDnsARecord
      `Prelude.seq` Prelude.rnf enableResourceNameDnsAAAARecord
      `Prelude.seq` Prelude.rnf hostnameType
