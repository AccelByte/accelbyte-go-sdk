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

// DeleteLocalizedPolicyCmd represents the DeleteLocalizedPolicy command
var DeleteLocalizedPolicyCmd = &cobra.Command{
	Use:   "deleteLocalizedPolicy",
	Short: "Delete localized policy",
	Long:  `Delete localized policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.DeleteLocalizedPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		errNoContent := localizedPolicyVersionsWithNamespaceService.DeleteLocalizedPolicyShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteLocalizedPolicyCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = DeleteLocalizedPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
	DeleteLocalizedPolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteLocalizedPolicyCmd.MarkFlagRequired("namespace")
}
