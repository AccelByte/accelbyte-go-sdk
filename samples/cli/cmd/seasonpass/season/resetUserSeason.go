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

// resetUserSeasonCmd represents the resetUserSeason command
var resetUserSeasonCmd = &cobra.Command{
	Use:   "resetUserSeason",
	Short: "Reset user season",
	Long:  `Reset user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.ResetUserSeasonParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := seasonService.ResetUserSeason(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(resetUserSeasonCmd)
	resetUserSeasonCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = resetUserSeasonCmd.MarkFlagRequired("namespace")
	resetUserSeasonCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = resetUserSeasonCmd.MarkFlagRequired("userId")
}
