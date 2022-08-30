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

// GetFullSeasonCmd represents the GetFullSeason command
var GetFullSeasonCmd = &cobra.Command{
	Use:   "getFullSeason",
	Short: "Get full season",
	Long:  `Get full season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &season.GetFullSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, err := seasonService.GetFullSeasonShort(input)
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
	GetFullSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = GetFullSeasonCmd.MarkFlagRequired("namespace")
	GetFullSeasonCmd.Flags().String("seasonId", "", "Season id")
	_ = GetFullSeasonCmd.MarkFlagRequired("seasonId")
}
