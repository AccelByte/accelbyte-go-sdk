// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"github.com/AccelByte/iam-go-sdk"
	daoRedis "tic-tac-toe/pkg/tic-tac-toe/dao/redis"
)

// TicTacToeService service for matchmaking
type TicTacToeService struct {
	IamClient           iam.Client
	IamBaseURL          string
	ticTacToeDAORedis *daoRedis.TicTacToeDAORedis
}

// New creates new TicTacToeService
func New(
	iamClient iam.Client,
	iamBaseURL string,
	ticTacToeDAORedis *daoRedis.TicTacToeDAORedis,
) *TicTacToeService {
	service := &TicTacToeService{
		IamClient:         iamClient,
		IamBaseURL:        iamBaseURL,
		ticTacToeDAORedis: ticTacToeDAORedis,
	}
	return service
}
