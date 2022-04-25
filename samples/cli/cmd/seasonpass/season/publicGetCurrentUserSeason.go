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

// PublicGetCurrentUserSeasonCmd represents the PublicGetCurrentUserSeason command
var PublicGetCurrentUserSeasonCmd = &cobra.Command{
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
		ok, err := seasonService.PublicGetCurrentUserSeasonShort(input, nil)
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
	PublicGetCurrentUserSeasonCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetCurrentUserSeasonCmd.MarkFlagRequired("namespace")
	PublicGetCurrentUserSeasonCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetCurrentUserSeasonCmd.MarkFlagRequired("userId")
}
