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
-- Module      : Amazonka.WorkDocs.UpdateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified attributes of the specified user, and grants or
-- revokes administrative privileges to the Amazon WorkDocs site.
module Amazonka.WorkDocs.UpdateUser
  ( -- * Creating a Request
    UpdateUser (..),
    newUpdateUser,

    -- * Request Lenses
    updateUser_grantPoweruserPrivileges,
    updateUser_type,
    updateUser_timeZoneId,
    updateUser_storageRule,
    updateUser_locale,
    updateUser_givenName,
    updateUser_authenticationToken,
    updateUser_surname,
    updateUser_userId,

    -- * Destructuring the Response
    UpdateUserResponse (..),
    newUpdateUserResponse,

    -- * Response Lenses
    updateUserResponse_user,
    updateUserResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkDocs.Types

-- | /See:/ 'newUpdateUser' smart constructor.
data UpdateUser = UpdateUser'
  { -- | Boolean value to determine whether the user is granted Poweruser
    -- privileges.
    grantPoweruserPrivileges :: Prelude.Maybe BooleanEnumType,
    -- | The type of the user.
    type' :: Prelude.Maybe UserType,
    -- | The time zone ID of the user.
    timeZoneId :: Prelude.Maybe Prelude.Text,
    -- | The amount of storage for the user.
    storageRule :: Prelude.Maybe StorageRuleType,
    -- | The locale of the user.
    locale :: Prelude.Maybe LocaleType,
    -- | The given name of the user.
    givenName :: Prelude.Maybe Prelude.Text,
    -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The surname of the user.
    surname :: Prelude.Maybe Prelude.Text,
    -- | The ID of the user.
    userId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'grantPoweruserPrivileges', 'updateUser_grantPoweruserPrivileges' - Boolean value to determine whether the user is granted Poweruser
-- privileges.
--
-- 'type'', 'updateUser_type' - The type of the user.
--
-- 'timeZoneId', 'updateUser_timeZoneId' - The time zone ID of the user.
--
-- 'storageRule', 'updateUser_storageRule' - The amount of storage for the user.
--
-- 'locale', 'updateUser_locale' - The locale of the user.
--
-- 'givenName', 'updateUser_givenName' - The given name of the user.
--
-- 'authenticationToken', 'updateUser_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'surname', 'updateUser_surname' - The surname of the user.
--
-- 'userId', 'updateUser_userId' - The ID of the user.
newUpdateUser ::
  -- | 'userId'
  Prelude.Text ->
  UpdateUser
newUpdateUser pUserId_ =
  UpdateUser'
    { grantPoweruserPrivileges =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      timeZoneId = Prelude.Nothing,
      storageRule = Prelude.Nothing,
      locale = Prelude.Nothing,
      givenName = Prelude.Nothing,
      authenticationToken = Prelude.Nothing,
      surname = Prelude.Nothing,
      userId = pUserId_
    }

-- | Boolean value to determine whether the user is granted Poweruser
-- privileges.
updateUser_grantPoweruserPrivileges :: Lens.Lens' UpdateUser (Prelude.Maybe BooleanEnumType)
updateUser_grantPoweruserPrivileges = Lens.lens (\UpdateUser' {grantPoweruserPrivileges} -> grantPoweruserPrivileges) (\s@UpdateUser' {} a -> s {grantPoweruserPrivileges = a} :: UpdateUser)

-- | The type of the user.
updateUser_type :: Lens.Lens' UpdateUser (Prelude.Maybe UserType)
updateUser_type = Lens.lens (\UpdateUser' {type'} -> type') (\s@UpdateUser' {} a -> s {type' = a} :: UpdateUser)

-- | The time zone ID of the user.
updateUser_timeZoneId :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_timeZoneId = Lens.lens (\UpdateUser' {timeZoneId} -> timeZoneId) (\s@UpdateUser' {} a -> s {timeZoneId = a} :: UpdateUser)

-- | The amount of storage for the user.
updateUser_storageRule :: Lens.Lens' UpdateUser (Prelude.Maybe StorageRuleType)
updateUser_storageRule = Lens.lens (\UpdateUser' {storageRule} -> storageRule) (\s@UpdateUser' {} a -> s {storageRule = a} :: UpdateUser)

-- | The locale of the user.
updateUser_locale :: Lens.Lens' UpdateUser (Prelude.Maybe LocaleType)
updateUser_locale = Lens.lens (\UpdateUser' {locale} -> locale) (\s@UpdateUser' {} a -> s {locale = a} :: UpdateUser)

-- | The given name of the user.
updateUser_givenName :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_givenName = Lens.lens (\UpdateUser' {givenName} -> givenName) (\s@UpdateUser' {} a -> s {givenName = a} :: UpdateUser)

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
updateUser_authenticationToken :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_authenticationToken = Lens.lens (\UpdateUser' {authenticationToken} -> authenticationToken) (\s@UpdateUser' {} a -> s {authenticationToken = a} :: UpdateUser) Prelude.. Lens.mapping Core._Sensitive

-- | The surname of the user.
updateUser_surname :: Lens.Lens' UpdateUser (Prelude.Maybe Prelude.Text)
updateUser_surname = Lens.lens (\UpdateUser' {surname} -> surname) (\s@UpdateUser' {} a -> s {surname = a} :: UpdateUser)

-- | The ID of the user.
updateUser_userId :: Lens.Lens' UpdateUser Prelude.Text
updateUser_userId = Lens.lens (\UpdateUser' {userId} -> userId) (\s@UpdateUser' {} a -> s {userId = a} :: UpdateUser)

instance Core.AWSRequest UpdateUser where
  type AWSResponse UpdateUser = UpdateUserResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateUserResponse'
            Prelude.<$> (x Core..?> "User")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateUser where
  hashWithSalt _salt UpdateUser' {..} =
    _salt
      `Prelude.hashWithSalt` grantPoweruserPrivileges
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` timeZoneId
      `Prelude.hashWithSalt` storageRule
      `Prelude.hashWithSalt` locale
      `Prelude.hashWithSalt` givenName
      `Prelude.hashWithSalt` authenticationToken
      `Prelude.hashWithSalt` surname
      `Prelude.hashWithSalt` userId

instance Prelude.NFData UpdateUser where
  rnf UpdateUser' {..} =
    Prelude.rnf grantPoweruserPrivileges
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf timeZoneId
      `Prelude.seq` Prelude.rnf storageRule
      `Prelude.seq` Prelude.rnf locale
      `Prelude.seq` Prelude.rnf givenName
      `Prelude.seq` Prelude.rnf authenticationToken
      `Prelude.seq` Prelude.rnf surname
      `Prelude.seq` Prelude.rnf userId

instance Core.ToHeaders UpdateUser where
  toHeaders UpdateUser' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON UpdateUser where
  toJSON UpdateUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GrantPoweruserPrivileges" Core..=)
              Prelude.<$> grantPoweruserPrivileges,
            ("Type" Core..=) Prelude.<$> type',
            ("TimeZoneId" Core..=) Prelude.<$> timeZoneId,
            ("StorageRule" Core..=) Prelude.<$> storageRule,
            ("Locale" Core..=) Prelude.<$> locale,
            ("GivenName" Core..=) Prelude.<$> givenName,
            ("Surname" Core..=) Prelude.<$> surname
          ]
      )

instance Core.ToPath UpdateUser where
  toPath UpdateUser' {..} =
    Prelude.mconcat
      ["/api/v1/users/", Core.toBS userId]

instance Core.ToQuery UpdateUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateUserResponse' smart constructor.
data UpdateUserResponse = UpdateUserResponse'
  { -- | The user information.
    user :: Prelude.Maybe User,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'user', 'updateUserResponse_user' - The user information.
--
-- 'httpStatus', 'updateUserResponse_httpStatus' - The response's http status code.
newUpdateUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateUserResponse
newUpdateUserResponse pHttpStatus_ =
  UpdateUserResponse'
    { user = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The user information.
updateUserResponse_user :: Lens.Lens' UpdateUserResponse (Prelude.Maybe User)
updateUserResponse_user = Lens.lens (\UpdateUserResponse' {user} -> user) (\s@UpdateUserResponse' {} a -> s {user = a} :: UpdateUserResponse)

-- | The response's http status code.
updateUserResponse_httpStatus :: Lens.Lens' UpdateUserResponse Prelude.Int
updateUserResponse_httpStatus = Lens.lens (\UpdateUserResponse' {httpStatus} -> httpStatus) (\s@UpdateUserResponse' {} a -> s {httpStatus = a} :: UpdateUserResponse)

instance Prelude.NFData UpdateUserResponse where
  rnf UpdateUserResponse' {..} =
    Prelude.rnf user
      `Prelude.seq` Prelude.rnf httpStatus
