// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGameSessionByPodNameCmd represents the GetGameSessionByPodName command
var GetGameSessionByPodNameCmd = &cobra.Command{
	Use:   "getGameSessionByPodName",
	Short: "Get game session by pod name",
	Long:  `Get game session by pod name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &game_session.GetGameSessionByPodNameParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, err := gameSessionService.GetGameSessionByPodNameShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetGameSessionByPodNameCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameSessionByPodNameCmd.MarkFlagRequired("namespace")
	GetGameSessionByPodNameCmd.Flags().String("podName", "", "Pod name")
	_ = GetGameSessionByPodNameCmd.MarkFlagRequired("podName")
}
