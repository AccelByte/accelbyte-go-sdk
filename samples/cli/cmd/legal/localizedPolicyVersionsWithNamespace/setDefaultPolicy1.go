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

// SetDefaultPolicy1Cmd represents the SetDefaultPolicy1 command
var SetDefaultPolicy1Cmd = &cobra.Command{
	Use:   "setDefaultPolicy1",
	Short: "Set default policy 1",
	Long:  `Set default policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.SetDefaultPolicy1Params{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		errOK := localizedPolicyVersionsWithNamespaceService.SetDefaultPolicy1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SetDefaultPolicy1Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = SetDefaultPolicy1Cmd.MarkFlagRequired("localizedPolicyVersionId")
	SetDefaultPolicy1Cmd.Flags().String("namespace", "", "Namespace")
	_ = SetDefaultPolicy1Cmd.MarkFlagRequired("namespace")
}
