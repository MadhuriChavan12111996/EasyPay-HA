#!/bin/bash
set -euo pipefail
SNAPSHOT="/tmp/etcd-$(date +%F_%T).db"
export ETCDCTL_API=3

etcdctl snapshot save "$SNAPSHOT"
aws s3 cp "$SNAPSHOT" s3://easypay-backups/etcd/
rm -f "$SNAPSHOT"
