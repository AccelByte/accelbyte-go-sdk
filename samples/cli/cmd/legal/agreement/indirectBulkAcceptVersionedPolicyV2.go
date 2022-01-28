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

// IndirectBulkAcceptVersionedPolicyV2Cmd represents the IndirectBulkAcceptVersionedPolicyV2 command
var IndirectBulkAcceptVersionedPolicyV2Cmd = &cobra.Command{
	Use:   "indirectBulkAcceptVersionedPolicyV2",
	Short: "Indirect bulk accept versioned policy V2",
	Long:  `Indirect bulk accept versioned policy V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.IndirectBulkAcceptVersionedPolicyV2Params{
			Body:        body,
			ClientID:    clientId,
			CountryCode: countryCode,
			Namespace:   namespace,
			UserID:      userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := agreementService.IndirectBulkAcceptVersionedPolicyV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	IndirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("body", "", " ", "Body")
	IndirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("clientId", "", " ", "Client id")
	_ = IndirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("clientId")
	IndirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("countryCode", "", " ", "Country code")
	_ = IndirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("countryCode")
	IndirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = IndirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("namespace")
	IndirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("userId", "", " ", "User id")
	_ = IndirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("userId")
}
