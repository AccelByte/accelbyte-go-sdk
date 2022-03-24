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

// AdminUpdateContentDirectCmd represents the AdminUpdateContentDirect command
var AdminUpdateContentDirectCmd = &cobra.Command{
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
		ok, err := adminContentService.AdminUpdateContentDirectShort(input)
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
	AdminUpdateContentDirectCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("body")
	AdminUpdateContentDirectCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("channelId")
	AdminUpdateContentDirectCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("contentId")
	AdminUpdateContentDirectCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("namespace")
	AdminUpdateContentDirectCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminUpdateContentDirectCmd.MarkFlagRequired("userId")
}
