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

// GetCurrentUserSeasonProgressionCmd represents the GetCurrentUserSeasonProgression command
var GetCurrentUserSeasonProgressionCmd = &cobra.Command{
	Use:   "getCurrentUserSeasonProgression",
	Short: "Get current user season progression",
	Long:  `Get current user season progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.GetCurrentUserSeasonProgressionParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := seasonService.GetCurrentUserSeasonProgressionShort(input)
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
	GetCurrentUserSeasonProgressionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCurrentUserSeasonProgressionCmd.MarkFlagRequired("namespace")
	GetCurrentUserSeasonProgressionCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetCurrentUserSeasonProgressionCmd.MarkFlagRequired("userId")
}
