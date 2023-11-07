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

// AdminUpdateScreenshotsV2Cmd represents the AdminUpdateScreenshotsV2 command
var AdminUpdateScreenshotsV2Cmd = &cobra.Command{
	Use:   "adminUpdateScreenshotsV2",
	Short: "Admin update screenshots V2",
	Long:  `Admin update screenshots V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateScreenshotRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.AdminUpdateScreenshotsV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := adminContentV2Service.AdminUpdateScreenshotsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateScreenshotsV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateScreenshotsV2Cmd.MarkFlagRequired("body")
	AdminUpdateScreenshotsV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateScreenshotsV2Cmd.MarkFlagRequired("contentId")
	AdminUpdateScreenshotsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateScreenshotsV2Cmd.MarkFlagRequired("namespace")
}
