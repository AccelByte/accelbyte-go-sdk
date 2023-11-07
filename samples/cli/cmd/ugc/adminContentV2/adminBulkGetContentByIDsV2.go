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

// AdminBulkGetContentByIDsV2Cmd represents the AdminBulkGetContentByIDsV2 command
var AdminBulkGetContentByIDsV2Cmd = &cobra.Command{
	Use:   "adminBulkGetContentByIDsV2",
	Short: "Admin bulk get content by I ds V2",
	Long:  `Admin bulk get content by I ds V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsAdminGetContentBulkRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content_v2.AdminBulkGetContentByIDsV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminContentV2Service.AdminBulkGetContentByIDsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkGetContentByIDsV2Cmd.Flags().String("body", "", "Body")
	_ = AdminBulkGetContentByIDsV2Cmd.MarkFlagRequired("body")
	AdminBulkGetContentByIDsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkGetContentByIDsV2Cmd.MarkFlagRequired("namespace")
}
