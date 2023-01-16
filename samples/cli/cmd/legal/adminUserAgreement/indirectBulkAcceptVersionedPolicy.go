// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminUserAgreement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// IndirectBulkAcceptVersionedPolicyCmd represents the IndirectBulkAcceptVersionedPolicy command
var IndirectBulkAcceptVersionedPolicyCmd = &cobra.Command{
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
		ok, err := adminUserAgreementService.IndirectBulkAcceptVersionedPolicyShort(input)
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
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("body", "", "Body")
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = IndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("namespace")
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("userId", "", "User id")
	_ = IndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("userId")
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("publisherUserId", "", "Publisher user id")
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("clientId", "", "Client id")
	_ = IndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("clientId")
	IndirectBulkAcceptVersionedPolicyCmd.Flags().String("countryCode", "", "Country code")
	_ = IndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("countryCode")
}
