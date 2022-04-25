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

// CreateMyProfileCmd represents the CreateMyProfile command
var CreateMyProfileCmd = &cobra.Command{
	Use:   "createMyProfile",
	Short: "Create my profile",
	Long:  `Create my profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfilePrivateCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.CreateMyProfileParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := userProfileService.CreateMyProfileShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	CreateMyProfileCmd.Flags().StringP("body", "", "", "Body")
	CreateMyProfileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateMyProfileCmd.MarkFlagRequired("namespace")
}
