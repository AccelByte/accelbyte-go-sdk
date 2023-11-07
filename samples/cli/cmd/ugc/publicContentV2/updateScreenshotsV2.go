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

// UpdateScreenshotsV2Cmd represents the UpdateScreenshotsV2 command
var UpdateScreenshotsV2Cmd = &cobra.Command{
	Use:   "updateScreenshotsV2",
	Short: "Update screenshots V2",
	Long:  `Update screenshots V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.UpdateScreenshotsV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicContentV2Service.UpdateScreenshotsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateScreenshotsV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateScreenshotsV2Cmd.MarkFlagRequired("body")
	UpdateScreenshotsV2Cmd.Flags().String("contentId", "", "Content id")
	_ = UpdateScreenshotsV2Cmd.MarkFlagRequired("contentId")
	UpdateScreenshotsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateScreenshotsV2Cmd.MarkFlagRequired("namespace")
	UpdateScreenshotsV2Cmd.Flags().String("userId", "", "User id")
	_ = UpdateScreenshotsV2Cmd.MarkFlagRequired("userId")
}
