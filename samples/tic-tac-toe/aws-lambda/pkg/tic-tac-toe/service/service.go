// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	daoRedis "tic-tac-toe/pkg/tic-tac-toe/dao/redis"
)

// TicTacToeService service for matchmaking
type TicTacToeService struct {
	ticTacToeDAORedis *daoRedis.TicTacToeDAORedis
}

// New creates new TicTacToeService
func New(
	ticTacToeDAORedis *daoRedis.TicTacToeDAORedis,
) *TicTacToeService {
	service := &TicTacToeService{
		ticTacToeDAORedis: ticTacToeDAORedis,
	}

	return service
}
