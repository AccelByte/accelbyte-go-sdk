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

// SingleAdminUpdateContentS3Cmd represents the SingleAdminUpdateContentS3 command
var SingleAdminUpdateContentS3Cmd = &cobra.Command{
	Use:   "singleAdminUpdateContentS3",
	Short: "Single admin update content S3",
	Long:  `Single admin update content S3`,
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
		input := &admin_content.SingleAdminUpdateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentService.SingleAdminUpdateContentS3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SingleAdminUpdateContentS3Cmd.Flags().String("body", "", "Body")
	_ = SingleAdminUpdateContentS3Cmd.MarkFlagRequired("body")
	SingleAdminUpdateContentS3Cmd.Flags().String("channelId", "", "Channel id")
	_ = SingleAdminUpdateContentS3Cmd.MarkFlagRequired("channelId")
	SingleAdminUpdateContentS3Cmd.Flags().String("contentId", "", "Content id")
	_ = SingleAdminUpdateContentS3Cmd.MarkFlagRequired("contentId")
	SingleAdminUpdateContentS3Cmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminUpdateContentS3Cmd.MarkFlagRequired("namespace")
}
