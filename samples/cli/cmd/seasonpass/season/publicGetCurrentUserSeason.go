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

// publicGetCurrentUserSeasonCmd represents the publicGetCurrentUserSeason command
var publicGetCurrentUserSeasonCmd = &cobra.Command{
	Use:   "publicGetCurrentUserSeason",
	Short: "Public get current user season",
	Long:  `Public get current user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.PublicGetCurrentUserSeasonParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.PublicGetCurrentUserSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetCurrentUserSeasonCmd)
	publicGetCurrentUserSeasonCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetCurrentUserSeasonCmd.MarkFlagRequired("namespace")
	publicGetCurrentUserSeasonCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetCurrentUserSeasonCmd.MarkFlagRequired("userId")
}
