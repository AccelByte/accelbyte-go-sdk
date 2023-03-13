// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAcceptedAgreementsForMultiUsersCmd represents the RetrieveAcceptedAgreementsForMultiUsers command
var RetrieveAcceptedAgreementsForMultiUsersCmd = &cobra.Command{
	Use:   "retrieveAcceptedAgreementsForMultiUsers",
	Short: "Retrieve accepted agreements for multi users",
	Long:  `Retrieve accepted agreements for multi users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UsersAgreementsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement_with_namespace.RetrieveAcceptedAgreementsForMultiUsersParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAcceptedAgreementsForMultiUsersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAcceptedAgreementsForMultiUsersCmd.Flags().String("body", "", "Body")
	RetrieveAcceptedAgreementsForMultiUsersCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAcceptedAgreementsForMultiUsersCmd.MarkFlagRequired("namespace")
}
