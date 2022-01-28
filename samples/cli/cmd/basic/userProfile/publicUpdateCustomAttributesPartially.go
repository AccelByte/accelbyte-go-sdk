// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateCustomAttributesPartiallyCmd represents the PublicUpdateCustomAttributesPartially command
var PublicUpdateCustomAttributesPartiallyCmd = &cobra.Command{
	Use:   "publicUpdateCustomAttributesPartially",
	Short: "Public update custom attributes partially",
	Long:  `Public update custom attributes partially`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicUpdateCustomAttributesPartiallyParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.PublicUpdateCustomAttributesPartially(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicUpdateCustomAttributesPartiallyCmd.Flags().StringP("body", "", " ", "Body")
	PublicUpdateCustomAttributesPartiallyCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PublicUpdateCustomAttributesPartiallyCmd.MarkFlagRequired("namespace")
	PublicUpdateCustomAttributesPartiallyCmd.Flags().StringP("userId", "", " ", "User id")
	_ = PublicUpdateCustomAttributesPartiallyCmd.MarkFlagRequired("userId")
}
