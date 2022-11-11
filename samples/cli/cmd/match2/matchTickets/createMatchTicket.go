// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchTickets

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateMatchTicketCmd represents the CreateMatchTicket command
var CreateMatchTicketCmd = &cobra.Command{
	Use:   "createMatchTicket",
	Short: "Create match ticket",
	Long:  `Create match ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchTicketsService := &match2.MatchTicketsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchTicketRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_tickets.CreateMatchTicketParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := matchTicketsService.CreateMatchTicketShort(input)
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
	CreateMatchTicketCmd.Flags().String("body", "", "Body")
	_ = CreateMatchTicketCmd.MarkFlagRequired("body")
	CreateMatchTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateMatchTicketCmd.MarkFlagRequired("namespace")
}
