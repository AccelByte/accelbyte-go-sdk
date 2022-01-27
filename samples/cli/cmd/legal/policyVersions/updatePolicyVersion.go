// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policyVersions

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

// updatePolicyVersionCmd represents the updatePolicyVersion command
var updatePolicyVersionCmd = &cobra.Command{
	Use:   "updatePolicyVersion",
	Short: "Update policy version",
	Long:  `Update policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions.UpdatePolicyVersionParams{
			Body:            body,
			PolicyVersionID: policyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policyVersionsService.UpdatePolicyVersion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePolicyVersionCmd)
	updatePolicyVersionCmd.Flags().StringP("body", "by", " ", "Body")
	updatePolicyVersionCmd.Flags().StringP("policyVersionId", "pd", " ", "Policy version id")
	_ = updatePolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
