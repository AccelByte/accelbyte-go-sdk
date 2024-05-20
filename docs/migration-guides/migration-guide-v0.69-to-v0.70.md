# [v0.70.0]

## BREAKING CHANGE

### Group

All operations under `group-sdk/pkg/groupclient/operations` has been removed.

### Leaderboard

The following model(s) has been updated.

- Renamed `V2Pagination` into `V2PaginationV2`
- `V2GetAllLeaderboardConfigsPublicResp.Paging` type has changed from `V2Pagination` into `V2PaginationV2`.
- `V2GetPublicLeaderboardRankingResponse.Paging` type has changed from `V2Pagination` into `V2PaginationV2`.

[v0.69.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.68.0..v0.69.0