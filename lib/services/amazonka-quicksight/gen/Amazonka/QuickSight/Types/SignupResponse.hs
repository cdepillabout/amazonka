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
-- Module      : Amazonka.QuickSight.Types.SignupResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.SignupResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A @SignupResponse@ object that contains a summary of a newly created
-- account.
--
-- /See:/ 'newSignupResponse' smart constructor.
data SignupResponse = SignupResponse'
  { -- | The type of Active Directory that is being used to authenticate the
    -- Amazon QuickSight account. Valid values are @SIMPLE_AD@, @AD_CONNECTOR@,
    -- and @MICROSOFT_AD@.
    directoryType :: Prelude.Maybe Prelude.Text,
    -- | The user login name for your Amazon QuickSight account.
    userLoginName :: Prelude.Maybe Prelude.Text,
    -- | A Boolean that is @TRUE@ if the Amazon QuickSight uses IAM as an
    -- authentication method.
    iAMUser :: Prelude.Maybe Prelude.Bool,
    -- | The name of your Amazon QuickSight account.
    accountName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SignupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryType', 'signupResponse_directoryType' - The type of Active Directory that is being used to authenticate the
-- Amazon QuickSight account. Valid values are @SIMPLE_AD@, @AD_CONNECTOR@,
-- and @MICROSOFT_AD@.
--
-- 'userLoginName', 'signupResponse_userLoginName' - The user login name for your Amazon QuickSight account.
--
-- 'iAMUser', 'signupResponse_iAMUser' - A Boolean that is @TRUE@ if the Amazon QuickSight uses IAM as an
-- authentication method.
--
-- 'accountName', 'signupResponse_accountName' - The name of your Amazon QuickSight account.
newSignupResponse ::
  SignupResponse
newSignupResponse =
  SignupResponse'
    { directoryType = Prelude.Nothing,
      userLoginName = Prelude.Nothing,
      iAMUser = Prelude.Nothing,
      accountName = Prelude.Nothing
    }

-- | The type of Active Directory that is being used to authenticate the
-- Amazon QuickSight account. Valid values are @SIMPLE_AD@, @AD_CONNECTOR@,
-- and @MICROSOFT_AD@.
signupResponse_directoryType :: Lens.Lens' SignupResponse (Prelude.Maybe Prelude.Text)
signupResponse_directoryType = Lens.lens (\SignupResponse' {directoryType} -> directoryType) (\s@SignupResponse' {} a -> s {directoryType = a} :: SignupResponse)

-- | The user login name for your Amazon QuickSight account.
signupResponse_userLoginName :: Lens.Lens' SignupResponse (Prelude.Maybe Prelude.Text)
signupResponse_userLoginName = Lens.lens (\SignupResponse' {userLoginName} -> userLoginName) (\s@SignupResponse' {} a -> s {userLoginName = a} :: SignupResponse)

-- | A Boolean that is @TRUE@ if the Amazon QuickSight uses IAM as an
-- authentication method.
signupResponse_iAMUser :: Lens.Lens' SignupResponse (Prelude.Maybe Prelude.Bool)
signupResponse_iAMUser = Lens.lens (\SignupResponse' {iAMUser} -> iAMUser) (\s@SignupResponse' {} a -> s {iAMUser = a} :: SignupResponse)

-- | The name of your Amazon QuickSight account.
signupResponse_accountName :: Lens.Lens' SignupResponse (Prelude.Maybe Prelude.Text)
signupResponse_accountName = Lens.lens (\SignupResponse' {accountName} -> accountName) (\s@SignupResponse' {} a -> s {accountName = a} :: SignupResponse)

instance Core.FromJSON SignupResponse where
  parseJSON =
    Core.withObject
      "SignupResponse"
      ( \x ->
          SignupResponse'
            Prelude.<$> (x Core..:? "directoryType")
            Prelude.<*> (x Core..:? "userLoginName")
            Prelude.<*> (x Core..:? "IAMUser")
            Prelude.<*> (x Core..:? "accountName")
      )

instance Prelude.Hashable SignupResponse where
  hashWithSalt _salt SignupResponse' {..} =
    _salt `Prelude.hashWithSalt` directoryType
      `Prelude.hashWithSalt` userLoginName
      `Prelude.hashWithSalt` iAMUser
      `Prelude.hashWithSalt` accountName

instance Prelude.NFData SignupResponse where
  rnf SignupResponse' {..} =
    Prelude.rnf directoryType
      `Prelude.seq` Prelude.rnf userLoginName
      `Prelude.seq` Prelude.rnf iAMUser
      `Prelude.seq` Prelude.rnf accountName
