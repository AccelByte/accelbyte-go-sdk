// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ResetUserSeasonCmd represents the ResetUserSeason command
var ResetUserSeasonCmd = &cobra.Command{
	Use:   "resetUserSeason",
	Short: "Reset user season",
	Long:  `Reset user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.ResetUserSeasonParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := seasonService.ResetUserSeasonShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ResetUserSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetUserSeasonCmd.MarkFlagRequired("namespace")
	ResetUserSeasonCmd.Flags().String("userId", "", "User id")
	_ = ResetUserSeasonCmd.MarkFlagRequired("userId")
}
