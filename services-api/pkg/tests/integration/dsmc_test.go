// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	sessionBrowser "github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

var (
	sessionService = &sessionbrowser.SessionService{
		Client:          factory.NewSessionbrowserClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	mode               = "mode"
	mapName            = "mapName"
	emptyInt32         = int32(0)
	gameSessionSetting = &sessionbrowserclientmodels.ModelsGameSessionSetting{
		AllowJoinInProgress:   &defaultBool,
		CurrentInternalPlayer: &emptyInt32,
		CurrentPlayer:         &emptyInt32,
		MapName:               &mapName,
		MaxInternalPlayer:     &emptyInt32,
		MaxPlayer:             &emptyInt32,
		Mode:                  &mode,
		NumBot:                &emptyInt32,
		Password:              &emptyString,
		Settings:              &emptyInterface,
	}
	namespaceSession = integration.NamespaceTest
	sessionType      = "dedicated" // "p2p needs to connect to lobby"
	bodySession      = &sessionbrowserclientmodels.ModelsCreateSessionRequest{
		GameSessionSetting: gameSessionSetting,
		GameVersion:        &emptyString,
		Namespace:          &namespaceSession,
		SessionType:        &sessionType,
		Username:           &emptyString,
	}
	deployment     = "default"
	emptyString    = ""
	emptyInterface interface{}
)

func TestIntegrationSessionDSMC(t *testing.T) {
	t.Skipf("temporarily disabled") // Armada is deprecated

	// Login User - Arrange
	Init()

	inputSession := &sessionBrowser.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.NamespaceTest,
	}
	ok, err := sessionService.CreateSessionShort(inputSession)
	if err != nil {
		assert.Fail(t, "failed to get session. ", err.Error())
	}

	SessionBrowserID := *ok.SessionID
	getUserId := GetUserID() // use user token to get userId
	var partyMembers []*dsmcclientmodels.ModelsRequestMatchMember
	partyMember := &dsmcclientmodels.ModelsRequestMatchMember{
		UserID: &getUserId,
	}
	partyMembers = append(partyMembers, partyMember)
	var matchingParties []*dsmcclientmodels.ModelsRequestMatchParty
	matchingParty := &dsmcclientmodels.ModelsRequestMatchParty{
		PartyAttributes: emptyInterface,
		PartyID:         &deployment,
		PartyMembers:    partyMembers,
	}
	matchingParties = append(matchingParties, matchingParty)
	var matchingAllies []*dsmcclientmodels.ModelsRequestMatchingAlly
	matchingAlly := &dsmcclientmodels.ModelsRequestMatchingAlly{
		MatchingParties: matchingParties,
	}
	matchingAllies = append(matchingAllies, matchingAlly)
	namespace = integration.NamespaceTest
	gameMode := "GAME_MODE"
	bodySessionDsmc := &dsmcclientmodels.ModelsCreateSessionRequest{
		ClientVersion:       &emptyString,
		Configuration:       &emptyString,
		Deployment:          &deployment,
		GameMode:            &gameMode,
		MatchingAllies:      matchingAllies,
		Namespace:           &namespace,
		NotificationPayload: &emptyString,
		PodName:             &emptyString,
		Region:              &emptyString,
		SessionID:           &SessionBrowserID,
	}

	// Get the existing config
	dsmcConfigService := &dsmc.ConfigService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}

	configs, errConfigs := dsmcConfigService.ListConfigShort(&config.ListConfigParams{})
	if errConfigs != nil {
		assert.Fail(t, "failed to get the dsmc configs. ", errConfigs.Error())
	}

	bodySessionDsmc.Configuration = &configs.Configs[0].Namespace

	// Check the deployment
	deploymentConfigService := &dsmc.DeploymentConfigService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	input := &deployment_config.GetDeploymentParams{
		Deployment: deployment,
		Namespace:  integration.NamespaceTest,
	}
	getDeployment, errGet := deploymentConfigService.GetDeploymentShort(input)
	if errGet != nil {
		t.Skipf("failed to get \"%s\" deployment. %s", deployment, errGet.Error())
	}

	bodySessionDsmc.ClientVersion = getDeployment.GameVersion

	inputCreate := &session.CreateSessionParams{
		Body:      bodySessionDsmc,
		Namespace: integration.NamespaceTest,
	}

	sessionDSMCService := &dsmc.SessionService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}

	created, errCreate := sessionDSMCService.CreateSessionShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	createdSessionID := *created.Session.ID
	t.Logf("Session DSMC: %v created", createdSessionID)

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	inputGet := &session.GetSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: createdSessionID,
	}

	get, errGet := sessionDSMCService.GetSessionShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Id Session DSMC: %v get from namespace %v", *get.Session.ID, *created.Session.Namespace)

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

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

	// Assert
	assert.Nil(t, errClaim, "err should be nil")
}
