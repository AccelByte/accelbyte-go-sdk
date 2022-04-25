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

// GetUserSeasonCmd represents the GetUserSeason command
var GetUserSeasonCmd = &cobra.Command{
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
		ok, err := seasonService.GetUserSeasonShort(input, nil)
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
	GetUserSeasonCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserSeasonCmd.MarkFlagRequired("namespace")
	GetUserSeasonCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = GetUserSeasonCmd.MarkFlagRequired("seasonId")
	GetUserSeasonCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserSeasonCmd.MarkFlagRequired("userId")
}
