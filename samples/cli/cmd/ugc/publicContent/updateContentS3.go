// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateContentS3Cmd represents the updateContentS3 command
var updateContentS3Cmd = &cobra.Command{
	Use:   "updateContentS3",
	Short: "Update content S3",
	Long:  `Update content S3`,
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
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.UpdateContentS3Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.UpdateContentS3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateContentS3Cmd)
	updateContentS3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateContentS3Cmd.MarkFlagRequired("body")
	updateContentS3Cmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = updateContentS3Cmd.MarkFlagRequired("channelId")
	updateContentS3Cmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = updateContentS3Cmd.MarkFlagRequired("contentId")
	updateContentS3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateContentS3Cmd.MarkFlagRequired("namespace")
	updateContentS3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = updateContentS3Cmd.MarkFlagRequired("userId")
}
