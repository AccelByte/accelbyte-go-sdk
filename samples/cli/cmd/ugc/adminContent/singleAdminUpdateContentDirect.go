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

// singleAdminUpdateContentDirectCmd represents the singleAdminUpdateContentDirect command
var singleAdminUpdateContentDirectCmd = &cobra.Command{
	Use:   "singleAdminUpdateContentDirect",
	Short: "Single admin update content direct",
	Long:  `Single admin update content direct`,
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
		input := &admin_content.SingleAdminUpdateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.SingleAdminUpdateContentDirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminUpdateContentDirectCmd)
	singleAdminUpdateContentDirectCmd.Flags().StringP("body", "by", " ", "Body")
	_ = singleAdminUpdateContentDirectCmd.MarkFlagRequired("body")
	singleAdminUpdateContentDirectCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = singleAdminUpdateContentDirectCmd.MarkFlagRequired("channelId")
	singleAdminUpdateContentDirectCmd.Flags().StringP("contentId", "cd", " ", "Content id")
	_ = singleAdminUpdateContentDirectCmd.MarkFlagRequired("contentId")
	singleAdminUpdateContentDirectCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = singleAdminUpdateContentDirectCmd.MarkFlagRequired("namespace")
}
