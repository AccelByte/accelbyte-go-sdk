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

// updateMyZipCodeCmd represents the updateMyZipCode command
var updateMyZipCodeCmd = &cobra.Command{
	Use:   "updateMyZipCode",
	Short: "Update my zip code",
	Long:  `Update my zip code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userZipCodeUpdateString := cmd.Flag("userZipCodeUpdate").Value.String()
		var userZipCodeUpdate *basicclientmodels.UserZipCodeUpdate
		errUserZipCodeUpdate := json.Unmarshal([]byte(userZipCodeUpdateString), &userZipCodeUpdate)
		if errUserZipCodeUpdate != nil {
			return errUserZipCodeUpdate
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_profile.UpdateMyZipCodeParams{
			UserZipCodeUpdate: userZipCodeUpdate,
			Namespace:         namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.UpdateMyZipCode(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateMyZipCodeCmd)
	updateMyZipCodeCmd.Flags().StringP("userZipCodeUpdate", "u", " ", "User zip code update")
	_ = updateMyZipCodeCmd.MarkFlagRequired("userZipCodeUpdate")
	updateMyZipCodeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateMyZipCodeCmd.MarkFlagRequired("namespace")
}
