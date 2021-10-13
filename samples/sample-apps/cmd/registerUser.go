// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// registerUserCmd represents the registerUser command
var registerUserCmd = &cobra.Command{
	Use:   "registerUser",
	Short: "Register user",
	Long:  `Register admin or non admin user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		name := cmd.Flag("name").Value.String()
		birthDate := cmd.Flag("birthDate").Value.String()
		country := cmd.Flag("country").Value.String()
		password := cmd.Flag("password").Value.String()
		email := cmd.Flag("email").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		roleId := cmd.Flag("roleId").Value.String()
		logrus.Debugf("Params: %s %s %s %s %s %s", name, birthDate, country, password, email, roleId)
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		user, err := userService.PublicCreateUserV3(namespace, name, birthDate, email, country, password)
		if err != nil {
			return err
		}
		if len(roleId) > 0 {
			err := userService.AdminAddUserRoleV3(namespace, *user.UserID, roleId)
			if err != nil {
				return err
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(registerUserCmd)
	registerUserCmd.Flags().StringP("name", "n", "", "User name")
	_ = registerUserCmd.MarkFlagRequired("name")
	registerUserCmd.Flags().StringP("email", "e", "", "User email")
	_ = registerUserCmd.MarkFlagRequired("email")
	registerUserCmd.Flags().StringP("birthDate", "b", "", "User birthdate")
	_ = registerUserCmd.MarkFlagRequired("birthDate")
	registerUserCmd.Flags().StringP("country", "c", "", "User country")
	_ = registerUserCmd.MarkFlagRequired("country")
	registerUserCmd.Flags().StringP("password", "p", "", "User password")
	_ = registerUserCmd.MarkFlagRequired("password")
	registerUserCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = registerUserCmd.MarkFlagRequired("namespace")
	registerUserCmd.Flags().StringP("roleId", "", "", "Additional user role. If you want to register admin, put admin role id in this option.")
}
