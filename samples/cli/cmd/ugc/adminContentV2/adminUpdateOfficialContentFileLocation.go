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

// AdminUpdateOfficialContentFileLocationCmd represents the AdminUpdateOfficialContentFileLocation command
var AdminUpdateOfficialContentFileLocationCmd = &cobra.Command{
	Use:   "adminUpdateOfficialContentFileLocation",
	Short: "Admin update official content file location",
	Long:  `Admin update official content file location`,
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
		input := &admin_content_v2.AdminUpdateOfficialContentFileLocationParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentV2Service.AdminUpdateOfficialContentFileLocationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateOfficialContentFileLocationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateOfficialContentFileLocationCmd.MarkFlagRequired("body")
	AdminUpdateOfficialContentFileLocationCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminUpdateOfficialContentFileLocationCmd.MarkFlagRequired("channelId")
	AdminUpdateOfficialContentFileLocationCmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateOfficialContentFileLocationCmd.MarkFlagRequired("contentId")
	AdminUpdateOfficialContentFileLocationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateOfficialContentFileLocationCmd.MarkFlagRequired("namespace")
}
