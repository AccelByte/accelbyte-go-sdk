// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// publicUpdateUserProfileStatusCmd represents the publicUpdateUserProfileStatus command
var publicUpdateUserProfileStatusCmd = &cobra.Command{
	Use:   "publicUpdateUserProfileStatus",
	Short: "Public update user profile status",
	Long:  `Public update user profile status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileStatusUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicUpdateUserProfileStatusParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.PublicUpdateUserProfileStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdateUserProfileStatusCmd)
	publicUpdateUserProfileStatusCmd.Flags().StringP("body", "b", " ", "Body")
	publicUpdateUserProfileStatusCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicUpdateUserProfileStatusCmd.MarkFlagRequired("namespace")
	publicUpdateUserProfileStatusCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicUpdateUserProfileStatusCmd.MarkFlagRequired("userId")
}