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
-- Module      : Amazonka.NetworkFirewall.UpdateFirewallDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the description for the specified firewall. Use the description
-- to help you identify the firewall when you\'re working with it.
module Amazonka.NetworkFirewall.UpdateFirewallDescription
  ( -- * Creating a Request
    UpdateFirewallDescription (..),
    newUpdateFirewallDescription,

    -- * Request Lenses
    updateFirewallDescription_updateToken,
    updateFirewallDescription_description,
    updateFirewallDescription_firewallArn,
    updateFirewallDescription_firewallName,

    -- * Destructuring the Response
    UpdateFirewallDescriptionResponse (..),
    newUpdateFirewallDescriptionResponse,

    -- * Response Lenses
    updateFirewallDescriptionResponse_updateToken,
    updateFirewallDescriptionResponse_description,
    updateFirewallDescriptionResponse_firewallArn,
    updateFirewallDescriptionResponse_firewallName,
    updateFirewallDescriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkFirewall.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateFirewallDescription' smart constructor.
data UpdateFirewallDescription = UpdateFirewallDescription'
  { -- | An optional token that you can use for optimistic locking. Network
    -- Firewall returns a token to your requests that access the firewall. The
    -- token marks the state of the firewall resource at the time of the
    -- request.
    --
    -- To make an unconditional change to the firewall, omit the token in your
    -- update request. Without the token, Network Firewall performs your
    -- updates regardless of whether the firewall has changed since you last
    -- retrieved it.
    --
    -- To make a conditional change to the firewall, provide the token in your
    -- update request. Network Firewall uses the token to ensure that the
    -- firewall hasn\'t changed since you last retrieved it. If it has changed,
    -- the operation fails with an @InvalidTokenException@. If this happens,
    -- retrieve the firewall again to get a current copy of it with a new
    -- token. Reapply your changes as needed, then try the operation again
    -- using the new token.
    updateToken :: Prelude.Maybe Prelude.Text,
    -- | The new description for the firewall. If you omit this setting, Network
    -- Firewall removes the description for the firewall.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the firewall.
    --
    -- You must specify the ARN or the name, and you can specify both.
    firewallArn :: Prelude.Maybe Prelude.Text,
    -- | The descriptive name of the firewall. You can\'t change the name of a
    -- firewall after you create it.
    --
    -- You must specify the ARN or the name, and you can specify both.
    firewallName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateToken', 'updateFirewallDescription_updateToken' - An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
--
-- 'description', 'updateFirewallDescription_description' - The new description for the firewall. If you omit this setting, Network
-- Firewall removes the description for the firewall.
--
-- 'firewallArn', 'updateFirewallDescription_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- You must specify the ARN or the name, and you can specify both.
--
-- 'firewallName', 'updateFirewallDescription_firewallName' - The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
newUpdateFirewallDescription ::
  UpdateFirewallDescription
newUpdateFirewallDescription =
  UpdateFirewallDescription'
    { updateToken =
        Prelude.Nothing,
      description = Prelude.Nothing,
      firewallArn = Prelude.Nothing,
      firewallName = Prelude.Nothing
    }

-- | An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
updateFirewallDescription_updateToken :: Lens.Lens' UpdateFirewallDescription (Prelude.Maybe Prelude.Text)
updateFirewallDescription_updateToken = Lens.lens (\UpdateFirewallDescription' {updateToken} -> updateToken) (\s@UpdateFirewallDescription' {} a -> s {updateToken = a} :: UpdateFirewallDescription)

-- | The new description for the firewall. If you omit this setting, Network
-- Firewall removes the description for the firewall.
updateFirewallDescription_description :: Lens.Lens' UpdateFirewallDescription (Prelude.Maybe Prelude.Text)
updateFirewallDescription_description = Lens.lens (\UpdateFirewallDescription' {description} -> description) (\s@UpdateFirewallDescription' {} a -> s {description = a} :: UpdateFirewallDescription)

-- | The Amazon Resource Name (ARN) of the firewall.
--
-- You must specify the ARN or the name, and you can specify both.
updateFirewallDescription_firewallArn :: Lens.Lens' UpdateFirewallDescription (Prelude.Maybe Prelude.Text)
updateFirewallDescription_firewallArn = Lens.lens (\UpdateFirewallDescription' {firewallArn} -> firewallArn) (\s@UpdateFirewallDescription' {} a -> s {firewallArn = a} :: UpdateFirewallDescription)

-- | The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
updateFirewallDescription_firewallName :: Lens.Lens' UpdateFirewallDescription (Prelude.Maybe Prelude.Text)
updateFirewallDescription_firewallName = Lens.lens (\UpdateFirewallDescription' {firewallName} -> firewallName) (\s@UpdateFirewallDescription' {} a -> s {firewallName = a} :: UpdateFirewallDescription)

instance Core.AWSRequest UpdateFirewallDescription where
  type
    AWSResponse UpdateFirewallDescription =
      UpdateFirewallDescriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFirewallDescriptionResponse'
            Prelude.<$> (x Core..?> "UpdateToken")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "FirewallArn")
            Prelude.<*> (x Core..?> "FirewallName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFirewallDescription where
  hashWithSalt _salt UpdateFirewallDescription' {..} =
    _salt `Prelude.hashWithSalt` updateToken
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` firewallArn
      `Prelude.hashWithSalt` firewallName

instance Prelude.NFData UpdateFirewallDescription where
  rnf UpdateFirewallDescription' {..} =
    Prelude.rnf updateToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf firewallArn
      `Prelude.seq` Prelude.rnf firewallName

instance Core.ToHeaders UpdateFirewallDescription where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "NetworkFirewall_20201112.UpdateFirewallDescription" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFirewallDescription where
  toJSON UpdateFirewallDescription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UpdateToken" Core..=) Prelude.<$> updateToken,
            ("Description" Core..=) Prelude.<$> description,
            ("FirewallArn" Core..=) Prelude.<$> firewallArn,
            ("FirewallName" Core..=) Prelude.<$> firewallName
          ]
      )

instance Core.ToPath UpdateFirewallDescription where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFirewallDescription where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFirewallDescriptionResponse' smart constructor.
data UpdateFirewallDescriptionResponse = UpdateFirewallDescriptionResponse'
  { -- | An optional token that you can use for optimistic locking. Network
    -- Firewall returns a token to your requests that access the firewall. The
    -- token marks the state of the firewall resource at the time of the
    -- request.
    --
    -- To make an unconditional change to the firewall, omit the token in your
    -- update request. Without the token, Network Firewall performs your
    -- updates regardless of whether the firewall has changed since you last
    -- retrieved it.
    --
    -- To make a conditional change to the firewall, provide the token in your
    -- update request. Network Firewall uses the token to ensure that the
    -- firewall hasn\'t changed since you last retrieved it. If it has changed,
    -- the operation fails with an @InvalidTokenException@. If this happens,
    -- retrieve the firewall again to get a current copy of it with a new
    -- token. Reapply your changes as needed, then try the operation again
    -- using the new token.
    updateToken :: Prelude.Maybe Prelude.Text,
    -- | A description of the firewall.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the firewall.
    firewallArn :: Prelude.Maybe Prelude.Text,
    -- | The descriptive name of the firewall. You can\'t change the name of a
    -- firewall after you create it.
    firewallName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallDescriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updateToken', 'updateFirewallDescriptionResponse_updateToken' - An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
--
-- 'description', 'updateFirewallDescriptionResponse_description' - A description of the firewall.
--
-- 'firewallArn', 'updateFirewallDescriptionResponse_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- 'firewallName', 'updateFirewallDescriptionResponse_firewallName' - The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- 'httpStatus', 'updateFirewallDescriptionResponse_httpStatus' - The response's http status code.
newUpdateFirewallDescriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFirewallDescriptionResponse
newUpdateFirewallDescriptionResponse pHttpStatus_ =
  UpdateFirewallDescriptionResponse'
    { updateToken =
        Prelude.Nothing,
      description = Prelude.Nothing,
      firewallArn = Prelude.Nothing,
      firewallName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional token that you can use for optimistic locking. Network
-- Firewall returns a token to your requests that access the firewall. The
-- token marks the state of the firewall resource at the time of the
-- request.
--
-- To make an unconditional change to the firewall, omit the token in your
-- update request. Without the token, Network Firewall performs your
-- updates regardless of whether the firewall has changed since you last
-- retrieved it.
--
-- To make a conditional change to the firewall, provide the token in your
-- update request. Network Firewall uses the token to ensure that the
-- firewall hasn\'t changed since you last retrieved it. If it has changed,
-- the operation fails with an @InvalidTokenException@. If this happens,
-- retrieve the firewall again to get a current copy of it with a new
-- token. Reapply your changes as needed, then try the operation again
-- using the new token.
updateFirewallDescriptionResponse_updateToken :: Lens.Lens' UpdateFirewallDescriptionResponse (Prelude.Maybe Prelude.Text)
updateFirewallDescriptionResponse_updateToken = Lens.lens (\UpdateFirewallDescriptionResponse' {updateToken} -> updateToken) (\s@UpdateFirewallDescriptionResponse' {} a -> s {updateToken = a} :: UpdateFirewallDescriptionResponse)

-- | A description of the firewall.
updateFirewallDescriptionResponse_description :: Lens.Lens' UpdateFirewallDescriptionResponse (Prelude.Maybe Prelude.Text)
updateFirewallDescriptionResponse_description = Lens.lens (\UpdateFirewallDescriptionResponse' {description} -> description) (\s@UpdateFirewallDescriptionResponse' {} a -> s {description = a} :: UpdateFirewallDescriptionResponse)

-- | The Amazon Resource Name (ARN) of the firewall.
updateFirewallDescriptionResponse_firewallArn :: Lens.Lens' UpdateFirewallDescriptionResponse (Prelude.Maybe Prelude.Text)
updateFirewallDescriptionResponse_firewallArn = Lens.lens (\UpdateFirewallDescriptionResponse' {firewallArn} -> firewallArn) (\s@UpdateFirewallDescriptionResponse' {} a -> s {firewallArn = a} :: UpdateFirewallDescriptionResponse)

-- | The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
updateFirewallDescriptionResponse_firewallName :: Lens.Lens' UpdateFirewallDescriptionResponse (Prelude.Maybe Prelude.Text)
updateFirewallDescriptionResponse_firewallName = Lens.lens (\UpdateFirewallDescriptionResponse' {firewallName} -> firewallName) (\s@UpdateFirewallDescriptionResponse' {} a -> s {firewallName = a} :: UpdateFirewallDescriptionResponse)

-- | The response's http status code.
updateFirewallDescriptionResponse_httpStatus :: Lens.Lens' UpdateFirewallDescriptionResponse Prelude.Int
updateFirewallDescriptionResponse_httpStatus = Lens.lens (\UpdateFirewallDescriptionResponse' {httpStatus} -> httpStatus) (\s@UpdateFirewallDescriptionResponse' {} a -> s {httpStatus = a} :: UpdateFirewallDescriptionResponse)

instance
  Prelude.NFData
    UpdateFirewallDescriptionResponse
  where
  rnf UpdateFirewallDescriptionResponse' {..} =
    Prelude.rnf updateToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf firewallArn
      `Prelude.seq` Prelude.rnf firewallName
      `Prelude.seq` Prelude.rnf httpStatus
