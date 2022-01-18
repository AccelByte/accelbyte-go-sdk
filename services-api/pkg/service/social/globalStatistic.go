// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/global_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type GlobalStatisticService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

func (g *GlobalStatisticService) GetGlobalStatItems(input *global_statistic.GetGlobalStatItemsParams) (*socialclientmodels.GlobalStatItemPagingSlicedResult, error) {
	accessToken, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := g.Client.GlobalStatistic.GetGlobalStatItems(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *GlobalStatisticService) GetGlobalStatItemsShort(input *global_statistic.GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*socialclientmodels.GlobalStatItemPagingSlicedResult, error) {
	ok, err := g.Client.GlobalStatistic.GetGlobalStatItemsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
