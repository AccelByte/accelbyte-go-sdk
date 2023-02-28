// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/backfill"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetBackfillProposalCmd represents the GetBackfillProposal command
var GetBackfillProposalCmd = &cobra.Command{
	Use:   "getBackfillProposal",
	Short: "Get backfill proposal",
	Long:  `Get backfill proposal`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &backfill.GetBackfillProposalParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		ok, errOK := backfillService.GetBackfillProposalShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetBackfillProposalCmd.Flags().String("namespace", "", "Namespace")
	_ = GetBackfillProposalCmd.MarkFlagRequired("namespace")
	GetBackfillProposalCmd.Flags().String("sessionID", "", "Session ID")
	_ = GetBackfillProposalCmd.MarkFlagRequired("sessionID")
}
