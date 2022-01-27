// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserSeasonCmd represents the publicGetUserSeason command
var publicGetUserSeasonCmd = &cobra.Command{
	Use:   "publicGetUserSeason",
	Short: "Public get user season",
	Long:  `Public get user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.PublicGetUserSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.PublicGetUserSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserSeasonCmd)
	publicGetUserSeasonCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserSeasonCmd.MarkFlagRequired("namespace")
	publicGetUserSeasonCmd.Flags().StringP("seasonId", "sd", " ", "Season id")
	_ = publicGetUserSeasonCmd.MarkFlagRequired("seasonId")
	publicGetUserSeasonCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserSeasonCmd.MarkFlagRequired("userId")
}
