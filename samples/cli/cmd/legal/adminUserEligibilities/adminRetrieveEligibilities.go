// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminUserEligibilities

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/admin_user_eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRetrieveEligibilitiesCmd represents the AdminRetrieveEligibilities command
var AdminRetrieveEligibilitiesCmd = &cobra.Command{
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
		ok, err := adminUserEligibilitiesService.AdminRetrieveEligibilitiesShort(input)
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
	AdminRetrieveEligibilitiesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminRetrieveEligibilitiesCmd.MarkFlagRequired("namespace")
	AdminRetrieveEligibilitiesCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminRetrieveEligibilitiesCmd.MarkFlagRequired("userId")
	AdminRetrieveEligibilitiesCmd.Flags().StringP("publisherUserId", "", "", "Publisher user id")
	AdminRetrieveEligibilitiesCmd.Flags().StringP("clientId", "", "", "Client id")
	_ = AdminRetrieveEligibilitiesCmd.MarkFlagRequired("clientId")
	AdminRetrieveEligibilitiesCmd.Flags().StringP("countryCode", "", "", "Country code")
	_ = AdminRetrieveEligibilitiesCmd.MarkFlagRequired("countryCode")
}
