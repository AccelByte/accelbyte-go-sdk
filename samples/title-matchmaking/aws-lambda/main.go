// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"time"

	"aws-lambda/pkg/config"
	"aws-lambda/pkg/title-matchmaking/dao"
	daoRedis "aws-lambda/pkg/title-matchmaking/dao/redis"
	channelList2 "aws-lambda/pkg/title-matchmaking/dao/redis/channelList"
	"aws-lambda/pkg/utils"

	"github.com/go-redis/redis/v8"

	"github.com/aws/aws-lambda-go/lambda"

	"aws-lambda/pkg/title-matchmaking/service"
)

var (
	titleMMConfig *config.Config
	channelList   dao.Channel
)

func main() {
	log.SetOutput(os.Stdout)
	log.Print("Title Matchmaking Service")

	titleMMConfig = &config.Config{}

	flag.Usage = func() {
		flag.CommandLine.SetOutput(os.Stdout)

		for _, val := range titleMMConfig.HelpDocs() {
			fmt.Println(val)
		}

		fmt.Println("")
		flag.PrintDefaults()
	}
	flag.Parse()

	redisClient := redis.NewClient(&redis.Options{
		Addr:            "some-redis:6379",
		MaxRetries:      60,
		MaxRetryBackoff: time.Second,
	})

	channelList = channelList2.New(redisClient)

	instanceID := utils.GenerateUUID()
	titleMMDAORedisDB := daoRedis.New(titleMMConfig.ServiceName, instanceID, redisClient)

	iamBaseURL := os.Getenv("IAM_BASE_URL")
	titleMMService := service.New(
		titleMMConfig.ServiceName,
		titleMMConfig.Realm,
		iamBaseURL,
		channelList,
		&config.Config{},
		titleMMDAORedisDB, // this is where you change it
	)

	lambda.Start(titleMMService.StartMatchmaking)
}
