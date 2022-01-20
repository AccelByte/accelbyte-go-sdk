// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// uploadContentScreenshotCmd represents the uploadContentScreenshot command
var uploadContentScreenshotCmd = &cobra.Command{
	Use:   "uploadContentScreenshot",
	Short: "Upload content screenshot",
	Long:  `Upload content screenshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
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
		input := &public_content.UploadContentScreenshotParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.UploadContentScreenshot(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(uploadContentScreenshotCmd)
	uploadContentScreenshotCmd.Flags().StringP("body", "b", " ", "Body")
	_ = uploadContentScreenshotCmd.MarkFlagRequired("body")
	uploadContentScreenshotCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = uploadContentScreenshotCmd.MarkFlagRequired("contentId")
	uploadContentScreenshotCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = uploadContentScreenshotCmd.MarkFlagRequired("namespace")
	uploadContentScreenshotCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = uploadContentScreenshotCmd.MarkFlagRequired("userId")
}