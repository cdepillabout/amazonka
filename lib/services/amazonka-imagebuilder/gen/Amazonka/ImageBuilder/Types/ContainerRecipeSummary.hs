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
-- Module      : Amazonka.ImageBuilder.Types.ContainerRecipeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImageBuilder.Types.ContainerRecipeSummary where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types.ContainerType
import Amazonka.ImageBuilder.Types.Platform
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A summary of a container recipe
--
-- /See:/ 'newContainerRecipeSummary' smart constructor.
data ContainerRecipeSummary = ContainerRecipeSummary'
  { -- | Tags that are attached to the container recipe.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the container recipe.
    name :: Prelude.Maybe Prelude.Text,
    -- | Specifies the type of container, such as \"Docker\".
    containerType :: Prelude.Maybe ContainerType,
    -- | The base image for the container recipe.
    parentImage :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the container recipe.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The owner of the container recipe.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The system platform for the container, such as Windows or Linux.
    platform :: Prelude.Maybe Platform,
    -- | The date when this container recipe was created.
    dateCreated :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContainerRecipeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'containerRecipeSummary_tags' - Tags that are attached to the container recipe.
--
-- 'name', 'containerRecipeSummary_name' - The name of the container recipe.
--
-- 'containerType', 'containerRecipeSummary_containerType' - Specifies the type of container, such as \"Docker\".
--
-- 'parentImage', 'containerRecipeSummary_parentImage' - The base image for the container recipe.
--
-- 'arn', 'containerRecipeSummary_arn' - The Amazon Resource Name (ARN) of the container recipe.
--
-- 'owner', 'containerRecipeSummary_owner' - The owner of the container recipe.
--
-- 'platform', 'containerRecipeSummary_platform' - The system platform for the container, such as Windows or Linux.
--
-- 'dateCreated', 'containerRecipeSummary_dateCreated' - The date when this container recipe was created.
newContainerRecipeSummary ::
  ContainerRecipeSummary
newContainerRecipeSummary =
  ContainerRecipeSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      containerType = Prelude.Nothing,
      parentImage = Prelude.Nothing,
      arn = Prelude.Nothing,
      owner = Prelude.Nothing,
      platform = Prelude.Nothing,
      dateCreated = Prelude.Nothing
    }

-- | Tags that are attached to the container recipe.
containerRecipeSummary_tags :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
containerRecipeSummary_tags = Lens.lens (\ContainerRecipeSummary' {tags} -> tags) (\s@ContainerRecipeSummary' {} a -> s {tags = a} :: ContainerRecipeSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the container recipe.
containerRecipeSummary_name :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Prelude.Text)
containerRecipeSummary_name = Lens.lens (\ContainerRecipeSummary' {name} -> name) (\s@ContainerRecipeSummary' {} a -> s {name = a} :: ContainerRecipeSummary)

-- | Specifies the type of container, such as \"Docker\".
containerRecipeSummary_containerType :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe ContainerType)
containerRecipeSummary_containerType = Lens.lens (\ContainerRecipeSummary' {containerType} -> containerType) (\s@ContainerRecipeSummary' {} a -> s {containerType = a} :: ContainerRecipeSummary)

-- | The base image for the container recipe.
containerRecipeSummary_parentImage :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Prelude.Text)
containerRecipeSummary_parentImage = Lens.lens (\ContainerRecipeSummary' {parentImage} -> parentImage) (\s@ContainerRecipeSummary' {} a -> s {parentImage = a} :: ContainerRecipeSummary)

-- | The Amazon Resource Name (ARN) of the container recipe.
containerRecipeSummary_arn :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Prelude.Text)
containerRecipeSummary_arn = Lens.lens (\ContainerRecipeSummary' {arn} -> arn) (\s@ContainerRecipeSummary' {} a -> s {arn = a} :: ContainerRecipeSummary)

-- | The owner of the container recipe.
containerRecipeSummary_owner :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Prelude.Text)
containerRecipeSummary_owner = Lens.lens (\ContainerRecipeSummary' {owner} -> owner) (\s@ContainerRecipeSummary' {} a -> s {owner = a} :: ContainerRecipeSummary)

-- | The system platform for the container, such as Windows or Linux.
containerRecipeSummary_platform :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Platform)
containerRecipeSummary_platform = Lens.lens (\ContainerRecipeSummary' {platform} -> platform) (\s@ContainerRecipeSummary' {} a -> s {platform = a} :: ContainerRecipeSummary)

-- | The date when this container recipe was created.
containerRecipeSummary_dateCreated :: Lens.Lens' ContainerRecipeSummary (Prelude.Maybe Prelude.Text)
containerRecipeSummary_dateCreated = Lens.lens (\ContainerRecipeSummary' {dateCreated} -> dateCreated) (\s@ContainerRecipeSummary' {} a -> s {dateCreated = a} :: ContainerRecipeSummary)

instance Core.FromJSON ContainerRecipeSummary where
  parseJSON =
    Core.withObject
      "ContainerRecipeSummary"
      ( \x ->
          ContainerRecipeSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "containerType")
            Prelude.<*> (x Core..:? "parentImage")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "owner")
            Prelude.<*> (x Core..:? "platform")
            Prelude.<*> (x Core..:? "dateCreated")
      )

instance Prelude.Hashable ContainerRecipeSummary where
  hashWithSalt _salt ContainerRecipeSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` containerType
      `Prelude.hashWithSalt` parentImage
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` platform
      `Prelude.hashWithSalt` dateCreated

instance Prelude.NFData ContainerRecipeSummary where
  rnf ContainerRecipeSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf containerType
      `Prelude.seq` Prelude.rnf parentImage
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf platform
      `Prelude.seq` Prelude.rnf dateCreated
