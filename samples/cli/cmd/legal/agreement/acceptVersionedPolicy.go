// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AcceptVersionedPolicyCmd represents the AcceptVersionedPolicy command
var AcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "acceptVersionedPolicy",
	Short: "Accept versioned policy",
	Long:  `Accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &agreement.AcceptVersionedPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		errCreated := agreementService.AcceptVersionedPolicyShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AcceptVersionedPolicyCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = AcceptVersionedPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
}
