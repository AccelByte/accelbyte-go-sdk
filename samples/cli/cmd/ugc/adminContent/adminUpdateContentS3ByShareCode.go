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

// AdminUpdateContentS3ByShareCodeCmd represents the AdminUpdateContentS3ByShareCode command
var AdminUpdateContentS3ByShareCodeCmd = &cobra.Command{
	Use:   "adminUpdateContentS3ByShareCode",
	Short: "Admin update content S3 by share code",
	Long:  `Admin update content S3 by share code`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminUpdateContentS3ByShareCodeParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		ok, errOK := adminContentService.AdminUpdateContentS3ByShareCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateContentS3ByShareCodeCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateContentS3ByShareCodeCmd.MarkFlagRequired("body")
	AdminUpdateContentS3ByShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateContentS3ByShareCodeCmd.MarkFlagRequired("channelId")
	AdminUpdateContentS3ByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateContentS3ByShareCodeCmd.MarkFlagRequired("namespace")
	AdminUpdateContentS3ByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = AdminUpdateContentS3ByShareCodeCmd.MarkFlagRequired("shareCode")
	AdminUpdateContentS3ByShareCodeCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateContentS3ByShareCodeCmd.MarkFlagRequired("userId")
}
