// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"github.com/emicklei/go-restful/v3"
	"github.com/patrickmn/go-cache"

	"aws-lambda/pkg/config"
	"aws-lambda/pkg/title-matchmaking/dao"
	daoRedis "aws-lambda/pkg/title-matchmaking/dao/redis"
	"aws-lambda/pkg/title-matchmaking/dao/redis/constant"
)

// TitleMatchmakingService service for matchmaking
type TitleMatchmakingService struct {
	WebService          *restful.WebService
	RolePermissionCache *cache.Cache
	Name                string
	Realm               string
	IamBaseURL          string
	Channel             dao.Channel
	Config              *config.Config
	TitleMMDAORedis     *daoRedis.TitleMMDAORedis
}

// New creates new TitleMatchmakingService
func New(
	name string,
	realm string,
	iamBaseURL string,
	channelList dao.Channel,
	config *config.Config,
	titleMMDAORedis *daoRedis.TitleMMDAORedis,
) *TitleMatchmakingService {
	service := &TitleMatchmakingService{
		WebService: new(restful.WebService),
		RolePermissionCache: cache.New(
			constant.DefaultRoleCacheExpirationTime,
			2*constant.DefaultRoleCacheExpirationTime,
		),
		Name:            name,
		Realm:           realm,
		IamBaseURL:      iamBaseURL,
		Channel:         channelList,
		Config:          config,
		TitleMMDAORedis: titleMMDAORedis,
	}

	return service
}
