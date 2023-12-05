// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateContentShareCodeCmd represents the UpdateContentShareCode command
var UpdateContentShareCodeCmd = &cobra.Command{
	Use:   "updateContentShareCode",
	Short: "Update content share code",
	Long:  `Update content share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateContentShareCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.UpdateContentShareCodeParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicContentLegacyService.UpdateContentShareCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateContentShareCodeCmd.Flags().String("body", "", "Body")
	_ = UpdateContentShareCodeCmd.MarkFlagRequired("body")
	UpdateContentShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = UpdateContentShareCodeCmd.MarkFlagRequired("channelId")
	UpdateContentShareCodeCmd.Flags().String("contentId", "", "Content id")
	_ = UpdateContentShareCodeCmd.MarkFlagRequired("contentId")
	UpdateContentShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateContentShareCodeCmd.MarkFlagRequired("namespace")
	UpdateContentShareCodeCmd.Flags().String("userId", "", "User id")
	_ = UpdateContentShareCodeCmd.MarkFlagRequired("userId")
}
