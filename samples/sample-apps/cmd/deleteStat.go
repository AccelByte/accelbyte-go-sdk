// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteStatCmd represents the deleteStat command
var deleteStatCmd = &cobra.Command{
	Use:   "deleteStat",
	Short: "delete stat",
	Long:  `delete stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		statCode := cmd.Flag("statCode").Value.String()
		socialService := &service.StatisticConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		err := socialService.DeleteStat(namespace, statCode)
		if err != nil {
			return err
		}
		logrus.Info("Stat configuration successfully deleted")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteStatCmd)
	deleteStatCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	deleteStatCmd.Flags().StringP("statCode", "s", "", "User ID")
}
