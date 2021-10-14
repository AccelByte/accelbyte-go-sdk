// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getPublicUserByUserIDCmd represents the getPublicUserByUserIDV3 command
var getPublicUserByUserIDCmd = &cobra.Command{
	Use:   "getPublicUserByUserID",
	Short: "get Public User By User ID",
	Long:  `get Public User By User ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &users.PublicGetUserByUserIDV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		user, err := userService.PublicGetUserByUserIDV3(input)
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
	rootCmd.AddCommand(getPublicUserByUserIDCmd)
	getPublicUserByUserIDCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getPublicUserByUserIDCmd.MarkFlagRequired("namespace")
	getPublicUserByUserIDCmd.Flags().StringP("userId", "u", "", "User ID")

}
