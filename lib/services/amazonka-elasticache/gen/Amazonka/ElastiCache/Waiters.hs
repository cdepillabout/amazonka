{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ElastiCache.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Waiters where

import qualified Amazonka.Core as Core
import Amazonka.ElastiCache.DescribeCacheClusters
import Amazonka.ElastiCache.DescribeReplicationGroups
import Amazonka.ElastiCache.Lens
import Amazonka.ElastiCache.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.ElastiCache.DescribeReplicationGroups' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newReplicationGroupAvailable :: Core.Wait DescribeReplicationGroups
newReplicationGroupAvailable =
  Core.Wait
    { Core._waitName =
        "ReplicationGroupAvailable",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "available"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeReplicationGroupsResponse_replicationGroups
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. replicationGroup_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "deleted"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeReplicationGroupsResponse_replicationGroups
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. replicationGroup_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.ElastiCache.DescribeCacheClusters' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newCacheClusterAvailable :: Core.Wait DescribeCacheClusters
newCacheClusterAvailable =
  Core.Wait
    { Core._waitName = "CacheClusterAvailable",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "available"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "deleted"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "deleting"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "incompatible-network"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "restore-failed"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.ElastiCache.DescribeReplicationGroups' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newReplicationGroupDeleted :: Core.Wait DescribeReplicationGroups
newReplicationGroupDeleted =
  Core.Wait
    { Core._waitName =
        "ReplicationGroupDeleted",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "deleted"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeReplicationGroupsResponse_replicationGroups
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. replicationGroup_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "available"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeReplicationGroupsResponse_replicationGroups
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. replicationGroup_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError
            "ReplicationGroupNotFoundFault"
            Core.AcceptSuccess
        ]
    }

-- | Polls 'Amazonka.ElastiCache.DescribeCacheClusters' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newCacheClusterDeleted :: Core.Wait DescribeCacheClusters
newCacheClusterDeleted =
  Core.Wait
    { Core._waitName = "CacheClusterDeleted",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "deleted"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError
            "CacheClusterNotFound"
            Core.AcceptSuccess,
          Core.matchAny
            "available"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "creating"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "incompatible-network"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "modifying"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "restore-failed"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "snapshotting"
            Core.AcceptFailure
            ( Lens.folding
                ( Lens.concatOf
                    ( describeCacheClustersResponse_cacheClusters
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. cacheCluster_cacheClusterStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
