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

// PublicUpdateContentByShareCodeCmd represents the PublicUpdateContentByShareCode command
var PublicUpdateContentByShareCodeCmd = &cobra.Command{
	Use:   "publicUpdateContentByShareCode",
	Short: "Public update content by share code",
	Long:  `Public update content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.PublicUpdateContentByShareCodeParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		ok, errOK := publicContentLegacyService.PublicUpdateContentByShareCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateContentByShareCodeCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateContentByShareCodeCmd.MarkFlagRequired("body")
	PublicUpdateContentByShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = PublicUpdateContentByShareCodeCmd.MarkFlagRequired("channelId")
	PublicUpdateContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateContentByShareCodeCmd.MarkFlagRequired("namespace")
	PublicUpdateContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = PublicUpdateContentByShareCodeCmd.MarkFlagRequired("shareCode")
	PublicUpdateContentByShareCodeCmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateContentByShareCodeCmd.MarkFlagRequired("userId")
}
