// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicQueryMyPartiesCmd represents the PublicQueryMyParties command
var PublicQueryMyPartiesCmd = &cobra.Command{
	Use:   "publicQueryMyParties",
	Short: "Public query my parties",
	Long:  `Public query my parties`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		status, _ := cmd.Flags().GetString("status")
		input := &party.PublicQueryMyPartiesParams{
			Namespace: namespace,
			Order:     &order,
			OrderBy:   &orderBy,
			Status:    &status,
		}
		ok, errOK := partyService.PublicQueryMyPartiesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryMyPartiesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryMyPartiesCmd.MarkFlagRequired("namespace")
	PublicQueryMyPartiesCmd.Flags().String("order", "", "Order")
	PublicQueryMyPartiesCmd.Flags().String("orderBy", "", "Order by")
	PublicQueryMyPartiesCmd.Flags().String("status", "", "Status")
}
