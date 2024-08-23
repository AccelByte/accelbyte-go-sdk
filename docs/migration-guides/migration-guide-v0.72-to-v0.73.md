# [v0.72.0]

## BREAKING CHANGE

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
_, err = lobbyClient.Connect(true)
if err != nil {
panic(err)
}
connMgr.Save(connection)
```

[v0.73.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.72.0..v0.73.0