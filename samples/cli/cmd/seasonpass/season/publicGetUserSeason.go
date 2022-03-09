// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserSeasonCmd represents the PublicGetUserSeason command
var PublicGetUserSeasonCmd = &cobra.Command{
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
	PublicGetUserSeasonCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserSeasonCmd.MarkFlagRequired("namespace")
	PublicGetUserSeasonCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = PublicGetUserSeasonCmd.MarkFlagRequired("seasonId")
	PublicGetUserSeasonCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserSeasonCmd.MarkFlagRequired("userId")
}
