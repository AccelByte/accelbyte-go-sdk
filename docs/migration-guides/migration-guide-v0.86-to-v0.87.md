# [v0.87.0]

### BREAKING CHANGE

### Basic

- Operation `GetNamespaces`
  - New optional query parameter `IsTesting *bool` added to `GetNamespacesParams`

### Challenge

- Operation `AdminEvaluateProgress`
  - New optional query parameter `IncludeOneTimeEvent *string` added to `AdminEvaluateProgressParams` (default: `"false"`)
- Operation `EvaluateMyProgress`
  - New optional query parameter `IncludeOneTimeEvent *string` added to `EvaluateMyProgressParams` (default: `"false"`)

[v0.87.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.86.0..v0.87.0
