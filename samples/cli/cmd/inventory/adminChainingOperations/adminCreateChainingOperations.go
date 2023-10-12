// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminChainingOperations

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_chaining_operations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateChainingOperationsCmd represents the AdminCreateChainingOperations command
var AdminCreateChainingOperationsCmd = &cobra.Command{
	Use:   "adminCreateChainingOperations",
	Short: "Admin create chaining operations",
	Long:  `Admin create chaining operations`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChainingOperationsService := &inventory.AdminChainingOperationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsChainingOperationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_chaining_operations.AdminCreateChainingOperationsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminChainingOperationsService.AdminCreateChainingOperationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminCreateChainingOperationsCmd.Flags().String("body", "", "Body")
	_ = AdminCreateChainingOperationsCmd.MarkFlagRequired("body")
	AdminCreateChainingOperationsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateChainingOperationsCmd.MarkFlagRequired("namespace")
}
