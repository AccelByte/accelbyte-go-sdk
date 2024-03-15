// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"bufio"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/connectionutils"
	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"
)

var (
	ConstUsername = "admin"
	ConstPassword = "admin"
)

func TestAuthInfoWriterRefresh_withMockServer(t *testing.T) {
	// 1. request with valid Token
	err := oAuth20Service.LoginUser(ConstUsername, ConstPassword)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	// 2. call another endpoint
	var params = bans.AdminGetBansTypeV3Params{}
	okBan, errBan := iamBansService.AdminGetBansTypeV3Short(&params)
	if errBan != nil {
		assert.FailNow(t, errBan.Error())
	}
	assert.NotNil(t, okBan)

	// 3. get the Token from repository
	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	if errGetToken != nil {
		assert.FailNow(t, errGetToken.Error())
	}
	Repository := oAuth20Service.GetAuthSession().Refresh
	hasExpired := repository.HasTokenExpired(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	assert.False(t, hasExpired) // Token not yet expired
	secondsTillExpiry := repository.GetSecondsTillExpiry(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	t.Logf("Expiring in... : %v", secondsTillExpiry)

	// 4. force the Token to be expired
	expiresIn = int32(5)
	getToken.ExpiresIn = &expiresIn       // monkey-patch, force expiry Token
	getToken.RefreshExpiresIn = expiresIn // monkey-patch, force expiry refreshToken

	getExpiresIn, _ := repository.GetExpiresIn(oAuth20Service.TokenRepository)
	assert.Equal(t, *getExpiresIn, expiresIn)
	getRefreshRate := Repository.GetRefreshRate()
	assert.NotNil(t, getRefreshRate)
	secondsTillExpiry = repository.GetSecondsTillExpiry(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	t.Logf("Force to expire in... : %v", secondsTillExpiry)
	errStore := oAuth20Service.TokenRepository.Store(*getToken) // store the new monkey patch Token
	assert.Nil(t, errStore)

	time.Sleep(time.Duration(*getExpiresIn) * time.Second)
	hasIndeedExpired := repository.HasTokenExpired(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	assert.True(t, hasIndeedExpired) // indeed expired

	// 5. call again with time sleep
	okBan2, errBan2 := iamBansService.AdminGetBansTypeV3Short(&params)
	if errBan2 != nil {
		assert.FailNow(t, errBan2.Error())
	}
	assert.NotNil(t, okBan2)
	assert.False(t, hasExpired)

	errLogout := oAuth20Service.Logout()
	assert.Nil(t, errLogout)
}

func TestAuthInfoWriterRefreshAsync_withMockServer(t *testing.T) {
	// 1. request with valid Token
	err := oAuth20Service.LoginUser(ConstUsername, ConstPassword)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	// 2. call another endpoint
	var params = bans.AdminGetBansTypeV3Params{}
	okBan, errBan := iamBansService.AdminGetBansTypeV3Short(&params)
	if errBan != nil {
		assert.FailNow(t, errBan.Error())
	}
	assert.NotNil(t, okBan)

	// 3. get the Token from repository
	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	if errGetToken != nil {
		assert.FailNow(t, errGetToken.Error())
	}
	Repository := oAuth20Service.GetAuthSession().Refresh
	hasExpired := repository.HasTokenExpired(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	assert.False(t, hasExpired) // Token not yet expired
	secondsTillExpiry := repository.GetSecondsTillExpiry(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	t.Logf("Expiring in... : %v", secondsTillExpiry)

	// 4. force the Token to be expired
	expiresIn = int32(5)
	getToken.ExpiresIn = &expiresIn       // monkey-patch, force expiry Token
	getToken.RefreshExpiresIn = expiresIn // monkey-patch, force expiry refreshToken

	getExpiresIn, _ := repository.GetExpiresIn(oAuth20Service.TokenRepository)
	assert.Equal(t, *getExpiresIn, expiresIn)
	getRefreshRate := Repository.GetRefreshRate()
	assert.NotNil(t, getRefreshRate)
	secondsTillExpiry = repository.GetSecondsTillExpiry(oAuth20Service.TokenRepository, Repository.GetRefreshRate())
	t.Logf("Force to expire in... : %v", secondsTillExpiry)
	errStore := oAuth20Service.TokenRepository.Store(*getToken) // store the new monkey patch Token
	assert.Nil(t, errStore)

	getExpiresIn, _ = repository.GetExpiresIn(oAuth20Service.TokenRepository)
	assert.Equal(t, *getExpiresIn, expiresIn)
	time.Sleep(time.Duration(*getExpiresIn) * time.Second)
	refreshRate := Repository.GetRefreshRate()
	hasIndeedExpired := repository.HasTokenExpired(oAuth20Service.TokenRepository, refreshRate)
	assert.True(t, hasIndeedExpired) // indeed expired

	// 5. call again with time sleep for multiple requests async
	testing.Benchmark(func(b *testing.B) {
		b.Helper()
		for i := 1; i <= b.N; i++ {
			b.RunParallel(func(pb *testing.PB) { // run with goroutines
				t.Logf("%vth request", i)
				var paramsAsync = bans.AdminGetBansTypeV3Params{}
				okBan2, errBan2 := iamBansService.AdminGetBansTypeV3Short(&paramsAsync)
				if errBan2 != nil {
					assert.FailNow(t, errBan2.Error())
				}
				assert.NotNil(t, okBan2, "not nil")
				assert.False(t, hasExpired)
			})
		}
	})
}

var (
	connMgr             *integration.ConnectionManagerImpl
	lobbyMessageHandler = func(dataByte []byte) {

		msg := decodeWSMessage(string(dataByte))

		if v, ok := msg["type"]; ok {
			msgType = v
		}
		switch msgType {
		case model.TypeNotificationMessage:
		}
	}
	msgType string
)

func TestWebsocketRefresh_withMockServer(t *testing.T) {
	// 1. request with valid Token
	err := oAuth20Service.LoginUser(ConstUsername, ConstPassword)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	tokenRepoObs := oAuth20Service.TokenRepository
	configRepoObs := oAuth20Service.ConfigRepository

	oAuth20Service.RefreshTokenRepository = &auth.RefreshTokenImpl{AutoRefresh: true, RefreshRate: 0.01} // Force refresh with shorter time span

	// 2. call websocket endpoint
	lobbyService := &service.LobbyServiceWebsocket{
		ConfigRepository:  configRepoObs,
		TokenRepository:   tokenRepoObs,
		ConnectionManager: connMgr,
	}

	connection, err := connectionutils.NewWebsocketConnection(configRepoObs, tokenRepoObs, lobbyMessageHandler)
	assert.Nil(t, err, "err should be nil")

	connMgr.Save(connection)

	friendsId := "friendsId"
	id := "test"
	errNotif1 := lobbyService.ListOfFriendsRequest(&friendsId, &id)
	assert.NoError(t, errNotif1)

	// 3. get the Token from repository
	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	if errGetToken != nil {
		assert.FailNow(t, errGetToken.Error())
	}
	Repository := oAuth20Service.GetAuthSession().Refresh
	hasExpired := repository.HasTokenExpired(tokenRepoObs, Repository.GetRefreshRate())
	assert.False(t, hasExpired) // Token not yet expired
	secondsTillExpiry := repository.GetSecondsTillExpiry(tokenRepoObs, Repository.GetRefreshRate())
	t.Logf("Expiring in... : %v", secondsTillExpiry)

	// 4. force the Token to be expired
	expiresIn = int32(1)
	getToken.ExpiresIn = &expiresIn       // monkey-patch, force expiry Token
	getToken.RefreshExpiresIn = expiresIn // monkey-patch, force expiry refreshToken

	getExpiresIn, _ := repository.GetExpiresIn(tokenRepoObs)
	assert.Equal(t, *getExpiresIn, expiresIn)
	getRefreshRate := Repository.GetRefreshRate()
	assert.NotNil(t, getRefreshRate)
	secondsTillExpiry = repository.GetSecondsTillExpiry(tokenRepoObs, Repository.GetRefreshRate())
	t.Logf("Force to expire in... : %v", secondsTillExpiry)

	// Use the ObservableTokenRepositoryImpl
	observableRepo := auth.DefaultObservableTokenRepositoryImpl(tokenRepoObs)

	// Register lobbyService as an observer
	observableRepo.RegisterObserver(lobbyService)

	// Set access token and observe the change
	newToken, errNewToken := tokenRepoObs.GetToken()
	assert.NoError(t, errNewToken)

	// store the new monkey patch Token
	errSetAccessToken := observableRepo.SetAccessToken(newToken)
	assert.NoError(t, errSetAccessToken)

	// check if really expired
	hasIndeedExpired := repository.HasTokenExpired(tokenRepoObs, Repository.GetRefreshRate())
	assert.True(t, hasIndeedExpired) // indeed expired

	// 5. call again with time sleep
	errNotif2 := lobbyService.ListOfFriendsRequest(&friendsId, &id)
	assert.NoError(t, errNotif2)
	assert.False(t, hasExpired)

	errLogout := oAuth20Service.Logout()
	assert.Nil(t, errLogout)
}

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}
