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
-- Module      : Amazonka.NetworkManager.UpdateLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details for an existing link. To remove information for any
-- of the parameters, specify an empty string.
module Amazonka.NetworkManager.UpdateLink
  ( -- * Creating a Request
    UpdateLink (..),
    newUpdateLink,

    -- * Request Lenses
    updateLink_type,
    updateLink_bandwidth,
    updateLink_provider,
    updateLink_description,
    updateLink_globalNetworkId,
    updateLink_linkId,

    -- * Destructuring the Response
    UpdateLinkResponse (..),
    newUpdateLinkResponse,

    -- * Response Lenses
    updateLinkResponse_link,
    updateLinkResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLink' smart constructor.
data UpdateLink = UpdateLink'
  { -- | The type of the link.
    --
    -- Constraints: Maximum length of 128 characters.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The upload and download speed in Mbps.
    bandwidth :: Prelude.Maybe Bandwidth,
    -- | The provider of the link.
    --
    -- Constraints: Maximum length of 128 characters.
    provider :: Prelude.Maybe Prelude.Text,
    -- | A description of the link.
    --
    -- Constraints: Maximum length of 256 characters.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the link.
    linkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLink' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'updateLink_type' - The type of the link.
--
-- Constraints: Maximum length of 128 characters.
--
-- 'bandwidth', 'updateLink_bandwidth' - The upload and download speed in Mbps.
--
-- 'provider', 'updateLink_provider' - The provider of the link.
--
-- Constraints: Maximum length of 128 characters.
--
-- 'description', 'updateLink_description' - A description of the link.
--
-- Constraints: Maximum length of 256 characters.
--
-- 'globalNetworkId', 'updateLink_globalNetworkId' - The ID of the global network.
--
-- 'linkId', 'updateLink_linkId' - The ID of the link.
newUpdateLink ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'linkId'
  Prelude.Text ->
  UpdateLink
newUpdateLink pGlobalNetworkId_ pLinkId_ =
  UpdateLink'
    { type' = Prelude.Nothing,
      bandwidth = Prelude.Nothing,
      provider = Prelude.Nothing,
      description = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_,
      linkId = pLinkId_
    }

-- | The type of the link.
--
-- Constraints: Maximum length of 128 characters.
updateLink_type :: Lens.Lens' UpdateLink (Prelude.Maybe Prelude.Text)
updateLink_type = Lens.lens (\UpdateLink' {type'} -> type') (\s@UpdateLink' {} a -> s {type' = a} :: UpdateLink)

-- | The upload and download speed in Mbps.
updateLink_bandwidth :: Lens.Lens' UpdateLink (Prelude.Maybe Bandwidth)
updateLink_bandwidth = Lens.lens (\UpdateLink' {bandwidth} -> bandwidth) (\s@UpdateLink' {} a -> s {bandwidth = a} :: UpdateLink)

-- | The provider of the link.
--
-- Constraints: Maximum length of 128 characters.
updateLink_provider :: Lens.Lens' UpdateLink (Prelude.Maybe Prelude.Text)
updateLink_provider = Lens.lens (\UpdateLink' {provider} -> provider) (\s@UpdateLink' {} a -> s {provider = a} :: UpdateLink)

-- | A description of the link.
--
-- Constraints: Maximum length of 256 characters.
updateLink_description :: Lens.Lens' UpdateLink (Prelude.Maybe Prelude.Text)
updateLink_description = Lens.lens (\UpdateLink' {description} -> description) (\s@UpdateLink' {} a -> s {description = a} :: UpdateLink)

-- | The ID of the global network.
updateLink_globalNetworkId :: Lens.Lens' UpdateLink Prelude.Text
updateLink_globalNetworkId = Lens.lens (\UpdateLink' {globalNetworkId} -> globalNetworkId) (\s@UpdateLink' {} a -> s {globalNetworkId = a} :: UpdateLink)

-- | The ID of the link.
updateLink_linkId :: Lens.Lens' UpdateLink Prelude.Text
updateLink_linkId = Lens.lens (\UpdateLink' {linkId} -> linkId) (\s@UpdateLink' {} a -> s {linkId = a} :: UpdateLink)

instance Core.AWSRequest UpdateLink where
  type AWSResponse UpdateLink = UpdateLinkResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLinkResponse'
            Prelude.<$> (x Core..?> "Link")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLink where
  hashWithSalt _salt UpdateLink' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` bandwidth
      `Prelude.hashWithSalt` provider
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` globalNetworkId
      `Prelude.hashWithSalt` linkId

instance Prelude.NFData UpdateLink where
  rnf UpdateLink' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf bandwidth
      `Prelude.seq` Prelude.rnf provider
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf globalNetworkId
      `Prelude.seq` Prelude.rnf linkId

instance Core.ToHeaders UpdateLink where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLink where
  toJSON UpdateLink' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("Bandwidth" Core..=) Prelude.<$> bandwidth,
            ("Provider" Core..=) Prelude.<$> provider,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateLink where
  toPath UpdateLink' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/links/",
        Core.toBS linkId
      ]

instance Core.ToQuery UpdateLink where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLinkResponse' smart constructor.
data UpdateLinkResponse = UpdateLinkResponse'
  { -- | Information about the link.
    link :: Prelude.Maybe Link,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLinkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'link', 'updateLinkResponse_link' - Information about the link.
--
-- 'httpStatus', 'updateLinkResponse_httpStatus' - The response's http status code.
newUpdateLinkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLinkResponse
newUpdateLinkResponse pHttpStatus_ =
  UpdateLinkResponse'
    { link = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the link.
updateLinkResponse_link :: Lens.Lens' UpdateLinkResponse (Prelude.Maybe Link)
updateLinkResponse_link = Lens.lens (\UpdateLinkResponse' {link} -> link) (\s@UpdateLinkResponse' {} a -> s {link = a} :: UpdateLinkResponse)

-- | The response's http status code.
updateLinkResponse_httpStatus :: Lens.Lens' UpdateLinkResponse Prelude.Int
updateLinkResponse_httpStatus = Lens.lens (\UpdateLinkResponse' {httpStatus} -> httpStatus) (\s@UpdateLinkResponse' {} a -> s {httpStatus = a} :: UpdateLinkResponse)

instance Prelude.NFData UpdateLinkResponse where
  rnf UpdateLinkResponse' {..} =
    Prelude.rnf link
      `Prelude.seq` Prelude.rnf httpStatus
