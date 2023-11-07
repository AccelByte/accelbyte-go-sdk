// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGenerateContentUploadURLV2Cmd represents the PublicGenerateContentUploadURLV2 command
var PublicGenerateContentUploadURLV2Cmd = &cobra.Command{
	Use:   "publicGenerateContentUploadURLV2",
	Short: "Public generate content upload URLV2",
	Long:  `Public generate content upload URLV2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsGenerateContentUploadURLRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.PublicGenerateContentUploadURLV2Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicContentV2Service.PublicGenerateContentUploadURLV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGenerateContentUploadURLV2Cmd.Flags().String("body", "", "Body")
	_ = PublicGenerateContentUploadURLV2Cmd.MarkFlagRequired("body")
	PublicGenerateContentUploadURLV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicGenerateContentUploadURLV2Cmd.MarkFlagRequired("channelId")
	PublicGenerateContentUploadURLV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicGenerateContentUploadURLV2Cmd.MarkFlagRequired("contentId")
	PublicGenerateContentUploadURLV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGenerateContentUploadURLV2Cmd.MarkFlagRequired("namespace")
	PublicGenerateContentUploadURLV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicGenerateContentUploadURLV2Cmd.MarkFlagRequired("userId")
}
