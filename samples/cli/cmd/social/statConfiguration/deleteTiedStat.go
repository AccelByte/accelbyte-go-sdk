// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTiedStatCmd represents the DeleteTiedStat command
var DeleteTiedStatCmd = &cobra.Command{
	Use:   "deleteTiedStat",
	Short: "Delete tied stat",
	Long:  `Delete tied stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &stat_configuration.DeleteTiedStatParams{
			Namespace: namespace,
			StatCode:  statCode,
		}
		errInput := statConfigurationService.DeleteTiedStatShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteTiedStatCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTiedStatCmd.MarkFlagRequired("namespace")
	DeleteTiedStatCmd.Flags().String("statCode", "", "Stat code")
	_ = DeleteTiedStatCmd.MarkFlagRequired("statCode")
}
