# k0rdent-ai-catalog

Private Helm-chart catalog consumed by k0rdent `ServiceTemplate`s via a Flux
`GitRepository` source. Used by the `k0rdent-ai-poc` deployment at
`~/ops/k0rdent-ai-poc/inference/`.

## Charts

| Chart | Version | Purpose |
|---|---|---|
| `nvidia-imex` | 0.2.0 | IMEX daemon DaemonSet + `kernel-module-config` ConfigMap for HGX Blackwell (B200/B300). Required for CUDA init. |
| `ceph-models-claim` | 0.1.0 | Static PV + PVC + credentials Secret binding to `client.k0rdent-models` on the `ai-shared` CephFS filesystem (RO, `/models`). |
| `qwen3-vllm` | 0.1.0 | `DynamoGraphDeployment` serving Qwen3 via vLLM on 8× HGX Blackwell. Model volume is PVC (default) or hostPath. |

See each chart's `values.yaml` for tunables.
