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
-- Module      : Amazonka.ElastiCache.Types.CacheParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Types.CacheParameterGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the output of a @CreateCacheParameterGroup@ operation.
--
-- /See:/ 'newCacheParameterGroup' smart constructor.
data CacheParameterGroup = CacheParameterGroup'
  { -- | Indicates whether the parameter group is associated with a Global
    -- datastore
    isGlobal :: Prelude.Maybe Prelude.Bool,
    -- | The ARN (Amazon Resource Name) of the cache parameter group.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The description for this cache parameter group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the cache parameter group.
    cacheParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The name of the cache parameter group family that this cache parameter
    -- group is compatible with.
    --
    -- Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ |
    -- @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ |
    -- @redis6.x@ |
    cacheParameterGroupFamily :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CacheParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isGlobal', 'cacheParameterGroup_isGlobal' - Indicates whether the parameter group is associated with a Global
-- datastore
--
-- 'arn', 'cacheParameterGroup_arn' - The ARN (Amazon Resource Name) of the cache parameter group.
--
-- 'description', 'cacheParameterGroup_description' - The description for this cache parameter group.
--
-- 'cacheParameterGroupName', 'cacheParameterGroup_cacheParameterGroupName' - The name of the cache parameter group.
--
-- 'cacheParameterGroupFamily', 'cacheParameterGroup_cacheParameterGroupFamily' - The name of the cache parameter group family that this cache parameter
-- group is compatible with.
--
-- Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ |
-- @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ |
-- @redis6.x@ |
newCacheParameterGroup ::
  CacheParameterGroup
newCacheParameterGroup =
  CacheParameterGroup'
    { isGlobal = Prelude.Nothing,
      arn = Prelude.Nothing,
      description = Prelude.Nothing,
      cacheParameterGroupName = Prelude.Nothing,
      cacheParameterGroupFamily = Prelude.Nothing
    }

-- | Indicates whether the parameter group is associated with a Global
-- datastore
cacheParameterGroup_isGlobal :: Lens.Lens' CacheParameterGroup (Prelude.Maybe Prelude.Bool)
cacheParameterGroup_isGlobal = Lens.lens (\CacheParameterGroup' {isGlobal} -> isGlobal) (\s@CacheParameterGroup' {} a -> s {isGlobal = a} :: CacheParameterGroup)

-- | The ARN (Amazon Resource Name) of the cache parameter group.
cacheParameterGroup_arn :: Lens.Lens' CacheParameterGroup (Prelude.Maybe Prelude.Text)
cacheParameterGroup_arn = Lens.lens (\CacheParameterGroup' {arn} -> arn) (\s@CacheParameterGroup' {} a -> s {arn = a} :: CacheParameterGroup)

-- | The description for this cache parameter group.
cacheParameterGroup_description :: Lens.Lens' CacheParameterGroup (Prelude.Maybe Prelude.Text)
cacheParameterGroup_description = Lens.lens (\CacheParameterGroup' {description} -> description) (\s@CacheParameterGroup' {} a -> s {description = a} :: CacheParameterGroup)

-- | The name of the cache parameter group.
cacheParameterGroup_cacheParameterGroupName :: Lens.Lens' CacheParameterGroup (Prelude.Maybe Prelude.Text)
cacheParameterGroup_cacheParameterGroupName = Lens.lens (\CacheParameterGroup' {cacheParameterGroupName} -> cacheParameterGroupName) (\s@CacheParameterGroup' {} a -> s {cacheParameterGroupName = a} :: CacheParameterGroup)

-- | The name of the cache parameter group family that this cache parameter
-- group is compatible with.
--
-- Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ |
-- @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ |
-- @redis6.x@ |
cacheParameterGroup_cacheParameterGroupFamily :: Lens.Lens' CacheParameterGroup (Prelude.Maybe Prelude.Text)
cacheParameterGroup_cacheParameterGroupFamily = Lens.lens (\CacheParameterGroup' {cacheParameterGroupFamily} -> cacheParameterGroupFamily) (\s@CacheParameterGroup' {} a -> s {cacheParameterGroupFamily = a} :: CacheParameterGroup)

instance Core.FromXML CacheParameterGroup where
  parseXML x =
    CacheParameterGroup'
      Prelude.<$> (x Core..@? "IsGlobal")
      Prelude.<*> (x Core..@? "ARN")
      Prelude.<*> (x Core..@? "Description")
      Prelude.<*> (x Core..@? "CacheParameterGroupName")
      Prelude.<*> (x Core..@? "CacheParameterGroupFamily")

instance Prelude.Hashable CacheParameterGroup where
  hashWithSalt _salt CacheParameterGroup' {..} =
    _salt `Prelude.hashWithSalt` isGlobal
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` cacheParameterGroupName
      `Prelude.hashWithSalt` cacheParameterGroupFamily

instance Prelude.NFData CacheParameterGroup where
  rnf CacheParameterGroup' {..} =
    Prelude.rnf isGlobal
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf cacheParameterGroupName
      `Prelude.seq` Prelude.rnf cacheParameterGroupFamily
