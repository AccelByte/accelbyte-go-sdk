// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AnonymizeUserAgreementCmd represents the AnonymizeUserAgreement command
var AnonymizeUserAgreementCmd = &cobra.Command{
	Use:   "anonymizeUserAgreement",
	Short: "Anonymize user agreement",
	Long:  `Anonymize user agreement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &legal.AnonymizationService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeUserAgreementParams{
			UserID: userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AnonymizeUserAgreement(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AnonymizeUserAgreementCmd.Flags().StringP("userId", "", " ", "User id")
	_ = AnonymizeUserAgreementCmd.MarkFlagRequired("userId")
}
