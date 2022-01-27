// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

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

// updateScreenshotsCmd represents the updateScreenshots command
var updateScreenshotsCmd = &cobra.Command{
	Use:   "updateScreenshots",
	Short: "Update screenshots",
	Long:  `Update screenshots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.UpdateScreenshotsParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.UpdateScreenshots(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateScreenshotsCmd)
	updateScreenshotsCmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateScreenshotsCmd.MarkFlagRequired("body")
	updateScreenshotsCmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = updateScreenshotsCmd.MarkFlagRequired("contentId")
	updateScreenshotsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateScreenshotsCmd.MarkFlagRequired("namespace")
	updateScreenshotsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = updateScreenshotsCmd.MarkFlagRequired("userId")
}
