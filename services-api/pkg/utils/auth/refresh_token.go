// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

// RefreshTokenImpl handles automatic token refresh functionality for AccelByte SDK authentication.
// It manages the timing and behavior of token refresh operations to maintain valid access tokens
// throughout the application lifecycle.
type RefreshTokenImpl struct {
	// RefreshRate specifies the percentage of token lifetime at which refresh should occur.
	// Value should be between 0.0 and 1.0 (e.g., 0.8 means refresh when 80% of token lifetime has passed).
	// This helps ensure tokens are refreshed before they expire, preventing authentication failures.
	// If the `AutoRefresh` sets to `true` this value must be set below 1.0.
	RefreshRate float64

	// AutoRefresh enables or disables automatic token refresh in the background.
	// When true, the SDK will automatically refresh tokens based on RefreshRate.
	// When false, tokens must be refreshed manually by calling refresh methods.
	AutoRefresh bool

	// IsRefreshInProgress indicates whether a token refresh operation is currently running.
	// This flag prevents multiple concurrent refresh operations and helps avoid race conditions.
	// Should be treated as read-only in most cases.
	IsRefreshInProgress bool
}

// DefaultRefreshTokenImpl creates a new RefreshTokenImpl with the default settings.
// Returns a RefreshTokenImpl configured with:
//   - RefreshRate: 0.8 (refresh when token is 80% through its lifetime)
//   - AutoRefresh: false (manual refresh mode by default)
func DefaultRefreshTokenImpl() *RefreshTokenImpl {
	return &RefreshTokenImpl{
		0.8,
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
