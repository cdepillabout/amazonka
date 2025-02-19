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
-- Module      : Amazonka.IoTEvents.CreateInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an input.
module Amazonka.IoTEvents.CreateInput
  ( -- * Creating a Request
    CreateInput (..),
    newCreateInput,

    -- * Request Lenses
    createInput_tags,
    createInput_inputDescription,
    createInput_inputName,
    createInput_inputDefinition,

    -- * Destructuring the Response
    CreateInputResponse (..),
    newCreateInputResponse,

    -- * Response Lenses
    createInputResponse_inputConfiguration,
    createInputResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTEvents.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateInput' smart constructor.
data CreateInput = CreateInput'
  { -- | Metadata that can be used to manage the input.
    tags :: Prelude.Maybe [Tag],
    -- | A brief description of the input.
    inputDescription :: Prelude.Maybe Prelude.Text,
    -- | The name you want to give to the input.
    inputName :: Prelude.Text,
    -- | The definition of the input.
    inputDefinition :: InputDefinition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createInput_tags' - Metadata that can be used to manage the input.
--
-- 'inputDescription', 'createInput_inputDescription' - A brief description of the input.
--
-- 'inputName', 'createInput_inputName' - The name you want to give to the input.
--
-- 'inputDefinition', 'createInput_inputDefinition' - The definition of the input.
newCreateInput ::
  -- | 'inputName'
  Prelude.Text ->
  -- | 'inputDefinition'
  InputDefinition ->
  CreateInput
newCreateInput pInputName_ pInputDefinition_ =
  CreateInput'
    { tags = Prelude.Nothing,
      inputDescription = Prelude.Nothing,
      inputName = pInputName_,
      inputDefinition = pInputDefinition_
    }

-- | Metadata that can be used to manage the input.
createInput_tags :: Lens.Lens' CreateInput (Prelude.Maybe [Tag])
createInput_tags = Lens.lens (\CreateInput' {tags} -> tags) (\s@CreateInput' {} a -> s {tags = a} :: CreateInput) Prelude.. Lens.mapping Lens.coerced

-- | A brief description of the input.
createInput_inputDescription :: Lens.Lens' CreateInput (Prelude.Maybe Prelude.Text)
createInput_inputDescription = Lens.lens (\CreateInput' {inputDescription} -> inputDescription) (\s@CreateInput' {} a -> s {inputDescription = a} :: CreateInput)

-- | The name you want to give to the input.
createInput_inputName :: Lens.Lens' CreateInput Prelude.Text
createInput_inputName = Lens.lens (\CreateInput' {inputName} -> inputName) (\s@CreateInput' {} a -> s {inputName = a} :: CreateInput)

-- | The definition of the input.
createInput_inputDefinition :: Lens.Lens' CreateInput InputDefinition
createInput_inputDefinition = Lens.lens (\CreateInput' {inputDefinition} -> inputDefinition) (\s@CreateInput' {} a -> s {inputDefinition = a} :: CreateInput)

instance Core.AWSRequest CreateInput where
  type AWSResponse CreateInput = CreateInputResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInputResponse'
            Prelude.<$> (x Core..?> "inputConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateInput where
  hashWithSalt _salt CreateInput' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` inputDescription
      `Prelude.hashWithSalt` inputName
      `Prelude.hashWithSalt` inputDefinition

instance Prelude.NFData CreateInput where
  rnf CreateInput' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf inputDescription
      `Prelude.seq` Prelude.rnf inputName
      `Prelude.seq` Prelude.rnf inputDefinition

instance Core.ToHeaders CreateInput where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateInput where
  toJSON CreateInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("inputDescription" Core..=)
              Prelude.<$> inputDescription,
            Prelude.Just ("inputName" Core..= inputName),
            Prelude.Just
              ("inputDefinition" Core..= inputDefinition)
          ]
      )

instance Core.ToPath CreateInput where
  toPath = Prelude.const "/inputs"

instance Core.ToQuery CreateInput where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateInputResponse' smart constructor.
data CreateInputResponse = CreateInputResponse'
  { -- | Information about the configuration of the input.
    inputConfiguration :: Prelude.Maybe InputConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputConfiguration', 'createInputResponse_inputConfiguration' - Information about the configuration of the input.
--
-- 'httpStatus', 'createInputResponse_httpStatus' - The response's http status code.
newCreateInputResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateInputResponse
newCreateInputResponse pHttpStatus_ =
  CreateInputResponse'
    { inputConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the configuration of the input.
createInputResponse_inputConfiguration :: Lens.Lens' CreateInputResponse (Prelude.Maybe InputConfiguration)
createInputResponse_inputConfiguration = Lens.lens (\CreateInputResponse' {inputConfiguration} -> inputConfiguration) (\s@CreateInputResponse' {} a -> s {inputConfiguration = a} :: CreateInputResponse)

-- | The response's http status code.
createInputResponse_httpStatus :: Lens.Lens' CreateInputResponse Prelude.Int
createInputResponse_httpStatus = Lens.lens (\CreateInputResponse' {httpStatus} -> httpStatus) (\s@CreateInputResponse' {} a -> s {httpStatus = a} :: CreateInputResponse)

instance Prelude.NFData CreateInputResponse where
  rnf CreateInputResponse' {..} =
    Prelude.rnf inputConfiguration
      `Prelude.seq` Prelude.rnf httpStatus
