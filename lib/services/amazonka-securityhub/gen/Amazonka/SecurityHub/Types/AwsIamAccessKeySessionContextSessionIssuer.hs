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
-- Module      : Amazonka.SecurityHub.Types.AwsIamAccessKeySessionContextSessionIssuer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsIamAccessKeySessionContextSessionIssuer where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the entity that created the session.
--
-- /See:/ 'newAwsIamAccessKeySessionContextSessionIssuer' smart constructor.
data AwsIamAccessKeySessionContextSessionIssuer = AwsIamAccessKeySessionContextSessionIssuer'
  { -- | The principal ID of the principal (user, role, or group) that created
    -- the session.
    principalId :: Prelude.Maybe Prelude.Text,
    -- | The type of principal (user, role, or group) that created the session.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The name of the principal that created the session.
    userName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the session.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Amazon Web Services account that created the
    -- session.
    accountId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsIamAccessKeySessionContextSessionIssuer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'principalId', 'awsIamAccessKeySessionContextSessionIssuer_principalId' - The principal ID of the principal (user, role, or group) that created
-- the session.
--
-- 'type'', 'awsIamAccessKeySessionContextSessionIssuer_type' - The type of principal (user, role, or group) that created the session.
--
-- 'userName', 'awsIamAccessKeySessionContextSessionIssuer_userName' - The name of the principal that created the session.
--
-- 'arn', 'awsIamAccessKeySessionContextSessionIssuer_arn' - The ARN of the session.
--
-- 'accountId', 'awsIamAccessKeySessionContextSessionIssuer_accountId' - The identifier of the Amazon Web Services account that created the
-- session.
newAwsIamAccessKeySessionContextSessionIssuer ::
  AwsIamAccessKeySessionContextSessionIssuer
newAwsIamAccessKeySessionContextSessionIssuer =
  AwsIamAccessKeySessionContextSessionIssuer'
    { principalId =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      userName = Prelude.Nothing,
      arn = Prelude.Nothing,
      accountId = Prelude.Nothing
    }

-- | The principal ID of the principal (user, role, or group) that created
-- the session.
awsIamAccessKeySessionContextSessionIssuer_principalId :: Lens.Lens' AwsIamAccessKeySessionContextSessionIssuer (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextSessionIssuer_principalId = Lens.lens (\AwsIamAccessKeySessionContextSessionIssuer' {principalId} -> principalId) (\s@AwsIamAccessKeySessionContextSessionIssuer' {} a -> s {principalId = a} :: AwsIamAccessKeySessionContextSessionIssuer)

-- | The type of principal (user, role, or group) that created the session.
awsIamAccessKeySessionContextSessionIssuer_type :: Lens.Lens' AwsIamAccessKeySessionContextSessionIssuer (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextSessionIssuer_type = Lens.lens (\AwsIamAccessKeySessionContextSessionIssuer' {type'} -> type') (\s@AwsIamAccessKeySessionContextSessionIssuer' {} a -> s {type' = a} :: AwsIamAccessKeySessionContextSessionIssuer)

-- | The name of the principal that created the session.
awsIamAccessKeySessionContextSessionIssuer_userName :: Lens.Lens' AwsIamAccessKeySessionContextSessionIssuer (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextSessionIssuer_userName = Lens.lens (\AwsIamAccessKeySessionContextSessionIssuer' {userName} -> userName) (\s@AwsIamAccessKeySessionContextSessionIssuer' {} a -> s {userName = a} :: AwsIamAccessKeySessionContextSessionIssuer)

-- | The ARN of the session.
awsIamAccessKeySessionContextSessionIssuer_arn :: Lens.Lens' AwsIamAccessKeySessionContextSessionIssuer (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextSessionIssuer_arn = Lens.lens (\AwsIamAccessKeySessionContextSessionIssuer' {arn} -> arn) (\s@AwsIamAccessKeySessionContextSessionIssuer' {} a -> s {arn = a} :: AwsIamAccessKeySessionContextSessionIssuer)

-- | The identifier of the Amazon Web Services account that created the
-- session.
awsIamAccessKeySessionContextSessionIssuer_accountId :: Lens.Lens' AwsIamAccessKeySessionContextSessionIssuer (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextSessionIssuer_accountId = Lens.lens (\AwsIamAccessKeySessionContextSessionIssuer' {accountId} -> accountId) (\s@AwsIamAccessKeySessionContextSessionIssuer' {} a -> s {accountId = a} :: AwsIamAccessKeySessionContextSessionIssuer)

instance
  Core.FromJSON
    AwsIamAccessKeySessionContextSessionIssuer
  where
  parseJSON =
    Core.withObject
      "AwsIamAccessKeySessionContextSessionIssuer"
      ( \x ->
          AwsIamAccessKeySessionContextSessionIssuer'
            Prelude.<$> (x Core..:? "PrincipalId")
              Prelude.<*> (x Core..:? "Type")
              Prelude.<*> (x Core..:? "UserName")
              Prelude.<*> (x Core..:? "Arn")
              Prelude.<*> (x Core..:? "AccountId")
      )

instance
  Prelude.Hashable
    AwsIamAccessKeySessionContextSessionIssuer
  where
  hashWithSalt
    _salt
    AwsIamAccessKeySessionContextSessionIssuer' {..} =
      _salt `Prelude.hashWithSalt` principalId
        `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` userName
        `Prelude.hashWithSalt` arn
        `Prelude.hashWithSalt` accountId

instance
  Prelude.NFData
    AwsIamAccessKeySessionContextSessionIssuer
  where
  rnf AwsIamAccessKeySessionContextSessionIssuer' {..} =
    Prelude.rnf principalId
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf accountId

instance
  Core.ToJSON
    AwsIamAccessKeySessionContextSessionIssuer
  where
  toJSON
    AwsIamAccessKeySessionContextSessionIssuer' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("PrincipalId" Core..=) Prelude.<$> principalId,
              ("Type" Core..=) Prelude.<$> type',
              ("UserName" Core..=) Prelude.<$> userName,
              ("Arn" Core..=) Prelude.<$> arn,
              ("AccountId" Core..=) Prelude.<$> accountId
            ]
        )
