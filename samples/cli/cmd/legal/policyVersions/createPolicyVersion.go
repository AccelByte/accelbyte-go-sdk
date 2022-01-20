// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createPolicyVersionCmd represents the createPolicyVersion command
var createPolicyVersionCmd = &cobra.Command{
	Use:   "createPolicyVersion",
	Short: "Create policy version",
	Long:  `Create policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions.CreatePolicyVersionParams{
			Body:     body,
			PolicyID: policyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policyVersionsService.CreatePolicyVersion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createPolicyVersionCmd)
	createPolicyVersionCmd.Flags().StringP("body", "b", " ", "Body")
	createPolicyVersionCmd.Flags().StringP("policyId", "p", " ", "Policy id")
	_ = createPolicyVersionCmd.MarkFlagRequired("policyId")
}