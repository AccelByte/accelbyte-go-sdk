// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBanUserBulkV3Cmd represents the AdminBanUserBulkV3 command
var AdminBanUserBulkV3Cmd = &cobra.Command{
	Use:   "adminBanUserBulkV3",
	Short: "Admin ban user bulk V3",
	Long:  `Admin ban user bulk V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelBulkBanCreateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &bans.AdminBanUserBulkV3Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := bansService.AdminBanUserBulkV3Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminBanUserBulkV3Cmd.Flags().String("body", "", "Body")
	_ = AdminBanUserBulkV3Cmd.MarkFlagRequired("body")
	AdminBanUserBulkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBanUserBulkV3Cmd.MarkFlagRequired("namespace")
}
