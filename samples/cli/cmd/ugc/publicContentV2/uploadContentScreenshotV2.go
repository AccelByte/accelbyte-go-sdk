// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UploadContentScreenshotV2Cmd represents the UploadContentScreenshotV2 command
var UploadContentScreenshotV2Cmd = &cobra.Command{
	Use:   "uploadContentScreenshotV2",
	Short: "Upload content screenshot V2",
	Long:  `Upload content screenshot V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
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
		input := &public_content_v2.UploadContentScreenshotV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicContentV2Service.UploadContentScreenshotV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	UploadContentScreenshotV2Cmd.Flags().String("body", "", "Body")
	_ = UploadContentScreenshotV2Cmd.MarkFlagRequired("body")
	UploadContentScreenshotV2Cmd.Flags().String("contentId", "", "Content id")
	_ = UploadContentScreenshotV2Cmd.MarkFlagRequired("contentId")
	UploadContentScreenshotV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UploadContentScreenshotV2Cmd.MarkFlagRequired("namespace")
	UploadContentScreenshotV2Cmd.Flags().String("userId", "", "User id")
	_ = UploadContentScreenshotV2Cmd.MarkFlagRequired("userId")
}
