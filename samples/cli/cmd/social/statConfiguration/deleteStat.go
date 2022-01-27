// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteStatCmd represents the deleteStat command
var deleteStatCmd = &cobra.Command{
	Use:   "deleteStat",
	Short: "Delete stat",
	Long:  `Delete stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &stat_configuration.DeleteStatParams{
			Namespace: namespace,
			StatCode:  statCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := statConfigurationService.DeleteStat(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteStatCmd)
	deleteStatCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteStatCmd.MarkFlagRequired("namespace")
	deleteStatCmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = deleteStatCmd.MarkFlagRequired("statCode")
}
