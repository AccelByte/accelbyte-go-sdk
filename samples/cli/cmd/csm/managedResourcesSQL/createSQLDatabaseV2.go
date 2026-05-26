// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesSQL

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateSQLDatabaseV2Cmd represents the CreateSQLDatabaseV2 command
var CreateSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "createSQLDatabaseV2",
	Short: "Create SQL database V2",
	Long:  `Create SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateSQLAppDatabaseRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.CreateSQLDatabaseV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.CreateSQLDatabaseV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateSQLDatabaseV2Cmd.Flags().String("body", "", "Body")
	_ = CreateSQLDatabaseV2Cmd.MarkFlagRequired("body")
	CreateSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = CreateSQLDatabaseV2Cmd.MarkFlagRequired("app")
	CreateSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
