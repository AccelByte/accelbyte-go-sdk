// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateScreenshotsCmd represents the AdminUpdateScreenshots command
var AdminUpdateScreenshotsCmd = &cobra.Command{
	Use:   "adminUpdateScreenshots",
	Short: "Admin update screenshots",
	Long:  `Admin update screenshots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateScreenshotRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminUpdateScreenshotsParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentService.AdminUpdateScreenshotsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateScreenshotsCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateScreenshotsCmd.MarkFlagRequired("body")
	AdminUpdateScreenshotsCmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateScreenshotsCmd.MarkFlagRequired("contentId")
	AdminUpdateScreenshotsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateScreenshotsCmd.MarkFlagRequired("namespace")
}
