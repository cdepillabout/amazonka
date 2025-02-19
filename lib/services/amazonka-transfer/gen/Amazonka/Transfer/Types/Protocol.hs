{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Transfer.Types.Protocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transfer.Types.Protocol
  ( Protocol
      ( ..,
        Protocol_AS2,
        Protocol_FTP,
        Protocol_FTPS,
        Protocol_SFTP
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Protocol = Protocol'
  { fromProtocol ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern Protocol_AS2 :: Protocol
pattern Protocol_AS2 = Protocol' "AS2"

pattern Protocol_FTP :: Protocol
pattern Protocol_FTP = Protocol' "FTP"

pattern Protocol_FTPS :: Protocol
pattern Protocol_FTPS = Protocol' "FTPS"

pattern Protocol_SFTP :: Protocol
pattern Protocol_SFTP = Protocol' "SFTP"

{-# COMPLETE
  Protocol_AS2,
  Protocol_FTP,
  Protocol_FTPS,
  Protocol_SFTP,
  Protocol'
  #-}
