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

// PublicQueryMyGameSessionsCmd represents the PublicQueryMyGameSessions command
var PublicQueryMyGameSessionsCmd = &cobra.Command{
	Use:   "publicQueryMyGameSessions",
	Short: "Public query my game sessions",
	Long:  `Public query my game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		status, _ := cmd.Flags().GetString("status")
		input := &game_session.PublicQueryMyGameSessionsParams{
			Namespace: namespace,
			Order:     &order,
			OrderBy:   &orderBy,
			Status:    &status,
		}
		ok, errOK := gameSessionService.PublicQueryMyGameSessionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryMyGameSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryMyGameSessionsCmd.MarkFlagRequired("namespace")
	PublicQueryMyGameSessionsCmd.Flags().String("order", "", "Order")
	PublicQueryMyGameSessionsCmd.Flags().String("orderBy", "", "Order by")
	PublicQueryMyGameSessionsCmd.Flags().String("status", "", "Status")
}
