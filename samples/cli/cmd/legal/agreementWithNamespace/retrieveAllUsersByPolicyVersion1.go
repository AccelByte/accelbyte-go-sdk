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

// RetrieveAllUsersByPolicyVersion1Cmd represents the RetrieveAllUsersByPolicyVersion1 command
var RetrieveAllUsersByPolicyVersion1Cmd = &cobra.Command{
	Use:   "retrieveAllUsersByPolicyVersion1",
	Short: "Retrieve all users by policy version 1",
	Long:  `Retrieve all users by policy version 1`,
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
		input := &agreement_with_namespace.RetrieveAllUsersByPolicyVersion1Params{
			Namespace:         namespace,
			ConvertGameUserID: &convertGameUserId,
			Keyword:           &keyword,
			Limit:             &limit,
			Offset:            &offset,
			PolicyVersionID:   policyVersionId,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAllUsersByPolicyVersion1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllUsersByPolicyVersion1Cmd.MarkFlagRequired("namespace")
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().Bool("convertGameUserId", false, "Convert game user id")
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().String("keyword", "", "Keyword")
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().Int32("limit", 20, "Limit")
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllUsersByPolicyVersion1Cmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = RetrieveAllUsersByPolicyVersion1Cmd.MarkFlagRequired("policyVersionId")
}
