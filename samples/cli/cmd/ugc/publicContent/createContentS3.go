// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateContentS3Cmd represents the CreateContentS3 command
var CreateContentS3Cmd = &cobra.Command{
	Use:   "CreateContentS3",
	Short: "Create content S3",
	Long:  `Create content S3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.CreateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.CreateContentS3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	CreateContentS3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = CreateContentS3Cmd.MarkFlagRequired("body")
	CreateContentS3Cmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = CreateContentS3Cmd.MarkFlagRequired("channelId")
	CreateContentS3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = CreateContentS3Cmd.MarkFlagRequired("namespace")
	CreateContentS3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = CreateContentS3Cmd.MarkFlagRequired("userId")
}
