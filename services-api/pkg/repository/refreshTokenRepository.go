// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

type RefreshTokenRepository interface {
	DisableAutoRefresh() bool
	GetExpiresIn(accessToken iamclientmodels.OauthmodelTokenResponseV3) *int32
	GetRefreshExpiresIn(accessToken iamclientmodels.OauthmodelTokenResponseV3) (*int32, error)
	StoreRefreshToken(accessToken iamclientmodels.OauthmodelTokenResponseV3) error
	GetRefreshToken() (string, error)
	GetRefreshRate() float64
	GetSecondsTillExpiry(accessToken iamclientmodels.OauthmodelTokenResponseV3) time.Duration
	HasToken(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool
	HasTokenExpired(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool
	HasRefreshTokenExpired(accessToken iamclientmodels.OauthmodelTokenResponseV3) bool
	RemoveRefreshToken() error
}
