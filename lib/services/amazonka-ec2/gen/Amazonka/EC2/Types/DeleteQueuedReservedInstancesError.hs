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
-- Module      : Amazonka.EC2.Types.DeleteQueuedReservedInstancesError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.DeleteQueuedReservedInstancesError where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.DeleteQueuedReservedInstancesErrorCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the error for a Reserved Instance whose queued purchase could
-- not be deleted.
--
-- /See:/ 'newDeleteQueuedReservedInstancesError' smart constructor.
data DeleteQueuedReservedInstancesError = DeleteQueuedReservedInstancesError'
  { -- | The error message.
    message :: Prelude.Maybe Prelude.Text,
    -- | The error code.
    code :: Prelude.Maybe DeleteQueuedReservedInstancesErrorCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteQueuedReservedInstancesError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'deleteQueuedReservedInstancesError_message' - The error message.
--
-- 'code', 'deleteQueuedReservedInstancesError_code' - The error code.
newDeleteQueuedReservedInstancesError ::
  DeleteQueuedReservedInstancesError
newDeleteQueuedReservedInstancesError =
  DeleteQueuedReservedInstancesError'
    { message =
        Prelude.Nothing,
      code = Prelude.Nothing
    }

-- | The error message.
deleteQueuedReservedInstancesError_message :: Lens.Lens' DeleteQueuedReservedInstancesError (Prelude.Maybe Prelude.Text)
deleteQueuedReservedInstancesError_message = Lens.lens (\DeleteQueuedReservedInstancesError' {message} -> message) (\s@DeleteQueuedReservedInstancesError' {} a -> s {message = a} :: DeleteQueuedReservedInstancesError)

-- | The error code.
deleteQueuedReservedInstancesError_code :: Lens.Lens' DeleteQueuedReservedInstancesError (Prelude.Maybe DeleteQueuedReservedInstancesErrorCode)
deleteQueuedReservedInstancesError_code = Lens.lens (\DeleteQueuedReservedInstancesError' {code} -> code) (\s@DeleteQueuedReservedInstancesError' {} a -> s {code = a} :: DeleteQueuedReservedInstancesError)

instance
  Core.FromXML
    DeleteQueuedReservedInstancesError
  where
  parseXML x =
    DeleteQueuedReservedInstancesError'
      Prelude.<$> (x Core..@? "message")
      Prelude.<*> (x Core..@? "code")

instance
  Prelude.Hashable
    DeleteQueuedReservedInstancesError
  where
  hashWithSalt
    _salt
    DeleteQueuedReservedInstancesError' {..} =
      _salt `Prelude.hashWithSalt` message
        `Prelude.hashWithSalt` code

instance
  Prelude.NFData
    DeleteQueuedReservedInstancesError
  where
  rnf DeleteQueuedReservedInstancesError' {..} =
    Prelude.rnf message `Prelude.seq` Prelude.rnf code
