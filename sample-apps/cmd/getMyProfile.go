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

// getMyProfileCmd represents the getMyProfile command
var getMyProfileCmd = &cobra.Command{
	Use:   "getMyProfile",
	Short: "Get personal user profile",
	Long:  `Get personal user profile. Required access token.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userService := service.UserService{
			IamService:      factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			BasicService:    factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
			OauthService: &service.OauthService{
				IamService:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
				ConfigRepository: &repository.ConfigRepositoryImpl{},
				TokenRepository:  &repository.TokenRepositoryImpl{},
			},
		}
		namespace := cmd.Flag("namespace").Value.String()
		profile, err := userService.GetProfile(namespace)
		if err != nil {
			return err
		}
		profileJson, err := json.Marshal(profile)
		if err != nil {
			logrus.Error(err)
			return err
		}
		logrus.Infof("Response: %s", string(profileJson))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getMyProfileCmd)
	getMyProfileCmd.Flags().StringP("namespace", "", "", "User namespace")
	getMyProfileCmd.MarkFlagRequired("namespace")
}
