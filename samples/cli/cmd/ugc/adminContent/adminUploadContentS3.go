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

// adminUploadContentS3Cmd represents the adminUploadContentS3 command
var adminUploadContentS3Cmd = &cobra.Command{
	Use:   "adminUploadContentS3",
	Short: "Admin upload content S3",
	Long:  `Admin upload content S3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequestS3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminUploadContentS3Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminUploadContentS3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUploadContentS3Cmd)
	adminUploadContentS3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUploadContentS3Cmd.MarkFlagRequired("body")
	adminUploadContentS3Cmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = adminUploadContentS3Cmd.MarkFlagRequired("channelId")
	adminUploadContentS3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUploadContentS3Cmd.MarkFlagRequired("namespace")
}
