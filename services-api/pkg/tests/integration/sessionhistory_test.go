// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/stretchr/testify/assert"
)

var (
	sessionHistoryService = &sessionhistory.GameSessionDetailService{
		Client:          factory.NewSessionhistoryClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
)

func Test_AdminQueryGameSessionDetail(t *testing.T) {
	Init()

	// CASE Query a game session detail
	param := game_session_detail.NewAdminQueryGameSessionDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryGameSessionDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}

func Test_AdminQueryMatchmakingDetail(t *testing.T) {
	Init()

	// CASE Query a matchmaking detail
	param := game_session_detail.NewAdminQueryMatchmakingDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryMatchmakingDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}

func Test_AdminQueryPartyDetail(t *testing.T) {
	Init()

	// CASE Query a matchmaking match count
	param := game_session_detail.NewAdminQueryPartyDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryPartyDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}
