// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type RefreshTokenImpl struct {
	RefreshRate         float64
	AutoRefresh         bool
	IsRefreshInProgress bool
}

func DefaultRefreshTokenImpl() *RefreshTokenImpl {
	return &RefreshTokenImpl{
		1.0,
		false,
		false,
	}
}

func (r *RefreshTokenImpl) DisableAutoRefresh() bool {
	return !r.AutoRefresh
}

func (r *RefreshTokenImpl) GetRefreshRate() float64 {
	return r.RefreshRate
}

func (r *RefreshTokenImpl) SetRefreshIsRunningInBackground(b bool) {
	r.IsRefreshInProgress = b
}

type ObservableTokenRepositoryImpl struct {
	Observers []repository.TokenRepositoryObserver
	TokenRepo repository.TokenRepository
}

// DefaultObservableTokenRepositoryImpl initializes a new ObservableTokenRepositoryImpl instance
func DefaultObservableTokenRepositoryImpl(tokenRepo repository.TokenRepository) *ObservableTokenRepositoryImpl {
	return &ObservableTokenRepositoryImpl{
		TokenRepo: tokenRepo,
	}
}

func (o *ObservableTokenRepositoryImpl) RegisterObserver(observer repository.TokenRepositoryObserver) bool {
	// Check if observer is already registered
	for _, obs := range o.Observers {
		if obs == observer {
			return false // Observer already registered
		}
	}

	o.Observers = append(o.Observers, observer)

	return true
}

func (o *ObservableTokenRepositoryImpl) UnregisterObserver(observer repository.TokenRepositoryObserver) bool {
	for i, obs := range o.Observers {
		if obs == observer {
			o.Observers = append(o.Observers[:i], o.Observers[i+1:]...)

			return true // Observer found and removed
		}
	}

	return false // Observer not found
}

// Notify all Observers about the change in access token
func (o *ObservableTokenRepositoryImpl) notifyObservers(accessToken string) {
	for _, observer := range o.Observers {
		err := observer.OnAccessTokenChanged(accessToken)
		if err != nil {
			return
		}
	}
}

// Implement TokenRepository methods for ObservableTokenRepositoryImpl
func (o *ObservableTokenRepositoryImpl) GetAccessToken() (string, error) {
	token, err := o.TokenRepo.GetToken()
	if err != nil {
		return "", err
	}

	return *token.AccessToken, nil
}

func (o *ObservableTokenRepositoryImpl) SetAccessToken(token interface{}) error {
	tokenModel, err := repository.ConvertInterfaceToModel(token)
	if err != nil {
		return err
	}

	errStore := o.TokenRepo.Store(tokenModel)
	if errStore == nil {
		o.notifyObservers(*tokenModel.AccessToken)
	}

	return err
}
