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
-- Module      : Amazonka.IoTWireless.CreateDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new destination that maps a device message to an AWS IoT rule.
module Amazonka.IoTWireless.CreateDestination
  ( -- * Creating a Request
    CreateDestination (..),
    newCreateDestination,

    -- * Request Lenses
    createDestination_tags,
    createDestination_clientRequestToken,
    createDestination_description,
    createDestination_name,
    createDestination_expressionType,
    createDestination_expression,
    createDestination_roleArn,

    -- * Destructuring the Response
    CreateDestinationResponse (..),
    newCreateDestinationResponse,

    -- * Response Lenses
    createDestinationResponse_name,
    createDestinationResponse_arn,
    createDestinationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDestination' smart constructor.
data CreateDestination = CreateDestination'
  { -- | The tags to attach to the new destination. Tags are metadata that you
    -- can use to manage a resource.
    tags :: Prelude.Maybe [Tag],
    -- | Each resource must have a unique client request token. If you try to
    -- create a new resource with the same token as a resource that already
    -- exists, an exception occurs. If you omit this value, AWS SDKs will
    -- automatically generate a unique client request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The description of the new resource.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the new resource.
    name :: Prelude.Text,
    -- | The type of value in @Expression@.
    expressionType :: ExpressionType,
    -- | The rule name or topic rule to send messages to.
    expression :: Prelude.Text,
    -- | The ARN of the IAM Role that authorizes the destination.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDestination_tags' - The tags to attach to the new destination. Tags are metadata that you
-- can use to manage a resource.
--
-- 'clientRequestToken', 'createDestination_clientRequestToken' - Each resource must have a unique client request token. If you try to
-- create a new resource with the same token as a resource that already
-- exists, an exception occurs. If you omit this value, AWS SDKs will
-- automatically generate a unique client request.
--
-- 'description', 'createDestination_description' - The description of the new resource.
--
-- 'name', 'createDestination_name' - The name of the new resource.
--
-- 'expressionType', 'createDestination_expressionType' - The type of value in @Expression@.
--
-- 'expression', 'createDestination_expression' - The rule name or topic rule to send messages to.
--
-- 'roleArn', 'createDestination_roleArn' - The ARN of the IAM Role that authorizes the destination.
newCreateDestination ::
  -- | 'name'
  Prelude.Text ->
  -- | 'expressionType'
  ExpressionType ->
  -- | 'expression'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  CreateDestination
newCreateDestination
  pName_
  pExpressionType_
  pExpression_
  pRoleArn_ =
    CreateDestination'
      { tags = Prelude.Nothing,
        clientRequestToken = Prelude.Nothing,
        description = Prelude.Nothing,
        name = pName_,
        expressionType = pExpressionType_,
        expression = pExpression_,
        roleArn = pRoleArn_
      }

-- | The tags to attach to the new destination. Tags are metadata that you
-- can use to manage a resource.
createDestination_tags :: Lens.Lens' CreateDestination (Prelude.Maybe [Tag])
createDestination_tags = Lens.lens (\CreateDestination' {tags} -> tags) (\s@CreateDestination' {} a -> s {tags = a} :: CreateDestination) Prelude.. Lens.mapping Lens.coerced

-- | Each resource must have a unique client request token. If you try to
-- create a new resource with the same token as a resource that already
-- exists, an exception occurs. If you omit this value, AWS SDKs will
-- automatically generate a unique client request.
createDestination_clientRequestToken :: Lens.Lens' CreateDestination (Prelude.Maybe Prelude.Text)
createDestination_clientRequestToken = Lens.lens (\CreateDestination' {clientRequestToken} -> clientRequestToken) (\s@CreateDestination' {} a -> s {clientRequestToken = a} :: CreateDestination)

-- | The description of the new resource.
createDestination_description :: Lens.Lens' CreateDestination (Prelude.Maybe Prelude.Text)
createDestination_description = Lens.lens (\CreateDestination' {description} -> description) (\s@CreateDestination' {} a -> s {description = a} :: CreateDestination)

-- | The name of the new resource.
createDestination_name :: Lens.Lens' CreateDestination Prelude.Text
createDestination_name = Lens.lens (\CreateDestination' {name} -> name) (\s@CreateDestination' {} a -> s {name = a} :: CreateDestination)

-- | The type of value in @Expression@.
createDestination_expressionType :: Lens.Lens' CreateDestination ExpressionType
createDestination_expressionType = Lens.lens (\CreateDestination' {expressionType} -> expressionType) (\s@CreateDestination' {} a -> s {expressionType = a} :: CreateDestination)

-- | The rule name or topic rule to send messages to.
createDestination_expression :: Lens.Lens' CreateDestination Prelude.Text
createDestination_expression = Lens.lens (\CreateDestination' {expression} -> expression) (\s@CreateDestination' {} a -> s {expression = a} :: CreateDestination)

-- | The ARN of the IAM Role that authorizes the destination.
createDestination_roleArn :: Lens.Lens' CreateDestination Prelude.Text
createDestination_roleArn = Lens.lens (\CreateDestination' {roleArn} -> roleArn) (\s@CreateDestination' {} a -> s {roleArn = a} :: CreateDestination)

instance Core.AWSRequest CreateDestination where
  type
    AWSResponse CreateDestination =
      CreateDestinationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDestinationResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDestination where
  hashWithSalt _salt CreateDestination' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` expressionType
      `Prelude.hashWithSalt` expression
      `Prelude.hashWithSalt` roleArn

instance Prelude.NFData CreateDestination where
  rnf CreateDestination' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf expressionType
      `Prelude.seq` Prelude.rnf expression
      `Prelude.seq` Prelude.rnf roleArn

instance Core.ToHeaders CreateDestination where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateDestination where
  toJSON CreateDestination' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("ExpressionType" Core..= expressionType),
            Prelude.Just ("Expression" Core..= expression),
            Prelude.Just ("RoleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath CreateDestination where
  toPath = Prelude.const "/destinations"

instance Core.ToQuery CreateDestination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDestinationResponse' smart constructor.
data CreateDestinationResponse = CreateDestinationResponse'
  { -- | The name of the new resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name of the new resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDestinationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createDestinationResponse_name' - The name of the new resource.
--
-- 'arn', 'createDestinationResponse_arn' - The Amazon Resource Name of the new resource.
--
-- 'httpStatus', 'createDestinationResponse_httpStatus' - The response's http status code.
newCreateDestinationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDestinationResponse
newCreateDestinationResponse pHttpStatus_ =
  CreateDestinationResponse'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the new resource.
createDestinationResponse_name :: Lens.Lens' CreateDestinationResponse (Prelude.Maybe Prelude.Text)
createDestinationResponse_name = Lens.lens (\CreateDestinationResponse' {name} -> name) (\s@CreateDestinationResponse' {} a -> s {name = a} :: CreateDestinationResponse)

-- | The Amazon Resource Name of the new resource.
createDestinationResponse_arn :: Lens.Lens' CreateDestinationResponse (Prelude.Maybe Prelude.Text)
createDestinationResponse_arn = Lens.lens (\CreateDestinationResponse' {arn} -> arn) (\s@CreateDestinationResponse' {} a -> s {arn = a} :: CreateDestinationResponse)

-- | The response's http status code.
createDestinationResponse_httpStatus :: Lens.Lens' CreateDestinationResponse Prelude.Int
createDestinationResponse_httpStatus = Lens.lens (\CreateDestinationResponse' {httpStatus} -> httpStatus) (\s@CreateDestinationResponse' {} a -> s {httpStatus = a} :: CreateDestinationResponse)

instance Prelude.NFData CreateDestinationResponse where
  rnf CreateDestinationResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf httpStatus
