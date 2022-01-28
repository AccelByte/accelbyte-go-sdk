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

// RetrieveSingleLocalizedPolicyVersionCmd represents the RetrieveSingleLocalizedPolicyVersion command
var RetrieveSingleLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "retrieveSingleLocalizedPolicyVersion",
	Short: "Retrieve single localized policy version",
	Long:  `Retrieve single localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.RetrieveSingleLocalizedPolicyVersion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	RetrieveSingleLocalizedPolicyVersionCmd.Flags().StringP("localizedPolicyVersionId", "", " ", "Localized policy version id")
	_ = RetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
}
