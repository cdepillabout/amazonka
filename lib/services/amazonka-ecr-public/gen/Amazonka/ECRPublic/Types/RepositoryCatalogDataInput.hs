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
-- Module      : Amazonka.ECRPublic.Types.RepositoryCatalogDataInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECRPublic.Types.RepositoryCatalogDataInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object containing the catalog data for a repository. This data is
-- publicly visible in the Amazon ECR Public Gallery.
--
-- /See:/ 'newRepositoryCatalogDataInput' smart constructor.
data RepositoryCatalogDataInput = RepositoryCatalogDataInput'
  { -- | A short description of the contents of the repository. This text appears
    -- in both the image details and also when searching for repositories on
    -- the Amazon ECR Public Gallery.
    description :: Prelude.Maybe Prelude.Text,
    -- | A detailed description of the contents of the repository. It is publicly
    -- visible in the Amazon ECR Public Gallery. The text must be in markdown
    -- format.
    aboutText :: Prelude.Maybe Prelude.Text,
    -- | Detailed information on how to use the contents of the repository. It is
    -- publicly visible in the Amazon ECR Public Gallery. The usage text
    -- provides context, support information, and additional usage details for
    -- users of the repository. The text must be in markdown format.
    usageText :: Prelude.Maybe Prelude.Text,
    -- | The operating systems that the images in the repository are compatible
    -- with. On the Amazon ECR Public Gallery, the following supported
    -- operating systems will appear as badges on the repository and are used
    -- as search filters.
    --
    -- -   @ARM@
    --
    -- -   @ARM 64@
    --
    -- -   @x86@
    --
    -- -   @x86-64@
    --
    -- If an unsupported tag is added to your repository catalog data, it will
    -- be associated with the repository and can be retrieved using the API but
    -- will not be discoverable in the Amazon ECR Public Gallery.
    operatingSystems :: Prelude.Maybe [Prelude.Text],
    -- | The base64-encoded repository logo payload.
    --
    -- The repository logo is only publicly visible in the Amazon ECR Public
    -- Gallery for verified accounts.
    logoImageBlob :: Prelude.Maybe Core.Base64,
    -- | The system architecture that the images in the repository are compatible
    -- with. On the Amazon ECR Public Gallery, the following supported
    -- architectures will appear as badges on the repository and are used as
    -- search filters.
    --
    -- -   @Linux@
    --
    -- -   @Windows@
    --
    -- If an unsupported tag is added to your repository catalog data, it will
    -- be associated with the repository and can be retrieved using the API but
    -- will not be discoverable in the Amazon ECR Public Gallery.
    architectures :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryCatalogDataInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'repositoryCatalogDataInput_description' - A short description of the contents of the repository. This text appears
-- in both the image details and also when searching for repositories on
-- the Amazon ECR Public Gallery.
--
-- 'aboutText', 'repositoryCatalogDataInput_aboutText' - A detailed description of the contents of the repository. It is publicly
-- visible in the Amazon ECR Public Gallery. The text must be in markdown
-- format.
--
-- 'usageText', 'repositoryCatalogDataInput_usageText' - Detailed information on how to use the contents of the repository. It is
-- publicly visible in the Amazon ECR Public Gallery. The usage text
-- provides context, support information, and additional usage details for
-- users of the repository. The text must be in markdown format.
--
-- 'operatingSystems', 'repositoryCatalogDataInput_operatingSystems' - The operating systems that the images in the repository are compatible
-- with. On the Amazon ECR Public Gallery, the following supported
-- operating systems will appear as badges on the repository and are used
-- as search filters.
--
-- -   @ARM@
--
-- -   @ARM 64@
--
-- -   @x86@
--
-- -   @x86-64@
--
-- If an unsupported tag is added to your repository catalog data, it will
-- be associated with the repository and can be retrieved using the API but
-- will not be discoverable in the Amazon ECR Public Gallery.
--
-- 'logoImageBlob', 'repositoryCatalogDataInput_logoImageBlob' - The base64-encoded repository logo payload.
--
-- The repository logo is only publicly visible in the Amazon ECR Public
-- Gallery for verified accounts.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'architectures', 'repositoryCatalogDataInput_architectures' - The system architecture that the images in the repository are compatible
-- with. On the Amazon ECR Public Gallery, the following supported
-- architectures will appear as badges on the repository and are used as
-- search filters.
--
-- -   @Linux@
--
-- -   @Windows@
--
-- If an unsupported tag is added to your repository catalog data, it will
-- be associated with the repository and can be retrieved using the API but
-- will not be discoverable in the Amazon ECR Public Gallery.
newRepositoryCatalogDataInput ::
  RepositoryCatalogDataInput
newRepositoryCatalogDataInput =
  RepositoryCatalogDataInput'
    { description =
        Prelude.Nothing,
      aboutText = Prelude.Nothing,
      usageText = Prelude.Nothing,
      operatingSystems = Prelude.Nothing,
      logoImageBlob = Prelude.Nothing,
      architectures = Prelude.Nothing
    }

-- | A short description of the contents of the repository. This text appears
-- in both the image details and also when searching for repositories on
-- the Amazon ECR Public Gallery.
repositoryCatalogDataInput_description :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe Prelude.Text)
repositoryCatalogDataInput_description = Lens.lens (\RepositoryCatalogDataInput' {description} -> description) (\s@RepositoryCatalogDataInput' {} a -> s {description = a} :: RepositoryCatalogDataInput)

-- | A detailed description of the contents of the repository. It is publicly
-- visible in the Amazon ECR Public Gallery. The text must be in markdown
-- format.
repositoryCatalogDataInput_aboutText :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe Prelude.Text)
repositoryCatalogDataInput_aboutText = Lens.lens (\RepositoryCatalogDataInput' {aboutText} -> aboutText) (\s@RepositoryCatalogDataInput' {} a -> s {aboutText = a} :: RepositoryCatalogDataInput)

-- | Detailed information on how to use the contents of the repository. It is
-- publicly visible in the Amazon ECR Public Gallery. The usage text
-- provides context, support information, and additional usage details for
-- users of the repository. The text must be in markdown format.
repositoryCatalogDataInput_usageText :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe Prelude.Text)
repositoryCatalogDataInput_usageText = Lens.lens (\RepositoryCatalogDataInput' {usageText} -> usageText) (\s@RepositoryCatalogDataInput' {} a -> s {usageText = a} :: RepositoryCatalogDataInput)

-- | The operating systems that the images in the repository are compatible
-- with. On the Amazon ECR Public Gallery, the following supported
-- operating systems will appear as badges on the repository and are used
-- as search filters.
--
-- -   @ARM@
--
-- -   @ARM 64@
--
-- -   @x86@
--
-- -   @x86-64@
--
-- If an unsupported tag is added to your repository catalog data, it will
-- be associated with the repository and can be retrieved using the API but
-- will not be discoverable in the Amazon ECR Public Gallery.
repositoryCatalogDataInput_operatingSystems :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe [Prelude.Text])
repositoryCatalogDataInput_operatingSystems = Lens.lens (\RepositoryCatalogDataInput' {operatingSystems} -> operatingSystems) (\s@RepositoryCatalogDataInput' {} a -> s {operatingSystems = a} :: RepositoryCatalogDataInput) Prelude.. Lens.mapping Lens.coerced

-- | The base64-encoded repository logo payload.
--
-- The repository logo is only publicly visible in the Amazon ECR Public
-- Gallery for verified accounts.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
repositoryCatalogDataInput_logoImageBlob :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe Prelude.ByteString)
repositoryCatalogDataInput_logoImageBlob = Lens.lens (\RepositoryCatalogDataInput' {logoImageBlob} -> logoImageBlob) (\s@RepositoryCatalogDataInput' {} a -> s {logoImageBlob = a} :: RepositoryCatalogDataInput) Prelude.. Lens.mapping Core._Base64

-- | The system architecture that the images in the repository are compatible
-- with. On the Amazon ECR Public Gallery, the following supported
-- architectures will appear as badges on the repository and are used as
-- search filters.
--
-- -   @Linux@
--
-- -   @Windows@
--
-- If an unsupported tag is added to your repository catalog data, it will
-- be associated with the repository and can be retrieved using the API but
-- will not be discoverable in the Amazon ECR Public Gallery.
repositoryCatalogDataInput_architectures :: Lens.Lens' RepositoryCatalogDataInput (Prelude.Maybe [Prelude.Text])
repositoryCatalogDataInput_architectures = Lens.lens (\RepositoryCatalogDataInput' {architectures} -> architectures) (\s@RepositoryCatalogDataInput' {} a -> s {architectures = a} :: RepositoryCatalogDataInput) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable RepositoryCatalogDataInput where
  hashWithSalt _salt RepositoryCatalogDataInput' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` aboutText
      `Prelude.hashWithSalt` usageText
      `Prelude.hashWithSalt` operatingSystems
      `Prelude.hashWithSalt` logoImageBlob
      `Prelude.hashWithSalt` architectures

instance Prelude.NFData RepositoryCatalogDataInput where
  rnf RepositoryCatalogDataInput' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf aboutText
      `Prelude.seq` Prelude.rnf usageText
      `Prelude.seq` Prelude.rnf operatingSystems
      `Prelude.seq` Prelude.rnf logoImageBlob
      `Prelude.seq` Prelude.rnf architectures

instance Core.ToJSON RepositoryCatalogDataInput where
  toJSON RepositoryCatalogDataInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            ("aboutText" Core..=) Prelude.<$> aboutText,
            ("usageText" Core..=) Prelude.<$> usageText,
            ("operatingSystems" Core..=)
              Prelude.<$> operatingSystems,
            ("logoImageBlob" Core..=) Prelude.<$> logoImageBlob,
            ("architectures" Core..=) Prelude.<$> architectures
          ]
      )
