// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/stretchr/testify/assert"
)

func TestAuthInfoWriterRefresh_withMockServer(t *testing.T) {
	t.Parallel()

	// 1. request with valid token
	err := oAuth20Service.LoginUser(ConstClientId, ConstClientSecret)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	assert.Nil(t, err, "err should be nil")

	// 2. call another endpoint
	params := bans.GetBansTypeParams{}
	okBan, errBan := iamBansService.GetBansTypeShort(&params)
	if err != nil {
		assert.FailNow(t, errBan.Error())
	}
	assert.NotNil(t, okBan)

	// 3. get the token from repository
	getToken, errGetToken := oAuth20Service.TokenRepository.GetToken()
	if errGetToken != nil {
		assert.FailNow(t, errGetToken.Error())
	}
	Refresh := oAuth20Service.GetAuthSession().Refresh
	hasExpired := Refresh.HasTokenExpired(*getToken)
	assert.False(t, hasExpired) // token not yet expired
	secondsTillExpiry := Refresh.GetSecondsTillExpiry(*getToken)
	t.Logf("Expiring in... : %v", secondsTillExpiry)

	// 4. force the token to be expired
	expiresIn := int32(5)
	getToken.ExpiresIn = &expiresIn        // monkey-patch, force expiry token
	getToken.RefreshExpiresIn = &expiresIn // monkey-patch, force expiry refreshToken

	getExpiresIn := Refresh.GetExpiresIn(*getToken)
	assert.Equal(t, *getExpiresIn, expiresIn)
	getRefreshRate := Refresh.GetRefreshRate()
	assert.NotNil(t, getRefreshRate)
	secondsTillExpiry = Refresh.GetSecondsTillExpiry(*getToken)
	t.Logf("Force to expire in... : %v", secondsTillExpiry)
	errStore := oAuth20Service.TokenRepository.Store(*getToken) // store the new monkey patch token
	assert.Nil(t, errStore)

	time.Sleep(time.Duration(*getExpiresIn) * time.Second)
	hasIndeedExpired := Refresh.HasTokenExpired(*getToken)
	assert.True(t, hasIndeedExpired) // indeed expired

	// 5. call again with time sleep
	okBan2, errBan2 := iamBansService.GetBansTypeShort(&params)
	if err != nil {
		assert.FailNow(t, errBan2.Error())
	}
	assert.NotNil(t, okBan2)
	assert.False(t, hasExpired)
}
