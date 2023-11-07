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

// AdminUpdateContentHideStatusV2Cmd represents the AdminUpdateContentHideStatusV2 command
var AdminUpdateContentHideStatusV2Cmd = &cobra.Command{
	Use:   "adminUpdateContentHideStatusV2",
	Short: "Admin update content hide status V2",
	Long:  `Admin update content hide status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsHideContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminUpdateContentHideStatusV2Params{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminContentV2Service.AdminUpdateContentHideStatusV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateContentHideStatusV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateContentHideStatusV2Cmd.MarkFlagRequired("body")
	AdminUpdateContentHideStatusV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminUpdateContentHideStatusV2Cmd.MarkFlagRequired("contentId")
	AdminUpdateContentHideStatusV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateContentHideStatusV2Cmd.MarkFlagRequired("namespace")
	AdminUpdateContentHideStatusV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateContentHideStatusV2Cmd.MarkFlagRequired("userId")
}
