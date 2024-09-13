# [v0.72.0]

## BREAKING CHANGE

### Basic

The following operation(s) has been updated.
- Operation `GetLanguages`
  - response changed from `map[string]interface{}` to `map[string]string`.

### IAM

The following operation(s) has been updated.
- Operation `AdminEnableMyAuthenticatorV4`
  - Field `Code` in parameter is now required.
- Operation `PublicEnableMyAuthenticatorV4`
  - Field `Code` in parameter is now required.

### Session History

The following operation(s) has been updated.
- Operation `QueryTotalMatchmakingCanceled`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.
- Operation `QueryTotalMatchmakingCreated`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.
- Operation `QueryTotalMatchmakingExpired`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.
- Operation `QueryTotalMatchmakingMatch`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.
- Operation `QueryTotalMatchmakingMatchTicket`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.
- Operation `QueryXrayMatchPool`
  - Field `MatchPool` parameter changed from `*string` to `[]string`.

### Lobby
- `connectionutils.NewWebsocketConnection(...)` is deprecated. Use `connectionutils.NewWSConnection` instead.

Before

```go
connection, err := connectionutils.NewWebsocketConnection(configRepo, tokenRepo, messageHandler)
if err != nil {
    panic(err)
}
connMgr.Save(connection)
```

After

```go
connection, err := connectionutils.NewWSConnection(configRepo, tokenRepo, connectionutils.WithMessageHandler(messageHandler))
if err != nil {
    panic(err)
}
lobbyClient := connectionutils.NewLobbyWebSocketClient(connection)
_, err = lobbyClient.Connect(false)
if err != nil {
    panic(err)
}
connMgr.Save(connection)
```

[v0.73.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.72.0..v0.73.0