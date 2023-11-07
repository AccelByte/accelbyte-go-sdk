// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package maxActive

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/max_active"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminReconcileMaxActiveSessionCmd represents the AdminReconcileMaxActiveSession command
var AdminReconcileMaxActiveSessionCmd = &cobra.Command{
	Use:   "adminReconcileMaxActiveSession",
	Short: "Admin reconcile max active session",
	Long:  `Admin reconcile max active session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		maxActiveService := &session.MaxActiveService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ModelsRequestReconcileMaxActiveSession
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &max_active.AdminReconcileMaxActiveSessionParams{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		errOK := maxActiveService.AdminReconcileMaxActiveSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminReconcileMaxActiveSessionCmd.Flags().String("body", "", "Body")
	_ = AdminReconcileMaxActiveSessionCmd.MarkFlagRequired("body")
	AdminReconcileMaxActiveSessionCmd.Flags().String("name", "", "Name")
	_ = AdminReconcileMaxActiveSessionCmd.MarkFlagRequired("name")
	AdminReconcileMaxActiveSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminReconcileMaxActiveSessionCmd.MarkFlagRequired("namespace")
}
