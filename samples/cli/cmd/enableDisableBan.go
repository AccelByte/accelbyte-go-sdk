// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

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

// enableDisableBanCmd represents the enableDisableBan command
var enableDisableBanCmd = &cobra.Command{
	Use:   "enableDisableBan",
	Short: "Enable disable ban",
	Long:  `Enable disable ban user status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		banId := cmd.Flag("banId").Value.String()
		enable, _ := cmd.Flags().GetBool("enable")
		skipNotif, _ := cmd.Flags().GetBool("skipNotif")
		input := &users.AdminUpdateUserBanV3Params{
			BanID: banId,
			Body: &iamclientmodels.ModelBanUpdateRequest{
				Enabled:   &enable,
				SkipNotif: &skipNotif,
			},
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		users, err := userService.AdminUpdateUserBanV3(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(users, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(enableDisableBanCmd)
	enableDisableBanCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = enableDisableBanCmd.MarkFlagRequired("namespace")
	enableDisableBanCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = enableDisableBanCmd.MarkFlagRequired("userId")
	enableDisableBanCmd.Flags().StringP("banId", "b", "", "Ban ID")
	enableDisableBanCmd.Flags().BoolP("enable", "e", true, "enable. Default true.")
	enableDisableBanCmd.Flags().BoolP("skipNotif", "s", true, "skipNotif. Default true.")
}