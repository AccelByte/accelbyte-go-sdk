// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewUpgradeAndAuthenticateForwardV3Params creates a new UpgradeAndAuthenticateForwardV3Params object
// with the default values initialized.
func NewUpgradeAndAuthenticateForwardV3Params() *UpgradeAndAuthenticateForwardV3Params {
	var ()
	return &UpgradeAndAuthenticateForwardV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpgradeAndAuthenticateForwardV3ParamsWithTimeout creates a new UpgradeAndAuthenticateForwardV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpgradeAndAuthenticateForwardV3ParamsWithTimeout(timeout time.Duration) *UpgradeAndAuthenticateForwardV3Params {
	var ()
	return &UpgradeAndAuthenticateForwardV3Params{

		timeout: timeout,
	}
}

// NewUpgradeAndAuthenticateForwardV3ParamsWithContext creates a new UpgradeAndAuthenticateForwardV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpgradeAndAuthenticateForwardV3ParamsWithContext(ctx context.Context) *UpgradeAndAuthenticateForwardV3Params {
	var ()
	return &UpgradeAndAuthenticateForwardV3Params{

		Context: ctx,
	}
}

// NewUpgradeAndAuthenticateForwardV3ParamsWithHTTPClient creates a new UpgradeAndAuthenticateForwardV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpgradeAndAuthenticateForwardV3ParamsWithHTTPClient(client *http.Client) *UpgradeAndAuthenticateForwardV3Params {
	var ()
	return &UpgradeAndAuthenticateForwardV3Params{
		HTTPClient: client,
	}
}

/*UpgradeAndAuthenticateForwardV3Params contains all the parameters to send to the API endpoint
for the upgrade and authenticate forward v3 operation typically these are written to a http.Request
*/
type UpgradeAndAuthenticateForwardV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID

	*/
	ClientID string
	/*UpgradeSuccessToken
	  upgrade success token

	*/
	UpgradeSuccessToken string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) WithTimeout(timeout time.Duration) *UpgradeAndAuthenticateForwardV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) WithContext(ctx context.Context) *UpgradeAndAuthenticateForwardV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) WithHTTPClient(client *http.Client) *UpgradeAndAuthenticateForwardV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpgradeAndAuthenticateForwardV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) WithClientID(clientID string) *UpgradeAndAuthenticateForwardV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithUpgradeSuccessToken adds the upgradeSuccessToken to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) WithUpgradeSuccessToken(upgradeSuccessToken string) *UpgradeAndAuthenticateForwardV3Params {
	o.SetUpgradeSuccessToken(upgradeSuccessToken)
	return o
}

// SetUpgradeSuccessToken adds the upgradeSuccessToken to the upgrade and authenticate forward v3 params
func (o *UpgradeAndAuthenticateForwardV3Params) SetUpgradeSuccessToken(upgradeSuccessToken string) {
	o.UpgradeSuccessToken = upgradeSuccessToken
}

// WriteToRequest writes these params to a swagger request
func (o *UpgradeAndAuthenticateForwardV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param client_id
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// form param upgrade_success_token
	frUpgradeSuccessToken := o.UpgradeSuccessToken
	fUpgradeSuccessToken := frUpgradeSuccessToken
	if fUpgradeSuccessToken != "" {
		if err := r.SetFormParam("upgrade_success_token", fUpgradeSuccessToken); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
