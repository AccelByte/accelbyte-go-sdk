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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateContentS3Cmd represents the AdminUpdateContentS3 command
var AdminUpdateContentS3Cmd = &cobra.Command{
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
	AdminUpdateContentS3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("body")
	AdminUpdateContentS3Cmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("channelId")
	AdminUpdateContentS3Cmd.Flags().StringP("contentId", "", "", "Content id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("contentId")
	AdminUpdateContentS3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("namespace")
	AdminUpdateContentS3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("userId")
}
