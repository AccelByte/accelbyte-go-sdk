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

// PublicUpdateContentV2Cmd represents the PublicUpdateContentV2 command
var PublicUpdateContentV2Cmd = &cobra.Command{
	Use:   "publicUpdateContentV2",
	Short: "Public update content V2",
	Long:  `Public update content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateContentRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.PublicUpdateContentV2Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicContentV2Service.PublicUpdateContentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateContentV2Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdateContentV2Cmd.MarkFlagRequired("body")
	PublicUpdateContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicUpdateContentV2Cmd.MarkFlagRequired("channelId")
	PublicUpdateContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = PublicUpdateContentV2Cmd.MarkFlagRequired("contentId")
	PublicUpdateContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateContentV2Cmd.MarkFlagRequired("namespace")
	PublicUpdateContentV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateContentV2Cmd.MarkFlagRequired("userId")
}
