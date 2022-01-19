// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicUpdateUserEmailAddressV4Cmd represents the publicUpdateUserEmailAddressV4 command
var publicUpdateUserEmailAddressV4Cmd = &cobra.Command{
	Use:   "publicUpdateUserEmailAddressV4",
	Short: "Public update user email address V4",
	Long:  `Public update user email address V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelEmailUpdateRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicUpdateUserEmailAddressV4Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersV4Service.PublicUpdateUserEmailAddressV4(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdateUserEmailAddressV4Cmd)
	publicUpdateUserEmailAddressV4Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = publicUpdateUserEmailAddressV4Cmd.MarkFlagRequired("body")
	publicUpdateUserEmailAddressV4Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicUpdateUserEmailAddressV4Cmd.MarkFlagRequired("namespace")
}
