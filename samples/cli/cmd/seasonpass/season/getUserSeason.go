// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserSeasonCmd represents the getUserSeason command
var getUserSeasonCmd = &cobra.Command{
	Use:   "getUserSeason",
	Short: "Get user season",
	Long:  `Get user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.GetUserSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.GetUserSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserSeasonCmd)
	getUserSeasonCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserSeasonCmd.MarkFlagRequired("namespace")
	getUserSeasonCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = getUserSeasonCmd.MarkFlagRequired("seasonId")
	getUserSeasonCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserSeasonCmd.MarkFlagRequired("userId")
}
