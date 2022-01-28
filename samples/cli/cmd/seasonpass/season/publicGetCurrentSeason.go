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

// PublicGetCurrentSeasonCmd represents the PublicGetCurrentSeason command
var PublicGetCurrentSeasonCmd = &cobra.Command{
	Use:   "publicGetCurrentSeason",
	Short: "Public get current season",
	Long:  `Public get current season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		language, _ := cmd.Flags().GetString("language")
		input := &season.PublicGetCurrentSeasonParams{
			Namespace: namespace,
			Language:  &language,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.PublicGetCurrentSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetCurrentSeasonCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicGetCurrentSeasonCmd.MarkFlagRequired("namespace")
	PublicGetCurrentSeasonCmd.Flags().StringP("language", "", " ", "Language")
}
