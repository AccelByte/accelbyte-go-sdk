// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersionsWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveLocalizedPolicyVersions1Cmd represents the RetrieveLocalizedPolicyVersions1 command
var RetrieveLocalizedPolicyVersions1Cmd = &cobra.Command{
	Use:   "retrieveLocalizedPolicyVersions1",
	Short: "Retrieve localized policy versions 1",
	Long:  `Retrieve localized policy versions 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersions1Params{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, err := localizedPolicyVersionsWithNamespaceService.RetrieveLocalizedPolicyVersions1Short(input)
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
	RetrieveLocalizedPolicyVersions1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLocalizedPolicyVersions1Cmd.MarkFlagRequired("namespace")
	RetrieveLocalizedPolicyVersions1Cmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = RetrieveLocalizedPolicyVersions1Cmd.MarkFlagRequired("policyVersionId")
}
