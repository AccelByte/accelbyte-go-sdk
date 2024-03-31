// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSessionDetail

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGameSessionDetailCmd represents the GetGameSessionDetail command
var GetGameSessionDetailCmd = &cobra.Command{
	Use:   "getGameSessionDetail",
	Short: "Get game session detail",
	Long:  `Get game session detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session_detail.GetGameSessionDetailParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionDetailService.GetGameSessionDetailShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGameSessionDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameSessionDetailCmd.MarkFlagRequired("namespace")
	GetGameSessionDetailCmd.Flags().String("sessionId", "", "Session id")
	_ = GetGameSessionDetailCmd.MarkFlagRequired("sessionId")
}
