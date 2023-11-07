// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateContentS3Cmd represents the UpdateContentS3 command
var UpdateContentS3Cmd = &cobra.Command{
	Use:   "updateContentS3",
	Short: "Update content S3",
	Long:  `Update content S3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.UpdateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicContentLegacyService.UpdateContentS3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateContentS3Cmd.Flags().String("body", "", "Body")
	_ = UpdateContentS3Cmd.MarkFlagRequired("body")
	UpdateContentS3Cmd.Flags().String("channelId", "", "Channel id")
	_ = UpdateContentS3Cmd.MarkFlagRequired("channelId")
	UpdateContentS3Cmd.Flags().String("contentId", "", "Content id")
	_ = UpdateContentS3Cmd.MarkFlagRequired("contentId")
	UpdateContentS3Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateContentS3Cmd.MarkFlagRequired("namespace")
	UpdateContentS3Cmd.Flags().String("userId", "", "User id")
	_ = UpdateContentS3Cmd.MarkFlagRequired("userId")
}
