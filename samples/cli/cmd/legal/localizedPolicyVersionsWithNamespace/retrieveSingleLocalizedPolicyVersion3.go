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

// RetrieveSingleLocalizedPolicyVersion3Cmd represents the RetrieveSingleLocalizedPolicyVersion3 command
var RetrieveSingleLocalizedPolicyVersion3Cmd = &cobra.Command{
	Use:   "retrieveSingleLocalizedPolicyVersion3",
	Short: "Retrieve single localized policy version 3",
	Long:  `Retrieve single localized policy version 3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion3Params{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		ok, err := localizedPolicyVersionsWithNamespaceService.RetrieveSingleLocalizedPolicyVersion3Short(input)
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
	RetrieveSingleLocalizedPolicyVersion3Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = RetrieveSingleLocalizedPolicyVersion3Cmd.MarkFlagRequired("localizedPolicyVersionId")
	RetrieveSingleLocalizedPolicyVersion3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSingleLocalizedPolicyVersion3Cmd.MarkFlagRequired("namespace")
}
