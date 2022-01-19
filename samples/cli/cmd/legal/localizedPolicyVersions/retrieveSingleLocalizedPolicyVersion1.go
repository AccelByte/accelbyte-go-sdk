// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveSingleLocalizedPolicyVersion1Cmd represents the retrieveSingleLocalizedPolicyVersion1 command
var retrieveSingleLocalizedPolicyVersion1Cmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveSingleLocalizedPolicyVersion1Cmd)
	retrieveSingleLocalizedPolicyVersion1Cmd.Flags().StringP("localizedPolicyVersionId", "l", " ", "Localized policy version id")
	_ = retrieveSingleLocalizedPolicyVersion1Cmd.MarkFlagRequired("localizedPolicyVersionId")
}
