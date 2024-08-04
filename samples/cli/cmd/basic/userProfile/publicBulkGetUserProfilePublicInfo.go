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

// PublicBulkGetUserProfilePublicInfoCmd represents the PublicBulkGetUserProfilePublicInfo command
var PublicBulkGetUserProfilePublicInfoCmd = &cobra.Command{
	Use:   "publicBulkGetUserProfilePublicInfo",
	Short: "Public bulk get user profile public info",
	Long:  `Public bulk get user profile public info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileBulkRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicBulkGetUserProfilePublicInfoParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userProfileService.PublicBulkGetUserProfilePublicInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkGetUserProfilePublicInfoCmd.Flags().String("body", "", "Body")
	PublicBulkGetUserProfilePublicInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkGetUserProfilePublicInfoCmd.MarkFlagRequired("namespace")
}
