// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePlatformWalletConfigCmd represents the UpdatePlatformWalletConfig command
var UpdatePlatformWalletConfigCmd = &cobra.Command{
	Use:   "updatePlatformWalletConfig",
	Short: "Update platform wallet config",
	Long:  `Update platform wallet config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlatformWalletConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		input := &wallet.UpdatePlatformWalletConfigParams{
			Body:      body,
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := walletService.UpdatePlatformWalletConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePlatformWalletConfigCmd.Flags().String("body", "", "Body")
	_ = UpdatePlatformWalletConfigCmd.MarkFlagRequired("body")
	UpdatePlatformWalletConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePlatformWalletConfigCmd.MarkFlagRequired("namespace")
	UpdatePlatformWalletConfigCmd.Flags().String("platform", "", "Platform")
	_ = UpdatePlatformWalletConfigCmd.MarkFlagRequired("platform")
}
