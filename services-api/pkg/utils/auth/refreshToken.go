// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

type RefreshTokenImpl struct {
	RefreshRate         float64
	AutoRefresh         bool
	IsRefreshInProgress bool
}

func DefaultRefreshTokenImpl() *RefreshTokenImpl {
	return &RefreshTokenImpl{
		1.0,
		true,
		false,
	}
}

func (r *RefreshTokenImpl) DisableAutoRefresh() bool {
	return !r.AutoRefresh
}

func (r *RefreshTokenImpl) GetRefreshRate() float64 {
	return r.RefreshRate
}

func (r *RefreshTokenImpl) RefreshIsRunningInBackground(b bool) bool {
	r.IsRefreshInProgress = b

	return r.IsRefreshInProgress
}
