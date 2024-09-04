// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCopyContentCmd represents the AdminCopyContent command
var AdminCopyContentCmd = &cobra.Command{
	Use:   "adminCopyContent",
	Short: "Admin copy content",
	Long:  `Admin copy content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCopyContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.AdminCopyContentParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		created, errCreated := adminContentV2Service.AdminCopyContentShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCopyContentCmd.Flags().String("body", "", "Body")
	_ = AdminCopyContentCmd.MarkFlagRequired("body")
	AdminCopyContentCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminCopyContentCmd.MarkFlagRequired("channelId")
	AdminCopyContentCmd.Flags().String("contentId", "", "Content id")
	_ = AdminCopyContentCmd.MarkFlagRequired("contentId")
	AdminCopyContentCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCopyContentCmd.MarkFlagRequired("namespace")
}
