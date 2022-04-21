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

// AdminBanUserV3Cmd represents the AdminBanUserV3 command
var AdminBanUserV3Cmd = &cobra.Command{
	Use:   "adminBanUserV3",
	Short: "Admin ban user V3",
	Long:  `Admin ban user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelBanCreateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminBanUserV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersService.AdminBanUserV3Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminBanUserV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminBanUserV3Cmd.MarkFlagRequired("body")
	AdminBanUserV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminBanUserV3Cmd.MarkFlagRequired("namespace")
	AdminBanUserV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminBanUserV3Cmd.MarkFlagRequired("userId")
}
