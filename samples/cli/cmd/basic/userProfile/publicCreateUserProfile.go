// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCreateUserProfileCmd represents the publicCreateUserProfile command
var publicCreateUserProfileCmd = &cobra.Command{
	Use:   "publicCreateUserProfile",
	Short: "Public create user profile",
	Long:  `Public create user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicCreateUserProfileParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.PublicCreateUserProfile(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCreateUserProfileCmd)
	publicCreateUserProfileCmd.Flags().StringP("body", "by", " ", "Body")
	publicCreateUserProfileCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicCreateUserProfileCmd.MarkFlagRequired("namespace")
	publicCreateUserProfileCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicCreateUserProfileCmd.MarkFlagRequired("userId")
}
