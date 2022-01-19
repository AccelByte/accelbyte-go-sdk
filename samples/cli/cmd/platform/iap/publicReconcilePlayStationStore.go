// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicReconcilePlayStationStoreCmd represents the publicReconcilePlayStationStore command
var publicReconcilePlayStationStoreCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := iapService.PublicReconcilePlayStationStore(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicReconcilePlayStationStoreCmd)
	publicReconcilePlayStationStoreCmd.Flags().StringP("body", "b", " ", "Body")
	publicReconcilePlayStationStoreCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicReconcilePlayStationStoreCmd.MarkFlagRequired("namespace")
	publicReconcilePlayStationStoreCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicReconcilePlayStationStoreCmd.MarkFlagRequired("userId")
}
