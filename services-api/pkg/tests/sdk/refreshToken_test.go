// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/stretchr/testify/assert"
)

var params = bans.GetBansTypeParams{}

func TestAuthInfoWriterRefresh_withMockServer(t *testing.T) {
	// 1. request with valid Token
	err := oAuth20Service.LoginUser(ConstClientId, ConstClientSecret)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	// 2. call another endpoint
	okBan, errBan := iamBansService.GetBansTypeShort(&params)
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
	getToken.ExpiresIn = &expiresIn        // monkey-patch, force expiry Token
	getToken.RefreshExpiresIn = &expiresIn // monkey-patch, force expiry refreshToken

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
	okBan2, errBan2 := iamBansService.GetBansTypeShort(&params)
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
	err := oAuth20Service.LoginUser(ConstClientId, ConstClientSecret)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	// 2. call another endpoint
	okBan, errBan := iamBansService.GetBansTypeShort(&params)
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
	getToken.ExpiresIn = &expiresIn        // monkey-patch, force expiry Token
	getToken.RefreshExpiresIn = &expiresIn // monkey-patch, force expiry refreshToken

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
				okBan2, errBan2 := iamBansService.GetBansTypeShort(&params)
				if errBan2 != nil {
					assert.FailNow(t, errBan2.Error())
				}
				assert.NotNil(t, okBan2, "not nil")
				assert.False(t, hasExpired)
			})
		}
	})
}
