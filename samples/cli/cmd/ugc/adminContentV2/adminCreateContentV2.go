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

// AdminCreateContentV2Cmd represents the AdminCreateContentV2 command
var AdminCreateContentV2Cmd = &cobra.Command{
	Use:   "adminCreateContentV2",
	Short: "Admin create content V2",
	Long:  `Admin create content V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsAdminContentRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.AdminCreateContentV2Params{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
		}
		created, errCreated := adminContentV2Service.AdminCreateContentV2Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateContentV2Cmd.Flags().String("body", "", "Body")
	_ = AdminCreateContentV2Cmd.MarkFlagRequired("body")
	AdminCreateContentV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminCreateContentV2Cmd.MarkFlagRequired("channelId")
	AdminCreateContentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateContentV2Cmd.MarkFlagRequired("namespace")
}
