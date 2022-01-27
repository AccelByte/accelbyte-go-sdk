// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminBanUserV2Cmd represents the AdminBanUserV2 command
var AdminBanUserV2Cmd = &cobra.Command{
	Use:   "AdminBanUserV2",
	Short: "Admin ban user V2",
	Long:  `Admin ban user V2`,
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
		input := &users.AdminBanUserV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminBanUserV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminBanUserV2Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = AdminBanUserV2Cmd.MarkFlagRequired("body")
	AdminBanUserV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminBanUserV2Cmd.MarkFlagRequired("namespace")
	AdminBanUserV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminBanUserV2Cmd.MarkFlagRequired("userId")
}
