// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicForceLinkPlatformWithProgressionCmd represents the PublicForceLinkPlatformWithProgression command
var PublicForceLinkPlatformWithProgressionCmd = &cobra.Command{
	Use:   "publicForceLinkPlatformWithProgression",
	Short: "Public force link platform with progression",
	Long:  `Public force link platform with progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelLinkPlatformAccountWithProgressionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicForceLinkPlatformWithProgressionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.PublicForceLinkPlatformWithProgressionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicForceLinkPlatformWithProgressionCmd.Flags().String("body", "", "Body")
	_ = PublicForceLinkPlatformWithProgressionCmd.MarkFlagRequired("body")
	PublicForceLinkPlatformWithProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicForceLinkPlatformWithProgressionCmd.MarkFlagRequired("namespace")
	PublicForceLinkPlatformWithProgressionCmd.Flags().String("userId", "", "User id")
	_ = PublicForceLinkPlatformWithProgressionCmd.MarkFlagRequired("userId")
}
