// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"fmt"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/operations"
	partySession "github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"
)

var (
	tokenRepository2ndPlayer = auth.DefaultTokenRepositoryImpl()
	operationService         = &session.OperationsService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	configService = &session.ConfigurationTemplateService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	cfgTemplateName  = fmt.Sprintf("go_sdk_template_" + RandStringBytes(4))
	cfgTemplateType  = "P2P"
	inviteTimeout    = int32(60)
	inactiveTimeout  = int32(60)
	joinability      = "OPEN"
	clientVersion    = "1.0.0"
	requestedRegions = []string{"us-west-2"}
	bodyTemplate     = &sessionclientmodels.ApimodelsCreateConfigurationTemplateRequest{
		ClientVersion:    &clientVersion,
		InactiveTimeout:  &inactiveTimeout,
		InviteTimeout:    &inviteTimeout,
		Joinability:      &joinability,
		MaxPlayers:       &maxNumber,
		MinPlayers:       &minNumber,
		Name:             &cfgTemplateName,
		RequestedRegions: requestedRegions,
		Type:             &cfgTemplateType,
	}
	maxNumberUpdate    = int32(4)
	nameUpdate         = "go_sdk_template_qwde"
	bodyTemplateUpdate = &sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest{
		MaxPlayers:  &maxNumberUpdate,
		Name:        &nameUpdate,
		Joinability: &joinability,
		Type:        &cfgTemplateType,
	}
	gameSessionService = &session.GameSessionService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	gameSessionServiceFor2ndPlayer = &session.GameSessionService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository2ndPlayer,
	}
	gameSessionBody = &sessionclientmodels.ApimodelsCreateGameSessionRequest{
		ClientVersion:     &clientVersion,
		ConfigurationName: &cfgTemplateName,
		Deployment:        &deployment,
		InactiveTimeout:   &inactiveTimeout,
		InviteTimeout:     &inviteTimeout,
		Joinability:       &joinability,
		MaxPlayers:        &maxNumber,
		MinPlayers:        &minNumber,
		RequestedRegions:  requestedRegions,
		Type:              &cfgTemplateType,
	}
	partyService = &session.PartyService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository,
	}
	partyServiceFor2ndPlayer = &session.PartyService{
		Client:          factory.NewSessionClient(configRepo),
		TokenRepository: tokenRepository2ndPlayer,
	}
	members   []*sessionclientmodels.ApimodelsRequestMember
	bodyParty = &sessionclientmodels.ApimodelsCreatePartyRequest{
		ConfigurationName: &cfgTemplateName,
		InactiveTimeout:   &inactiveTimeout,
		InviteTimeout:     &inviteTimeout,
		Joinability:       &joinability,
		MaxPlayers:        &maxNumber,
		Members:           members,
		MinPlayers:        &minNumber,
		Type:              &cfgTemplateType,
	}
)

func TestIntegrationSessionHealthCheck(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Health check
	input := &operations.GetHealthcheckInfoParams{}
	err := operationService.GetHealthcheckInfoShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationConfigurationTemplate(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create Configuration Template
	inputCreate := &configuration_template.AdminCreateConfigurationTemplateV1Params{
		Body:      bodyTemplate,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := configService.AdminCreateConfigurationTemplateV1Short(inputCreate)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should not be nil")
	t.Logf("created config template with name: %s", *created.Name)

	// CASE Update Configuration Template
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
	// ESAC

	// Assert
	assert.NotNil(t, updated, "should not be nil")
	if updated != nil {
		assert.Equal(t, *updated.MaxPlayers, maxNumberUpdate)
		t.Logf("updated max player to %v for template name: %s", *updated.MaxPlayers, *updated.Name)
	}

	// CASE Delete Configuration Template
	inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
		Name:      *created.Name,
		Namespace: integration.NamespaceTest,
	}
	errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
	if errDeleted != nil {
		assert.FailNow(t, errDeleted.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeleted, "should be nil")
}

func TestIntegrationGameSession(t *testing.T) {
	// Login User - Arrange
	Init()

	// Create configuration - Arrange
	cfgName, _ := createCfgTemplate()
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	// CASE Create Game Session
	inputCreate := &game_session.CreateGameSessionParams{
		Body:      gameSessionBody,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := gameSessionService.CreateGameSessionShort(inputCreate)
	if errCreated != nil {
		assert.FailNow(t, errCreated.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should be nil")
	t.Logf("created game session with ID: %s, members %s", *created.ID, *created.Members[0].ID)

	// Login User - Arrange
	player2Id := createPlayer2()
	defer deletePlayer(player2Id)

	// CASE Join a Game Session
	inputJoin := &game_session.JoinGameSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: *created.ID,
	}
	joined, errJoined := gameSessionServiceFor2ndPlayer.JoinGameSessionShort(inputJoin)
	if errJoined != nil {
		assert.FailNow(t, errJoined.Error())

		return
	}
	// ESAC

	// Assert
	assert.NotNil(t, joined, "should not be nil")
	assert.Equal(t, int(maxNumber), len(joined.Members))
	t.Logf("joined P2 %s for session id: %s", player2Id, *joined.ID)

	// CASE Leave a Game Session
	inputLeave := &game_session.LeaveGameSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: *created.ID,
	}
	errLeave := gameSessionService.LeaveGameSessionShort(inputLeave)
	if errLeave != nil {
		assert.FailNow(t, errLeave.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errLeave, "err should be nil")

	// CASE Delete Game Session
	inputDelete := &game_session.DeleteGameSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: *created.ID,
	}
	errDeleted := gameSessionService.DeleteGameSessionShort(inputDelete)
	if errDeleted != nil {
		assert.FailNow(t, errDeleted.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errDeleted, "err should be nil")
	t.Logf("successfully delete/clean session id: %s", *created.ID)
}

func TestIntegrationQueryGameSession(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Health check
	input := &game_session.PublicQueryGameSessionsParams{
		Body:      nil,
		Namespace: integration.NamespaceTest,
	}
	query, err := gameSessionService.PublicQueryGameSessionsShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, query, "should not be nil")
}

func TestIntegrationParty(t *testing.T) {
	// Login User - Arrange
	Init()

	// Create configuration - Arrange
	cfgName, _ := createCfgTemplate()
	defer func(name string) {
		err := deleteCfgTemplate(name)
		if err != nil {
			assert.FailNow(t, err.Error())
		}
	}(cfgName)

	// Login User - Arrange
	player2Id := createPlayer2()
	member := &sessionclientmodels.ApimodelsRequestMember{ID: &player2Id}
	bodyParty.Members = append(bodyParty.Members, member)
	defer deletePlayer(player2Id)

	// CASE Create a party
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
	// ESAC

	// Assert
	assert.Nil(t, errCreated, "err should be nil")
	assert.NotNil(t, created, "should not be nil")

	// CASE User join a party with code
	inputJoined := &partySession.PublicPartyJoinCodeParams{
		Body:      &sessionclientmodels.ApimodelsJoinByCodeRequest{Code: &created.Code},
		Namespace: integration.NamespaceTest,
	}
	joined, errJoined := partyServiceFor2ndPlayer.PublicPartyJoinCodeShort(inputJoined)
	if errJoined != nil {
		assert.FailNow(t, errJoined.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errJoined, "err should be nil")
	assert.NotNil(t, joined, "should not be nil")

	// CASE Get party detail
	inputGet := &partySession.PublicGetPartyParams{
		Namespace: integration.NamespaceTest,
		PartyID:   *joined.ID,
	}
	get, errGet := partyService.PublicGetPartyShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "should not be nil")

	// CASE User leave a party
	inputLeave := &partySession.PublicGetPartyParams{
		Namespace: integration.NamespaceTest,
		PartyID:   *joined.ID,
	}
	leave, errLeave := partyService.PublicGetPartyShort(inputLeave)
	if errGet != nil {
		assert.FailNow(t, errLeave.Error())

		return
	}
	// ESAC

	// Assert
	assert.Nil(t, errLeave, "err should be nil")
	assert.NotNil(t, leave, "should not be nil")
}

func createCfgTemplate() (string, error) {
	inputCreate := &configuration_template.AdminCreateConfigurationTemplateV1Params{
		Body:      bodyTemplate,
		Namespace: integration.NamespaceTest,
	}
	created, errCreated := configService.AdminCreateConfigurationTemplateV1Short(inputCreate)
	if errCreated != nil {
		logrus.Fatal(errCreated.Error())

		return "", errCreated
	}

	return *created.Name, nil
}

func deleteCfgTemplate(name string) error {
	inputDelete := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
		Name:      name,
		Namespace: integration.NamespaceTest,
	}
	errDeleted := configService.AdminDeleteConfigurationTemplateV1Short(inputDelete)
	if errDeleted != nil {
		logrus.Fatal(errDeleted.Error())

		return errDeleted
	}

	return nil
}

func createPlayer2() string {
	Init()
	input := &users_v4.PublicCreateUserV4Params{
		Body:      createUserBody,
		Namespace: integration.NamespaceTest,
	}

	user, err := userV4Service.PublicCreateUserV4Short(input)
	if err != nil {
		logrus.Fatal(err.Error())

		return ""
	}
	logrus.Infof("userId: %v", *user.UserID)

	// login
	oAuth20Service2 := &iam.OAuth20Service{
		Client:           factory.NewIamClient(auth.DefaultConfigRepositoryImpl()),
		ConfigRepository: auth.DefaultConfigRepositoryImpl(),
		TokenRepository:  tokenRepository2ndPlayer,
	}
	errLogin := oAuth20Service2.Login(*user.EmailAddress, pwd)
	if errLogin != nil {
		logrus.Error("failed login. ", errLogin.Error())

		return ""
	}
	token, _ := oAuth20Service2.TokenRepository.GetToken()
	logrus.Infof("2nd token %s", *token.AccessToken)

	return *user.UserID
}

func deletePlayer(userId string) {
	inputDelete := &users.AdminDeleteUserInformationV3Params{
		Namespace: integration.NamespaceTest,
		UserID:    userId,
	}

	errDelete := userService.AdminDeleteUserInformationV3Short(inputDelete)
	if errDelete != nil {
		logrus.Fatal(errDelete.Error())
	}
	logrus.Infof("successfully clean/delete userId player2: %v", userId)
}
