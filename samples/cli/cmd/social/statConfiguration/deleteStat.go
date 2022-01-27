// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteStatCmd represents the DeleteStat command
var DeleteStatCmd = &cobra.Command{
	Use:   "DeleteStat",
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
	DeleteStatCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = DeleteStatCmd.MarkFlagRequired("namespace")
	DeleteStatCmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = DeleteStatCmd.MarkFlagRequired("statCode")
}
