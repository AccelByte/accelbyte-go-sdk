// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicCreateUserProfileCmd represents the PublicCreateUserProfile command
var PublicCreateUserProfileCmd = &cobra.Command{
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
		created, errCreated := userProfileService.PublicCreateUserProfileShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicCreateUserProfileCmd.Flags().String("body", "", "Body")
	PublicCreateUserProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateUserProfileCmd.MarkFlagRequired("namespace")
	PublicCreateUserProfileCmd.Flags().String("userId", "", "User id")
	_ = PublicCreateUserProfileCmd.MarkFlagRequired("userId")
}
