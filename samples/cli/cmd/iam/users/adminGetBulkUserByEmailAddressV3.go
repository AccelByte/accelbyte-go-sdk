// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetBulkUserByEmailAddressV3Cmd represents the adminGetBulkUserByEmailAddressV3 command
var adminGetBulkUserByEmailAddressV3Cmd = &cobra.Command{
	Use:   "adminGetBulkUserByEmailAddressV3",
	Short: "Admin get bulk user by email address V3",
	Long:  `Admin get bulk user by email address V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelListEmailAddressRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetBulkUserByEmailAddressV3Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminGetBulkUserByEmailAddressV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetBulkUserByEmailAddressV3Cmd)
	adminGetBulkUserByEmailAddressV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminGetBulkUserByEmailAddressV3Cmd.MarkFlagRequired("body")
	adminGetBulkUserByEmailAddressV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetBulkUserByEmailAddressV3Cmd.MarkFlagRequired("namespace")
}
