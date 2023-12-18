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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	sessionBrowser "github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
)

var (
	sessionDSMCService = &dsmc.SessionService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	dsmcConfigService = &dsmc.ConfigService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	deploymentConfigService = &dsmc.DeploymentConfigService{
		Client:          factory.NewDsmcClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	deployment     = "default"
	gameMode       = "GAME_MODE"
	emptyString    = ""
	emptyInterface interface{}
)

func createSessionBrowser() string {
	inputSession := &sessionBrowser.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.NamespaceTest,
	}
	ok, err := sessionService.CreateSessionShort(inputSession)
	if err != nil {
		return ""
	}

	return *ok.SessionID
}

func TestIntegrationSessionDSMC(t *testing.T) {
	// Login Client - Arrange
	InitLoginClient()

	SessionBrowserID := createSessionBrowser()
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

	// use client token again
	InitLoginClient()

	// Get the existing config
	configs, errConfigs := dsmcConfigService.ListConfigShort(&config.ListConfigParams{})
	if errConfigs != nil {
		t.Errorf("failed to get the dsmc configs. %s", errConfigs.Error())
	}

	bodySessionDsmc.Configuration = &configs.Configs[0].Namespace

	// Check the deployment
	input := &deployment_config.GetDeploymentParams{
		Deployment: deployment,
		Namespace:  integration.NamespaceTest,
	}
	getDeployment, errGet := deploymentConfigService.GetDeploymentShort(input)
	if errGet != nil {
		t.Skipf("failed to get \"%s\" deployment. %s", deployment, errGet.Error())
	}

	bodySessionDsmc.ClientVersion = getDeployment.GameVersion

	// CASE Create a session
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
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a session
	inputGet := &session.GetSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: createdSessionID,
	}

	get, errGet := sessionDSMCService.GetSessionShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Id Session DSMC: %v get from namespace %v", *get.Session.ID, *created.Session.Namespace)
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Claim a DS (Dedicated Server)
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
	// ESAC

	// Assert
	assert.Nil(t, errClaim, "err should be nil")
}
