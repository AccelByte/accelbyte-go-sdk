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

// DeleteIAPItemConfigCmd represents the DeleteIAPItemConfig command
var DeleteIAPItemConfigCmd = &cobra.Command{
	Use:   "deleteIAPItemConfig",
	Short: "Delete IAP item config",
	Long:  `Delete IAP item config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &i_a_p.DeleteIAPItemConfigParams{
			Namespace: namespace,
		}
		errInput := iapService.DeleteIAPItemConfigShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteIAPItemConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteIAPItemConfigCmd.MarkFlagRequired("namespace")
}
