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

// adminUpdateContentS3Cmd represents the adminUpdateContentS3 command
var adminUpdateContentS3Cmd = &cobra.Command{
	Use:   "adminUpdateContentS3",
	Short: "Admin update content S3",
	Long:  `Admin update content S3`,
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
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminUpdateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminUpdateContentS3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateContentS3Cmd)
	adminUpdateContentS3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateContentS3Cmd.MarkFlagRequired("body")
	adminUpdateContentS3Cmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = adminUpdateContentS3Cmd.MarkFlagRequired("channelId")
	adminUpdateContentS3Cmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = adminUpdateContentS3Cmd.MarkFlagRequired("contentId")
	adminUpdateContentS3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateContentS3Cmd.MarkFlagRequired("namespace")
	adminUpdateContentS3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminUpdateContentS3Cmd.MarkFlagRequired("userId")
}
