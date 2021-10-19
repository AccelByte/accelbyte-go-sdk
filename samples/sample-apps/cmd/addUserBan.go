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

// addUserBanCmd represents the addUserBan command
var addUserBanCmd = &cobra.Command{
	Use:   "addUserBan",
	Short: "Add user ban",
	Long:  `Add user ban`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		ban := cmd.Flag("ban").Value.String()
		comment := cmd.Flag("comment").Value.String()
		endDate := cmd.Flag("endDate").Value.String()
		reason := cmd.Flag("reason").Value.String()
		skipNotif, _ := cmd.Flags().GetBool("skipNotif")
		input := &users.AdminBanUserV3Params{
			Body: &iamclientmodels.ModelBanCreateRequest{
				Ban:       &ban,
				Comment:   &comment,
				EndDate:   &endDate,
				Reason:    &reason,
				SkipNotif: &skipNotif,
			},
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		users, err := userService.AdminBanUserV3(input)
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
	rootCmd.AddCommand(addUserBanCmd)
	addUserBanCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = addUserBanCmd.MarkFlagRequired("userId")
	addUserBanCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = addUserBanCmd.MarkFlagRequired("namespace")
	addUserBanCmd.Flags().StringP("ban", "b", "", "Ban")
	addUserBanCmd.Flags().StringP("comment", "c", "", "Comment")
	addUserBanCmd.Flags().StringP("endDate", "e", "", "End Date. Example 2021-08-05T06:35:54.106Z")
	addUserBanCmd.Flags().StringP("reason", "r", "", "Reason")
	addUserBanCmd.Flags().BoolP("skipNotif", "s", true, "skipNotif. Default true.")
}
