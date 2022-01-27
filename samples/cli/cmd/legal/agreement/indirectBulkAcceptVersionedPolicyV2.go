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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// indirectBulkAcceptVersionedPolicyV2Cmd represents the indirectBulkAcceptVersionedPolicyV2 command
var indirectBulkAcceptVersionedPolicyV2Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(indirectBulkAcceptVersionedPolicyV2Cmd)
	indirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("body", "by", " ", "Body")
	indirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = indirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("clientId")
	indirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("countryCode", "ce", " ", "Country code")
	_ = indirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("countryCode")
	indirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = indirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("namespace")
	indirectBulkAcceptVersionedPolicyV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = indirectBulkAcceptVersionedPolicyV2Cmd.MarkFlagRequired("userId")
}
