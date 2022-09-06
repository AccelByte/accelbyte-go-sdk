// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"os"
	"time"

	ticTacToe "tic-tac-toe/pkg/tic-tac-toe"
	daoRedis "tic-tac-toe/pkg/tic-tac-toe/dao/redis"
	"tic-tac-toe/pkg/tic-tac-toe/utils"

	"github.com/go-redis/redis/v8"

	"github.com/aws/aws-lambda-go/lambda"
)

func main() {
	redisClient := redis.NewClient(&redis.Options{
		Addr:            os.Getenv("REDIS_URL"),
		DB:              0,
		MaxRetries:      60,
		MaxRetryBackoff: time.Second,
	})

	instanceID := utils.GenerateUUID()
	ticTacToeDAORedisDB := daoRedis.New(instanceID, redisClient)
	ticTacToeService := ticTacToe.New(
		ticTacToeDAORedisDB,
	)

	lambda.Start(ticTacToeService.Service)
}
