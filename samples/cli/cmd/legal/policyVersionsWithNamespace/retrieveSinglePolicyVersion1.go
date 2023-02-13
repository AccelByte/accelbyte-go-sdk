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

// RetrieveSinglePolicyVersion1Cmd represents the RetrieveSinglePolicyVersion1 command
var RetrieveSinglePolicyVersion1Cmd = &cobra.Command{
	Use:   "retrieveSinglePolicyVersion1",
	Short: "Retrieve single policy version 1",
	Long:  `Retrieve single policy version 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &policy_versions_with_namespace.RetrieveSinglePolicyVersion1Params{
			Namespace: namespace,
			PolicyID:  policyId,
			VersionID: &versionId,
		}
		ok, err := policyVersionsWithNamespaceService.RetrieveSinglePolicyVersion1Short(input)
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
	RetrieveSinglePolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSinglePolicyVersion1Cmd.MarkFlagRequired("namespace")
	RetrieveSinglePolicyVersion1Cmd.Flags().String("policyId", "", "Policy id")
	_ = RetrieveSinglePolicyVersion1Cmd.MarkFlagRequired("policyId")
	RetrieveSinglePolicyVersion1Cmd.Flags().String("versionId", "", "Version id")
}
