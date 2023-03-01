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

// RetrieveSingleLocalizedPolicyVersion2Cmd represents the RetrieveSingleLocalizedPolicyVersion2 command
var RetrieveSingleLocalizedPolicyVersion2Cmd = &cobra.Command{
	Use:   "retrieveSingleLocalizedPolicyVersion2",
	Short: "Retrieve single localized policy version 2",
	Long:  `Retrieve single localized policy version 2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.RetrieveSingleLocalizedPolicyVersion2Params{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		ok, errOK := localizedPolicyVersionsService.RetrieveSingleLocalizedPolicyVersion2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveSingleLocalizedPolicyVersion2Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = RetrieveSingleLocalizedPolicyVersion2Cmd.MarkFlagRequired("localizedPolicyVersionId")
}
