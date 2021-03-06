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
		ok, err := localizedPolicyVersionsService.RetrieveSingleLocalizedPolicyVersion1Short(input)
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
	RetrieveSingleLocalizedPolicyVersion1Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = RetrieveSingleLocalizedPolicyVersion1Cmd.MarkFlagRequired("localizedPolicyVersionId")
}
