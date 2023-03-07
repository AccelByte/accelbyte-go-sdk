// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"io"
	"log"
	"net/http"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

var (
	tokenRepo  = *auth.DefaultTokenRepositoryImpl()
	configRepo = *auth.DefaultConfigRepositoryImpl()
	oauth      = &iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
	}
	oAuth20ExtensionService = &iam.OAuth20ExtensionService{
		Client:          factory.NewIamClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	platformId            = "phantauth"
	clientIDPhantAuth     = "test.client"
	clientSecretPhantAuth = "UTBcWwt6"
	createHeadless        = true
	discoveryUrl          = "https://phantauth.net/.well-known/openid-configuration"
)

func main() {
	mux := http.NewServeMux()

	// proceed
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "./templates/index.html")
	})

	// config
	mux.HandleFunc("/config", func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "GET" {
			oidcConfig := struct {
				Scope        string `json:"scope"`
				PlatformId   string `json:"platform_id"`
				DiscoveryUrl string `json:"discovery_url"`
				ClientSecret string `json:"client_secret"`
				ClientId     string `json:"client_id"`
			}{"openid profile email", platformId, discoveryUrl, clientSecretPhantAuth, clientIDPhantAuth}

			data, err := json.Marshal(oidcConfig)
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)

				return
			}

			w.Header().Set("Content-Type", "application/json")
			w.WriteHeader(http.StatusCreated)
			_, err = w.Write(data)
			if err != nil {
				return
			}
		}
	})

	// callback
	mux.HandleFunc("/callback", func(w http.ResponseWriter, r *http.Request) {
		form := url.Values{}
		form.Add("grant_type", "authorization_code")
		form.Add("client_id", clientIDPhantAuth)
		form.Add("client_secret", clientSecretPhantAuth)
		form.Add("redirect_uri", "http://localhost")
		form.Add("code", r.URL.Query().Get("code"))

		post, errPost := http.PostForm("https://phantauth.net/auth/token", form)
		if errPost != nil {
			return
		}
		bodyBytes, err := io.ReadAll(post.Body)
		if err != nil {
			log.Fatal(err)
		}
		response := token{}
		errUnmarshal := json.Unmarshal(bodyBytes, &response)
		if errUnmarshal != nil {
			return
		}

		// Login Platform from AccelByte Gaming Services
		loginPlatform(*response.IDToken)

		// Try to call AccelByte Gaming Services after login success
		getCountryLocation()

		w.WriteHeader(http.StatusOK)
		w.Header().Set("Content-Type", "application/text")
		_, err = w.Write([]byte("Success Login Using OIDC-Web Sample App"))
		if err != nil {
			return
		}
	})

	log.Printf("listening on http://%s/", "127.0.0.1:8080")
	log.Fatal(http.ListenAndServe("127.0.0.1:8080", mux))
}

// login platform using Go Extend SDK wrapper
func loginPlatform(platformToken string) {
	input := &o_auth2_0.PlatformTokenGrantV3Params{
		ClientID:       &clientIDPhantAuth,
		CreateHeadless: &createHeadless,
		PlatformID:     platformId,
		PlatformToken:  &platformToken,
	}
	err := oauth.LoginPlatform(input)
	if err != nil {
		log.Fatal("failed login platform")

		return
	} else {
		log.Printf("successful login")
	}
}

// get country location using Go Extend SDK wrapper
func getCountryLocation() {
	input := &o_auth2_0_extension.GetCountryLocationV3Params{}
	ok, err := oAuth20ExtensionService.GetCountryLocationV3Short(input)
	if err != nil {
		log.Fatal(err)

		return
	} else {
		log.Printf("Country name: %s", *ok.CountryName)
	}
}

type token struct {
	AccessToken  *string `json:"access_token"`
	IDToken      *string `json:"id_token"`
	RefreshToken *string `json:"refresh_token"`
	TokenType    *string `json:"token_type"`
}
