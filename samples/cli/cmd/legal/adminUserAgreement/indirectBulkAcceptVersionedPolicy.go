// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminUserAgreement

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// indirectBulkAcceptVersionedPolicyCmd represents the indirectBulkAcceptVersionedPolicy command
var indirectBulkAcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "indirectBulkAcceptVersionedPolicy",
	Short: "Indirect bulk accept versioned policy",
	Long:  `Indirect bulk accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminUserAgreementService := &legal.AdminUserAgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		clientId, _ := cmd.Flags().GetString("clientId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		publisherUserId, _ := cmd.Flags().GetString("publisherUserId")
		input := &admin_user_agreement.IndirectBulkAcceptVersionedPolicyParams{
			Body:            body,
			Namespace:       namespace,
			UserID:          userId,
			PublisherUserID: &publisherUserId,
			ClientID:        clientId,
			CountryCode:     countryCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminUserAgreementService.IndirectBulkAcceptVersionedPolicy(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(indirectBulkAcceptVersionedPolicyCmd)
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("body", "by", " ", "Body")
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = indirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("namespace")
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = indirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("userId")
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("publisherUserId", "pd", " ", "Publisher user id")
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("clientId", "cd", " ", "Client id")
	_ = indirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("clientId")
	indirectBulkAcceptVersionedPolicyCmd.Flags().StringP("countryCode", "ce", " ", "Country code")
	_ = indirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("countryCode")
}
