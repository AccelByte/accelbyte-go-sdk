// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveSinglePolicyVersionCmd represents the RetrieveSinglePolicyVersion command
var RetrieveSinglePolicyVersionCmd = &cobra.Command{
	Use:   "retrieveSinglePolicyVersion",
	Short: "Retrieve single policy version",
	Long:  `Retrieve single policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &policy_versions.RetrieveSinglePolicyVersionParams{
			PolicyID:  policyId,
			VersionID: &versionId,
		}
		ok, err := policyVersionsService.RetrieveSinglePolicyVersionShort(input)
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
	RetrieveSinglePolicyVersionCmd.Flags().String("policyId", "", "Policy id")
	_ = RetrieveSinglePolicyVersionCmd.MarkFlagRequired("policyId")
	RetrieveSinglePolicyVersionCmd.Flags().String("versionId", "", "Version id")
}
