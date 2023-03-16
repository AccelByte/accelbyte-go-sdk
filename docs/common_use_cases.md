# Common Use Cases

## Achievement

Source: [achievement_test.go](../services-api/pkg/tests/integration/achievement_test.go)

### Create an achievement

```go
inputCreate := &achievements.AdminCreateNewAchievementParams{
	Body:      bodyAchievement,
	Namespace: integration.NamespaceTest,
}

created, errCreate := achievementsService.AdminCreateNewAchievementShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("AchievementCode: %v created", *created.AchievementCode)
```

### Retrieve an achievement by its code

```go
inputGet := &achievements.AdminGetAchievementParams{
	AchievementCode: achievementCode,
	Namespace:       integration.NamespaceTest,
}

get, errGet := achievementsService.AdminGetAchievementShort(inputGet)
```

### Update an achievement

```go
inputUpdate := &achievements.AdminUpdateAchievementParams{
	AchievementCode: achievementCode,
	Body:            bodyAchievementUpdate,
	Namespace:       integration.NamespaceTest,
}

updated, errUpdate := achievementsService.AdminUpdateAchievementShort(inputUpdate)
```

### Get all achievements

```go
inputGetAll := &achievements.AdminListAchievementsParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
	SortBy:    nil,
}

getAll, errGetAll := achievementsService.AdminListAchievementsShort(inputGetAll)
```

### Delete an achievement

```go
inputDelete := &achievements.AdminDeleteAchievementParams{
	AchievementCode: achievementCode,
	Namespace:       integration.NamespaceTest,
}

errDelete := achievementsService.AdminDeleteAchievementShort(inputDelete)
```

## Basic

Source: [basic_test.go](../services-api/pkg/tests/integration/basic_test.go)

### Create a profile

```go
inputCreate := &user_profile.CreateMyProfileParams{
	Body:      bodyBasic,
	Namespace: integration.NamespaceTest,
}

created, errCreate := userProfileService.CreateMyProfileShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Profile: %v created", created.UserID)
```

### Get a profile

```go
inputGet := &user_profile.PublicGetUserProfileInfoParams{
	Namespace: integration.NamespaceTest,
	UserID:    created.UserID,
}

get, errGet := userProfileService.PublicGetUserProfileInfoShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a profile

```go
inputUpdate := &user_profile.PublicUpdateUserProfileParams{
	Body:      bodyBasicUpdate,
	Namespace: integration.NamespaceTest,
	UserID:    created.UserID,
}

updated, errUpdate := userProfileService.PublicUpdateUserProfileShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a profile

```go
inputDelete := &user_profile.DeleteUserProfileParams{
	Namespace: integration.NamespaceTest,
	UserID:    created.UserID,
}

deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

## CloudSave

Source: [cloudsave_test.go](../services-api/pkg/tests/integration/cloudsave_test.go)

### Create a game record

```go
input := &public_game_record.PostGameRecordHandlerV1Params{
	Body:      map[string]interface{}{"foo": "bar"},
	Key:       key,
	Namespace: integration.NamespaceTest,
}

ok, err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Delete a game record

```go
input := &public_game_record.DeleteGameRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
}

err := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Get a game record

```go
inputRecord := &public_game_record.GetGameRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
}

ok, errOk := publicGameRecordService.GetGameRecordHandlerV1Short(inputRecord)
if errOk != nil {
	assert.FailNow(t, errOk.Error())
}
```

### Update a game record

```go
inputDelete := &public_game_record.DeleteGameRecordHandlerV1Params{
	Key:       key,
	Namespace: integration.NamespaceTest,
}

errDelete := publicGameRecordService.DeleteGameRecordHandlerV1Short(inputDelete)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

## DSLogManager

Source: [dslogmanager_test.go](../services-api/pkg/tests/integration/dslogmanager_test.go)

### Get all terminated servers

```go
inputTerminatedServer := &terminated_servers.ListTerminatedServersParams{
	Namespace: integration.NamespaceTest,
	Limit:     &limit,
}

ok, err := terminatedServersService.ListTerminatedServersShort(inputTerminatedServer)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

## DSMC

Source: [dsmc_test.go](../services-api/pkg/tests/integration/dsmc_test.go)

### Create a session

```go
inputCreate := &session.CreateSessionParams{
	Body:      bodySessionDsmc,
	Namespace: integration.NamespaceTest,
}

created, errCreate := sessionDSMCService.CreateSessionShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
createdSessionID := *created.Session.ID
t.Logf("Session DSMC: %v created", createdSessionID)
```

### Get a session

```go
inputGet := &session.GetSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: createdSessionID,
}

get, errGet := sessionDSMCService.GetSessionShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
t.Logf("Id Session DSMC: %v get from namespace %v", *get.Session.ID, *created.Session.Namespace)
```

### Claim a DS (Dedicated Server)

```go
time.Sleep(5 * time.Second)

bodyClaim := &dsmcclientmodels.ModelsClaimSessionRequest{SessionID: &createdSessionID}
inputClaim := &session.ClaimServerParams{
	Body:      bodyClaim,
	Namespace: integration.NamespaceTest,
}
inputClaim.RetryPolicy = &utils.Retry{
	Transport: sessionDSMCService.Client.Runtime.Transport,
	MaxTries:  5,
	Backoff:   utils.NewConstantBackoff(time.Duration(10) * time.Second),
	RetryCodes: map[int]bool{
		425: true,
	},
}

errClaim := sessionDSMCService.ClaimServerShort(inputClaim)
if errClaim != nil {
	t.Skipf("can't claim server right now due to error: %v\n", errClaim)

	return
}
t.Logf("Id Session DSMC: %v claimed a server", createdSessionID)
```

## EventLog

Source: [eventlog_test.go](../services-api/pkg/tests/integration/eventlog_test.go)

### Query event stream

```go
inputEventLog := &event_v2.QueryEventStreamHandlerParams{
	Body:      bodyEventLog,
	Namespace: integration.NamespaceTest,
	EndDate:   &date,
	Offset:    &offset,
	PageSize:  &size,
	StartDate: &date,
}

ok, err := eventV2Service.QueryEventStreamHandlerShort(inputEventLog)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Get an events

```go
inputEventLog := &event_v2.GetEventSpecificUserV2HandlerParams{
	EventName: &emptyString,
	Namespace: integration.NamespaceTest,
	Offset:    &offset,
	PageSize:  &size,
	StartDate: &date,
	UserID:    userID,
}

ok, err := eventV2Service.GetEventSpecificUserV2HandlerShort(inputEventLog)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

## GameTelemetry

Source: [gametelemetry_test.go](../services-api/pkg/tests/integration/gametelemetry_test.go)

### Protected Save Events

```go
telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
	Body: telemetryBodyArray,
}

err := gameTelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Protected Get Playtime

```go
input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
	SteamID: steamId,
}

ok, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Protected Get Playtime with retry

```go
input := &gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams{
	SteamID: "falseSteamId",
}
input.RetryPolicy = &utils.Retry{
	Transport: gameTelemetryOperationsService.Client.Runtime.Transport,
	MaxTries:  utils.MaxTries,
	Backoff:   utils.NewConstantBackoff(0),
	RetryCodes: map[int]bool{
		422: true, // fail on purpose
	},
}

get, err := gameTelemetryOperationsService.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input)
if err != nil {
	assert.NotNil(t, err.Error(), "fail on purpose")
}
```

### Protected Update Playtime

```go
input := &gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{
	Playtime: "4",
	SteamID:  steamId,
}

err := gameTelemetryOperationsService.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input)
if err != nil {
	assert.Contains(t, err.Error(), "returns an error 404")

	t.Skip("User was not found.")
}
```

## GDPR

Source: [gdpr_test.go](../services-api/pkg/tests/integration/gdpr_test.go)

### Create admin email configuration

```go
body = append(body, email)
input := &data_retrieval.SaveAdminEmailConfigurationParams{
	Body:      body,
	Namespace: integration.NamespaceTest,
}

err := dataRetrievalService.SaveAdminEmailConfigurationShort(input)
```

### Get admin email addresses configuration

```go
input := &data_retrieval.GetAdminEmailConfigurationParams{
	Namespace: integration.NamespaceTest,
}

ok, err := dataRetrievalService.GetAdminEmailConfigurationShort(input)
```

### Update admin email configuration

```go
body = append(body, email)
input := &data_retrieval.UpdateAdminEmailConfigurationParams{
	Body:      body,
	Namespace: integration.NamespaceTest,
}

err := dataRetrievalService.UpdateAdminEmailConfigurationShort(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### Delete admin email configuration

```go
emails = append(emails, email)
input := &data_retrieval.DeleteAdminEmailConfigurationParams{
	Emails:    emails,
	Namespace: integration.NamespaceTest,
}

err := dataRetrievalService.DeleteAdminEmailConfigurationShort(input)
```

## Group

Source: [group_test.go](../services-api/pkg/tests/integration/group_test.go)

### Create a group

```go
// needs to use a token user who are not already joined a group
inputCreate := &group_.CreateNewGroupPublicV1Params{
	Body:      bodyGroup,
	Namespace: integration.NamespaceTest,
}

created, errCreate := groupService.CreateNewGroupPublicV1Short(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
groupID := *created.GroupID
t.Logf("GroupID: %v created", groupID)
```

### Get a single group

```go
inputGet := &group_.GetSingleGroupPublicV1Params{
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

get, errGet := groupService.GetSingleGroupPublicV1Short(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
t.Logf("GroupID: %v get with name: %v", groupID, *created.GroupName)
```

### Update a group

```go
inputUpdate := &group_.UpdatePatchSingleGroupPublicV1Params{
	Body:      bodyGroupUpdate,
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

updated, errUpdate := groupService.UpdatePatchSingleGroupPublicV1Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a group

```go
inputDelete := &group_.DeleteGroupPublicV1Params{
	GroupID:   groupID,
	Namespace: integration.NamespaceTest,
}

errDelete := groupService.DeleteGroupPublicV1Short(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

## IAM

Source: [iam_test.go](../services-api/pkg/tests/integration/iam_test.go)

### Authorize

```go
codeVerifierGenerator, _ := utils.CreateCodeVerifier()
codeChallenge := codeVerifierGenerator.CodeChallengeS256()
input := &o_auth2_0.AuthorizeV3Params{
	CodeChallenge:       &codeChallenge,
	CodeChallengeMethod: &codeChallengeMethod,
	RedirectURI:         &redirectURI,
	Scope:               &scope,
	ClientID:            clientID,
	ResponseType:        o_auth2_0.AuthorizeV3CodeConstant,
	HTTPClient:          httpClient,
}

requestID, err := oAuth20Service.AuthorizeV3Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
```

### User authentication

```go
inputAuth := &o_auth2_0_extension.UserAuthenticationV3Params{
	ClientID:   &clientID,
	Password:   password,
	RequestID:  requestID,
	UserName:   username,
	HTTPClient: httpClient,
}

code, errCode := oAuth20ExtensionService.UserAuthenticationV3Short(inputAuth)
if errCode != nil {
	assert.FailNow(t, errCode.Error())
}
```

### Token grant

```go
codeVerifier := codeVerifierGenerator.String()
inputTokenGrant := &o_auth2_0.TokenGrantV3Params{
	Code:         &code,
	CodeVerifier: &codeVerifier,
	GrantType:    o_auth2_0.TokenGrantV3AuthorizationCodeConstant,
}

expected, errExpected := oAuth20Service.TokenGrantV3Short(inputTokenGrant)
if errExpected != nil {
	assert.FailNow(t, errExpected.Error())
}
```

### Login

```go
err := oAuth20Service.Login(username, password)
if err != nil {
	assert.FailNow(t, err.Error())
}

getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
logrus.Infof("Bearer %v; UserId %v", *getToken.AccessToken, getToken.UserID)
```

### Create a user

```go
input := &users_v4.PublicCreateUserV4Params{
	Body:      createUserBody,
	Namespace: integration.NamespaceTest,
}

user, err := userV4Service.PublicCreateUserV4Short(input)
if err != nil {
	assert.FailNow(t, err.Error())
}
t.Logf("userId: %v", *user.UserID)
```

### Update a user

```go
inputUpdate := &users.UpdateUserParams{
	Body:      updateUserBody,
	Namespace: integration.NamespaceTest,
	UserID:    *user.UserID,
}

update, errUpdate := userService.UpdateUserShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Get user by Id

```go
inputGet := &users.AdminGetUserByUserIDV3Params{
	Namespace: integration.NamespaceTest,
	UserID:    *user.UserID,
}

get, errGet := userService.AdminGetUserByUserIDV3Short(inputGet)
if errUpdate != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Delete a user

```go
inputDelete := &users.DeleteUserParams{
	Namespace: integration.NamespaceTest,
	UserID:    *user.UserID,
}

errDelete := userService.DeleteUserShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

## Leaderboard

Source: [leaderboard_test.go](../services-api/pkg/tests/integration/leaderboard_test.go)

### Create a leaderboard

```go
inputCreate := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
	Body:      bodyReq,
	Namespace: integration.NamespaceTest,
}

created, errCreate := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1Short(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
t.Logf("Leaderboard Code: %v created", *created.LeaderboardCode)
```

### Get a single leaderboard

```go
inputGet := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

get, errGet := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1Short(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a leaderboard

```go
inputUpdate := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
	Body:            bodyReqUpdate,
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

updated, errUpdate := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1Short(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a leaderboard

```go
inputLeaderboard := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
	LeaderboardCode: leaderboardCode,
	Namespace:       integration.NamespaceTest,
}

errDelete := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1Short(inputLeaderboard)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

## Legal

Source: [legal_test.go](../services-api/pkg/tests/integration/legal_test.go)

### Bulk accept policy versions

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &agreement.BulkAcceptVersionedPolicyParams{
	Body: bodyLegals,
}

ok, err := agreementService.BulkAcceptVersionedPolicyShort(inputLegal)
```

### Get agreements

```go
inputLegal := &agreement.RetrieveAgreementsPublicParams{}

ok, err := agreementService.RetrieveAgreementsPublicShort(inputLegal)
```

### Update marketing preference consent

```go
bodyLegals = append(bodyLegals, bodyLegal)
inputLegal := &agreement.ChangePreferenceConsentParams{
	Body:      bodyLegals,
	Namespace: integration.NamespaceTest,
	UserID:    GetUserID(),
}

err := agreementService.ChangePreferenceConsentShort(inputLegal)
```

## Lobby

Source: [lobby_test.go](../services-api/pkg/tests/integration/lobby_test.go)

### Lobby get a notification

```go
err = notificationService.GetNotificationMessage()
```

### Lobby get offline notification

```go
err = notificationService.GetOfflineNotification()
```

## Matchmaking

Source: [matchmaking_test.go](../services-api/pkg/tests/integration/matchmaking_test.go)

### Delete a matchmaking channel

```go
inputMatchmaking := &matchmaking_.DeleteChannelHandlerParams{
	Channel:   defaultGameMode,
	Namespace: integration.NamespaceTest,
}

err := matchmakingService.DeleteChannelHandlerShort(inputMatchmaking)
```

### Create a matchmaking channel

```go
allianceFlexingRules = append(allianceFlexingRules, allianceFlexingRule)
flexingRules = append(flexingRules, flexingRule)
matchingRules = append(matchingRules, matchingRule)
inputMatchmaking := &matchmaking_.CreateChannelHandlerParams{
	Body:      bodyMatchmaking,
	Namespace: integration.NamespaceTest,
}

ok, err := matchmakingService.CreateChannelHandlerShort(inputMatchmaking)
```

### Get a matchmaking channel

```go
inputMatchmaking := &matchmaking_.GetSingleMatchmakingChannelParams{
	ChannelName: defaultGameMode,
	Namespace:   integration.NamespaceTest,
}

ok, err := matchmakingService.GetSingleMatchmakingChannelShort(inputMatchmaking)
```

### Update matchmaking

```go
inputMatchmaking := &matchmaking_.UpdateMatchmakingChannelParams{
	Body:        bodyMatchmakingUpdate,
	ChannelName: defaultGameMode,
	Namespace:   integration.NamespaceTest,
}

err := matchmakingService.UpdateMatchmakingChannelShort(inputMatchmaking)
```

## MatchmakingV2

Source: [match2_test.go](../services-api/pkg/tests/integration/match2_test.go)

### Health check

```go
input := &operations.GetHealthcheckInfoParams{}
err := operationMatch2Service.GetHealthcheckInfoShort(input)
if err != nil {
	assert.FailNow(t, err.Error())

	return
}
```

### Create a match rule set

```go
inputCreateRule := &rule_sets.CreateRuleSetParams{
	Body: &match2clientmodels.APIRuleSetPayload{
		Data: &data,
		Name: &ruleSetName,
	},
	Namespace: integration.NamespaceTest,
}
errCreateRule := ruleSetsService.CreateRuleSetShort(inputCreateRule)
if errCreateRule != nil {
	assert.FailNow(t, errCreateRule.Error())

	return
}
```

### Create a match pool

```go
inputCreatePool := &match_pools.CreateMatchPoolParams{
	Body:      bodyMatchPool,
	Namespace: integration.NamespaceTest,
}
errCreated := matchPoolService.CreateMatchPoolShort(inputCreatePool)
if errCreated != nil {
	assert.FailNow(t, errCreated.Error())

	return
}
```

### List match pools

```go
inputCreate := &match_pools.MatchPoolListParams{
	Limit:     &limit,
	Namespace: integration.NamespaceTest,
	Offset:    &offset,
}
getList, errGetList := matchPoolService.MatchPoolListShort(inputCreate)
if errGetList != nil {
	assert.FailNow(t, errGetList.Error())

	return
}
```

### User create a match ticket

```go
inputCreateTicket := &match_tickets.CreateMatchTicketParams{
	Body: &match2clientmodels.APIMatchTicketRequest{
		MatchPool: &poolName,
		SessionID: &sessionID,
	},
	Namespace: integration.NamespaceTest,
}
createdTicket, errCreatedTicket := matchTicketService.CreateMatchTicketShort(inputCreateTicket)
if errCreatedTicket != nil {
	assert.FailNow(t, errCreatedTicket.Error())

	return
}
```

### Delete a match ticket

```go
inputDeleteTicket := &match_tickets.DeleteMatchTicketParams{
	Namespace: integration.NamespaceTest,
	Ticketid:  *createdTicket.MatchTicketID,
}
errDeletedTicket := matchTicketService.DeleteMatchTicketShort(inputDeleteTicket)
if errDeletedTicket != nil {
	assert.FailNow(t, errDeletedTicket.Error())

	return
}
```

### Delete a match pool

```go
inputDeletePool := &match_pools.DeleteMatchPoolParams{
	Namespace: integration.NamespaceTest,
	Pool:      poolName,
}
errDeletedPool := matchPoolService.DeleteMatchPoolShort(inputDeletePool)
if errDeletedPool != nil {
	assert.FailNow(t, errDeletedPool.Error())

	return
}
```

### Delete a match rule set

```go
inputDeleteRule := &rule_sets.DeleteRuleSetParams{
	Namespace: integration.NamespaceTest,
	Ruleset:   matchRuleSet,
}
errDeletedRule := ruleSetsService.DeleteRuleSetShort(inputDeleteRule)
if errDeletedRule != nil {
	assert.FailNow(t, errDeletedRule.Error())

	return
}
```

### List match functions

```go
inputCreate := &match_functions.MatchFunctionListParams{
	Limit:     &limit,
	Namespace: integration.NamespaceTest,
	Offset:    &offset,
}
getList, errGetList := matchFunctionService.MatchFunctionListShort(inputCreate)
if errGetList != nil {
	assert.FailNow(t, errGetList.Error())

	return
}
```

## Platform

Source: [platform_test.go](../services-api/pkg/tests/integration/platform_test.go)

### Create a store

```go
inputCreate := &store.CreateStoreParams{
	Body:      bodyStore,
	Namespace: integration.NamespaceTest,
}

created, errCreate := storeService.CreateStoreShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
storeID := *created.StoreID
t.Logf("Store: %v created", storeID)
```

### Get a single store

```go
inputGet := &store.GetStoreParams{
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

get, errGet := storeService.GetStoreShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a store

```go
inputUpdate := &store.UpdateStoreParams{
	Body:      bodyStoreUpdate,
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

updated, errUpdate := storeService.UpdateStoreShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a store

```go
inputDelete := &store.DeleteStoreParams{
	Namespace: integration.NamespaceTest,
	StoreID:   storeID,
}

deleted, errDelete := storeService.DeleteStoreShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

### Store export

```go
inputExport := &store.ExportStore1Params{
	Namespace: integration.NamespaceTest,
	StoreID:   publishedStoreId,
}

okExport, errExport := storeService.ExportStore1Short(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Store export

```go
inputExport := &store.ExportStore1Params{
	Namespace: integration.NamespaceTest,
	StoreID:   publishedStoreId,
}

okExport, errExport := storeService.ExportStore1Short(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Reward export

```go
inputExport := &reward.ExportRewardsParams{
	Namespace: integration.NamespaceTest,
}

writer := bytes.NewBuffer(nil)
okExport, errExport := rewardService.ExportRewardsShort(inputExport, writer)
if errExport != nil {
	t.Fatal(errExport.Error())
}
```

### Reward import

```go
inputImport := &reward.ImportRewardsParams{
	File:            file,
	Namespace:       integration.NamespaceTest,
	ReplaceExisting: false,
}

errImport := rewardService.ImportRewardsShort(inputImport)
if errImport != nil {
	t.Fatal(errImport.Error())
}
```

## QOSM

Source: [qosm_test.go](../services-api/pkg/tests/integration/qosm_test.go)

### ListServer

```go
inputListServer := &public.ListServerParams{}

listServerOk, errListSertver := publicService.ListServerShort(inputListServer)
```

### Heartbeat

```go
firstServer := listServerOk.Servers[0]
heartbeatRequest := qosmclientmodels.ModelsHeartbeatRequest{
	IP:     firstServer.IP,
	Port:   firstServer.Port,
	Region: firstServer.Region,
}
inputHeartbeat := &server.HeartbeatParams{
	Body: &heartbeatRequest,
}

err := serverService.HeartbeatShort(inputHeartbeat)
```

## Reporting

Source: [reporting_test.go](../services-api/pkg/tests/integration/reporting_test.go)

### Create Reason

```go
inputCreateReason := &admin_reasons.CreateReasonParams{
	Body: &reportingclientmodels.RestapiCreateReasonRequest{
		Description: &reasonTitle,
		GroupIds:    []string{},
		Title:       &reasonTitle,
	},
	Namespace: namespace,
}

created, errCreate := adminReasonsService.CreateReasonShort(inputCreateReason)
```

### Delete Reason

```go
inputDeleteReason := &admin_reasons.DeleteReasonParams{
	Namespace: namespace,
	ReasonID:  reasonID,
}

errDelete := adminReasonsService.DeleteReasonShort(inputDeleteReason)
```

### Submit Report

```go
inputReport := &public_reports.SubmitReportParams{
	Body: &reportingclientmodels.RestapiSubmitReportRequest{
		AdditionalInfo:    emptyInterface,
		Category:          &categoryUGC,
		Comment:           reasonTitle,
		ExtensionCategory: categoryUGC,
		ObjectID:          utils.GenerateID(),
		ObjectType:        utils.GenerateID(),
		Reason:            &reasonTitle,
		UserID:            &userID,
	},
	Namespace: namespace,
}

created, errCreate := publicReportsService.SubmitReportShort(inputReport)
```

## SeasonPass

Source: [seasonpass_test.go](../services-api/pkg/tests/integration/seasonpass_test.go)

### Create/Get stores

```go
seasonStore, err := getStore()
if err != nil {
	t.Skip("failed to get a store")

	return
}
seasonStoreID := seasonStore.StoreID
```

### Get store item tier ID

```go
seasonItemTierID, err := getStoreTierItemID(*seasonStoreID)
if err != nil {
	t.Skip("failed to get store tier item id")

	return
}
```

### Create a season

```go
timeNow := time.Now()
seasonName := "GoServerSDKTestSeason"
seasonRequiredExp := int32(100)
seasonTierItemID := seasonItemTierID
seasonLocalization := make(map[string]seasonpassclientmodels.Localization)
seasonLocalization["en"] = seasonpassclientmodels.Localization{
	Title:       "English",
	Description: "English",
}
createSeason := seasonpassclientmodels.SeasonCreate{
	Name:               &seasonName,
	Start:              strfmt.DateTime(timeNow),
	End:                strfmt.DateTime(timeNow.AddDate(0, 0, 7)),
	DefaultRequiredExp: &seasonRequiredExp,
	DraftStoreID:       seasonStoreID,
	TierItemID:         seasonTierItemID,
	Localizations:      seasonLocalization,
}
inputCreateSeason := season.CreateSeasonParams{
	Namespace: namespace,
	Body:      &createSeason,
}

createSeasonOk, errCreateSeason := seasonService.CreateSeasonShort(&inputCreateSeason)
```

### UpdateSeason

```go
updatedSeasonName := "UpdatedGoServerSDKTestSeason"
updateSeason := seasonpassclientmodels.SeasonUpdate{
	Name: updatedSeasonName,
}
inputUpdateSeason := season.UpdateSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
	Body:      &updateSeason,
}

updateSeasonOk, errUpdateSeason := seasonService.UpdateSeasonShort(&inputUpdateSeason)
```

### Get season

```go
inputGetSeason := season.GetSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
}

getSeasonOk, errGetSeason := seasonService.GetSeasonShort(&inputGetSeason)
```

### Delete season

```go
inputDeleteSeason := season.DeleteSeasonParams{
	Namespace: namespace,
	SeasonID:  seasonID,
}

errDeleteSeason := seasonService.DeleteSeasonShort(&inputDeleteSeason)
```

## Session

Source: [session_test.go](../services-api/pkg/tests/integration/session_test.go)

### Health check

```go
input := &operations.GetHealthcheckInfoParams{}
err := operationService.GetHealthcheckInfoShort(input)
if err != nil {
	assert.FailNow(t, err.Error())

	return
}
```

### Create Configuration Template

```go
inputCreate := &configuration_template.AdminCreateConfigurationTemplateV1Params{
	Body:      bodyTemplate,
	Namespace: integration.NamespaceTest,
}
created, errCreated := configService.AdminCreateConfigurationTemplateV1Short(inputCreate)
if errCreated != nil {
	assert.FailNow(t, errCreated.Error())

	return
}
```

### Update Configuration Template

```go
inputUpdate := &configuration_template.AdminUpdateConfigurationTemplateV1Params{
	Body:      bodyTemplateUpdate,
	Namespace: integration.NamespaceTest,
	Name:      *created.Name,
}
updated, errUpdated := configService.AdminUpdateConfigurationTemplateV1Short(inputUpdate)
if errUpdated != nil {
	assert.FailNow(t, errUpdated.Error())

	return
}
```

### Delete Configuration Template

```go
inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
	Name:      *created.Name,
	Namespace: integration.NamespaceTest,
}
errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
if errDeleted != nil {
	assert.FailNow(t, errDeleted.Error())

	return
}
```

### Create Game Session

```go
inputCreate := &game_session.CreateGameSessionParams{
	Body:      gameSessionBody,
	Namespace: integration.NamespaceTest,
}
created, errCreated := gameSessionService.CreateGameSessionShort(inputCreate)
if errCreated != nil {
	assert.FailNow(t, errCreated.Error())

	return
}
```

### Join a Game Session

```go
inputJoin := &game_session.JoinGameSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: *created.ID,
}
joined, errJoined := gameSessionServiceFor2ndPlayer.JoinGameSessionShort(inputJoin)
if errJoined != nil {
	assert.FailNow(t, errJoined.Error())

	return
}
```

### Leave a Game Session

```go
inputLeave := &game_session.LeaveGameSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: *created.ID,
}
errLeave := gameSessionService.LeaveGameSessionShort(inputLeave)
if errLeave != nil {
	assert.FailNow(t, errLeave.Error())

	return
}
```

### Delete Game Session

```go
inputDelete := &game_session.DeleteGameSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: *created.ID,
}
errDeleted := gameSessionService.DeleteGameSessionShort(inputDelete)
if errDeleted != nil {
	assert.FailNow(t, errDeleted.Error())

	return
}
```

### Health check

```go
input := &operations.GetHealthcheckInfoParams{}
err := operationService.GetHealthcheckInfoShort(input)
if err != nil {
	assert.FailNow(t, err.Error())

	return
}
```

### Create a party

```go
inputCreated := &partySession.PublicCreatePartyParams{
	Body:      bodyParty,
	Namespace: integration.NamespaceTest,
}
created, errCreated := partyService.PublicCreatePartyShort(inputCreated)
if errCreated != nil {
	assert.Error(t, errCreated)
	t.Skip("skip due to UserIsNotInSession error")

	return
}
```

### User join a party with code

```go
inputJoined := &partySession.PublicPartyJoinCodeParams{
	Body:      &sessionclientmodels.ApimodelsJoinByCodeRequest{Code: &created.Code},
	Namespace: integration.NamespaceTest,
}
joined, errJoined := partyServiceFor2ndPlayer.PublicPartyJoinCodeShort(inputJoined)
if errJoined != nil {
	assert.FailNow(t, errJoined.Error())

	return
}
```

### Get party detail

```go
inputGet := &partySession.PublicGetPartyParams{
	Namespace: integration.NamespaceTest,
	PartyID:   *joined.ID,
}
get, errGet := partyService.PublicGetPartyShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())

	return
}
```

### User leave a party

```go
inputLeave := &partySession.PublicGetPartyParams{
	Namespace: integration.NamespaceTest,
	PartyID:   *joined.ID,
}
leave, errLeave := partyService.PublicGetPartyShort(inputLeave)
if errGet != nil {
	assert.FailNow(t, errLeave.Error())

	return
}
```

## SessionBrowser

Source: [sessionbrowser_test.go](../services-api/pkg/tests/integration/sessionbrowser_test.go)

### Create a session

```go
inputCreate := &session.CreateSessionParams{
	Body:      bodySession,
	Namespace: integration.NamespaceTest,
}

created, errCreate := sessionService.CreateSessionShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
sessionBrowserID := *created.SessionID
t.Logf("SessionID: %v created", sessionBrowserID)
```

### Get a session

```go
inputGet := &session.GetSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: sessionBrowserID,
}

get, errGet := sessionService.GetSessionShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}
```

### Update a session

```go
inputUpdate := &session.UpdateSessionParams{
	Body:      bodySessionUpdate,
	Namespace: integration.NamespaceTest,
	SessionID: sessionBrowserID,
}

updated, errUpdate := sessionService.UpdateSessionShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a session

```go
inputDelete := &session.DeleteSessionParams{
	Namespace: integration.NamespaceTest,
	SessionID: sessionBrowserID,
}

deleted, errDelete := sessionService.DeleteSessionShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

## Social

Source: [social_test.go](../services-api/pkg/tests/integration/social_test.go)

### Delete a statistic

```go
inputStat := &stat_configuration.DeleteStatParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

err := statConfigurationService.DeleteStatShort(inputStat)
```

### Create a statistic

```go
tagsSocial = append(tagsSocial, tag)
inputStat := &stat_configuration.CreateStatParams{
	Body:      bodyStatSocial,
	Namespace: integration.NamespaceTest,
}

ok, err := statConfigurationService.CreateStatShort(inputStat)
```

### Get a statistic by its Stat Code

```go
inputStat := &stat_configuration.GetStatParams{
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

ok, errOk := statConfigurationService.GetStatShort(inputStat)
```

### Get all statistics

```go
inputStat := &stat_configuration.GetStatsParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}

ok, err := statConfigurationService.GetStatsShort(inputStat)
```

### Query statistics by keyword

```go
inputStat := &stat_configuration.QueryStatsParams{
	Keyword:   statCodeSocial,
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}

ok, err := statConfigurationService.QueryStatsShort(inputStat)
```

### Update a statistic

```go
bodyStatUpdate := &socialclientmodels.StatUpdate{
	Description: "",
	Name:        statCodeSocial,
	Tags:        nil,
}
inputStat := &stat_configuration.UpdateStatParams{
	Body:      bodyStatUpdate,
	Namespace: integration.NamespaceTest,
	StatCode:  statCodeSocial,
}

ok, err := statConfigurationService.UpdateStatShort(inputStat)
```

### Stat export

```go
inputExportStat := &stat_configuration.ExportStatsParams{
	Namespace: integration.NamespaceTest,
}

writer := bytes.NewBuffer(nil)
okExport, errExport := statConfigurationService.ExportStatsShort(inputExportStat, writer)
```

### Stat import

```go
inputImportStat := &stat_configuration.ImportStatsParams{
	File:            file,
	Namespace:       integration.NamespaceTest,
	ReplaceExisting: nil,
}

okImport, errImport := statConfigurationService.ImportStatsShort(inputImportStat)
```

## UGC

Source: [ugc_test.go](../services-api/pkg/tests/integration/ugc_test.go)

### Create tag

```go
inputCreate := &admin_tag.AdminCreateTagParams{
	Body:      bodyTag,
	Namespace: integration.NamespaceTest,
}

created, errCreate := adminTagService.AdminCreateTagShort(inputCreate)
if errCreate != nil {
	assert.FailNow(t, errCreate.Error())
}
tagID := *created.ID
t.Logf("TagId: %v created", tagID)
```

### Get tag

```go
inputGet := &admin_tag.AdminGetTagParams{
	Limit:     nil,
	Namespace: integration.NamespaceTest,
	Offset:    nil,
}
get, errGet := adminTagService.AdminGetTagShort(inputGet)
if errGet != nil {
	assert.FailNow(t, errGet.Error())
}

t.Log("Tag acquired")
```

### Update a tag

```go
inputUpdate := &admin_tag.AdminUpdateTagParams{
	Body:      bodyTagUpdate,
	Namespace: integration.NamespaceTest,
	TagID:     tagID,
}

updated, errUpdate := adminTagService.AdminUpdateTagShort(inputUpdate)
if errUpdate != nil {
	assert.FailNow(t, errUpdate.Error())
}
```

### Delete a tag

```go
inputDelete := &admin_tag.AdminDeleteTagParams{
	Namespace: integration.NamespaceTest,
	TagID:     tagID,
}

errDelete := adminTagService.AdminDeleteTagShort(inputDelete)
if errDelete != nil {
	assert.FailNow(t, errDelete.Error())
}
```

