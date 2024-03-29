// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadContentScreenshotCmd represents the UploadContentScreenshot command
var UploadContentScreenshotCmd = &cobra.Command{
	Use:   "uploadContentScreenshot",
	Short: "Upload content screenshot",
	Long:  `Upload content screenshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateScreenshotRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.UploadContentScreenshotParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicContentLegacyService.UploadContentScreenshotShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	UploadContentScreenshotCmd.Flags().String("body", "", "Body")
	_ = UploadContentScreenshotCmd.MarkFlagRequired("body")
	UploadContentScreenshotCmd.Flags().String("contentId", "", "Content id")
	_ = UploadContentScreenshotCmd.MarkFlagRequired("contentId")
	UploadContentScreenshotCmd.Flags().String("namespace", "", "Namespace")
	_ = UploadContentScreenshotCmd.MarkFlagRequired("namespace")
	UploadContentScreenshotCmd.Flags().String("userId", "", "User id")
	_ = UploadContentScreenshotCmd.MarkFlagRequired("userId")
}
