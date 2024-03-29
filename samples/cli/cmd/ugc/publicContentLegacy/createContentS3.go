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

// CreateContentS3Cmd represents the CreateContentS3 command
var CreateContentS3Cmd = &cobra.Command{
	Use:   "createContentS3",
	Short: "Create content S3",
	Long:  `Create content S3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsPublicCreateContentRequestS3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.CreateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicContentLegacyService.CreateContentS3Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateContentS3Cmd.Flags().String("body", "", "Body")
	_ = CreateContentS3Cmd.MarkFlagRequired("body")
	CreateContentS3Cmd.Flags().String("channelId", "", "Channel id")
	_ = CreateContentS3Cmd.MarkFlagRequired("channelId")
	CreateContentS3Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateContentS3Cmd.MarkFlagRequired("namespace")
	CreateContentS3Cmd.Flags().String("userId", "", "User id")
	_ = CreateContentS3Cmd.MarkFlagRequired("userId")
}
