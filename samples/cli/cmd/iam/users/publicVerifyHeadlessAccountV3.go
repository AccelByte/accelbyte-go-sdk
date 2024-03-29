// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicVerifyHeadlessAccountV3Cmd represents the PublicVerifyHeadlessAccountV3 command
var PublicVerifyHeadlessAccountV3Cmd = &cobra.Command{
	Use:   "publicVerifyHeadlessAccountV3",
	Short: "Public verify headless account V3",
	Long:  `Public verify headless account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpgradeHeadlessAccountV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		needVerificationCode, _ := cmd.Flags().GetBool("needVerificationCode")
		input := &users.PublicVerifyHeadlessAccountV3Params{
			Body:                 body,
			Namespace:            namespace,
			NeedVerificationCode: &needVerificationCode,
		}
		ok, errOK := usersService.PublicVerifyHeadlessAccountV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicVerifyHeadlessAccountV3Cmd.Flags().String("body", "", "Body")
	_ = PublicVerifyHeadlessAccountV3Cmd.MarkFlagRequired("body")
	PublicVerifyHeadlessAccountV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicVerifyHeadlessAccountV3Cmd.MarkFlagRequired("namespace")
	PublicVerifyHeadlessAccountV3Cmd.Flags().Bool("needVerificationCode", false, "Need verification code")
}
