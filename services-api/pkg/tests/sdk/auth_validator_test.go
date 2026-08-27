// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"encoding/pem"
	"math/big"
	"net/http"
	"net/http/httptest"
	"sync/atomic"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	sdkAuth "github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

const (
	// testKid is the key id the stub IAM publishes in its JWK set.
	testKid = "stub-key-1"

	// testRefreshInterval keeps the validator's background refresh loops in the millisecond range.
	testRefreshInterval = 100 * time.Millisecond

	// testWaitTimeout bounds how long a test waits for a background refresh to take effect.
	testWaitTimeout = 5 * time.Second
)

// stubIAM serves the three endpoints TokenValidator.Initialize depends on, and can be switched
// between healthy and failing to imitate an IAM outage.
type stubIAM struct {
	server   *httptest.Server
	healthy  atomic.Bool
	requests atomic.Int32
	jwks     []byte
}

func newStubIAM(t *testing.T) *stubIAM {
	t.Helper()

	stub := &stubIAM{jwks: buildJWKS(t)}
	stub.healthy.Store(true)

	mux := http.NewServeMux()
	mux.HandleFunc("/iam/v3/oauth/token", func(w http.ResponseWriter, r *http.Request) {
		if !stub.serve(w) {
			return
		}

		writeJSON(t, w, map[string]interface{}{
			"access_token": "stub-access-token",
			"expires_in":   3600,
			"namespace":    "stubns",
			"permissions":  []interface{}{},
			"scope":        "commerce account social publishing analytics",
			"token_type":   "Bearer",
		})
	})
	mux.HandleFunc("/iam/v3/oauth/jwks", func(w http.ResponseWriter, r *http.Request) {
		if !stub.serve(w) {
			return
		}

		w.Header().Set("Content-Type", "application/json")
		_, _ = w.Write(stub.jwks)
	})
	mux.HandleFunc("/iam/v3/oauth/revocationlist", func(w http.ResponseWriter, r *http.Request) {
		if !stub.serve(w) {
			return
		}

		writeJSON(t, w, map[string]interface{}{
			"revoked_tokens": map[string]interface{}{
				"bits": []uint64{0, 0},
				"k":    2,
				"m":    128,
			},
			"revoked_users": []interface{}{},
		})
	})

	stub.server = httptest.NewServer(mux)
	t.Cleanup(stub.server.Close)

	return stub
}

// serve reports whether the request should be answered, writing an error response when the stub is
// standing in for an unhealthy IAM.
func (s *stubIAM) serve(w http.ResponseWriter) bool {
	s.requests.Add(1)

	if !s.healthy.Load() {
		w.WriteHeader(http.StatusServiceUnavailable)

		return false
	}

	return true
}

func writeJSON(t *testing.T, w http.ResponseWriter, body interface{}) {
	t.Helper()

	w.Header().Set("Content-Type", "application/json")
	if err := json.NewEncoder(w).Encode(body); err != nil {
		t.Errorf("stub IAM failed to encode response: %v", err)
	}
}

// buildJWKS generates a throwaway RSA key and renders it as an IAM JWK set response.
func buildJWKS(t *testing.T) []byte {
	t.Helper()

	key, err := rsa.GenerateKey(rand.Reader, 2048)
	require.NoError(t, err, "generating a test RSA key")

	encoding := base64.URLEncoding.WithPadding(base64.NoPadding)
	kty := "RSA"

	body, err := json.Marshal(map[string]interface{}{
		"keys": []map[string]interface{}{
			{
				"kid": testKid,
				"kty": kty,
				"use": "sig",
				"alg": "RS256",
				"n":   encoding.EncodeToString(key.N.Bytes()),
				"e":   encoding.EncodeToString(big.NewInt(int64(key.E)).Bytes()),
			},
		},
	})
	require.NoError(t, err, "encoding the test JWK set")

	// Keep the key material out of the test's reach: only the public half is published, and nothing
	// here signs tokens.
	_ = pem.EncodeToMemory(&pem.Block{Type: "PUBLIC KEY", Bytes: x509.MarshalPKCS1PublicKey(&key.PublicKey)})

	return body
}

// newTestValidator builds a TokenValidator wired to the stub IAM. It returns the concrete type so
// that tests can inspect the loaded public keys.
func newTestValidator(t *testing.T, stub *stubIAM) *iam.TokenValidator {
	t.Helper()

	configRepo := &sdkAuth.ConfigRepositoryImpl{
		ClientId:     "stub-client-id",
		ClientSecret: "stub-client-secret",
		BaseUrl:      stub.server.URL,
	}

	oauthService := iam.OAuth20Service{
		Client:                 factory.NewIamClient(configRepo),
		ConfigRepository:       configRepo,
		TokenRepository:        sdkAuth.DefaultTokenRepositoryImpl(),
		RefreshTokenRepository: &sdkAuth.RefreshTokenImpl{RefreshRate: 0.8, AutoRefresh: false},
	}

	tokenValidator, ok := iam.NewTokenValidator(oauthService, testRefreshInterval).(*iam.TokenValidator)
	require.True(t, ok, "NewTokenValidator should return *iam.TokenValidator")

	return tokenValidator
}

func publicKeyCount(tokenValidator *iam.TokenValidator) int {
	tokenValidator.RWMutex.RLock()
	defer tokenValidator.RWMutex.RUnlock()

	return len(tokenValidator.PublicKeys)
}

// waitForPublicKeys waits for the background refresh loops to load at least one key.
func waitForPublicKeys(t *testing.T, tokenValidator *iam.TokenValidator) bool {
	t.Helper()

	deadline := time.Now().Add(testWaitTimeout)
	for time.Now().Before(deadline) {
		if publicKeyCount(tokenValidator) > 0 {
			return true
		}

		time.Sleep(10 * time.Millisecond)
	}

	return false
}

func TestTokenValidatorInitializeLoadsPublicKeys(t *testing.T) {
	stub := newStubIAM(t)
	tokenValidator := newTestValidator(t, stub)

	require.NoError(t, tokenValidator.Initialize())

	assert.Equal(t, 1, publicKeyCount(tokenValidator), "the JWK set published by the stub should be loaded")
}

// TestTokenValidatorRecoversFromFailedInitialize is the regression test for a validator that was
// permanently unusable after a single failure at startup: Initialize used to return before starting
// its refresh loops, so PublicKeys stayed empty and every token was rejected with "public key not
// found" for the lifetime of the process.
func TestTokenValidatorRecoversFromFailedInitialize(t *testing.T) {
	stub := newStubIAM(t)
	stub.healthy.Store(false)

	tokenValidator := newTestValidator(t, stub)

	err := tokenValidator.Initialize()
	require.Error(t, err, "Initialize should still report the failure to its caller")
	assert.Contains(t, err.Error(), "error initializing validator:")
	assert.Zero(t, publicKeyCount(tokenValidator), "no keys should be loaded while IAM is failing")

	// IAM comes back. Nothing calls Initialize again -- the refresh loops must pick it up.
	stub.healthy.Store(true)

	assert.True(t, waitForPublicKeys(t, tokenValidator),
		"public keys should be loaded by a background refresh after IAM recovered")
}

// TestTokenValidatorInitializeReportsEveryFailedStage covers fetchAll no longer stopping at the
// first failure: a failed client login used to hide whether the JWK set was reachable.
func TestTokenValidatorInitializeReportsEveryFailedStage(t *testing.T) {
	stub := newStubIAM(t)
	stub.healthy.Store(false)

	tokenValidator := newTestValidator(t, stub)

	err := tokenValidator.Initialize()
	require.Error(t, err)

	for _, stage := range []string{"client token:", "JWK set:", "revocation list:"} {
		assert.Contains(t, err.Error(), stage, "the aggregated error should name every failed stage")
	}
}

// TestTokenValidatorInitializeStartsRefreshLoopsOnce guards the sync.Once: callers that retry
// Initialize must not accumulate a set of refresh goroutines per attempt.
func TestTokenValidatorInitializeStartsRefreshLoopsOnce(t *testing.T) {
	stub := newStubIAM(t)
	tokenValidator := newTestValidator(t, stub)

	for i := 0; i < 3; i++ {
		require.NoError(t, tokenValidator.Initialize())
	}

	// Three Initialize calls fetch all three endpoints each; one set of refresh loops adds three
	// requests per interval. With four sets the count would climb four times as fast.
	before := stub.requests.Load()
	time.Sleep(6 * testRefreshInterval)
	added := stub.requests.Load() - before

	assert.LessOrEqual(t, added, int32(30),
		"a single set of refresh loops should be running, got %d requests over 6 intervals", added)
}
