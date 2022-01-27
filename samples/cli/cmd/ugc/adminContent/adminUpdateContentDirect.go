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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateContentDirectCmd represents the adminUpdateContentDirect command
var adminUpdateContentDirectCmd = &cobra.Command{
	Use:   "adminUpdateContentDirect",
	Short: "Admin update content direct",
	Long:  `Admin update content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
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
		input := &admin_content.AdminUpdateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminUpdateContentDirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateContentDirectCmd)
	adminUpdateContentDirectCmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateContentDirectCmd.MarkFlagRequired("body")
	adminUpdateContentDirectCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = adminUpdateContentDirectCmd.MarkFlagRequired("channelId")
	adminUpdateContentDirectCmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = adminUpdateContentDirectCmd.MarkFlagRequired("contentId")
	adminUpdateContentDirectCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateContentDirectCmd.MarkFlagRequired("namespace")
	adminUpdateContentDirectCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminUpdateContentDirectCmd.MarkFlagRequired("userId")
}
