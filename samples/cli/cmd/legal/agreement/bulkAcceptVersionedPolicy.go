// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// BulkAcceptVersionedPolicyCmd represents the BulkAcceptVersionedPolicy command
var BulkAcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "bulkAcceptVersionedPolicy",
	Short: "Bulk accept versioned policy",
	Long:  `Bulk accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.BulkAcceptVersionedPolicyParams{
			Body: body,
		}
		ok, err := agreementService.BulkAcceptVersionedPolicyShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	BulkAcceptVersionedPolicyCmd.Flags().StringP("body", "", "", "Body")
}
