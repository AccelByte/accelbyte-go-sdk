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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// requestPresignedURLCmd represents the requestPresignedURL command
var requestPresignedURLCmd = &cobra.Command{
	Use:   "requestPresignedURL",
	Short: "Request presigned URL",
	Long:  `Request presigned URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UploadPolicyVersionAttachmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions.RequestPresignedURLParams{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.RequestPresignedURL(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(requestPresignedURLCmd)
	requestPresignedURLCmd.Flags().StringP("body", "by", " ", "Body")
	requestPresignedURLCmd.Flags().StringP("localizedPolicyVersionId", "ld", " ", "Localized policy version id")
	_ = requestPresignedURLCmd.MarkFlagRequired("localizedPolicyVersionId")
}
