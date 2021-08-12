// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"aws-lambda-functions/pkg/config"
	"aws-lambda-functions/pkg/title-matchmaking/dao"
	daoRedis "aws-lambda-functions/pkg/title-matchmaking/dao/redis"
	"aws-lambda-functions/pkg/title-matchmaking/dao/redis/constant"
	auth "github.com/AccelByte/go-restful-plugins/v4/pkg/auth/iam"
	"github.com/AccelByte/iam-go-sdk"
	"github.com/emicklei/go-restful/v3"
	"github.com/patrickmn/go-cache"
)

// TitleMatchmakingService service for matchmaking
type TitleMatchmakingService struct {
	AuthFilter          *auth.Filter
	WebService          *restful.WebService
	RolePermissionCache *cache.Cache
	Name                string
	Realm               string
	IamClient           iam.Client
	IamBaseURL          string
	Channel             dao.Channel
	Config              *config.Config
	TitleMMDAORedis     *daoRedis.TitleMMDAORedis
}

// New creates new TitleMatchmakingService
func New(
	authFilter *auth.Filter,
	name string,
	realm string,
	iamClient iam.Client,
	iamBaseURL string,
	channelList dao.Channel,
	config *config.Config,
	titleMMDAORedis *daoRedis.TitleMMDAORedis,
) *TitleMatchmakingService {
	service := &TitleMatchmakingService{
		AuthFilter: authFilter,
		WebService: new(restful.WebService),
		RolePermissionCache: cache.New(
			constant.DefaultRoleCacheExpirationTime,
			2*constant.DefaultRoleCacheExpirationTime,
		),
		Name:            name,
		Realm:           realm,
		IamClient:       iamClient,
		IamBaseURL:      iamBaseURL,
		Channel:         channelList,
		Config:          config,
		TitleMMDAORedis: titleMMDAORedis,
	}
	return service
}
