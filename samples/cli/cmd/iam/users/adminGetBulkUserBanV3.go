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

// AdminGetBulkUserBanV3Cmd represents the AdminGetBulkUserBanV3 command
var AdminGetBulkUserBanV3Cmd = &cobra.Command{
	Use:   "adminGetBulkUserBanV3",
	Short: "Admin get bulk user ban V3",
	Long:  `Admin get bulk user ban V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelGetBulkUserBansRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		banType, _ := cmd.Flags().GetString("banType")
		input := &users.AdminGetBulkUserBanV3Params{
			Body:       body,
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			BanType:    &banType,
		}
		ok, errOK := usersService.AdminGetBulkUserBanV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetBulkUserBanV3Cmd.Flags().String("body", "", "Body")
	_ = AdminGetBulkUserBanV3Cmd.MarkFlagRequired("body")
	AdminGetBulkUserBanV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetBulkUserBanV3Cmd.MarkFlagRequired("namespace")
	AdminGetBulkUserBanV3Cmd.Flags().Bool("activeOnly", false, "Active only")
	AdminGetBulkUserBanV3Cmd.Flags().String("banType", "", "Ban type")
}
