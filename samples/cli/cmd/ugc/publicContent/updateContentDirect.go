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

// updateContentDirectCmd represents the updateContentDirect command
var updateContentDirectCmd = &cobra.Command{
	Use:   "updateContentDirect",
	Short: "Update content direct",
	Long:  `Update content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.UpdateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.UpdateContentDirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateContentDirectCmd)
	updateContentDirectCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateContentDirectCmd.MarkFlagRequired("body")
	updateContentDirectCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = updateContentDirectCmd.MarkFlagRequired("channelId")
	updateContentDirectCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = updateContentDirectCmd.MarkFlagRequired("contentId")
	updateContentDirectCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateContentDirectCmd.MarkFlagRequired("namespace")
	updateContentDirectCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = updateContentDirectCmd.MarkFlagRequired("userId")
}
