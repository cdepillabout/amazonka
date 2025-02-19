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
-- Module      : Amazonka.MediaLive.CreatePartnerInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a partner input
module Amazonka.MediaLive.CreatePartnerInput
  ( -- * Creating a Request
    CreatePartnerInput' (..),
    newCreatePartnerInput',

    -- * Request Lenses
    createPartnerInput'_tags,
    createPartnerInput'_requestId,
    createPartnerInput'_inputId,

    -- * Destructuring the Response
    CreatePartnerInputResponse (..),
    newCreatePartnerInputResponse,

    -- * Response Lenses
    createPartnerInputResponse_input,
    createPartnerInputResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to create a partner input
--
-- /See:/ 'newCreatePartnerInput'' smart constructor.
data CreatePartnerInput' = CreatePartnerInput''
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Unique identifier of the request to ensure the request is handled
    -- exactly once in case of retries.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Unique ID of the input.
    inputId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePartnerInput'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createPartnerInput'_tags' - A collection of key-value pairs.
--
-- 'requestId', 'createPartnerInput'_requestId' - Unique identifier of the request to ensure the request is handled
-- exactly once in case of retries.
--
-- 'inputId', 'createPartnerInput'_inputId' - Unique ID of the input.
newCreatePartnerInput' ::
  -- | 'inputId'
  Prelude.Text ->
  CreatePartnerInput'
newCreatePartnerInput' pInputId_ =
  CreatePartnerInput''
    { tags = Prelude.Nothing,
      requestId = Prelude.Nothing,
      inputId = pInputId_
    }

-- | A collection of key-value pairs.
createPartnerInput'_tags :: Lens.Lens' CreatePartnerInput' (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createPartnerInput'_tags = Lens.lens (\CreatePartnerInput'' {tags} -> tags) (\s@CreatePartnerInput'' {} a -> s {tags = a} :: CreatePartnerInput') Prelude.. Lens.mapping Lens.coerced

-- | Unique identifier of the request to ensure the request is handled
-- exactly once in case of retries.
createPartnerInput'_requestId :: Lens.Lens' CreatePartnerInput' (Prelude.Maybe Prelude.Text)
createPartnerInput'_requestId = Lens.lens (\CreatePartnerInput'' {requestId} -> requestId) (\s@CreatePartnerInput'' {} a -> s {requestId = a} :: CreatePartnerInput')

-- | Unique ID of the input.
createPartnerInput'_inputId :: Lens.Lens' CreatePartnerInput' Prelude.Text
createPartnerInput'_inputId = Lens.lens (\CreatePartnerInput'' {inputId} -> inputId) (\s@CreatePartnerInput'' {} a -> s {inputId = a} :: CreatePartnerInput')

instance Core.AWSRequest CreatePartnerInput' where
  type
    AWSResponse CreatePartnerInput' =
      CreatePartnerInputResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePartnerInputResponse'
            Prelude.<$> (x Core..?> "input")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreatePartnerInput' where
  hashWithSalt _salt CreatePartnerInput'' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` requestId
      `Prelude.hashWithSalt` inputId

instance Prelude.NFData CreatePartnerInput' where
  rnf CreatePartnerInput'' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf inputId

instance Core.ToHeaders CreatePartnerInput' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePartnerInput' where
  toJSON CreatePartnerInput'' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("requestId" Core..=) Prelude.<$> requestId
          ]
      )

instance Core.ToPath CreatePartnerInput' where
  toPath CreatePartnerInput'' {..} =
    Prelude.mconcat
      ["/prod/inputs/", Core.toBS inputId, "/partners"]

instance Core.ToQuery CreatePartnerInput' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for CreatePartnerInputResponse
--
-- /See:/ 'newCreatePartnerInputResponse' smart constructor.
data CreatePartnerInputResponse = CreatePartnerInputResponse'
  { input :: Prelude.Maybe Input,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePartnerInputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'input', 'createPartnerInputResponse_input' - Undocumented member.
--
-- 'httpStatus', 'createPartnerInputResponse_httpStatus' - The response's http status code.
newCreatePartnerInputResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreatePartnerInputResponse
newCreatePartnerInputResponse pHttpStatus_ =
  CreatePartnerInputResponse'
    { input =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createPartnerInputResponse_input :: Lens.Lens' CreatePartnerInputResponse (Prelude.Maybe Input)
createPartnerInputResponse_input = Lens.lens (\CreatePartnerInputResponse' {input} -> input) (\s@CreatePartnerInputResponse' {} a -> s {input = a} :: CreatePartnerInputResponse)

-- | The response's http status code.
createPartnerInputResponse_httpStatus :: Lens.Lens' CreatePartnerInputResponse Prelude.Int
createPartnerInputResponse_httpStatus = Lens.lens (\CreatePartnerInputResponse' {httpStatus} -> httpStatus) (\s@CreatePartnerInputResponse' {} a -> s {httpStatus = a} :: CreatePartnerInputResponse)

instance Prelude.NFData CreatePartnerInputResponse where
  rnf CreatePartnerInputResponse' {..} =
    Prelude.rnf input
      `Prelude.seq` Prelude.rnf httpStatus
