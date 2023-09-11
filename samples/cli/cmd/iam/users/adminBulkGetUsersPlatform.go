// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminBulkGetUsersPlatformCmd represents the AdminBulkGetUsersPlatform command
var AdminBulkGetUsersPlatformCmd = &cobra.Command{
	Use:   "adminBulkGetUsersPlatform",
	Short: "Admin bulk get users platform",
	Long:  `Admin bulk get users platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminBulkGetUsersPlatformParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminBulkGetUsersPlatformShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminBulkGetUsersPlatformCmd.Flags().String("body", "", "Body")
	_ = AdminBulkGetUsersPlatformCmd.MarkFlagRequired("body")
	AdminBulkGetUsersPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkGetUsersPlatformCmd.MarkFlagRequired("namespace")
}
