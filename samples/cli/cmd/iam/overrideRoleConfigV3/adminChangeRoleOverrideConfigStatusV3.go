// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package overrideRoleConfigV3

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminChangeRoleOverrideConfigStatusV3Cmd represents the AdminChangeRoleOverrideConfigStatusV3 command
var AdminChangeRoleOverrideConfigStatusV3Cmd = &cobra.Command{
	Use:   "adminChangeRoleOverrideConfigStatusV3",
	Short: "Admin change role override config status V3",
	Long:  `Admin change role override config status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		overrideRoleConfigV3Service := &iam.OverrideRoleConfigv3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRoleOverrideStatsUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		identity, _ := cmd.Flags().GetString("identity")
		input := &override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params{
			Body:      body,
			Namespace: namespace,
			Identity:  identity,
		}
		ok, errOK := overrideRoleConfigV3Service.AdminChangeRoleOverrideConfigStatusV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminChangeRoleOverrideConfigStatusV3Cmd.Flags().String("body", "", "Body")
	_ = AdminChangeRoleOverrideConfigStatusV3Cmd.MarkFlagRequired("body")
	AdminChangeRoleOverrideConfigStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminChangeRoleOverrideConfigStatusV3Cmd.MarkFlagRequired("namespace")
	AdminChangeRoleOverrideConfigStatusV3Cmd.Flags().String("identity", "", "Identity")
	_ = AdminChangeRoleOverrideConfigStatusV3Cmd.MarkFlagRequired("identity")
}
