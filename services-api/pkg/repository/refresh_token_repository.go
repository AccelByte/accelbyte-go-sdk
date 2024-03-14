// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

type RefreshTokenRepository interface {
	DisableAutoRefresh() bool
	GetRefreshRate() float64
	SetRefreshIsRunningInBackground(b bool)
}

type TokenRepositoryObserver interface {
	OnAccessTokenChanged(accessToken string) error
}

type ObservableTokenRepository interface {
	TokenRepository
	RegisterObserver(observer *TokenRepositoryObserver) bool
	UnregisterObserver(observer *TokenRepositoryObserver) bool
}
