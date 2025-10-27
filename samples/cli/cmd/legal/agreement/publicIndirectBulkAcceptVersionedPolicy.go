// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicIndirectBulkAcceptVersionedPolicyCmd represents the PublicIndirectBulkAcceptVersionedPolicy command
var PublicIndirectBulkAcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "publicIndirectBulkAcceptVersionedPolicy",
	Short: "Public indirect bulk accept versioned policy",
	Long:  `Public indirect bulk accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.PublicIndirectBulkAcceptVersionedPolicyParams{
			Body:   body,
			UserID: userId,
		}
		created, errCreated := agreementService.PublicIndirectBulkAcceptVersionedPolicyShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicIndirectBulkAcceptVersionedPolicyCmd.Flags().String("body", "", "Body")
	PublicIndirectBulkAcceptVersionedPolicyCmd.Flags().String("userId", "", "User id")
	_ = PublicIndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("userId")
}
