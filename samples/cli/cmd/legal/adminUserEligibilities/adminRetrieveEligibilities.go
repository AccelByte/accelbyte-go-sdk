// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminRetrieveEligibilitiesCmd represents the adminRetrieveEligibilities command
var adminRetrieveEligibilitiesCmd = &cobra.Command{
	Use:   "adminRetrieveEligibilities",
	Short: "Admin retrieve eligibilities",
	Long:  `Admin retrieve eligibilities`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminUserEligibilitiesService := &legal.AdminUserEligibilitiesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		clientId, _ := cmd.Flags().GetString("clientId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		publisherUserId, _ := cmd.Flags().GetString("publisherUserId")
		input := &admin_user_eligibilities.AdminRetrieveEligibilitiesParams{
			Namespace:       namespace,
			UserID:          userId,
			PublisherUserID: &publisherUserId,
			ClientID:        clientId,
			CountryCode:     countryCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminUserEligibilitiesService.AdminRetrieveEligibilities(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminRetrieveEligibilitiesCmd)
	adminRetrieveEligibilitiesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminRetrieveEligibilitiesCmd.MarkFlagRequired("namespace")
	adminRetrieveEligibilitiesCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminRetrieveEligibilitiesCmd.MarkFlagRequired("userId")
	adminRetrieveEligibilitiesCmd.Flags().StringP("publisherUserId", "p", " ", "Publisher user id")
	adminRetrieveEligibilitiesCmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = adminRetrieveEligibilitiesCmd.MarkFlagRequired("clientId")
	adminRetrieveEligibilitiesCmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = adminRetrieveEligibilitiesCmd.MarkFlagRequired("countryCode")
}
