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

// AdminUpdateUserContentV2Cmd represents the AdminUpdateUserContentV2 command
var AdminUpdateUserContentV2Cmd = &cobra.Command{
	Use:   "adminUpdateUserContentV2",
	Short: "Admin update user content V2",
	Long:  `Admin update user content V2`,
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
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminUpdateUserContentV2Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminContentV2Service.AdminUpdateUserContentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateUserContentV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserContentV2Cmd.MarkFlagRequired("body")
	AdminUpdateUserContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateUserContentV2Cmd.MarkFlagRequired("channelId")
	AdminUpdateUserContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateUserContentV2Cmd.MarkFlagRequired("contentId")
	AdminUpdateUserContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserContentV2Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserContentV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserContentV2Cmd.MarkFlagRequired("userId")
}
