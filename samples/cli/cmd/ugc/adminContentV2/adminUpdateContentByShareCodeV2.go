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

// AdminUpdateContentByShareCodeV2Cmd represents the AdminUpdateContentByShareCodeV2 command
var AdminUpdateContentByShareCodeV2Cmd = &cobra.Command{
	Use:   "adminUpdateContentByShareCodeV2",
	Short: "Admin update content by share code V2",
	Long:  `Admin update content by share code V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsAdminUpdateContentRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminUpdateContentByShareCodeV2Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		ok, errOK := adminContentV2Service.AdminUpdateContentByShareCodeV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateContentByShareCodeV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateContentByShareCodeV2Cmd.MarkFlagRequired("body")
	AdminUpdateContentByShareCodeV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateContentByShareCodeV2Cmd.MarkFlagRequired("channelId")
	AdminUpdateContentByShareCodeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateContentByShareCodeV2Cmd.MarkFlagRequired("namespace")
	AdminUpdateContentByShareCodeV2Cmd.Flags().String("shareCode", "", "Share code")
	_ = AdminUpdateContentByShareCodeV2Cmd.MarkFlagRequired("shareCode")
	AdminUpdateContentByShareCodeV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateContentByShareCodeV2Cmd.MarkFlagRequired("userId")
}
