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

// UpdateLocalizedPolicyVersionCmd represents the UpdateLocalizedPolicyVersion command
var UpdateLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "updateLocalizedPolicyVersion",
	Short: "Update localized policy version",
	Long:  `Update localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdateLocalizedPolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions.UpdateLocalizedPolicyVersionParams{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.UpdateLocalizedPolicyVersion(input)
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
	UpdateLocalizedPolicyVersionCmd.Flags().StringP("body", "", "", "Body")
	UpdateLocalizedPolicyVersionCmd.Flags().StringP("localizedPolicyVersionId", "", "", "Localized policy version id")
	_ = UpdateLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
}
