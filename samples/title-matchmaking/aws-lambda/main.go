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

	"github.com/AccelByte/iam-go-sdk"
	"github.com/go-redis/redis/v8"

	auth "github.com/AccelByte/go-restful-plugins/v4/pkg/auth/iam"

	"github.com/aws/aws-lambda-go/lambda"

	"aws-lambda/pkg/title-matchmaking/service"
)

var (
	titleMMConfig *config.Config
	iamClient     iam.Client
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

	// IAM Auth
	iamClient = iam.NewDefaultClient(
		&iam.Config{
			BaseURL:      os.Getenv("IAM_BASE_URL"),
			ClientID:     os.Getenv("IAM_CLIENT_ID"),
			ClientSecret: os.Getenv("IAM_CLIENT_SECRET"),
		})
	log.Print("Successul set IAM client")

	err := iamClient.StartLocalValidation()
	if err != nil {
		log.Printf("unable to start IAM client local validation: %+v", err)

		return
	}

	err = iamClient.ClientTokenGrant()
	if err != nil {
		log.Printf("unable to start IAM client repository grant: %+v", err)

		return
	}

	redisClient := redis.NewClient(&redis.Options{
		Addr:            os.Getenv("REDIS_URL"),
		DB:              0,
		MaxRetries:      60,
		MaxRetryBackoff: time.Second,
	})

	channelList = channelList2.New(redisClient)

	instanceID := utils.GenerateUUID()
	titleMMDAORedisDB := daoRedis.New(titleMMConfig.ServiceName, instanceID, redisClient)

	authFilter := auth.NewFilter(iamClient)
	iamBaseURL := os.Getenv("IAM_BASE_URL")
	titleMMService := service.New(
		authFilter,
		titleMMConfig.ServiceName,
		titleMMConfig.Realm,
		iamClient,
		iamBaseURL,
		channelList,
		&config.Config{},
		titleMMDAORedisDB, // this is where you change it
	)

	lambda.Start(titleMMService.StartMatchmaking)
}
