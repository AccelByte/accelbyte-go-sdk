// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package localizedPolicyVersions

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateLocalizedPolicyVersionCmd represents the CreateLocalizedPolicyVersion command
var CreateLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "createLocalizedPolicyVersion",
	Short: "Create localized policy version",
	Long:  `Create localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreateLocalizedPolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions.CreateLocalizedPolicyVersionParams{
			Body:            body,
			PolicyVersionID: policyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.CreateLocalizedPolicyVersion(input)
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
	CreateLocalizedPolicyVersionCmd.Flags().StringP("body", "", "", "Body")
	CreateLocalizedPolicyVersionCmd.Flags().StringP("policyVersionId", "", "", "Policy version id")
	_ = CreateLocalizedPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
