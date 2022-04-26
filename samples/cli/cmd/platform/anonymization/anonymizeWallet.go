// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AnonymizeWalletCmd represents the AnonymizeWallet command
var AnonymizeWalletCmd = &cobra.Command{
	Use:   "anonymizeWallet",
	Short: "Anonymize wallet",
	Long:  `Anonymize wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeWalletParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.AnonymizeWalletShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AnonymizeWalletCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AnonymizeWalletCmd.MarkFlagRequired("namespace")
	AnonymizeWalletCmd.Flags().StringP("userId", "", "", "User id")
	_ = AnonymizeWalletCmd.MarkFlagRequired("userId")
}
