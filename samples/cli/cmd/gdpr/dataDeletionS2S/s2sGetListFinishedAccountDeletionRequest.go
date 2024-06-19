// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletionS2S

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_s2_s"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// S2SGetListFinishedAccountDeletionRequestCmd represents the S2SGetListFinishedAccountDeletionRequest command
var S2SGetListFinishedAccountDeletionRequestCmd = &cobra.Command{
	Use:   "s2sGetListFinishedAccountDeletionRequest",
	Short: "S2S get list finished account deletion request",
	Long:  `S2S get list finished account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionS2SService := &gdpr.DataDeletionS2SService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		input := &data_deletion_s2_s.S2SGetListFinishedAccountDeletionRequestParams{
			Namespace: namespace,
			End:       end,
			Start:     start,
		}
		ok, errOK := dataDeletionS2SService.S2SGetListFinishedAccountDeletionRequestShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	S2SGetListFinishedAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SGetListFinishedAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	S2SGetListFinishedAccountDeletionRequestCmd.Flags().String("end", "", "End")
	_ = S2SGetListFinishedAccountDeletionRequestCmd.MarkFlagRequired("end")
	S2SGetListFinishedAccountDeletionRequestCmd.Flags().String("start", "", "Start")
	_ = S2SGetListFinishedAccountDeletionRequestCmd.MarkFlagRequired("start")
}
