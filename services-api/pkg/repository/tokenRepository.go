// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package repository

import (
	"fmt"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

type TokenRepository interface {
	Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error
	GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error)
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}

func GetRefreshExpiresIn(repository TokenRepository) (*int32, error) {
	token, _ := repository.GetToken()

	return token.RefreshExpiresIn, nil
}

func GetExpiresIn(repository TokenRepository) (*int32, error) {
	token, _ := repository.GetToken()

	return token.ExpiresIn, nil
}

func GetRefreshToken(repository TokenRepository) (string, error) {
	token, _ := repository.GetToken()

	return *token.RefreshToken, nil
}

func GetSecondsTillExpiry(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, _ := GetExpiresIn(repository)
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	timeNow := time.Now().UTC()
	secondsTillExpiry := expiresAt.Sub(timeNow) // in seconds ex 1m6.995968173s
	tmp := secondsTillExpiry.Seconds()
	fmt.Printf("%v", tmp)

	return secondsTillExpiry
}

func HasToken(repository TokenRepository) bool {
	_, err := repository.GetToken()

	return err == nil
}

func HasTokenExpired(repository TokenRepository, refreshRate float64) bool {
	return GetSecondsTillExpiry(repository, refreshRate) <= 0
}

func GetSecondsTillExpiryRefresh(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, _ := GetRefreshExpiresIn(repository)
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	secondsTillExpiry := expiresAt.Sub(time.Now().UTC()) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasRefreshTokenExpired(repository TokenRepository, refreshRate float64) bool {
	return GetSecondsTillExpiryRefresh(repository, refreshRate) <= 0
}

//func RefreshTokenScheduller(service *iam.OAuth20Service, loginType string) {
//	getToken, err := service.TokenRepository.GetToken()
//	if err != nil {
//		err.Error()
//	}
//
//	refreshRate := service.RefreshTokenRepository.GetRefreshRate()
//	done := make(chan bool)
//
//	if !HasRefreshTokenExpired(service.TokenRepository, refreshRate) {
//		switch loginType {
//
//		case "user": // user token have a refreshToken
//			if getToken.RefreshToken != nil && !service.RefreshTokenRepository.DisableAutoRefresh() {
//
//				time.Sleep(GetSecondsTillExpiryRefresh(service.TokenRepository, refreshRate)) // timer
//
//				go func() {
//					service.RefreshTokenRepository.RefreshIsRunningInBackground(true)
//					Once.Do(func() {
//						errRefresh := UserTokenRefresher(service)
//						if errRefresh != nil {
//							return
//						}
//						done <- true
//					})
//					service.RefreshTokenRepository.RefreshIsRunningInBackground(false)
//				}()
//			}
//
//		case "client":
//			if getToken.RefreshToken != nil && !service.RefreshTokenRepository.DisableAutoRefresh() {
//
//				time.Sleep(GetSecondsTillExpiryRefresh(service.TokenRepository, refreshRate)) // timer
//
//				go func() {
//					service.RefreshTokenRepository.RefreshIsRunningInBackground(true)
//					Once.Do(func() {
//						errRefresh := ClientTokenRefresher(service)
//						if errRefresh != nil {
//							return
//						}
//						done <- true
//					})
//					service.RefreshTokenRepository.RefreshIsRunningInBackground(false)
//				}()
//			}
//		}
//	}
//
//	_ = fmt.Sprint("Token in token repository has expired, please re-login")
//}
//
//type OAuth20RefreshService struct {
//	Client           *iamclient.JusticeIamService
//	ConfigRepository ConfigRepository
//	TokenRepository  TokenRepository
//}
//
//func UserTokenRefresher(s *iam.OAuth20Service) error {
//	token, _ := s.TokenRepository.GetToken()
//	p := &o_auth2_0.TokenGrantV3Params{
//		GrantType:    o_auth2_0.TokenGrantV3RefreshTokenConstant,
//		RefreshToken: token.RefreshToken,
//	}
//	service := OAuth20RefreshService{
//		Client:           factory.NewIamClient(s.ConfigRepository),
//		ConfigRepository: s.ConfigRepository,
//		TokenRepository:  s.TokenRepository,
//	}
//	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, auth.Basic(s.ConfigRepository.GetClientId(), s.ConfigRepository.GetClientSecret()))
//	if errLogin != nil {
//		return errLogin
//	}
//	err := s.TokenRepository.Store(*newToken.Payload)
//	if err != nil {
//		return err
//	}
//
//	return nil
//}
//
//func ClientTokenRefresher(s *iam.OAuth20Service) error {
//	p := &o_auth2_0.TokenGrantV3Params{
//		GrantType: o_auth2_0.TokenGrantV3ClientCredentialsConstant,
//	}
//	service := OAuth20RefreshService{
//		Client:           factory.NewIamClient(s.ConfigRepository),
//		ConfigRepository: s.ConfigRepository,
//		TokenRepository:  s.TokenRepository,
//	}
//	newToken, errLogin := service.Client.OAuth20.TokenGrantV3Short(p, auth.Basic(s.ConfigRepository.GetClientId(), s.ConfigRepository.GetClientSecret()))
//	if errLogin != nil {
//		return errLogin
//	}
//	err := s.TokenRepository.Store(*newToken.Payload)
//	if err != nil {
//		return err
//	}
//
//	return nil
//}

// TODO a interface for OauthmodelTokenResponseV3
