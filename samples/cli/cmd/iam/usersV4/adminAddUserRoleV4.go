// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminAddUserRoleV4Cmd represents the AdminAddUserRoleV4 command
var AdminAddUserRoleV4Cmd = &cobra.Command{
	Use:   "adminAddUserRoleV4",
	Short: "Admin add user role V4",
	Long:  `Admin add user role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelAddUserRoleV4Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminAddUserRoleV4Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersV4Service.AdminAddUserRoleV4Short(input)
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
	AdminAddUserRoleV4Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminAddUserRoleV4Cmd.MarkFlagRequired("body")
	AdminAddUserRoleV4Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminAddUserRoleV4Cmd.MarkFlagRequired("namespace")
	AdminAddUserRoleV4Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminAddUserRoleV4Cmd.MarkFlagRequired("userId")
}
