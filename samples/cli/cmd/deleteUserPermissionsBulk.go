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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserPermissionsBulkCmd represents the deleteUserPermissionsBulk command
var deleteUserPermissionsBulkCmd = &cobra.Command{
	Use:   "deleteUserPermissionsBulk",
	Short: "delete user permissionsBulk",
	Long:  `delete user permissionsBulk`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		bodyString := cmd.Flag("body").Value.String()
		var body []*iamclientmodels.ModelPermissionDeleteRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users.AdminDeleteUserPermissionBulkV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := userService.AdminDeleteUserPermissionBulkV3(input)
		if err != nil {
			return err
		}
		logrus.Info("User permissions bulk successfully deleted")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(deleteUserPermissionsBulkCmd)
	deleteUserPermissionsBulkCmd.Flags().StringP("namespace", "n", "", "User Namespace")
	deleteUserPermissionsBulkCmd.Flags().StringP("userId", "u", "", "User ID")
	deleteUserPermissionsBulkCmd.Flags().StringP("body", "b", "", "Role's permissionsBulk body. In json format, example: '{\"key1\", \"value1\"}'")
	_ = deleteUserPermissionsBulkCmd.MarkFlagRequired("body")
}
