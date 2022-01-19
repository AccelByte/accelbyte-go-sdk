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

// createContentS3Cmd represents the createContentS3 command
var createContentS3Cmd = &cobra.Command{
	Use:   "createContentS3",
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
	cmd.RootCmd.AddCommand(createContentS3Cmd)
	createContentS3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = createContentS3Cmd.MarkFlagRequired("body")
	createContentS3Cmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = createContentS3Cmd.MarkFlagRequired("channelId")
	createContentS3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = createContentS3Cmd.MarkFlagRequired("namespace")
	createContentS3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = createContentS3Cmd.MarkFlagRequired("userId")
}
