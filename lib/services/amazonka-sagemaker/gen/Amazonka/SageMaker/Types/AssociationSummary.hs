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
-- Module      : Amazonka.SageMaker.Types.AssociationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AssociationSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.AssociationEdgeType
import Amazonka.SageMaker.Types.UserContext

-- | Lists a summary of the properties of an association. An association is
-- an entity that links other lineage or experiment entities. An example
-- would be an association between a training job and a model.
--
-- /See:/ 'newAssociationSummary' smart constructor.
data AssociationSummary = AssociationSummary'
  { -- | The type of the association.
    associationType :: Prelude.Maybe AssociationEdgeType,
    -- | The ARN of the source.
    sourceArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the source.
    sourceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the destination.
    destinationName :: Prelude.Maybe Prelude.Text,
    -- | The destination type.
    destinationType :: Prelude.Maybe Prelude.Text,
    -- | The source type.
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | When the association was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    createdBy :: Prelude.Maybe UserContext,
    -- | The Amazon Resource Name (ARN) of the destination.
    destinationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associationType', 'associationSummary_associationType' - The type of the association.
--
-- 'sourceArn', 'associationSummary_sourceArn' - The ARN of the source.
--
-- 'sourceName', 'associationSummary_sourceName' - The name of the source.
--
-- 'destinationName', 'associationSummary_destinationName' - The name of the destination.
--
-- 'destinationType', 'associationSummary_destinationType' - The destination type.
--
-- 'sourceType', 'associationSummary_sourceType' - The source type.
--
-- 'creationTime', 'associationSummary_creationTime' - When the association was created.
--
-- 'createdBy', 'associationSummary_createdBy' - Undocumented member.
--
-- 'destinationArn', 'associationSummary_destinationArn' - The Amazon Resource Name (ARN) of the destination.
newAssociationSummary ::
  AssociationSummary
newAssociationSummary =
  AssociationSummary'
    { associationType =
        Prelude.Nothing,
      sourceArn = Prelude.Nothing,
      sourceName = Prelude.Nothing,
      destinationName = Prelude.Nothing,
      destinationType = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      destinationArn = Prelude.Nothing
    }

-- | The type of the association.
associationSummary_associationType :: Lens.Lens' AssociationSummary (Prelude.Maybe AssociationEdgeType)
associationSummary_associationType = Lens.lens (\AssociationSummary' {associationType} -> associationType) (\s@AssociationSummary' {} a -> s {associationType = a} :: AssociationSummary)

-- | The ARN of the source.
associationSummary_sourceArn :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_sourceArn = Lens.lens (\AssociationSummary' {sourceArn} -> sourceArn) (\s@AssociationSummary' {} a -> s {sourceArn = a} :: AssociationSummary)

-- | The name of the source.
associationSummary_sourceName :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_sourceName = Lens.lens (\AssociationSummary' {sourceName} -> sourceName) (\s@AssociationSummary' {} a -> s {sourceName = a} :: AssociationSummary)

-- | The name of the destination.
associationSummary_destinationName :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_destinationName = Lens.lens (\AssociationSummary' {destinationName} -> destinationName) (\s@AssociationSummary' {} a -> s {destinationName = a} :: AssociationSummary)

-- | The destination type.
associationSummary_destinationType :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_destinationType = Lens.lens (\AssociationSummary' {destinationType} -> destinationType) (\s@AssociationSummary' {} a -> s {destinationType = a} :: AssociationSummary)

-- | The source type.
associationSummary_sourceType :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_sourceType = Lens.lens (\AssociationSummary' {sourceType} -> sourceType) (\s@AssociationSummary' {} a -> s {sourceType = a} :: AssociationSummary)

-- | When the association was created.
associationSummary_creationTime :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.UTCTime)
associationSummary_creationTime = Lens.lens (\AssociationSummary' {creationTime} -> creationTime) (\s@AssociationSummary' {} a -> s {creationTime = a} :: AssociationSummary) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
associationSummary_createdBy :: Lens.Lens' AssociationSummary (Prelude.Maybe UserContext)
associationSummary_createdBy = Lens.lens (\AssociationSummary' {createdBy} -> createdBy) (\s@AssociationSummary' {} a -> s {createdBy = a} :: AssociationSummary)

-- | The Amazon Resource Name (ARN) of the destination.
associationSummary_destinationArn :: Lens.Lens' AssociationSummary (Prelude.Maybe Prelude.Text)
associationSummary_destinationArn = Lens.lens (\AssociationSummary' {destinationArn} -> destinationArn) (\s@AssociationSummary' {} a -> s {destinationArn = a} :: AssociationSummary)

instance Core.FromJSON AssociationSummary where
  parseJSON =
    Core.withObject
      "AssociationSummary"
      ( \x ->
          AssociationSummary'
            Prelude.<$> (x Core..:? "AssociationType")
            Prelude.<*> (x Core..:? "SourceArn")
            Prelude.<*> (x Core..:? "SourceName")
            Prelude.<*> (x Core..:? "DestinationName")
            Prelude.<*> (x Core..:? "DestinationType")
            Prelude.<*> (x Core..:? "SourceType")
            Prelude.<*> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "CreatedBy")
            Prelude.<*> (x Core..:? "DestinationArn")
      )

instance Prelude.Hashable AssociationSummary where
  hashWithSalt _salt AssociationSummary' {..} =
    _salt `Prelude.hashWithSalt` associationType
      `Prelude.hashWithSalt` sourceArn
      `Prelude.hashWithSalt` sourceName
      `Prelude.hashWithSalt` destinationName
      `Prelude.hashWithSalt` destinationType
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` createdBy
      `Prelude.hashWithSalt` destinationArn

instance Prelude.NFData AssociationSummary where
  rnf AssociationSummary' {..} =
    Prelude.rnf associationType
      `Prelude.seq` Prelude.rnf sourceArn
      `Prelude.seq` Prelude.rnf sourceName
      `Prelude.seq` Prelude.rnf destinationName
      `Prelude.seq` Prelude.rnf destinationType
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf destinationArn
