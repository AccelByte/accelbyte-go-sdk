// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// OldSetDefaultLocalizedPolicyCmd represents the OldSetDefaultLocalizedPolicy command
var OldSetDefaultLocalizedPolicyCmd = &cobra.Command{
	Use:   "oldSetDefaultLocalizedPolicy",
	Short: "Old set default localized policy",
	Long:  `Old set default localized policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.OldSetDefaultLocalizedPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		errOK := localizedPolicyVersionsService.OldSetDefaultLocalizedPolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	OldSetDefaultLocalizedPolicyCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = OldSetDefaultLocalizedPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
}
