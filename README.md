# k0rdent-ai-catalog

Private Helm-chart catalog consumed by k0rdent `ServiceTemplate`s via a Flux
`GitRepository` source. Used by the `k0rdent-ai-poc` deployment at
`~/ops/k0rdent-ai-poc/inference/`.

## Charts

| Chart | Version | Purpose |
|---|---|---|
| `nvidia-imex` | 0.1.0 | Runs `nvidia-imex` daemon on HGX Blackwell (B200/B300) nodes via DaemonSet — required for CUDA context init |

See each chart's `values.yaml` for tunables.
