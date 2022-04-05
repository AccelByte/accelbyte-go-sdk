// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package localizedPolicyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetDefaultPolicyCmd represents the SetDefaultPolicy command
var SetDefaultPolicyCmd = &cobra.Command{
	Use:   "setDefaultPolicy",
	Short: "Set default policy",
	Long:  `Set default policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.SetDefaultPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		errInput := localizedPolicyVersionsService.SetDefaultPolicyShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SetDefaultPolicyCmd.Flags().StringP("localizedPolicyVersionId", "", "", "Localized policy version id")
	_ = SetDefaultPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
}
