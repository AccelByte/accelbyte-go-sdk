// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package repository

import (
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

type TokenRepository interface {
	Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error
	GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error)
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}

func GetRefreshExpiresIn(repository TokenRepository) (*int32, error) {
	token, _ := repository.GetToken()

	return token.RefreshExpiresIn, nil
}

func GetExpiresIn(repository TokenRepository) (*int32, error) {
	token, _ := repository.GetToken()

	return token.ExpiresIn, nil
}

func GetRefreshToken(repository TokenRepository) (string, error) {
	token, _ := repository.GetToken()

	return *token.RefreshToken, nil
}

func GetSecondsTillExpiry(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, _ := GetExpiresIn(repository)
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	timeNow := time.Now().UTC()
	secondsTillExpiry := expiresAt.Sub(timeNow) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasToken(repository TokenRepository) bool {
	_, err := repository.GetToken()

	return err == nil
}

func HasTokenExpired(repository TokenRepository, refreshRate float64) bool {
	x := GetSecondsTillExpiry(repository, refreshRate) <= 0

	return x
}

func GetSecondsTillExpiryRefresh(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, _ := GetRefreshExpiresIn(repository)
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	secondsTillExpiry := expiresAt.Sub(time.Now().UTC()) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasRefreshTokenExpired(repository TokenRepository, refreshRate float64) bool {
	return GetSecondsTillExpiryRefresh(repository, refreshRate) <= 0
}
