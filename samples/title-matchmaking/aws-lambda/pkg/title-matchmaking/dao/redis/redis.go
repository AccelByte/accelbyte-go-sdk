// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package redis

import (
	"github.com/go-redis/redis/v8"
)

// TitleMMDAORedis contains redis redisClient and config
type TitleMMDAORedis struct {
	Redis       *redis.Client
	serviceName string
	instanceID  string
}

// New function is used to create new redis instance in title MM service
func New(
	serviceName,
	instanceID string,
	client *redis.Client) *TitleMMDAORedis {
	return &TitleMMDAORedis{
		Redis:       client,
		serviceName: serviceName,
		instanceID:  instanceID,
	}
}
