// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// RequestPresignedURLCmd represents the RequestPresignedURL command
var RequestPresignedURLCmd = &cobra.Command{
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
		created, errCreated := localizedPolicyVersionsService.RequestPresignedURLShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	RequestPresignedURLCmd.Flags().String("body", "", "Body")
	RequestPresignedURLCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = RequestPresignedURLCmd.MarkFlagRequired("localizedPolicyVersionId")
}
