// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersionsWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveSinglePolicyVersionCmd represents the RetrieveSinglePolicyVersion command
var RetrieveSinglePolicyVersionCmd = &cobra.Command{
	Use:   "retrieveSinglePolicyVersion",
	Short: "Retrieve single policy version",
	Long:  `Retrieve single policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &policy_versions_with_namespace.RetrieveSinglePolicyVersionParams{
			Namespace: namespace,
			PolicyID:  policyId,
			VersionID: &versionId,
		}
		ok, errOK := policyVersionsWithNamespaceService.RetrieveSinglePolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveSinglePolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSinglePolicyVersionCmd.MarkFlagRequired("namespace")
	RetrieveSinglePolicyVersionCmd.Flags().String("policyId", "", "Policy id")
	_ = RetrieveSinglePolicyVersionCmd.MarkFlagRequired("policyId")
	RetrieveSinglePolicyVersionCmd.Flags().String("versionId", "", "Version id")
}
