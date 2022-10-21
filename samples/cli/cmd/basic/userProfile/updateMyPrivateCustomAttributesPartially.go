// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// UpdateMyPrivateCustomAttributesPartiallyCmd represents the UpdateMyPrivateCustomAttributesPartially command
var UpdateMyPrivateCustomAttributesPartiallyCmd = &cobra.Command{
	Use:   "updateMyPrivateCustomAttributesPartially",
	Short: "Update my private custom attributes partially",
	Long:  `Update my private custom attributes partially`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.UpdateMyPrivateCustomAttributesPartiallyParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := userProfileService.UpdateMyPrivateCustomAttributesPartiallyShort(input)
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
	UpdateMyPrivateCustomAttributesPartiallyCmd.Flags().String("body", "", "Body")
	UpdateMyPrivateCustomAttributesPartiallyCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMyPrivateCustomAttributesPartiallyCmd.MarkFlagRequired("namespace")
}