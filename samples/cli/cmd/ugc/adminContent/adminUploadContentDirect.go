// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

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

// adminUploadContentDirectCmd represents the adminUploadContentDirect command
var adminUploadContentDirectCmd = &cobra.Command{
	Use:   "adminUploadContentDirect",
	Short: "Admin upload content direct",
	Long:  `Admin upload content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminUploadContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminUploadContentDirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUploadContentDirectCmd)
	adminUploadContentDirectCmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUploadContentDirectCmd.MarkFlagRequired("body")
	adminUploadContentDirectCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = adminUploadContentDirectCmd.MarkFlagRequired("channelId")
	adminUploadContentDirectCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUploadContentDirectCmd.MarkFlagRequired("namespace")
}
