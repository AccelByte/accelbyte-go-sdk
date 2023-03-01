// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// AdminUploadContentDirectCmd represents the AdminUploadContentDirect command
var AdminUploadContentDirectCmd = &cobra.Command{
	Use:   "adminUploadContentDirect",
	Short: "Admin upload content direct",
	Long:  `Admin upload content direct`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.AdminUploadContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
		}
		created, errCreated := adminContentService.AdminUploadContentDirectShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminUploadContentDirectCmd.Flags().String("body", "", "Body")
	_ = AdminUploadContentDirectCmd.MarkFlagRequired("body")
	AdminUploadContentDirectCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUploadContentDirectCmd.MarkFlagRequired("channelId")
	AdminUploadContentDirectCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUploadContentDirectCmd.MarkFlagRequired("namespace")
}
