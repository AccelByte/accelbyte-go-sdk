# [v0.71.0]

## BREAKING CHANGE

### BREAKING CHANGE

### Challenge

The following operation(s) has been updated.
- Operation `AdminUpdateChallenge`
    - `body` is changed from `ModelsUpdateChallengeRequest` to `ModelUpdateChallengeRequest`

### IAM

The following operation(s) has been updated.
- Operation `AdminDisableMyAuthenticatorV4`
    - `body` is now required
- Operation `AdminDisableMyBackupCodesV4`
    - `body` is now required
- Operation `AdminDisableMyEmailV4`
    - `body` is now required
- Operation `PublicDisableMyAuthenticatorV4`
    - `body` is now required
- Operation `PublicDisableMyBackupCodesV4`
    - `body` is now required
- Operation `PublicDisableMyEmailV4`
    - `body` is now required

### Inventory

The following operation(s) has been updated.
- Operation `PublicListItems`
    - parameter `QtyGte` is removed

### Platform

The following operation(s) has been updated.
- Operation `QueryItems1`
    - renamed to `QueryItemsV2`
- Operation `GetPaymentMerchantConfig`
    - parameter `id` is replaced by `namespace_`
    - `GetPaymentMerchantConfig1` is available as an alternative operation if `id` parameter is required.

[v0.70.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.70.0..v0.71.0