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

// AdminUpdateOfficialContentV2Cmd represents the AdminUpdateOfficialContentV2 command
var AdminUpdateOfficialContentV2Cmd = &cobra.Command{
	Use:   "adminUpdateOfficialContentV2",
	Short: "Admin update official content V2",
	Long:  `Admin update official content V2`,
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
		input := &admin_content_v2.AdminUpdateOfficialContentV2Params{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentV2Service.AdminUpdateOfficialContentV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateOfficialContentV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateOfficialContentV2Cmd.MarkFlagRequired("body")
	AdminUpdateOfficialContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateOfficialContentV2Cmd.MarkFlagRequired("channelId")
	AdminUpdateOfficialContentV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateOfficialContentV2Cmd.MarkFlagRequired("contentId")
	AdminUpdateOfficialContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateOfficialContentV2Cmd.MarkFlagRequired("namespace")
}
