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

// CreateSQLDatabaseCredentialV2Cmd represents the CreateSQLDatabaseCredentialV2 command
var CreateSQLDatabaseCredentialV2Cmd = &cobra.Command{
	Use:   "createSQLDatabaseCredentialV2",
	Short: "Create SQL database credential V2",
	Long:  `Create SQL database credential V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateSQLDatabaseCredentialRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.CreateSQLDatabaseCredentialV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.CreateSQLDatabaseCredentialV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateSQLDatabaseCredentialV2Cmd.Flags().String("body", "", "Body")
	_ = CreateSQLDatabaseCredentialV2Cmd.MarkFlagRequired("body")
	CreateSQLDatabaseCredentialV2Cmd.Flags().String("app", "", "App")
	_ = CreateSQLDatabaseCredentialV2Cmd.MarkFlagRequired("app")
	CreateSQLDatabaseCredentialV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateSQLDatabaseCredentialV2Cmd.MarkFlagRequired("namespace")
}
