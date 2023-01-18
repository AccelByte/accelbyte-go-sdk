package repository_test

import (
	"errors"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type mockTokenRepository struct {
	mock.Mock
}

func (m *mockTokenRepository) Store(accessToken interface{}) error { return nil }
func (m *mockTokenRepository) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	args := m.Called()
	var return0 *iamclientmodels.OauthmodelTokenResponseV3
	var return1 error

	if args.Get(0) != nil {
		return0 = args.Get(0).(*iamclientmodels.OauthmodelTokenResponseV3)
	}

	if args.Get(1) != nil {
		return1 = args.Get(1).(error)
	}

	return return0, return1
}
func (m *mockTokenRepository) RemoveToken() error            { return nil }
func (m *mockTokenRepository) TokenIssuedTimeUTC() time.Time { return time.Time{} }

func TestGetRefreshToken(t *testing.T) {
	t.Run("Should return refresh token from valid token repository", func(t *testing.T) {
		refToken := "<refresh-token>"
		token := &iamclientmodels.OauthmodelTokenResponseV3{RefreshToken: refToken}
		tokenRepo := &mockTokenRepository{}
		tokenRepo.On("GetToken").Return(token, nil)

		actualToken, err := repository.GetRefreshToken(tokenRepo)
		assert.NoError(t, err)
		assert.Equal(t, refToken, actualToken)
	})

	t.Run("Should return error if no token in token repository", func(t *testing.T) {
		expectedErr := errors.New("no token found in store")
		tokenRepo := &mockTokenRepository{}
		tokenRepo.On("GetToken").Return(nil, expectedErr)

		actualToken, err := repository.GetRefreshToken(tokenRepo)
		assert.ErrorIs(t, err, expectedErr)
		assert.Empty(t, actualToken)
	})
}
