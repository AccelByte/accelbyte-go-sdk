// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package redis

import (
	"github.com/go-redis/redis/v8"
)

// TicTacToeDAORedis contains redis redisClient and config
type TicTacToeDAORedis struct {
	Redis      *redis.Client
	instanceID string
}

// New function is used to create new redis instance in Tic Tac Toe service
func New(
	instanceID string,
	client *redis.Client) *TicTacToeDAORedis {
	return &TicTacToeDAORedis{
		Redis:      client,
		instanceID: instanceID,
	}
}
