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

// AdminQueryPartiesCmd represents the AdminQueryParties command
var AdminQueryPartiesCmd = &cobra.Command{
	Use:   "adminQueryParties",
	Short: "Admin query parties",
	Long:  `Admin query parties`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isSoftDeleted, _ := cmd.Flags().GetString("isSoftDeleted")
		joinability, _ := cmd.Flags().GetString("joinability")
		key, _ := cmd.Flags().GetString("key")
		leaderID, _ := cmd.Flags().GetString("leaderID")
		limit, _ := cmd.Flags().GetInt64("limit")
		memberID, _ := cmd.Flags().GetString("memberID")
		memberStatus, _ := cmd.Flags().GetString("memberStatus")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		orderBy, _ := cmd.Flags().GetString("orderBy")
		partyID, _ := cmd.Flags().GetString("partyID")
		value, _ := cmd.Flags().GetString("value")
		input := &party.AdminQueryPartiesParams{
			Namespace:     namespace,
			IsSoftDeleted: &isSoftDeleted,
			Joinability:   &joinability,
			Key:           &key,
			LeaderID:      &leaderID,
			Limit:         &limit,
			MemberID:      &memberID,
			MemberStatus:  &memberStatus,
			Offset:        &offset,
			Order:         &order,
			OrderBy:       &orderBy,
			PartyID:       &partyID,
			Value:         &value,
		}
		ok, errOK := partyService.AdminQueryPartiesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryPartiesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryPartiesCmd.MarkFlagRequired("namespace")
	AdminQueryPartiesCmd.Flags().String("isSoftDeleted", "", "Is soft deleted")
	AdminQueryPartiesCmd.Flags().String("joinability", "", "Joinability")
	AdminQueryPartiesCmd.Flags().String("key", "", "Key")
	AdminQueryPartiesCmd.Flags().String("leaderID", "", "Leader ID")
	AdminQueryPartiesCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryPartiesCmd.Flags().String("memberID", "", "Member ID")
	AdminQueryPartiesCmd.Flags().String("memberStatus", "", "Member status")
	AdminQueryPartiesCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryPartiesCmd.Flags().String("order", "", "Order")
	AdminQueryPartiesCmd.Flags().String("orderBy", "", "Order by")
	AdminQueryPartiesCmd.Flags().String("partyID", "", "Party ID")
	AdminQueryPartiesCmd.Flags().String("value", "", "Value")
}
