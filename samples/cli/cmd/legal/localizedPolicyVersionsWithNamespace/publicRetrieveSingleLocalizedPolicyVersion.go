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

// PublicRetrieveSingleLocalizedPolicyVersionCmd represents the PublicRetrieveSingleLocalizedPolicyVersion command
var PublicRetrieveSingleLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "publicRetrieveSingleLocalizedPolicyVersion",
	Short: "Public retrieve single localized policy version",
	Long:  `Public retrieve single localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.PublicRetrieveSingleLocalizedPolicyVersionParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		ok, errOK := localizedPolicyVersionsWithNamespaceService.PublicRetrieveSingleLocalizedPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicRetrieveSingleLocalizedPolicyVersionCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = PublicRetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
	PublicRetrieveSingleLocalizedPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("namespace")
}
