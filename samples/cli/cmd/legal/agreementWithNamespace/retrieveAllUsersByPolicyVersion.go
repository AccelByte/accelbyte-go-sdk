// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllUsersByPolicyVersionCmd represents the RetrieveAllUsersByPolicyVersion command
var RetrieveAllUsersByPolicyVersionCmd = &cobra.Command{
	Use:   "retrieveAllUsersByPolicyVersion",
	Short: "Retrieve all users by policy version",
	Long:  `Retrieve all users by policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		convertGameUserId, _ := cmd.Flags().GetBool("convertGameUserId")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &agreement_with_namespace.RetrieveAllUsersByPolicyVersionParams{
			Namespace:         namespace,
			ConvertGameUserID: &convertGameUserId,
			Keyword:           &keyword,
			Limit:             &limit,
			Offset:            &offset,
			PolicyVersionID:   policyVersionId,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAllUsersByPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllUsersByPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllUsersByPolicyVersionCmd.MarkFlagRequired("namespace")
	RetrieveAllUsersByPolicyVersionCmd.Flags().Bool("convertGameUserId", false, "Convert game user id")
	RetrieveAllUsersByPolicyVersionCmd.Flags().String("keyword", "", "Keyword")
	RetrieveAllUsersByPolicyVersionCmd.Flags().Int32("limit", 20, "Limit")
	RetrieveAllUsersByPolicyVersionCmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllUsersByPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = RetrieveAllUsersByPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
