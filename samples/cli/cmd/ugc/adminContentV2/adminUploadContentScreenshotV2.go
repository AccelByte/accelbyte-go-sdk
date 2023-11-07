// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUploadContentScreenshotV2Cmd represents the AdminUploadContentScreenshotV2 command
var AdminUploadContentScreenshotV2Cmd = &cobra.Command{
	Use:   "adminUploadContentScreenshotV2",
	Short: "Admin upload content screenshot V2",
	Long:  `Admin upload content screenshot V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
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
		input := &admin_content_v2.AdminUploadContentScreenshotV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		created, errCreated := adminContentV2Service.AdminUploadContentScreenshotV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminUploadContentScreenshotV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUploadContentScreenshotV2Cmd.MarkFlagRequired("body")
	AdminUploadContentScreenshotV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUploadContentScreenshotV2Cmd.MarkFlagRequired("contentId")
	AdminUploadContentScreenshotV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUploadContentScreenshotV2Cmd.MarkFlagRequired("namespace")
}
