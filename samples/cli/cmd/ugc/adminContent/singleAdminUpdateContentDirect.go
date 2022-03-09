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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminUpdateContentDirectCmd represents the SingleAdminUpdateContentDirect command
var SingleAdminUpdateContentDirectCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	SingleAdminUpdateContentDirectCmd.Flags().StringP("body", "", "", "Body")
	_ = SingleAdminUpdateContentDirectCmd.MarkFlagRequired("body")
	SingleAdminUpdateContentDirectCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = SingleAdminUpdateContentDirectCmd.MarkFlagRequired("channelId")
	SingleAdminUpdateContentDirectCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = SingleAdminUpdateContentDirectCmd.MarkFlagRequired("contentId")
	SingleAdminUpdateContentDirectCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminUpdateContentDirectCmd.MarkFlagRequired("namespace")
}
