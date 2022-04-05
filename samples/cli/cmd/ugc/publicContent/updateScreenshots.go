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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateScreenshotsCmd represents the UpdateScreenshots command
var UpdateScreenshotsCmd = &cobra.Command{
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
		ok, err := publicContentService.UpdateScreenshotsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateScreenshotsCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateScreenshotsCmd.MarkFlagRequired("body")
	UpdateScreenshotsCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = UpdateScreenshotsCmd.MarkFlagRequired("contentId")
	UpdateScreenshotsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateScreenshotsCmd.MarkFlagRequired("namespace")
	UpdateScreenshotsCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateScreenshotsCmd.MarkFlagRequired("userId")
}
