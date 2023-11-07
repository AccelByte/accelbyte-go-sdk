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

// AdminUpdateUserContentFileLocationCmd represents the AdminUpdateUserContentFileLocation command
var AdminUpdateUserContentFileLocationCmd = &cobra.Command{
	Use:   "adminUpdateUserContentFileLocation",
	Short: "Admin update user content file location",
	Long:  `Admin update user content file location`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateFileLocationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminUpdateUserContentFileLocationParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminContentV2Service.AdminUpdateUserContentFileLocationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateUserContentFileLocationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserContentFileLocationCmd.MarkFlagRequired("body")
	AdminUpdateUserContentFileLocationCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateUserContentFileLocationCmd.MarkFlagRequired("channelId")
	AdminUpdateUserContentFileLocationCmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateUserContentFileLocationCmd.MarkFlagRequired("contentId")
	AdminUpdateUserContentFileLocationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserContentFileLocationCmd.MarkFlagRequired("namespace")
	AdminUpdateUserContentFileLocationCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserContentFileLocationCmd.MarkFlagRequired("userId")
}
