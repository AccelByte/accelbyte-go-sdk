// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateScreenshotsCmd represents the adminUpdateScreenshots command
var adminUpdateScreenshotsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminUpdateScreenshots(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateScreenshotsCmd)
	adminUpdateScreenshotsCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateScreenshotsCmd.MarkFlagRequired("body")
	adminUpdateScreenshotsCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = adminUpdateScreenshotsCmd.MarkFlagRequired("contentId")
	adminUpdateScreenshotsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateScreenshotsCmd.MarkFlagRequired("namespace")
}
