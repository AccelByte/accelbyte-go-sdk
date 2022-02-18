// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policyVersions

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policyVersionsService.RetrieveSinglePolicyVersion(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	RetrieveSinglePolicyVersionCmd.Flags().StringP("policyId", "", "", "Policy id")
	_ = RetrieveSinglePolicyVersionCmd.MarkFlagRequired("policyId")
	RetrieveSinglePolicyVersionCmd.Flags().StringP("versionId", "", "", "Version id")
}
