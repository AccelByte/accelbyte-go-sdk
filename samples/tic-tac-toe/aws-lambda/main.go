// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"log"
	"os"
	"time"

	daoRedis "tic-tac-toe/pkg/tic-tac-toe/dao/redis"
	"tic-tac-toe/pkg/utils"

	"github.com/AccelByte/iam-go-sdk"
	"github.com/go-redis/redis/v8"

	"github.com/aws/aws-lambda-go/lambda"

	"tic-tac-toe/pkg/tic-tac-toe/service"
)

var iamClient iam.Client

func main() {
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

	instanceID := utils.GenerateUUID()
	ticTacToeDAORedisDB := daoRedis.New(instanceID, redisClient)
	iamBaseURL := os.Getenv("IAM_BASE_URL")
	ticTacToeService := service.New(
		iamClient,
		iamBaseURL,
		ticTacToeDAORedisDB, // this is where you change it
	)

	lambda.Start(ticTacToeService.Service)
}
