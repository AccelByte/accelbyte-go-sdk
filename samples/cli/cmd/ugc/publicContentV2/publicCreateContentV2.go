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

// PublicCreateContentV2Cmd represents the PublicCreateContentV2 command
var PublicCreateContentV2Cmd = &cobra.Command{
	Use:   "publicCreateContentV2",
	Short: "Public create content V2",
	Long:  `Public create content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsContentRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.PublicCreateContentV2Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := publicContentV2Service.PublicCreateContentV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicCreateContentV2Cmd.Flags().String("body", "", "Body")
	_ = PublicCreateContentV2Cmd.MarkFlagRequired("body")
	PublicCreateContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicCreateContentV2Cmd.MarkFlagRequired("channelId")
	PublicCreateContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateContentV2Cmd.MarkFlagRequired("namespace")
	PublicCreateContentV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicCreateContentV2Cmd.MarkFlagRequired("userId")
}
