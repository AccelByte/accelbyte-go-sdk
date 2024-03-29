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
		var body *ugcclientmodels.ModelsAdminUpdateContentRequest
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
		ok, errOK := adminContentService.AdminUpdateContentS3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateContentS3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("body")
	AdminUpdateContentS3Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("channelId")
	AdminUpdateContentS3Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("contentId")
	AdminUpdateContentS3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("namespace")
	AdminUpdateContentS3Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateContentS3Cmd.MarkFlagRequired("userId")
}
