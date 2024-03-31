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

// AdminGetMatchmakingDetailBySessionIDCmd represents the AdminGetMatchmakingDetailBySessionID command
var AdminGetMatchmakingDetailBySessionIDCmd = &cobra.Command{
	Use:   "adminGetMatchmakingDetailBySessionID",
	Short: "Admin get matchmaking detail by session ID",
	Long:  `Admin get matchmaking detail by session ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionDetailService := &sessionhistory.GameSessionDetailService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session_detail.AdminGetMatchmakingDetailBySessionIDParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionDetailService.AdminGetMatchmakingDetailBySessionIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetMatchmakingDetailBySessionIDCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetMatchmakingDetailBySessionIDCmd.MarkFlagRequired("namespace")
	AdminGetMatchmakingDetailBySessionIDCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminGetMatchmakingDetailBySessionIDCmd.MarkFlagRequired("sessionId")
}
