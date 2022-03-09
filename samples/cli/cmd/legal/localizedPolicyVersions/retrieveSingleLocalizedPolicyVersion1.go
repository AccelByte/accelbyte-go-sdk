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

// RetrieveSingleLocalizedPolicyVersion1Cmd represents the RetrieveSingleLocalizedPolicyVersion1 command
var RetrieveSingleLocalizedPolicyVersion1Cmd = &cobra.Command{
	Use:   "retrieveSingleLocalizedPolicyVersion1",
	Short: "Retrieve single localized policy version 1",
	Long:  `Retrieve single localized policy version 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.RetrieveSingleLocalizedPolicyVersion1Params{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.RetrieveSingleLocalizedPolicyVersion1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	RetrieveSingleLocalizedPolicyVersion1Cmd.Flags().StringP("localizedPolicyVersionId", "", "", "Localized policy version id")
	_ = RetrieveSingleLocalizedPolicyVersion1Cmd.MarkFlagRequired("localizedPolicyVersionId")
}
