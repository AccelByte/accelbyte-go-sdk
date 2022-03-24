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

// IndirectBulkAcceptVersionedPolicy1Cmd represents the IndirectBulkAcceptVersionedPolicy1 command
var IndirectBulkAcceptVersionedPolicy1Cmd = &cobra.Command{
	Use:   "indirectBulkAcceptVersionedPolicy1",
	Short: "Indirect bulk accept versioned policy 1",
	Long:  `Indirect bulk accept versioned policy 1`,
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
		input := &agreement.IndirectBulkAcceptVersionedPolicy1Params{
			Body:   body,
			UserID: userId,
		}
		ok, err := agreementService.IndirectBulkAcceptVersionedPolicy1Short(input)
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
	IndirectBulkAcceptVersionedPolicy1Cmd.Flags().StringP("body", "", "", "Body")
	IndirectBulkAcceptVersionedPolicy1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = IndirectBulkAcceptVersionedPolicy1Cmd.MarkFlagRequired("userId")
}
