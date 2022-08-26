// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"log"
	"os"
	"time"

	title_matchmaking "aws-lambda/pkg/title-matchmaking"
	"aws-lambda/pkg/title-matchmaking/constants"
	"aws-lambda/pkg/title-matchmaking/dao"
	daoRedis "aws-lambda/pkg/title-matchmaking/dao/redis"
	channelList2 "aws-lambda/pkg/title-matchmaking/dao/redis/channelList"
	"aws-lambda/pkg/title-matchmaking/utils"
	"github.com/go-redis/redis/v8"

	"github.com/aws/aws-lambda-go/lambda"
)

var (
	channelList dao.Channel
)

func main() {
	log.SetOutput(os.Stdout)
	log.Print(constants.ServiceName)

	// setup the redis
	redisClient := redis.NewClient(&redis.Options{
		Addr:            os.Getenv("REDIS_URL"), // ex. localhost:6379
		MaxRetries:      60,
		MaxRetryBackoff: time.Second,
	})
	channelList = channelList2.New(redisClient)
	instanceID := utils.GenerateUUID()
	titleMMRedis := daoRedis.New(constants.ServiceName, instanceID, redisClient)

	iamBaseURL := os.Getenv("IAM_BASE_URL")
	titleMMService := title_matchmaking.New(
		constants.ServiceName,
		iamBaseURL,
		channelList,
		titleMMRedis,
	)

	lambda.Start(titleMMService.StartMatchmaking)
}
