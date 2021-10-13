// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateAdminUserCmd represents the updateAdminUser command
var updateAdminUserCmd = &cobra.Command{
	Use:   "updateAdminUser",
	Short: "update Admin User",
	Long:  `update Admin User`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		country := cmd.Flag("country").Value.String()
		dateOfBirth := cmd.Flag("dateOfBirth").Value.String()
		displayName := cmd.Flag("displayName").Value.String()
		languageTag := cmd.Flag("languageTag").Value.String()
		userName := cmd.Flag("userName").Value.String()
		userService := &service.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		user, err := userService.AdminUpdateUserV3(namespace, userId, country, dateOfBirth, displayName, languageTag, userName)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(user, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateAdminUserCmd)
	updateAdminUserCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = updateAdminUserCmd.MarkFlagRequired("namespace")
	updateAdminUserCmd.Flags().StringP("userId", "u", "", "User ID")
	updateAdminUserCmd.Flags().StringP("country", "c", "", "User country")
	_ = updateAdminUserCmd.MarkFlagRequired("country")
	updateAdminUserCmd.Flags().StringP("dateOfBirth", "b", "", "User dateOfBirth")
	_ = updateAdminUserCmd.MarkFlagRequired("dateOfBirth")
	updateAdminUserCmd.Flags().StringP("displayName", "d", "", "User displayName")
	_ = updateAdminUserCmd.MarkFlagRequired("displayName")
	updateAdminUserCmd.Flags().StringP("languageTag", "l", "", "User languageTag")
	_ = updateAdminUserCmd.MarkFlagRequired("languageTag")
	updateAdminUserCmd.Flags().StringP("userName", "", "", "User userName")
	_ = updateAdminUserCmd.MarkFlagRequired("userName")
}
