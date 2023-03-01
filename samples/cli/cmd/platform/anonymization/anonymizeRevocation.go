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

// AnonymizeRevocationCmd represents the AnonymizeRevocation command
var AnonymizeRevocationCmd = &cobra.Command{
	Use:   "anonymizeRevocation",
	Short: "Anonymize revocation",
	Long:  `Anonymize revocation`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeRevocationParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AnonymizeRevocationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AnonymizeRevocationCmd.Flags().String("namespace", "", "Namespace")
	_ = AnonymizeRevocationCmd.MarkFlagRequired("namespace")
	AnonymizeRevocationCmd.Flags().String("userId", "", "User id")
	_ = AnonymizeRevocationCmd.MarkFlagRequired("userId")
}
