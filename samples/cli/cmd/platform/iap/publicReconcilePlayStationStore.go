// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicReconcilePlayStationStoreCmd represents the PublicReconcilePlayStationStore command
var PublicReconcilePlayStationStoreCmd = &cobra.Command{
	Use:   "publicReconcilePlayStationStore",
	Short: "Public reconcile play station store",
	Long:  `Public reconcile play station store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlayStationReconcileRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.PublicReconcilePlayStationStoreParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := iapService.PublicReconcilePlayStationStoreShort(input)
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
	PublicReconcilePlayStationStoreCmd.Flags().StringP("body", "", "", "Body")
	PublicReconcilePlayStationStoreCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicReconcilePlayStationStoreCmd.MarkFlagRequired("namespace")
	PublicReconcilePlayStationStoreCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicReconcilePlayStationStoreCmd.MarkFlagRequired("userId")
}
