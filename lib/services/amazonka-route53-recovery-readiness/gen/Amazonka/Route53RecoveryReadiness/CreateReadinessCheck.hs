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
-- Module      : Amazonka.Route53RecoveryReadiness.CreateReadinessCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a readiness check in an account. A readiness check monitors a
-- resource set in your application, such as a set of Amazon Aurora
-- instances, that Application Recovery Controller is auditing recovery
-- readiness for. The audits run once every minute on every resource
-- that\'s associated with a readiness check.
module Amazonka.Route53RecoveryReadiness.CreateReadinessCheck
  ( -- * Creating a Request
    CreateReadinessCheck (..),
    newCreateReadinessCheck,

    -- * Request Lenses
    createReadinessCheck_tags,
    createReadinessCheck_resourceSetName,
    createReadinessCheck_readinessCheckName,

    -- * Destructuring the Response
    CreateReadinessCheckResponse (..),
    newCreateReadinessCheckResponse,

    -- * Response Lenses
    createReadinessCheckResponse_tags,
    createReadinessCheckResponse_resourceSet,
    createReadinessCheckResponse_readinessCheckName,
    createReadinessCheckResponse_readinessCheckArn,
    createReadinessCheckResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Route53RecoveryReadiness.Types

-- | /See:/ 'newCreateReadinessCheck' smart constructor.
data CreateReadinessCheck = CreateReadinessCheck'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the resource set to check.
    resourceSetName :: Prelude.Text,
    -- | The name of the readiness check to create.
    readinessCheckName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateReadinessCheck' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createReadinessCheck_tags' - Undocumented member.
--
-- 'resourceSetName', 'createReadinessCheck_resourceSetName' - The name of the resource set to check.
--
-- 'readinessCheckName', 'createReadinessCheck_readinessCheckName' - The name of the readiness check to create.
newCreateReadinessCheck ::
  -- | 'resourceSetName'
  Prelude.Text ->
  -- | 'readinessCheckName'
  Prelude.Text ->
  CreateReadinessCheck
newCreateReadinessCheck
  pResourceSetName_
  pReadinessCheckName_ =
    CreateReadinessCheck'
      { tags = Prelude.Nothing,
        resourceSetName = pResourceSetName_,
        readinessCheckName = pReadinessCheckName_
      }

-- | Undocumented member.
createReadinessCheck_tags :: Lens.Lens' CreateReadinessCheck (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createReadinessCheck_tags = Lens.lens (\CreateReadinessCheck' {tags} -> tags) (\s@CreateReadinessCheck' {} a -> s {tags = a} :: CreateReadinessCheck) Prelude.. Lens.mapping Lens.coerced

-- | The name of the resource set to check.
createReadinessCheck_resourceSetName :: Lens.Lens' CreateReadinessCheck Prelude.Text
createReadinessCheck_resourceSetName = Lens.lens (\CreateReadinessCheck' {resourceSetName} -> resourceSetName) (\s@CreateReadinessCheck' {} a -> s {resourceSetName = a} :: CreateReadinessCheck)

-- | The name of the readiness check to create.
createReadinessCheck_readinessCheckName :: Lens.Lens' CreateReadinessCheck Prelude.Text
createReadinessCheck_readinessCheckName = Lens.lens (\CreateReadinessCheck' {readinessCheckName} -> readinessCheckName) (\s@CreateReadinessCheck' {} a -> s {readinessCheckName = a} :: CreateReadinessCheck)

instance Core.AWSRequest CreateReadinessCheck where
  type
    AWSResponse CreateReadinessCheck =
      CreateReadinessCheckResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateReadinessCheckResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "resourceSet")
            Prelude.<*> (x Core..?> "readinessCheckName")
            Prelude.<*> (x Core..?> "readinessCheckArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateReadinessCheck where
  hashWithSalt _salt CreateReadinessCheck' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` resourceSetName
      `Prelude.hashWithSalt` readinessCheckName

instance Prelude.NFData CreateReadinessCheck where
  rnf CreateReadinessCheck' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceSetName
      `Prelude.seq` Prelude.rnf readinessCheckName

instance Core.ToHeaders CreateReadinessCheck where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateReadinessCheck where
  toJSON CreateReadinessCheck' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("resourceSetName" Core..= resourceSetName),
            Prelude.Just
              ("readinessCheckName" Core..= readinessCheckName)
          ]
      )

instance Core.ToPath CreateReadinessCheck where
  toPath = Prelude.const "/readinesschecks"

instance Core.ToQuery CreateReadinessCheck where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateReadinessCheckResponse' smart constructor.
data CreateReadinessCheckResponse = CreateReadinessCheckResponse'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name of the resource set to be checked.
    resourceSet :: Prelude.Maybe Prelude.Text,
    -- | Name of a readiness check.
    readinessCheckName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) associated with a readiness check.
    readinessCheckArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateReadinessCheckResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createReadinessCheckResponse_tags' - Undocumented member.
--
-- 'resourceSet', 'createReadinessCheckResponse_resourceSet' - Name of the resource set to be checked.
--
-- 'readinessCheckName', 'createReadinessCheckResponse_readinessCheckName' - Name of a readiness check.
--
-- 'readinessCheckArn', 'createReadinessCheckResponse_readinessCheckArn' - The Amazon Resource Name (ARN) associated with a readiness check.
--
-- 'httpStatus', 'createReadinessCheckResponse_httpStatus' - The response's http status code.
newCreateReadinessCheckResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateReadinessCheckResponse
newCreateReadinessCheckResponse pHttpStatus_ =
  CreateReadinessCheckResponse'
    { tags =
        Prelude.Nothing,
      resourceSet = Prelude.Nothing,
      readinessCheckName = Prelude.Nothing,
      readinessCheckArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createReadinessCheckResponse_tags :: Lens.Lens' CreateReadinessCheckResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createReadinessCheckResponse_tags = Lens.lens (\CreateReadinessCheckResponse' {tags} -> tags) (\s@CreateReadinessCheckResponse' {} a -> s {tags = a} :: CreateReadinessCheckResponse) Prelude.. Lens.mapping Lens.coerced

-- | Name of the resource set to be checked.
createReadinessCheckResponse_resourceSet :: Lens.Lens' CreateReadinessCheckResponse (Prelude.Maybe Prelude.Text)
createReadinessCheckResponse_resourceSet = Lens.lens (\CreateReadinessCheckResponse' {resourceSet} -> resourceSet) (\s@CreateReadinessCheckResponse' {} a -> s {resourceSet = a} :: CreateReadinessCheckResponse)

-- | Name of a readiness check.
createReadinessCheckResponse_readinessCheckName :: Lens.Lens' CreateReadinessCheckResponse (Prelude.Maybe Prelude.Text)
createReadinessCheckResponse_readinessCheckName = Lens.lens (\CreateReadinessCheckResponse' {readinessCheckName} -> readinessCheckName) (\s@CreateReadinessCheckResponse' {} a -> s {readinessCheckName = a} :: CreateReadinessCheckResponse)

-- | The Amazon Resource Name (ARN) associated with a readiness check.
createReadinessCheckResponse_readinessCheckArn :: Lens.Lens' CreateReadinessCheckResponse (Prelude.Maybe Prelude.Text)
createReadinessCheckResponse_readinessCheckArn = Lens.lens (\CreateReadinessCheckResponse' {readinessCheckArn} -> readinessCheckArn) (\s@CreateReadinessCheckResponse' {} a -> s {readinessCheckArn = a} :: CreateReadinessCheckResponse)

-- | The response's http status code.
createReadinessCheckResponse_httpStatus :: Lens.Lens' CreateReadinessCheckResponse Prelude.Int
createReadinessCheckResponse_httpStatus = Lens.lens (\CreateReadinessCheckResponse' {httpStatus} -> httpStatus) (\s@CreateReadinessCheckResponse' {} a -> s {httpStatus = a} :: CreateReadinessCheckResponse)

instance Prelude.NFData CreateReadinessCheckResponse where
  rnf CreateReadinessCheckResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceSet
      `Prelude.seq` Prelude.rnf readinessCheckName
      `Prelude.seq` Prelude.rnf readinessCheckArn
      `Prelude.seq` Prelude.rnf httpStatus
