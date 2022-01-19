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

// getCurrentUserSeasonProgressionCmd represents the getCurrentUserSeasonProgression command
var getCurrentUserSeasonProgressionCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.GetCurrentUserSeasonProgression(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCurrentUserSeasonProgressionCmd)
	getCurrentUserSeasonProgressionCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getCurrentUserSeasonProgressionCmd.MarkFlagRequired("namespace")
	getCurrentUserSeasonProgressionCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getCurrentUserSeasonProgressionCmd.MarkFlagRequired("userId")
}
