// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTwitchIAPConfigCmd represents the DeleteTwitchIAPConfig command
var DeleteTwitchIAPConfigCmd = &cobra.Command{
	Use:   "deleteTwitchIAPConfig",
	Short: "Delete twitch IAP config",
	Long:  `Delete twitch IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &i_a_p.DeleteTwitchIAPConfigParams{
			Namespace: namespace,
		}
		errInput := iapService.DeleteTwitchIAPConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteTwitchIAPConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteTwitchIAPConfigCmd.MarkFlagRequired("namespace")
}
