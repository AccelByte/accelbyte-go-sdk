// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersionsWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RequestPresignedURL1Cmd represents the RequestPresignedURL1 command
var RequestPresignedURL1Cmd = &cobra.Command{
	Use:   "requestPresignedURL1",
	Short: "Request presigned URL 1",
	Long:  `Request presigned URL 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UploadPolicyVersionAttachmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions_with_namespace.RequestPresignedURL1Params{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		created, errCreated := localizedPolicyVersionsWithNamespaceService.RequestPresignedURL1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	RequestPresignedURL1Cmd.Flags().String("body", "", "Body")
	RequestPresignedURL1Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = RequestPresignedURL1Cmd.MarkFlagRequired("localizedPolicyVersionId")
	RequestPresignedURL1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RequestPresignedURL1Cmd.MarkFlagRequired("namespace")
}
