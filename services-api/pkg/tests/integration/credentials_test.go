// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

// useFallback controls which environment variables are used to supply client
// credentials to each service in the integration tests.
//
//   - false (default): each service reads its own dedicated variables,
//     e.g. AB_CLIENT_ID_IAM / AB_CLIENT_SECRET_IAM for the IAM tests.
//   - true: all services fall back to the shared AB_CLIENT_ID / AB_CLIENT_SECRET
//     variables (the original behaviour).
var useFallback = false

// getServiceConfigRepository returns an *auth.ConfigRepositoryImpl populated
// with credentials for the given service suffix.
//
// When useFallback is true it delegates to auth.DefaultConfigRepositoryImpl(),
// which reads AB_CLIENT_ID and AB_CLIENT_SECRET.
// Otherwise it reads AB_CLIENT_ID_<suffix> and AB_CLIENT_SECRET_<suffix>.
// AB_BASE_URL is always shared across services.
func getServiceConfigRepository(suffix string) *auth.ConfigRepositoryImpl {
	if useFallback {
		return auth.DefaultConfigRepositoryImpl()
	}
	return &auth.ConfigRepositoryImpl{
		ClientId:     os.Getenv("AB_CLIENT_ID_" + suffix),
		ClientSecret: os.Getenv("AB_CLIENT_SECRET_" + suffix),
		BaseUrl:      os.Getenv("AB_BASE_URL"),
	}
}
